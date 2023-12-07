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




# mine

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