/*
 * CS:APP Data Lab
 *
 * 杨艺欣  2200017768
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/*
 * bitXnor - ~(x^y) using only ~ and |
 *   Example: bitXnor(6, -5) = 2
 *   Legal ops: ~ |
 *   Max ops: 7
 *   Rating: 1
 */
int bitXnor(int x, int y) { 
    return (~(x | y)) | (~(~x | ~y));
}
/*
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 4
 *   Rating: 1
 */
int bitConditional(int x, int y, int z) { 
    return (x & y) | (~x & z);
}
/*
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 16
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
    //
    int Bn, Bm, B, f;
    n <<= 3;      // 8
    m <<= 3;      // 24
    Bn = x >> n;  // 0xyyxxxx56
    Bm = x >> m;  // 0xyyxxxx12

    Bn &= 0xff;  // 0x56
    Bm &= 0xff;  // 0x12
    f = (0xff << n) | (0xff << m);
    B = (Bn << m) | (Bm << n);
    return (f & B) | (~f & x);
}
/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int logicalShift(int x, int n) {
    int m = x >> 31;
    m <<= 31 + (~n + 1);
    m <<= 1;
    return ((x >> n) ^ m);
}
/*
 * cleanConsecutive1 - change any consecutive 1 to zeros in the binary form of
 * x. Consecutive 1 means a set of 1 that contains more than one 1. Examples
 * cleanConsecutive1(0x10) = 0x10 cleanConsecutive1(0xF0) = 0x0
 *            cleanConsecutive1(0xFFFF0001) = 0x1
 *            cleanConsecutive1(0x4F4F4F4F) = 0x40404040
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 4
 */
int cleanConsecutive1(int x) {
    int left = x << 1;
    int right = x >> 1;
    right &= ~(1 << 31);
    return x & (~left) & (~right);
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
    int sign = x >> 31;  // !sign => 0
    int b1, b2, b4, b8, b16;
    int m = x ^ sign;
    int sum = 0;

    b16 = (!(m >> 16)) << 4;
    sum += b16;
    b8 = (!(m >> (25 + ~sum))) << 3;
    sum += b8;
    b4 = (!(m >> (29 + ~sum))) << 2;
    sum += b4;
    b2 = (!(m >> (31 + ~sum))) << 1;
    sum += b2;
    b1 = (!(m >> (32 + ~sum)));
    sum += b1;
    sum += !m;
    return sign & sum;
}
/*
 * counter1To5 - return 1 + x if x < 5, return 1 otherwise, we ensure that
 * 1<=x<=5 Examples counter1To5(2) = 3,  counter1To5(5) = 1 Legal ops: ~ & ! | +
 * << >> Max ops: 15 Rating: 2
 */
int counter1To5(int x) {
    int lessThan5 = !(x >> 2) | !((x & 1) | (x & 2));
    return 1 + (lessThan5 & x) + ((lessThan5 << 1) & x) +
           ((lessThan5 << 2) & x);
}
/*
 * sameSign - return 1 if x and y have same sign, and 0 otherwise
 *   Examples sameSign(0x12345678, 0) = 1, sameSign(0xFFFFFFFF,0x1) = 0
 *   Legal ops: ! ~ & ! ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int sameSign(int x, int y) { 
    return !((x >> 31) ^ (y >> 31));
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
    int shifted = x << 1;
    int sshft = shifted >> 31;
    int sx = x >> 31;
    int res = x + shifted;
    int sr = res >> 31;
    // sx = 0: sshft = 1 | sr = 1
    // sx = 1: sshft = 0 | sr = 0
    int flow = (sx ^ sshft) | (sx ^ sr);
    int underflow = flow & sx;
    int overflow = flow & (~sx);
    int TMin = 1 << 31;
    int TMax = ~TMin;
    return (overflow & TMax) | (underflow & TMin) | (~flow & res);
}
/*
 * isGreater - if x > y  then return 1, else return 0
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
    int sx = x >> 31;
    int sy = y >> 31;
    int diff = x + (~y + 1);
    int sd = diff >> 31;
    // sx  sy  sd
    //  +   -   -   overflow
    //  -   +   +   underflow 
    int overflow = (sx ^ sy) & ~(sy ^ sd);
    int neq = !!(x ^ y);
    // int neq = x ^ y;
    // diff > 0?
    return ((!sd) ^ overflow) & neq;
}
/*
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y) {
    int sx = x >> 31;
    int sy = y >> 31;
    int diff = x + (~y + 1);
    int sd = diff >> 31;
    int subOK = !((sx ^ sy) & ~(sy ^ sd));
    return subOK;
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples: trueFiveEighths(11) = 6
 *            trueFiveEighths(-9) = -5
 *            trueFiveEighths(0x30000000) = 0x1E000000 (no overflow)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 4
 */
int trueFiveEighths(int x) {
    int sx = x >> 31;
    int rounded = ((x << 29) >> 29) & 7;  // 0xyyyy...123
    int res = x >> 3;
    int rnd = (((rounded << 2) + rounded) >> 3);
    res += (res << 2) + rnd;
    res += (!!rounded) & sx;
    return res;
}
/*
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
    unsigned sign = uf >> 31;
    unsigned exp = (uf >> 23) & 0xff;
    unsigned expleq1 = exp <= 1;
    // when expleq1, frac includes the last bit of exp
    unsigned frac = uf & (0xffffff >> !expleq1);

    if ((uf << 1) == 0) return uf;
    if (exp == 0xff) return uf;
    if (exp <= 1) {
        // carry
        if ((frac & 3) == 3) ++frac;
        frac >>= 1;
    }
    if (exp & 0xff) exp--;
    return (sign << 31) | (exp << 23) | frac;
}
/*
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
    unsigned y = x;
    unsigned sign = y >> 31;
    unsigned exp = 0;
    unsigned frac = 0;
    int E = 31;  // 31 - num of leading zeroes, also num of y's decimal places
    unsigned fracMask = 0x7fffff;
    unsigned roundTo;
    unsigned rounded;

    if (x == 0) return 0;
    if (sign) y = -x;
    while (!(y >> E)) {
        E--;
    }
    // [00..00][1][xx..xx]
    //   31-E   1    E     
    // [s][exp=11][frac=23]
    // y <<= (23 - E)
    y <<= 32 - E;  // E must > 0
    exp = 127 + E;

    rounded = y & 0x1ff;
    frac = (y >> 9) & fracMask;
    roundTo = frac & 1;
    if (rounded + roundTo > 0x100)
        frac++;
    return ((sign << 31) | (exp << 23)) + frac;
}
/*
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
    unsigned sign = uf2 >> 31;
    unsigned exp = (uf2 >> 20) & 0x7ff;  // Bias = 1023
    int E = exp - 1023;                  // 29
    int res = 0;
    uf2 &= 0xfffff;
    if (E >= 31) return 0x80000000;
    if (E < 0) return 0;
    // 20 <= E <= 31:
    // [--(32-E)--][---20---][---(E-20)---]
    //  00......00  from uf2  from uf1

    // 0 <= E <= 20
    // [--(32-E)--][---E----]
    //  00......00  from uf2
    if (E >= 20) res = uf2 << (E - 20);
    else res = uf2 >> (20 - E);
    res |= 1 << E;
    if (E > 20) res |= uf1 >> (52 - E);
    return sign ? -res : res;
}
/*
 * float_negpwr2 - Return bit-level equivalent of the expression 2.0^-x
 *   (2.0 raised to the power -x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^-x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 20
 *   Rating: 4
 */
unsigned float_negpwr2(int x) {
    if (x > 149) return 0;
    if (x >= 127) {
        return 1 << (149 - x);
    }
    if (x < -127) return 0x7f800000;
    return (-x + 127) << 23;
}
