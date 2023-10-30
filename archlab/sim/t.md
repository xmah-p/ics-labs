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

