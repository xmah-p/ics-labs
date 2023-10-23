# Part A

y86-64 code in `y86-code` dir.

```bash
make asum.yo    # use YAS to compile /y86-code/asum.ys

../misc/yis asum.yo    # asum.yo in y86-code, simulates the code
```

`%rbx`、`%rbp`、`%r12`、`%r13`、`%r14`、`%r15` 是**被调用者保存寄存器**。

`%rax`、`%rdi`、`%rsi`、`%rdx`、`%rcx`、`%r8`、`%r9`、`%r10`、`%r11` 是**调用者保存寄存器**。

# Part B

```bash
cd sim; make clean; make     # gui off

cd sim; make clean; make GUIMODE=-DHAS_GUI

make clean; make VERSION=full    # Build ssim

./ssim -t ../y86-code/asumj.yo    # Run ssim with asumj.yo

./ssim -g ../y86-code/asumi.yo    # Run ssim with asumi.yo in GUI mode

cd ../y86-code; make testssim     # benchmark, added instructions not included

cd ../ptest; make SIM=../seq/ssim  # regression test

cd ../ptest; make SIM=../seq/ssim TFLAGS=-ij  # regression test, added instructions included


./ssim -g ../y86-code/asum.yo &   # Run ssim with asum.yo in GUI mode, in background
```

```
iaddq V, rB 
____________________________________________________ 
C 0 | F rB | V                                      |

jm rB, V: jump to M[V(rB)]

```

# Part C

```bash
./check-len.pl < ncopy.yo

make drivers  # rebuild drivers after modifying ncopy.ys

make clean; make VERSION=full GUIMODE=-DHAS_GUI; 
./correctness.pl -p; ./correctness.pl; ./benchmark.pl

./psim sdriver.yo    # test on small test set
./psim ldriver.yo    # test on larger test set
# or -g for GUI

make drivers; ../misc/yis sdriver.yo    # test if ncopy.ys works with yis

./correctness.pl    # test ncopy.ys

cd ../y86-code; make testpsiml; cd ../pipe

cd ../ptest; make SIM=../pipe/psim TFLAGS=-i; cd ../pipe  # if iaddq implemented

./correctness.pl -p    # test both

./benchmark.pl
```

`iaddq` added: 12.70 -> 12.62

条件加法：11.19

特判优化：7.93



xm@xm:~/ics/archlab/sim/pipe$ make clean; make VERSION=full DGUI=HAS_GUI; ./correctness.pl ; ./correctness.pl -p; ./benchmark.pl
rm -f psim pipe-*.c *.o *.exe *~
# Building the pipe-full.hcl version of PIPE
../misc/hcl2c -n pipe-full.hcl < pipe-full.hcl > pipe-full.c
gcc -Wall -O2  -I../misc  -o psim psim.c pipe-full.c \
        ../misc/isa.c  -lm
./gen-driver.pl -n 4 -f ncopy.ys > sdriver.ys
../misc/yas sdriver.ys
./gen-driver.pl -n 63 -f ncopy.ys > ldriver.ys
../misc/yas ldriver.ys
Simulating with instruction set simulator yis
        ncopy
0       OK
1       OK
2       OK
3       OK
4       OK
5       OK
6       OK
7       OK
8       OK
9       OK
10      OK
11      OK
12      OK
13      OK
14      OK
15      OK
16      OK
17      OK
18      OK
19      OK
20      OK
21      OK
22      OK
23      OK
24      OK
25      OK
26      OK
27      OK
28      OK
29      OK
30      OK
31      OK
32      OK
33      OK
34      OK
35      OK
36      OK
37      OK
38      OK
39      OK
40      OK
41      OK
42      OK
43      OK
44      OK
45      OK
46      OK
47      OK
48      OK
49      OK
50      OK
51      OK
52      OK
53      OK
54      OK
55      OK
56      OK
57      OK
58      OK
59      OK
60      OK
61      OK
62      OK
63      OK
64      OK
128     OK
192     OK
256     OK
68/68 pass correctness test
Simulating with pipeline simulator psim
        ncopy
0       OK
1       OK
2       OK
3       OK
4       OK
5       OK
6       OK
7       OK
8       OK
9       OK
10      OK
11      OK
12      OK
13      OK
14      OK
15      OK
16      OK
17      OK
18      OK
19      OK
20      OK
21      OK
22      OK
23      OK
24      OK
25      OK
26      OK
27      OK
28      OK
29      OK
30      OK
31      OK
32      OK
33      OK
34      OK
35      OK
36      OK
37      OK
38      OK
39      OK
40      OK
41      OK
42      OK
43      OK
44      OK
45      OK
46      OK
47      OK
48      OK
49      OK
50      OK
51      OK
52      OK
53      OK
54      OK
55      OK
56      OK
57      OK
58      OK
59      OK
60      OK
61      OK
62      OK
63      OK
64      OK
128     OK
192     OK
256     OK
68/68 pass correctness test
        ncopy
0       27
1       28      28.00
2       58      29.00
3       62      20.67
4       66      16.50
5       70      14.00
6       74      12.33
7       78      11.14
8       82      10.25
9       71      7.89
10      81      8.10
11      102     9.27
12      106     8.83
13      110     8.46
14      114     8.14
15      118     7.87
16      122     7.62
17      126     7.41
18      111     6.17
19      121     6.37
20      142     7.10
21      146     6.95
22      150     6.82
23      154     6.70
24      158     6.58
25      162     6.48
26      166     6.38
27      151     5.59
28      161     5.75
29      182     6.28
30      186     6.20
31      190     6.13
32      194     6.06
33      198     6.00
34      202     5.94
35      206     5.89
36      191     5.31
37      201     5.43
38      222     5.84
39      226     5.79
40      230     5.75
41      234     5.71
42      238     5.67
43      242     5.63
44      246     5.59
45      231     5.13
46      241     5.24
47      262     5.57
48      266     5.54
49      270     5.51
50      274     5.48
51      278     5.45
52      282     5.42
53      286     5.40
54      271     5.02
55      281     5.11
56      302     5.39
57      306     5.37
58      310     5.34
59      314     5.32
60      318     5.30
61      322     5.28
62      326     5.26
63      311     4.94
64      321     5.02
Average CPE     7.59
Score   58.2/60.0