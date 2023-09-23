#line 175 "bits.c"
int bitXnor(int x, int y) {
    return (~(x | y)) |( ~(~x | ~y));
#line 0 "<command-line>"
#line 177 "bits.c"
}
#line 185
int bitConditional(int x, int y, int z) {
    return (x & y) |( ~x & z);
}
#line 197
int byteSwap(int x, int n, int m) {

    int Bn;int Bm;int B;int f;
    n <<= 3;
    m <<= 3;
    Bn = x >> n;
    Bm = x >> m;

    Bn &= 0xff;
    Bm &= 0xff;
    f =( 0xff << n) |( 0xff << m);
    B =( Bn << m) |( Bm << n);
    return (f & B) |( ~f & x);
}
#line 219
int logicalShift(int x, int n) {
    int m=  x >> 31;
    m <<= 31 +( ~n + 1);
    m <<= 1;
    return ((x >> n) ^ m);
}
#line 235
int cleanConsecutive1(int x) {
    int left=  x << 1;
    int right=  x >> 1;
    right &= ~(1 << 31);
    return x &( ~left) &( ~right);
}
#line 249
int leftBitCount(int x) {
    int sign=  x >> 31;
    int b1;int b2;int b4;int b8;int b16;
    int m=  x ^ sign;
    int sum=  0;

    b16 =( !(m >> 16)) << 4;
    sum += b16;
    b8 =( !(m >>( 25 + ~sum))) << 3;
    sum += b8;
    b4 =( !(m >>( 29 + ~sum))) << 2;
    sum += b4;
    b2 =( !(m >>( 31 + ~sum))) << 1;
    sum += b2;
    b1 =( !(m >>( 32 + ~sum)));
    sum += b1;
    sum += !m;
    return sign & sum;
}
#line 273
int counter1To5(int x) {
    int lessThan5=  !(x >> 2) | !((x & 1) |( x & 2));
    return 1 +( lessThan5 & x) +(( lessThan5 << 1) & x) +((
             lessThan5 << 2) & x);
}
#line 285
int sameSign(int x, int y) {
    return !((x >> 31) ^( y >> 31));
}
#line 299
int satMul3(int x) {
    int shifted=  x << 1;
    int sshft=  shifted >> 31;
    int sx=  x >> 31;
    int res=  x + shifted;
    int sr=  res >> 31;


    int flow=(  sx ^ sshft) |( sx ^ sr);
    int underflow=  flow & sx;
    int overflow=  flow &( ~sx);
    int TMin=  1 << 31;
    int TMax=  ~TMin;
    return (overflow & TMax) |( underflow & TMin) |( ~flow & res);
}
#line 321
int isGreater(int x, int y) {
    int sx=  x >> 31;
    int sy=  y >> 31;
    int diff=  x +( ~y + 1);
    int sd=  diff >> 31;
    int exs=  sx ^ sy;
    int overflow=  !!(exs & ~(sy ^ sd));
    int neq=  !!(x ^ y);


    return ((!sd) ^ overflow) & neq;
}
#line 341
int subOK(int x, int y) {
    int sx=  x >> 31;
    int sy=  y >> 31;
    int diff=  x +( ~y + 1);
    int sd=  diff >> 31;
    int exs=  sx ^ sy;
    int subOK=  !(exs & ~(sy ^ sd));
    return subOK;
}
#line 360
int trueFiveEighths(int x) {
    int sx=  x >> 31;
    int rounded=((  x << 29) >> 29) & 7;
    int res=  x >> 3;
    int rnd=(((  rounded << 2) + rounded) >> 3);
    res +=( res << 2) + rnd;
    res +=( !!rounded) & sx;
    return res;
}
#line 380
unsigned float_half(unsigned uf) {
    unsigned sign=  uf >> 31;
    unsigned exp=(  uf >> 23) & 0xff;
    unsigned frac=  uf & 0x7fffff;
    if (exp == 0xff) return uf;

    if (!(exp & 0xff)) {
        if ((frac & 3) == 3) ++frac;
        frac >>= 1;
    } else {
        exp--;
        if (exp == 0) {
#line 395
            if ((frac & 3) == 3) {
                frac >>= 1;
                frac |= 0x400000;
                ++frac;
                if (frac == 0x800000) ++exp;
            } else {
                frac >>= 1;
                frac |= 0x400000;
            }
        }
    }
    frac &= 0x7fffff;


    return (sign << 31) |( exp << 23) | frac;
}
#line 420
unsigned float_i2f(int x) {
    unsigned y=  x;
    unsigned sign=  y >> 31;
    unsigned exp;
    unsigned frac;
    int i=  31;
    unsigned fracMask=  0x007fffff;
    unsigned roundTo;
    unsigned rounded;

    if (x == 0) return 0;
    if (sign) y = -x;

    while (!(y >> i)) {
        i--;
    }

    y <<= 32 - i;
    exp = 127 + i;

    rounded = y & 0x1ff;
    frac =( y >> 9);
    roundTo = frac & 1;

    if (rounded >= 0x100) {
        if (roundTo || rounded > 0x100) {
            if (frac == fracMask) ++exp;
            frac++;
        }
    }
    return (sign << 31) |( exp << 23) |( frac & fracMask);
}
#line 465
int float64_f2i(unsigned uf1, unsigned uf2) {
    unsigned sign=  uf2 >> 31;
    unsigned exp=(  uf2 >> 20) & 0x7ff;
    int E=  exp - 1023;
    int res=  0;
    int D;
    uf2 &= 0xfffff;
    if (E >= 31) return 0x80000000;

    if (E >= 20) res = uf2 <<( E - 20);
    else if (E >= 0) res = uf2 >>( 20 - E);
    res |= 1 << E;
    if (E > 20) 
        res |= uf1 >>( 52 - E);
    if (E < 0) 
        return 0;
    if (sign) res = -res;
    return res;
}
#line 497
unsigned float_negpwr2(int x) {
    if (x > 149) return 0;
    if (x >= 127) {
        return 1 <<( 149 - x);
    }
    if (x < -127) return 0x7f800000;
    return (-x + 127) << 23;
}
