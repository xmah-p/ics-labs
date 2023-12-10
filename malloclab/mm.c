/*
 * mm.c
 *
 * 杨艺欣    2200017768
 *
 * Segregated fits + LIFO + Remove footer from allocated blocks
 */

/* Block struct layout */

/* Allocated block:
 * Header:        | my size | prev's alloc | my alloc = 1 |
 * Payload:       |                 ...                   |
 * No footer
 */

/* Free block:
 * Header:        | my size | prev's alloc | my alloc = 0 |
 * Pointer:       |        pred      |       succ         |
 * Payload:       |                ...                    |
 * Footer:        | my size | prev's alloc | my alloc = 0 |
 *
 * pred and succ are unsigned int (4 bytes) offsets from heap_listp
 * Least block size: 16 bytes
 */

/* Size class partition:
 * 16, 17~20, 21~36, 37~68, 69~132, 133~260, 261~516, 517~1028, 1029~2052,
 * 2053~4100, 4101~8196, 8197~16388, 16389~\infty
 *
 * 13 size classes in total
 */

/* Heap structure layout:
 *      Free list header * 13: pred, succ. size = 8 * 13 = 104
 *      Prologue: Allocated. size = 4
 *      Regular Blocks
 *      Epilogue: Allocated. size = 0 (takes 4 bytes space in heap though)
 *
 * Prologue and epilogue are actually not blocks, but paddings with allocated
 * bits.
 */

#include "mm.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
// #define DEBUG
#ifdef DEBUG
#define dbg_printf(...) printf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

#define STR(x) #x
#define ASSERT(expr) \
    ((!(expr)) ? printf("Assertion failed at %d: %s\n", lineno, STR(expr)) : 0)

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE 4             /* Word and header/footer size (bytes) */
#define DSIZE 8             /* Double word size (bytes) */
#define CHUNKSIZE (1 << 12) /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a header/footer */
#define PACK(size, prev_alloc, alloc) ((size) | ((prev_alloc) << 1) | (alloc))

/* Read and write a word at address p */
#define GET(p) (*(unsigned int*)(p))
#define PUT(p, val) (*(unsigned int*)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_PREV_ALLOC(p) ((GET(p) & 0x2) >> 1)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char*)(bp)-WSIZE)
#define FTRP(bp) ((char*)(bp) + SIZE(bp) - DSIZE)
#define SIZE(bp) (GET_SIZE(HDRP(bp)))
#define PREV_ALLOC(bp) (GET_PREV_ALLOC(HDRP(bp)))
#define ALLOC(bp) (GET_ALLOC(HDRP(bp)))
#define PRED(bp, head) (block_ptr)(GET(bp) + (char*)(head))
#define SUCC(bp, head) (block_ptr)(GET((char*)(bp) + WSIZE) + (char*)(head))

#define NEXT_HEAD(head) (block_ptr)((char*)(head) + DSIZE)
#define HEAD_END (block_ptr)((char*)(heap_listp)-DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
/* get next by my header */
#define NEXT_BLKP(bp) ((char*)(bp) + GET_SIZE(((char*)(bp)-WSIZE)))
/* get prev by its footer. Does not work for allocated blocks (who have no
 * footer) */
#define PREV_BLKP(bp) ((char*)(bp)-GET_SIZE(((char*)(bp)-DSIZE)))

/* Set block's header and footer, requires header and footer already exist */
#define SET_HDR(bp, size, prev_alloc, alloc) \
    PUT((HDRP(bp)), PACK((size), (prev_alloc), (alloc)))
#define SET_FTR(bp, size, prev_alloc, alloc) \
    PUT((FTRP(bp)), PACK((size), (prev_alloc), (alloc)))
#define SET_PREV_ALLOC(bp, prev_alloc) \
    PUT((HDRP(bp)), PACK(SIZE(bp), (prev_alloc), ALLOC(bp)))

#define SET_LINK(bp, pred, succ, head)                 \
    PUT((char*)(bp), (unsigned int)((pred) - (head))); \
    PUT(((char*)(bp) + WSIZE), (unsigned int)((succ) - (head)))
#define SET_PRED(bp, pred, head) \
    PUT((char*)(bp), (unsigned int)((pred) - (head)))
#define SET_SUCC(bp, succ, head) \
    PUT(((char*)(bp) + WSIZE), (unsigned int)((succ) - (head)))

typedef void* block_ptr;

/* Global variables */
static block_ptr heap_listp = NULL; /* Pointer to first block */
static block_ptr free_head[13];     /* Pointers to first free block */

/* Function prototypes for internal helper routines */
static block_ptr insert_free(block_ptr bp);
static void delete_free(block_ptr bp);
static block_ptr extend_heap(size_t words);
static void place(block_ptr bp, size_t asize);
static block_ptr find_fit(size_t asize);
static block_ptr coalesce(block_ptr bp);
static size_t adjust_size(size_t size);
static block_ptr find_head(size_t size);

/*
 * mm_init - Initialize the memory manager
 */
int mm_init(void) {
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(28 * WSIZE)) == (void*)-1) return -1;

    for (int i = 0; i != 13; i++) {
        free_head[i] = heap_listp + (i * DSIZE);
        SET_LINK(free_head[i], free_head[i], free_head[i], free_head[i]);
    }
    PUT(heap_listp + (26 * WSIZE), PACK(WSIZE, 1, 1)); /* Prologue header */
    PUT(heap_listp + (27 * WSIZE), PACK(0, 1, 1));     /* Epilogue header */
    heap_listp += (28 * WSIZE);
    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL) return -1;
    // mm_checkheap(__LINE__);
    dbg_printf("init: heap_listp is %p\n", heap_listp);
    return 0;
}

/*
 * malloc - Allocate a block with at least size bytes of payload
 */
block_ptr malloc(size_t size) {
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char* bp;

    if (heap_listp == 0) {
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0) return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    asize = adjust_size(size);

    dbg_printf("malloc: size is %lu, asize is %lu\n", size, asize);

    /* Search the free list for a fit */
    if ((bp = find_fit(asize))) {
        place(bp, asize);
        dbg_printf("malloc: placed %p\n\n", bp);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL) return NULL;
    dbg_printf("malloc: extended %p\n", bp);
    place(bp, asize);
    dbg_printf("malloc: placed %p\n", bp);
    // mm_checkheap(__LINE__);

    return bp;
}

/*
 * free - Free a block
 */
void free(block_ptr bp) {
    if (bp == 0) return;

    size_t size = SIZE(bp);
    size_t prev_alloc = PREV_ALLOC(bp);
    block_ptr next = NEXT_BLKP(bp);

    if (heap_listp == 0) {
        mm_init();
    }
    SET_HDR(bp, size, prev_alloc, 0);
    SET_FTR(bp, size, prev_alloc, 0);
    SET_PREV_ALLOC(next, 0);

    coalesce(bp);
    dbg_printf("free: free %p\n", bp);
    // mm_checkheap(__LINE__);
}

/*
 * realloc - Naive implementation of realloc
 */
block_ptr realloc(block_ptr ptr, size_t size) {
    size_t oldsize;
    block_ptr newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if (size == 0) {
        mm_free(ptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if (ptr == NULL) {
        return mm_malloc(size);
    }

    newptr = mm_malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if (!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = SIZE(ptr);
    if (size < oldsize) oldsize = size;
    memcpy(newptr, ptr, oldsize);

    /* Free the old block. */
    mm_free(ptr);

    return newptr;
}

/*
 * mm_checkheap - Check the heap for correctness. Helpful hint: You
 *                can call this function using mm_checkheap(__LINE__);
 *                to identify the line number of the call site.
 */
void mm_checkheap(int lineno) {
    /* checklist:
     * 1. prologue and epilogue
     * 2. header and footer: minsize, alignment, allocated bit consistency
     * 3. header matching its footer
     * 4. coalescing: no consecutive free blocks
     * 5. doubly linked list consistency: next's prev is me, prev's next is me
     * 6. all blocks' address should be between mem_heap_lo() and
     * mem_heap_high()
     * 7. # of free blocks in heap == # of free blocks in free list
     * 8. segregated free list: block size should be suitable for its size
     * class
     */
    dbg_printf("checkheap\n");
    block_ptr bp = heap_listp; /* first block in heap */
    const size_t min_size = 16;
    size_t free_cnt_by_heap = 0;
    size_t free_cnt_by_list = 0;

    /* Prologue and epilogue */
    block_ptr prologue = (char*)bp - DSIZE;
    block_ptr epilogue = (char*)mem_sbrk(0) - WSIZE;

    /* Prologue has a size of 4, so it is actually not a block, but a padding
     * with allocated bit. Getting its size will get zero */
    ASSERT(GET_SIZE(prologue) == 0);
    ASSERT(GET_SIZE(epilogue) == 0);
    ASSERT(GET_ALLOC(prologue) == 1);
    ASSERT(GET_ALLOC(epilogue) == 1);

    /* header and footer */
    for (; SIZE(bp) != 0; bp = NEXT_BLKP(bp)) {
        size_t size = SIZE(bp);
        size_t alloc = ALLOC(bp);

        block_ptr next = NEXT_BLKP(bp);
        size_t next_alloc = ALLOC(next);
        size_t next_prev_alloc = PREV_ALLOC(next);

        /* min size */
        ASSERT(size >= min_size);

        ASSERT(size % DSIZE == 0);        /* alignment */
        ASSERT(alloc == next_prev_alloc); /* allocated bit consistency */

        if (!alloc) {
            free_cnt_by_heap++;
            ASSERT(GET(HDRP(bp)) ==
                   GET(FTRP(bp))); /* header matching footer */
            ASSERT(next_alloc);    /* no consecutive free blocks */
            if (!next_alloc) {
                printf("mm_checkheap: consecutive free blocks %p\n", bp);
                return;
            }
        }

        /* address in heap */
        ASSERT(bp >= (block_ptr)mem_heap_lo() &&
               bp <= (block_ptr)mem_heap_hi());
    }

    /* doubly linked list consistency */
    for (int i = 0; i != 13; i++) {
        block_ptr head = free_head[i];

        for (bp = SUCC(head, head); bp != head; bp = SUCC(bp, head)) {
            block_ptr pred = PRED(bp, head);
            block_ptr succ = SUCC(bp, head);

            ASSERT(SUCC(pred, head) == bp);
            ASSERT(PRED(succ, head) == bp);
            /* TODO: check size */
            ASSERT(!ALLOC(bp));
            free_cnt_by_list++;
            block_ptr p;
            for (p = SUCC(bp, head); p != bp; p = SUCC(p, head)) {
                ASSERT(bp != p);
            }
            dbg_printf("free block %p in free list %d, size = %lu\n", bp, i,
                       size);
        }
    }

    ASSERT(free_cnt_by_heap == free_cnt_by_list);
    if (free_cnt_by_heap != free_cnt_by_list) {
        dbg_printf("free_cnt_by_heap: %lu\n", free_cnt_by_heap);
        dbg_printf("free_cnt_by_list: %lu\n\n", free_cnt_by_list);
    }
}

/*
 * The remaining routines are internal helper routines
 */

/*
 * find_head - find the head of the free list that fits the size
 */
static block_ptr find_head(size_t size) {
    int idx = 0;
    if (size <= 16)
        idx = 0;
    else if (size <= 20)
        idx = 1;
    else if (size <= 36)
        idx = 2;
    else if (size <= 68)
        idx = 3;
    else if (size <= 132)
        idx = 4;
    else if (size <= 260)
        idx = 5;
    else if (size <= 516)
        idx = 6;
    else if (size <= 1028)
        idx = 7;
    else if (size <= 2052)
        idx = 8;
    else if (size <= 4100)
        idx = 9;
    else if (size <= 8196)
        idx = 10;
    else if (size <= 16388)
        idx = 11;
    else
        idx = 12;
    return free_head[idx];
}

/*
 * adjust_size - adjust malloc payload size to block size
 */
static size_t adjust_size(size_t size) {
    size_t asize;
    const size_t big_size = 128;

    if (size <= DSIZE)
        asize = DSIZE * 2;

    else if (size > (big_size * 3)) {
        size_t q = size / big_size;
        size_t r = size % big_size;
        if ((2 * r) < big_size)
            asize = DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE);
        else
            asize = (q + 1) * big_size + DSIZE;
    }

    else
        asize = DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE);
    return asize;
}

/*
 * insert_free - Insert a free block into the free list
 */
static block_ptr insert_free(block_ptr bp) {
    /* LIFO order */
    size_t size = SIZE(bp);
    block_ptr head = find_head(size);

    block_ptr next = SUCC(head, head);
    SET_PRED(next, bp, head);
    SET_LINK(bp, head, next, head);
    SET_SUCC(head, bp, head);
    return bp;
}

/*
 * delete_free - Delete a free block from the free list
 */
static void delete_free(block_ptr bp) {
    size_t size = SIZE(bp);
    block_ptr head = find_head(size);

    block_ptr pred = PRED(bp, head);
    block_ptr succ = SUCC(bp, head);
    SET_PRED(succ, pred, head);
    SET_SUCC(pred, succ, head);
}

/*
 * extend_heap - Extend heap with free block and return its block pointer
 */
static block_ptr extend_heap(size_t words) {
    char* bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if ((long)(bp = mem_sbrk(size)) == -1) return NULL;
    size_t prev_alloc = PREV_ALLOC(bp);

    /* Initialize free block header/footer and the epilogue header */
    SET_HDR(bp, size, prev_alloc, 0); /* Free block header */
    SET_FTR(bp, size, prev_alloc, 0); /* Free block footer */
    SET_HDR(NEXT_BLKP(bp), 0, 0, 1);  /* New epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 * coalesce will manage the free list automatically
 */
static block_ptr coalesce(block_ptr bp) {
    block_ptr next = NEXT_BLKP(bp);

    size_t prev_alloc = PREV_ALLOC(bp);
    size_t next_alloc = ALLOC(next);
    size_t size = SIZE(bp);

    // if (prev_alloc) insert_free(bp); /* a new free block */

    if (prev_alloc && next_alloc) { /* Case 1 */
        return insert_free(bp);
    }

    else if (prev_alloc && !next_alloc) { /* Case 2 */
        size += SIZE(next);
        delete_free(next);
        SET_HDR(bp, size, 1, 0);
        SET_FTR(bp, size, 1, 0);
    }

    else if (!prev_alloc && next_alloc) { /* Case 3 */
        block_ptr prev = PREV_BLKP(bp);
        size_t prev_alloc = PREV_ALLOC(prev);

        delete_free(prev);
        size += SIZE(prev);
        SET_FTR(bp, size, prev_alloc, 0);
        SET_HDR(prev, size, prev_alloc, 0);
        bp = prev;
    }

    else { /* Case 4 */
        block_ptr prev = PREV_BLKP(bp);
        size_t prev_alloc = PREV_ALLOC(prev);
        delete_free(next);
        delete_free(prev);
        size += SIZE(prev) + SIZE(next);
        SET_HDR(prev, size, prev_alloc, 0);
        SET_FTR(next, size, prev_alloc, 0);
        bp = prev;
    }

    insert_free(bp);

    // mm_checkheap(__LINE__);

    return bp;
}

/*
 * place - Place block of asize bytes at start of free block bp
 *         and split if remainder would be at least minimum block size
 */
static void place(block_ptr bp, size_t asize) {
    size_t csize = SIZE(bp);            /* Current free block size */
    size_t prev_alloc = PREV_ALLOC(bp); /* Previous block alloc bit */
    block_ptr next = NEXT_BLKP(bp);

    delete_free(bp);

    if ((csize - asize) >= (2 * DSIZE)) {
        dbg_printf("place: splitting %p\n", bp);
        SET_HDR(bp, asize, prev_alloc, 1);
        bp = NEXT_BLKP(bp);
        SET_HDR(bp, csize - asize, 1, 0);
        SET_FTR(bp, csize - asize, 1, 0);
        SET_PREV_ALLOC(next, 0);
        insert_free(bp); /* no need to coalesce */
        dbg_printf("place: free block %p\n", bp);
    } else {
        SET_HDR(bp, csize, prev_alloc, 1);
        SET_PREV_ALLOC(next, 1);
    }
    // mm_checkheap(__LINE__);
}

/*
 * find_fit - Find a fit for a block with asize bytes
 */
static block_ptr find_fit(size_t asize) {
    block_ptr bp;
    for (block_ptr head = find_head(asize); head != HEAD_END;
         head = NEXT_HEAD(head)) {
        for (bp = SUCC(head, head); bp != head; bp = SUCC(bp, head)) {
            if (asize <= SIZE(bp)) return bp;
        }
    }

    return NULL; /* No fit */
}
