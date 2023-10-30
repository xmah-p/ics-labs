

```bash
make clean; make    # compile csim.c and trans.c

# run "ls -l", captures a trace of each of its memory accesses in occurring order
valgrind --log-fd=1 --tool=lackey -v --trace-mem=yes ls -l
```

# Part A

```bash
./csim-ref -v -s 4 -E 1 -b 4 -t traces/dave.trace

make; ./test-csim
```

忽视所有指令缓存访问: 以 `I` 开头的行
内存访问被完美对齐, 不会越界: 忽视 size

debug on small traces: `traces/dave.trace`

S/L: 至多一个 miss
M: 2 hits / 1 miss + 1 hit (+ 1 eviction)



# Part B

```bash
python3 driver.py
```