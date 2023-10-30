/* 杨艺欣    2200017768 */

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "cachelab.h"

int s = 0;
int E = 0;
int b = 0;

typedef struct {
    unsigned valid;
    unsigned long long tag;
    unsigned timestamp;  // for LRU, the larger the more recently used
} Line;

typedef struct {
    Line* lines;
    unsigned lru;
} Set;

typedef struct {
    Set* sets;
} Cache;

Cache cache;

int hitCnt = 0, missCnt = 0, evictCnt = 0;

void initCache(void) {
    // assume that s, E, b are already initialized
    cache.sets = (Set*)malloc(sizeof(Set) * (1 << s));
    for (int i = 0; i < (1 << s); i++) {
        cache.sets[i].lines = (Line*)malloc(sizeof(Line) * E);
        cache.sets[i].lru = 0;
        for (int j = 0; j < E; j++) {
            cache.sets[i].lines[j].valid = 0;
            cache.sets[i].lines[j].tag = 0;
            cache.sets[i].lines[j].timestamp = 0;
        }
    }
}

/*  ./traces/dave.trace
    format: [space]operation address,size
 L 10,4
 S 18,4
 L 20,4
 S 28,4
 S 50,4
*/

void simulate(FILE* file, int verbose) {
    char buf[100];
    while (fgets(buf, 100, file)) {
        if (buf[0] != ' ' || buf[2] != ' ' ||
            (buf[1] != 'L' && buf[1] != 'S' && buf[1] != 'M')) {
            printf("Invalid trace file line: %s", buf);
            fclose(file);
            exit(1);
        }
        char op = buf[1];  // L, S, M
        unsigned long long addr;
        int size;
        sscanf(buf + 3, "%llx,%d", &addr, &size);
        if (verbose) printf("%c %llx,%d ", op, addr, size);

        int t = 64 - s - b;
        unsigned long long tag = addr >> (s + b);
        unsigned long long setIdx = (addr << t) >> (t + b);
        // unsigned long long blockOffset = addr << (t + s) >> (t + s);
        // printf("tag: %llx, setIdx: %llx, blockOffset: %llx\n", tag, setIdx,
        // blockOffset);

        // Set selection
        Set* set = &cache.sets[setIdx];  

        // Line matching
        Line* lines = set->lines;
        int hit = 0;
        for (int i = 0; i != E; i++) {
            if (!lines[i].valid || lines[i].tag != tag) continue;
            // hit
            hit = 1;
            hitCnt++;
            lines[i].timestamp = ++(set->lru);
            if (verbose) printf("hit ");
            break;
        }

        if (!hit) {
            missCnt++;
            if (verbose) printf("miss ");
            int hasEmpty = 0;
            for (int i = 0; i != E; i++) {
                if (lines[i].valid) continue;
                lines[i].valid = 1;
                lines[i].tag = tag;
                lines[i].timestamp = ++(set->lru);
                hasEmpty = 1;
                break;
            }

            // Eviction
            if (!hasEmpty) {
                evictCnt++;
                if (verbose) printf("eviction ");
                int minIdx = 0;
                for (int i = 1; i != E; i++) {
                    if (lines[i].timestamp < lines[minIdx].timestamp)
                        minIdx = i;
                }
                lines[minIdx].tag = tag;
                lines[minIdx].timestamp = ++(set->lru);
            }
        }
        
        if (op == 'M') {
            hitCnt++;
            if (verbose) printf("hit");
        }
    }
}

int main(int argc, char* argv[]) {
    // get the options
    int opt;
    int verbose;
    FILE* tracefile = NULL;
    while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch (opt) {
            case 'h':
                printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n",
                       argv[0]);
                printf("Options:\n");
                printf("  -h         Print this help message.\n");
                printf("  -v         Optional verbose flag.\n");
                printf("  -s <num>   Number of set index bits.\n");
                printf("  -E <num>   Number of lines per set.\n");
                printf("  -b <num>   Number of block offset bits.\n");
                printf("  -t <file>  Trace file.\n");
                exit(0);
            case 'v':
                verbose = 1;
                break;
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                tracefile = fopen(optarg, "r");
                break;
        }
    }
    if (!s || !E || !b || !tracefile) {
        printf("%s: Missing required command line argument\n", argv[0]);
        exit(0);
    }
    initCache();
    simulate(tracefile, verbose);
    printSummary(hitCnt, missCnt, evictCnt);
    return 0;
}