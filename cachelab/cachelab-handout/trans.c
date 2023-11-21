// 杨艺欣    2200017768

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
    int k, l, i;
    int t0, t1, t2, t3, t4, t5, t6, t7;

    // 8 * 8 blocks
    for (k = 0; k < N; k += 8) {
        for (l = 0; l < M; l += 8) {
            for (i = l; i < l + 8; i++) {
                t0 = A[k][i], t1 = A[k + 1][i], t2 = A[k + 2][i],
                t3 = A[k + 3][i], t4 = A[k + 4][i], t5 = A[k + 5][i],
                t6 = A[k + 6][i], t7 = A[k + 7][i];
                B[i][k] = t0;
                B[i][k + 1] = t1;
                B[i][k + 2] = t2;
                B[i][k + 3] = t3;
                B[i][k + 4] = t4;
                B[i][k + 5] = t5;
                B[i][k + 6] = t6;
                B[i][k + 7] = t7;
            }
        }
    }
}

char trans64_desc[] = "64*64 specialized transpose";
void trans64(int M, int N, int A[N][M], int B[M][N]) {
    int k, l, i;
    int t0, t1, t2, t3, t4, t5, t6, t7;

    // 8 * 8 blocks
    for (k = 0; k < N; k += 8) {
        for (l = 0; l < M; l += 8) {
            // top left 4 * 4 block
            for (i = l; i < l + 4; i++) {
                t0 = A[k][i], t1 = A[k + 1][i], t2 = A[k + 2][i],
                t3 = A[k + 3][i];

                // now A[k][i+4]~A[k+3][i+4] are cached
                // store A[k][i+4]~A[k+3][i+4] into B[i][k+4]~B[i][k+7]
                // so we don't need to reaccess them in the future
                t4 = A[k][i + 4], t5 = A[k + 1][i + 4], t6 = A[k + 2][i + 4],
                t7 = A[k + 3][i + 4];
                B[i][k] = t0;
                B[i][k + 1] = t1;
                B[i][k + 2] = t2;
                B[i][k + 3] = t3;

                B[i][k + 4] = t4;
                B[i][k + 5] = t5;
                B[i][k + 6] = t6;
                B[i][k + 7] = t7;
            }
            // top right and bottom left 4 * 4 blocks
            for (i = l; i < l + 4; i++) {
                // retrieve A[k][i+4]~A[k+3][i+4] from B[i][k+4]~B[i][k+7]
                t0 = B[i][k + 4], t1 = B[i][k + 5], t2 = B[i][k + 6],
                t3 = B[i][k + 7];

                // fill in B[i][k+4]~B[i][k+7]
                t4 = A[k + 4][i], t5 = A[k + 5][i], t6 = A[k + 6][i],
                t7 = A[k + 7][i];
                B[i][k + 4] = t4;
                B[i][k + 5] = t5;
                B[i][k + 6] = t6;
                B[i][k + 7] = t7;

                // fill in B[i+4][k]~B[i+7][k] with retrieved values
                B[i + 4][k] = t0;
                B[i + 4][k + 1] = t1;
                B[i + 4][k + 2] = t2;
                B[i + 4][k + 3] = t3;
            }
            // bottom right 4 * 4 block
            for (i = l + 4; i < l + 8; i++) {
                t0 = A[k + 4][i], t1 = A[k + 5][i], t2 = A[k + 6][i],
                t3 = A[k + 7][i];
                B[i][k + 4] = t0;
                B[i][k + 5] = t1;
                B[i][k + 6] = t2;
                B[i][k + 7] = t3;
            }
        }
    }
}

char trans60x68_desc[] = "60*68 specialized transpose";
void trans60x68(int M, int N, int A[N][M], int B[M][N]) {
    int k, l, i;
    int t0, t1, t2, t3, t4, t5, t6, t7;

    // 8 * 4 blocks
    for (k = 0; k < 64; k += 8) {
        for (l = 0; l < 60; l += 4) {
            for (i = l; i < l + 4; i++) {
                t0 = A[k][i], t1 = A[k + 1][i], t2 = A[k + 2][i],
                t3 = A[k + 3][i], t4 = A[k + 4][i], t5 = A[k + 5][i],
                t6 = A[k + 6][i], t7 = A[k + 7][i];
                B[i][k] = t0;
                B[i][k + 1] = t1;
                B[i][k + 2] = t2;
                B[i][k + 3] = t3;
                B[i][k + 4] = t4;
                B[i][k + 5] = t5;
                B[i][k + 6] = t6;
                B[i][k + 7] = t7;
            }
        }
    }
    // handle remaining blocks
    for (l = 0; l < 64; l += 4) {
        for (i = l; i < l + 4; i++) {
            t0 = A[64][i], t1 = A[64 + 1][i], t2 = A[64 + 2][i],
            t3 = A[64 + 3][i];
            B[i][64] = t0;
            B[i][64 + 1] = t1;
            B[i][64 + 2] = t2;
            B[i][64 + 3] = t3;
        }
    }
}

void trans(int M, int N, int A[N][M], int B[M][N]);

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
            trans60x68(M, N, A, B);
            break;
        default:
            trans(M, N, A, B);
            break;
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the
 * cache.
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
