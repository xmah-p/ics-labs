/*
 * mm-explicit.c
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include "mm.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
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

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

/* Basic constants and macros */
#define WSIZE 4             /* Word and header/footer size (bytes) */
#define DSIZE 8             /* Double word size (bytes) */
#define CHUNKSIZE (1 << 12) /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Block struct layout */

/* Allocated block:
 * Header:        | my size | prev's alloc | my alloc = 1 |
 * Payload:       | ... |
 * No footer
 */

/* Free block:
 * Header:        | my size | prev's alloc | my alloc = 0 |
 * Payload:       | ... |
 * Footer:        | my size | prev's alloc | my alloc = 0 |
 */

/* Heap struct layout
 *      Prologue: Allocated, size = 4
 *      Regular Blocks
 *      Epilogue: Allocated, size = 0
 */

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
/* Does not work for allocated blocks */
#define FTRP(bp) ((char*)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

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
    PUT((HDRP(bp)),                    \
        PACK(GET_SIZE(HDRP(bp)), (prev_alloc), GET_ALLOC(HDRP(bp))))

typedef void* block_ptr;

/* Global variables */
static char* heap_listp = 0; /* Pointer to first block */

/* Function prototypes for internal helper routines */
static block_ptr extend_heap(size_t words);
static void place(block_ptr bp, size_t asize);
static block_ptr find_fit(size_t asize);
static block_ptr coalesce(block_ptr bp);

/*
 * mm_init - Initialize the memory manager
 */
int mm_init(void) {
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(2 * WSIZE)) == (void*)-1) return -1;
    PUT(heap_listp, PACK(WSIZE, 1, 1));           /* Prologue header */
    PUT(heap_listp + (1 * WSIZE), PACK(0, 1, 1)); /* Epilogue header */
    heap_listp += (2 * WSIZE);

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL) return -1;
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
    if (size <= WSIZE)
        asize = DSIZE;
    else
        asize = DSIZE * ((size + (WSIZE) + (DSIZE - 1)) / DSIZE);

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL) return NULL;
    place(bp, asize);
    return bp;
}

/*
 * free - Free a block
 */
void free(block_ptr bp) {
    if (bp == 0) return;

    size_t size = GET_SIZE(HDRP(bp));
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    block_ptr next = NEXT_BLKP(bp);

    if (heap_listp == 0) {
        mm_init();
    }
    SET_HDR(bp, size, prev_alloc, 0);
    SET_FTR(bp, size, prev_alloc, 0);
    SET_PREV_ALLOC(next, 0);
    coalesce(bp);
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
    oldsize = GET_SIZE(HDRP(ptr));
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
void mm_checkheap(int lineno) { lineno = lineno; /* keep gcc happy */ }

/*
 * The remaining routines are internal helper routines
 */

/*
 * extend_heap - Extend heap with free block and return its block pointer
 */
static block_ptr extend_heap(size_t words) {
    char* bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1) return NULL;
    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));

    /* Initialize free block header/footer and the epilogue header */
    SET_HDR(bp, size, prev_alloc, 0); /* Free block header */
    SET_FTR(bp, size, prev_alloc, 0); /* Free block footer */
    SET_HDR(NEXT_BLKP(bp), 0, 0, 1);  /* New epilogue header */

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static block_ptr coalesce(block_ptr bp) {
    block_ptr next = NEXT_BLKP(bp);

    size_t prev_alloc = GET_PREV_ALLOC(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(next));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) { /* Case 1 */
        return bp;
    }

    else if (prev_alloc && !next_alloc) { /* Case 2 */
        size += GET_SIZE(HDRP(next));
        SET_HDR(bp, size, 1, 0);
        SET_FTR(bp, size, 1, 0);
    }

    else if (!prev_alloc && next_alloc) { /* Case 3 */
        block_ptr prev = PREV_BLKP(bp);
        size_t prev_alloc = GET_PREV_ALLOC(HDRP(prev));
        size += GET_SIZE(HDRP(prev));
        SET_FTR(bp, size, prev_alloc, 0);
        SET_HDR(prev, size, prev_alloc, 0);
        bp = prev;
    }

    else { /* Case 4 */
        block_ptr prev = PREV_BLKP(bp);
        size_t prev_alloc = GET_PREV_ALLOC(HDRP(prev));
        size += GET_SIZE(HDRP(prev)) + GET_SIZE(FTRP(next));
        SET_HDR(prev, size, prev_alloc, 0);
        SET_FTR(next, size, prev_alloc, 0);
        bp = prev;
    }

    return bp;
}

/*
 * place - Place block of asize bytes at start of free block bp
 *         and split if remainder would be at least minimum block size
 */
static void place(block_ptr bp, size_t asize) {
    size_t csize = GET_SIZE(HDRP(bp)); /* Current free block size */
    size_t prev_alloc =
        GET_PREV_ALLOC(HDRP(bp)); /* Previous block alloc bit */
    block_ptr next = NEXT_BLKP(bp);

    if ((csize - asize) >= (2 * DSIZE)) {
        SET_HDR(bp, asize, prev_alloc, 1);
        bp = NEXT_BLKP(bp);
        SET_HDR(bp, csize - asize, 1, 0);
        SET_FTR(bp, csize - asize, 1, 0);
        SET_PREV_ALLOC(next, 0);
    } else {
        SET_HDR(bp, csize, prev_alloc, 1);
        SET_PREV_ALLOC(next, 1);
    }
}

/*
 * find_fit - Find a fit for a block with asize bytes
 */
static block_ptr find_fit(size_t asize) {
    block_ptr bp;

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (!GET_ALLOC(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))) {
            return bp;
        }
    }
    return NULL; /* No fit */
}
