# seglist

## size class

except random and random2, all traces have size <= 4096

random2 max 32755, random1 max 32764

category by power of 2 block size or payload size?

size class:

16, 17~20, 21~36, 37~68, 69~132, 133~260, 261~516, 517~1028, 1029~2052, 2053~4100, 4101~8196, 8197~16388, 16389~32772 (\infty)

13 classes in total

form: 

13 list heads + Prologue (1 w) + regular blocks + Epilogue (1 w)

singly lists?





## asize

bash, chrome, corners, firefox-reddit1, 2, firefox, freeciv 等等有 realloc (无需优化)

直接特判 448 可以拿 88 分, 

Results for mm malloc:
  valid  util   ops    secs     Kops  trace
   yes    77%  100000  0.002121 47138 ./traces/alaska.rep
 * yes    89%    4805  0.000302 15905 ./traces/amptjp.rep
 * yes    76%    4162  0.000054 77477 ./traces/bash.rep
 * yes    77%   57716  0.000955 60458 ./traces/boat.rep
 * yes    78%  100000  0.004581 21831 ./traces/boat-plus.rep
 u yes    90%      --        --    -- ./traces/binary2-bal.rep
 * yes    92%    5032  0.000147 34271 ./traces/cccp.rep
 * yes    92%    5848  0.000163 35926 ./traces/cccp-bal.rep
 * yes    74%   11991  0.000183 65632 ./traces/chrome.rep
 * yes    99%   20000  0.000203 98537 ./traces/coalesce-big.rep
   yes    66%   14400  0.000103139260 ./traces/coalescing-bal.rep
   yes   100%      15  0.000001 22590 ./traces/corners.rep
 * yes    94%    5683  0.000466 12197 ./traces/cp-decl.rep
 u yes    71%      --        --    -- ./traces/exhaust.rep
 * yes    96%    5380  0.000418 12860 ./traces/expr-bal.rep
 * yes    83%   99544  0.008821 11285 ./traces/firefox-reddit2.rep
 * yes    92%   55092  0.000728 75709 ./traces/freeciv.rep
   yes    34%      10  0.000000 25316 ./traces/malloc.rep
   yes    28%      17  0.000000 40476 ./traces/malloc-free.rep
 p yes     --    1494  0.000018 83000 ./traces/perl.rep
 * yes    88%    4800  0.000568  8453 ./traces/random.rep
 * yes    85%    4800  0.000688  6977 ./traces/random2.rep
   yes    26%   14401  0.047790   301 ./traces/realloc.rep
16 15     86%  386347  0.018293 21120

Perf index = 48 (util) & 40 (thru) = 88/100

Results for mm malloc:
  valid  util   ops    secs     Kops  trace
   yes    70%  100000  0.002389 41852 ./traces/alaska.rep
 * yes    89%    4805  0.000289 16649 ./traces/amptjp.rep
 * yes    76%    4162  0.000041100459 ./traces/bash.rep
 * yes    77%   57716  0.000603 95727 ./traces/boat.rep
 * yes    78%  100000  0.004666 21432 ./traces/boat-plus.rep
 u yes    90%      --        --    -- ./traces/binary2-bal.rep
 * yes    91%    5032  0.000189 26652 ./traces/cccp.rep
 * yes    91%    5848  0.000213 27415 ./traces/cccp-bal.rep
 * yes    74%   11991  0.000201 59637 ./traces/chrome.rep
 * yes    99%   20000  0.000197101743 ./traces/coalesce-big.rep
   yes    66%   14400  0.000116124322 ./traces/coalescing-bal.rep
   yes   100%      15  0.000001 16358 ./traces/corners.rep
 * yes    93%    5683  0.000743  7653 ./traces/cp-decl.rep
 u yes    71%      --        --    -- ./traces/exhaust.rep
 * yes    96%    5380  0.000380 14175 ./traces/expr-bal.rep
 * yes    82%   99544  0.009793 10164 ./traces/firefox-reddit2.rep
 * yes    92%   55092  0.000827 66581 ./traces/freeciv.rep
   yes    34%      10  0.000001 13532 ./traces/malloc.rep
   yes    28%      17  0.000001 21411 ./traces/malloc-free.rep
 p yes     --    1494  0.000028 52904 ./traces/perl.rep
 * yes    88%    4800  0.001278  3755 ./traces/random.rep
 * yes    85%    4800  0.000728  6597 ./traces/random2.rep
   yes    26%   14401  0.048679   296 ./traces/realloc.rep
16 15     86%  386347  0.020176 19149

Perf index = 47 (util) & 40 (thru) = 87/100

# textbook

header & footer: size + allocated bit

least block size: 2 words

simple first fit

form: 

padding (1 w) + Prologue (2 w) + regular blocks + Epilogue (1 w)

Prologue: Allocated, size = 2 w

Epilogue: Allocated, size = **0**, only has header

# explicit

## remove footer

Allocated block:

- header: size + prev allocated bit + allocated bit
- payload
- no footer

Free block:

- header: size + prev allocated bit + allocated bit
- payload
- footer: size + prev allocated bit + allocated bit

least block size: 2 words 

form:

Prologue (1 w) + regular blocks + Epilogue (1 w)

## explicit

Allocated block:

- header: size + prev allocated bit + allocated bit
- payload
- no footer

Free block:

- header: size + prev allocated bit + allocated bit
- pred, succ
- footer: size + prev allocated bit + allocated bit

least block size: 2 words for allocated block, 4 words for free block

maintain a list head

CIRCULAR!!: otherwise it's hard to deal with NULL

do not insert a block that is already in the list


when will a new free block be created (when should we call insert)?

- a block is freed, and it did not coalesce with its prev (meaning its prev is allocated)
- extending heap when the last block (prev of epilogue) is allocated 
- spliting a free block

when will coalesce be called?

- extend
- free

1. and 2. are actually the same, and both will call coalesce. 

We handle insertion and deletion in coalesce.

coalesce: 

- if prev is allocated, insert curr 
- if next is free, delete next

when will insert be called?

- coalesce
- place

when will a free block be deleted from free list?

- coalesce (next is free)
- place 

IMPORTANT: free will call coalesce, and then insert the coalesced block into the list. if the coalesced block is already in the list, it will be inserted twice. this will happen in case 3 and 4.

DEBUG: 

run amptjp.rep the second time, at the third malloc, when place called, the free block's pred and succ are garbled.

$1 = (block_ptr) 0x800001010
(gdb) x (int*)bp
0x800001010:    0x1f851cc9
(gdb) conti
Continuing.

Program received signal SIGSEGV, Segmentation fault.
0x0000555555558fd2 in delete_free (bp=bp@entry=0x800001010) at mm.c:349
349         SET_PRED(succ, pred);

bp is 0x800001010, pred is 0x1f851cc9 (garbled)

### LIFO

find fit: first fit

free: insert at head

### Address-ordered

find fit: first fit

free: insert at address order, takes linear time



# mine

trace file 格式:

weight num_ids num_ops ignore_ranges

a index size

r (realloc) index size

f index

堆的大小永远严格小于 $2^{32}$ 字节。堆的位置不确定。

`mm_init` 分配初始堆空间, 必须在此函数内重新初始化所有全局指针, 不能在此函数内调用 `mem_init`

`malloc` 返回 8 字节对齐的指针

`free(NULL)` 直接返回

`realloc(void* ptr, size_t new_size)`:
- `realloc(NULL, new_size)` 等同于调用 `malloc(new_size)`
- `realloc(ptr, 0)` 等同于 `free(ptr)`, 返回 `NULL`
- 否则为 `ptr` 重新分配一个至少 `new_size` 大的内存块, 可以和原来的块相同. 内容被拷贝.

`calloc`: `malloc`, 然后零初始化

`mm_cheakheap` 扫描堆, 检查 header 和 footer 是否对应. 接受一个行号参数


`memlib.c` 的 support rountines

不能定义全局数据结构, 如数组, 树, 链表
可以定义全局结构体和标量变量, 如整数类型, 浮点类型, 指针

没有 * 标记的 trace 是不计入时间空间性能计算的
用 u 标记的 trace 只计入空间性能计算
用 p 标记的 trace 只计入空间性能计算

heap checker 检查序言块, 结尾块, 每个块的地址对齐, 块边界, header and footer: minsize, alignment, prev/next allocate/free consistency, header matching its footer, 检查合并 (无连续空闲块)

还检查空闲链表: next's prev is itself, 所有空闲块基址介于 `mem_heap_lo()` 和 `mem_heap_high()`, 遍历整个堆得到的空闲块个数是否等于遍历空闲链表得到的个数, 分离适配中块大小是否适合其大小类 

`-c, -f` tiny trace file

`-V` for verbose info

`-D` do the most checking

Modify makefile, use `-g` in the compile flags (restore when calculating performance pts)

gdb `watch`

b find_fit if size == 24

rwatch <thing> - stop on reading a memory location
awatch <thing> - stop on any memory access


sizeof(size_t) is 8!

profiler: `gprof`

```bash
ln -s mm-explicit mm.c
```

# malloclab

ics malloclab 提示: （是dz debug卡的比较久的点）
1. 假如你定义了除了已有的那个heap_listp之外的任何全局变量，则你应该在mm_init函数开头手动将他们初始化；因为每个trace要跑12遍，mdriver每遍都默认只会初始化heap_listp，那么你定义的那些全局变量就会停留在上一次run完之后的值，从而可能会导致你怎么de都de不掉的bug。。。
2. 假如你在place函数中并不是把bp作为最后被分配块的块指针的话，请注意malloc的返回值应当是指向被分配那块的指针，也就是说bp加个偏移量才是malloc的返回值，否则就全乱套了。。。
3. 注意封装，能模块化的尽量模块化，最好就是要做到“在编程时不需要考虑指针运算的细节，只需要根据你想要的语义调宏就好了”
#19755473 1年前 2022-11-28 10:21
[Alice] 补充：
4. 去脚部之后如果出现“1 garbled byte”，大概率是在coalesce时不小心往相邻的非空闲块试图写入脚部信息，但注意非空闲块是没有脚部只有头部的
5. checkheap一定要先写，节省大量debug时间不是简单说说的，写得越详细越好，但当你的程序没有任何bug，可以开始测试时候，注释掉所有的debug语句（包括printf），否则你的thru可能会很低
6. 还是thru的问题，如果你发现你的程序根本没有任何bug，使用first fit（千万不要用best fit）但thru还是很低，不如试试调参数，调chunksize调分离链表的组数，调着调着说不定就有惊喜
7. 如果是先写隐式去脚部再改显式去脚部，最小块大小会从8字节变到16字节，这时一定要记得把程序的所有部分都检查一下看看是否都适应了新的最小块要求（如place），否则可能会造成莫名其妙的segmentation fault
#19755493 1年前 2022-11-28 10:23
[Alice] Re Alice: 4这一点专门适用于去脚部的情况哈，但去脚部带来的增益真的是比较大的，写起来也不困难网上有很多提示

具体内容为写一个动态内存分配器。debug和优化过程极度痛苦，今年降低了难度，但只是降低了优化程序的难度。想debug从而跑通程序仍然很难。dz水平垃圾，跑通程序+优化到接近满分的过程足足花了30小时
【建议早点开始，做好心理准备，给malloc留出足够多的时间】【建议速战速决，malloclab在期末季前两周放出来，非常魔鬼。如果为了3分5分的小优化花上一天时间，实在不太值】

大众思路为分离空闲链表，少数大佬可能会写平衡树，但普通人采用前者，亲测也能95+

排坑：1.malloclab也有助教手动评分环节，强烈建议打磨好自己程序的每一个细节   2.地址是8字节不是4字节！其实可以用4字节偏移量表示地址（指针），但需要做特殊处理。千万不要直接用4字节表示地址     3.书上的优化方式很有用（比如去脚部），建议写lab之前好好把书看一遍，虽然照搬书上的方法会给0分，但看懂了就很好写
关于debug方式：1.gdb  2.自己写的checkheap函数  3.printf打法打印相关信息





malloclab 赛后总结

写的过程是: segmentation fault - 写出显式链表 - 改成分离链表 - 优化到100
segmentation fault （外加写错了导致 util 零分之类的）时长大概有一周，后续每一步其实也就用了2-4个小时左右

segmentation fault 调不出来以至于重写几遍主要因为偷懒，理所当然地认为自己看懂并会使用 mm_textbook 给的那些宏

踩过的坑包括: 
textbook 给了一个 PUT(p, val) 的宏，作用是往 p 处填一个 4Byte 无符号的 val —— 如果你想向 p 处放一个指针，显然不能用这个宏，因为指针是 8Byte，同样的道理适用于他给的 GET(p)

还有，如果要把一个指针移动若干 Byte, 要确保这个指针的类型是 char * 而不是 unsigned *

另外比如 GET_SIZE(p) 处，p 实际上是某个块的头，而不是我们在底下一直用的块指针 bp, 也就是说（按 textbook 的话）如果我们现在在的块是 bp，我们实际上要用 GET_SIZE(HDRP(bp)) 来求出它的大小，而不是 GET_SIZE(bp)

最后一个地方就是，textbook 的 PREV_BLKP 是取了前一个块脚部的 size，所以如果想使用去脚部的优化，就要确保你的代码不会对一个 allocated block 取 PREV_BLKP

以上说的都非常基本和弱智，但dz这种没写过代码的菜b在把宏改成带 assert 的 static function 之后才意识到好多地方都写错了，甚至前后都是不一致的

把代码里的错误改掉之后的优化过程其实体验还不错，每次运行至少都是有分的，看 trace 的具体数据就可以知道我们做的优化的提升和不足，95 分以上的优化其实可能要对着数据的 size 改一改代码，这应该不算 magic number

总之就是强烈不建议一上手就使用没有任何安全保证的宏定义，在完全搞清楚“自己在操作数据还是操作指针、是从指针里取出数据还是从指针里取出指针、某几个特定操作需要被操作的数应该有什么样的性质（没有这种性质就是错的！）”之前，我觉得有必要在一开始就让代码在错误的地方自己报 error，而不是对着代码或者实际的堆肉眼 debug

（没有加❤i❤c❤s❤的 tag，因为写得比较长怕污染版面）
...typo了一个地方，应该是"取 PREV_BLKP 的时候要确保前一个块一定是 free 而不是 allocated"


一些诡异的操作：可以试试**调整expand heap的尺寸**

实际上你可以用分离适配+去脚部+维护单调性+单链表获得满分

ics malloclab 提示: （是dz debug卡的比较久的点）
1. 假如你定义了除了已有的那个heap_listp之外的任何全局变量，则你应该在mm_init函数开头手动将他们初始化；因为每个trace要跑12遍，mdriver每遍都默认只会初始化heap_listp，那么你定义的那些全局变量就会停留在上一次run完之后的值，从而可能会导致你怎么de都de不掉的bug。。。
2. 假如你在place函数中并不是把bp作为最后被分配块的块指针的话，请注意malloc的返回值应当是指向被分配那块的指针，也就是说bp加个偏移量才是malloc的返回值，否则就全乱套了。。。
3. 注意封装，能模块化的尽量模块化，最好就是要做到“在编程时不需要考虑指针运算的细节，只需要根据你想要的语义调宏就好了”
#19755473 1年前 2022-11-28 10:21
[Alice] 补充：
4. 去脚部之后如果出现“1 garbled byte”，大概率是在coalesce时不小心往相邻的非空闲块试图写入脚部信息，但注意非空闲块是没有脚部只有头部的
5. checkheap一定要先写，节省大量debug时间不是简单说说的，写得越详细越好，但当你的程序没有任何bug，可以开始测试时候，注释掉所有的debug语句（包括printf），否则你的thru可能会很低
6. 还是thru的问题，如果你发现你的程序根本没有任何bug，使用first fit（千万不要用best fit）但thru还是很低，不如试试调参数，调chunksize调分离链表的组数，调着调着说不定就有惊喜
7. 如果是先写隐式去脚部再改显式去脚部，最小块大小会从8字节变到16字节，这时一定要记得把程序的所有部分都检查一下看看是否都适应了新的最小块要求（如place），否则可能会造成莫名其妙的segmentation fault
#19755493 1年前 2022-11-28 10:23
[Alice] Re Alice: 4这一点专门适用于去脚部的情况哈，但去脚部带来的增益真的是比较大的，写起来也不困难网上有很多提示

**盯着binary2bal.rep改了改，满了**



#malloclab ics
求问各位已经做完malloclab的同学，boat和chrome那两个trace的util做的比较好的话能到多少啊
#20100494 11月前 2022-12-09 15:11
[Alice] 77%和76%，util已经满了
#20100660 11月前 2022-12-09 15:17
[洞主] 谢谢谢谢，可以再问下针对这两个trace还有那个binary2-bal的trace可以怎么优化吗
#20100847 11月前 2022-12-09 15:24
[洞主] Re Alice: a君还在吗qaq
#20102062 11月前 2022-12-09 16:13
[Bob] boat 77% chrome 76% binary2-bal 90%
#20102085 11月前 2022-12-09 16:14
[Bob] boat好像申请了很多payload大小为12的块，想想怎么把12的payload装进16的块里而不是32的块
#20102087 11月前 2022-12-09 16:15
[Alice] Re 洞主: 这两个我没优化过，binary你可以看看trace的数据，针对性地进行对齐就可以了
#20102132 11月前 2022-12-09 16:17
[Bob] binary2-bal 是反复申请两种大小的块，但是其中一个size会导致很多内部碎片，可以尝试处理一下那个size
#20102543 11月前 2022-12-09 16:33
[洞主] 谢谢大家，我再去看看

 分离空闲链表+去脚部+4字节指针+按组选择首次/最佳适配
#25914185 2天前 12-07 20:56
[洞主] 还能咋优化啊？
#25914212 2天前 12-07 20:58
[Alice] 我当年很神奇 前面几个lab都是大量借助博客指导 就这个完全自己打满的
#25914218 2天前 12-07 20:58
Alice 我当年很神奇 前面几个lab都是大量借助博客指导 就这个完全自己打满的
[洞主] Re Alice: 笑死我也是的
#25914221 2天前 12-07 20:59
Alice 我当年很神奇 前面几个lab都是大量借助博客指导 就这个完全自己打满的
[洞主] Re Alice: 这个lab一点网上的都没看
#25914255 2天前 12-07 21:01
[洞主] 开始对参数炼丹
#25916181 1天前 12-07 23:04
[Bob] 你怎么写的这么快
#25916903 1天前 12-07 23:45
[Carol] 为什么我也做的这些就只有94a😭😭😭😭😭😭😭
#25921593 1天前 12-08 11:48
[Dave] 考虑对数据优化
#25925833 1天前 12-08 19:28
[Eve] 请问下怎么做到4字节指针的啊
#25928925 22小时前 12-09 00:01
[洞主] 不卷了不卷了98交了hh
#25928930 22小时前 12-09 00:02
Carol 为什么我也做的这些就只有94a😭😭😭😭😭😭😭
[洞主] Re Carol: 可能是一些细节问题吧🤔🤔
#25928938 22小时前 12-09 00:02
Dave 考虑对数据优化
[洞主] Re Dave: 确实，我已经改过chunksize了，能混2分
#25928948 22小时前 12-09 00:03
Eve 请问下怎么做到4字节指针的啊
[洞主] Re Eve: 取地址的后32为存储到块里，用的时候就把32位的数和heaplistp的前32位拼接一下
#25928966 22小时前 12-09 00:05
Eve 请问下怎么做到4字节指针的啊
[洞主] Re Eve: 就是在uint32和uint64间来回类型强制转换就行了
#25929016 22小时前 12-09 00:08
[洞主] 分享两个小寄巧：
chunksize可以优化一下混点分
小的块用first fit 大的块用best fit可以同时白嫖前者的thru分和后者的util分捏