/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>

#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */

char trans32_desc[] = "32*32 specialized transpose";
void trans32(int M, int N, int A[N][M], int B[M][N]) {
    for (int k = 0; k < N; k += 8) {
        for (int l = 0; l < M; l += 8) {
            for (int i = k; i < k + 8; i++) {
                int t0 = A[i][l], t1 = A[i][l + 1], t2 = A[i][l + 2],
                    t3 = A[i][l + 3], t4 = A[i][l + 4], t5 = A[i][l + 5],
                    t6 = A[i][l + 6], t7 = A[i][l + 7];
                B[l][i] = t0;
                B[l + 1][i] = t1;
                B[l + 2][i] = t2;
                B[l + 3][i] = t3;
                B[l + 4][i] = t4;
                B[l + 5][i] = t5;
                B[l + 6][i] = t6;
                B[l + 7][i] = t7;
            }
        }
    }
}

char trans64_desc[] = "64*64 specialized transpose";
void trans64(int M, int N, int A[N][M], int B[M][N]) {
    for (int k = 0; k < N; k += 8) {
        for (int l = 0; l < M; l += 8) {
            for (int i = k; i < k + 8; i++) {
                int t0 = A[i][l], t1 = A[i][l + 1], t2 = A[i][l + 2],
                    t3 = A[i][l + 3], t4 = A[i][l + 4], t5 = A[i][l + 5],
                    t6 = A[i][l + 6], t7 = A[i][l + 7];
                B[l][i] = t0;
                B[l + 1][i] = t1;
                B[l + 2][i] = t2;
                B[l + 3][i] = t3;
                B[l + 4][i] = t4;
                B[l + 5][i] = t5;
                B[l + 6][i] = t6;
                B[l + 7][i] = t7;
            }
        }
    }
}

char trans60_68_desc[] = "60*68 specialized transpose";
void trans60_68(int M, int N, int A[N][M], int B[M][N]) {
    for (int k = 0; k < 64; k += 8) {
        for (int l = 0; l < 56; l += 8) {
            for (int i = k; i < k + 8; i++) {
                int t0 = A[i][l], t1 = A[i][l + 1], t2 = A[i][l + 2],
                    t3 = A[i][l + 3], t4 = A[i][l + 4], t5 = A[i][l + 5],
                    t6 = A[i][l + 6], t7 = A[i][l + 7];
                B[l][i] = t0;
                B[l + 1][i] = t1;
                B[l + 2][i] = t2;
                B[l + 3][i] = t3;
                B[l + 4][i] = t4;
                B[l + 5][i] = t5;
                B[l + 6][i] = t6;
                B[l + 7][i] = t7;
            }
        }
    }
}

char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);

    switch (M) {
        case 32:
            trans32(M, N, A, B);
            break;
        case 64:
            trans64(M, N, A, B);
            break;
        case 60:
            trans60_68(M, N, A, B);
            break;
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}
