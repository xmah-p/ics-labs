#include <stdio.h>

typedef word_t word_t;

word_t src[8], dst[8];

/* $begin ncopy */
/*
 * ncopy - copy src to dst, returning number of positive ints
 * contained in src array.
 */
word_t ncopy(word_t* src, word_t* dst, word_t len) {
    word_t count = 0;
    word_t val;

    while (len > 0) {
        val = *src++;
        *dst++ = val;
        if (val > 0) count++;
        len--;
    }
    return count;
}
/* $end ncopy */

word_t ncpy(word_t* src, word_t* dst, word_t len) {
    word_t count = 0;
    word_t val;
    word_t k = 9;
    // reserved regs: rdi, rsi, rdx, rax
    // use rcx, rbx, r8, r9, r10, r11, r12, r13, r14 for loop unrolling
    // rbp for lim
    len -= 9;

    for (int i = 0; len >= 0; len -= 9) {
        (rdi) -> rcx;    // set CC
        iaddqg 1, rax;
        // ...

        rcx -> (rsi);
        // ...
    }
    // len    -1  -2  -3  -4  -5  -6  -7  -8  -9
    // remain  8   7   6   5   4   3   2   1   0
    switch (k - len) {
        je  R0;
        
    }

    return count;
}

int main() {
    word_t i, count;

    for (i = 0; i < 8; i++) src[i] = i + 1;
    count = ncopy(src, dst, 8);
    printf("count=%d\n", count);
    exit(0);
}
