
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 90 37 40 00 	mov    $0x403790,%r8
  40148a:	48 c7 c1 20 37 40 00 	mov    $0x403720,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 b2 20 00 00       	call   4036ed <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 a5 20 00 00       	call   4036ed <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 f1 1c 00 00       	call   403432 <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 bb 0f 00 00       	call   402754 <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 43 26 40 00 	mov    $0x402643,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 e9 25 40 00 	mov    $0x4025e9,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 9d 26 40 00 	mov    $0x40269d,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 f7 26 40 00 	mov    $0x4026f7,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 82 08 00 00       	call   402232 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 d3 0e 00 00       	call   4028b0 <stable_launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 50 0d 00 00       	call   402754 <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 8e 49 00 00    	imul   $0x498e,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401a37:	69 c0 d8 04 00 00    	imul   $0x4d8,%eax,%eax
  401a3d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401a41:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a45:	69 c0 a3 32 00 00    	imul   $0x32a3,%eax,%eax
  401a4b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a4f:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a53:	69 c0 26 4d 00 00    	imul   $0x4d26,%eax,%eax
  401a59:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a5d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a61:	69 c0 cf c5 00 00    	imul   $0xc5cf,%eax,%eax
  401a67:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a6b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a6f:	69 c0 d8 d6 00 00    	imul   $0xd6d8,%eax,%eax
  401a75:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a79:	8b 04 24             	mov    (%rsp),%eax
  401a7c:	69 c0 ac 98 00 00    	imul   $0x98ac,%eax,%eax
  401a82:	89 04 24             	mov    %eax,(%rsp)
  401a85:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a89:	69 c0 4d b3 00 00    	imul   $0xb34d,%eax,%eax
  401a8f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a93:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a97:	69 c0 81 ac 00 00    	imul   $0xac81,%eax,%eax
  401a9d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401aa5:	69 c0 6f 92 00 00    	imul   $0x926f,%eax,%eax
  401aab:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401aaf:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ab3:	69 c0 ff 96 00 00    	imul   $0x96ff,%eax,%eax
  401ab9:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401abd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ac1:	69 c0 e2 28 00 00    	imul   $0x28e2,%eax,%eax
  401ac7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401acb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401acf:	69 c0 e8 35 00 00    	imul   $0x35e8,%eax,%eax
  401ad5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ad9:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401add:	69 c0 8c 76 00 00    	imul   $0x768c,%eax,%eax
  401ae3:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ae7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aeb:	69 c0 96 b4 00 00    	imul   $0xb496,%eax,%eax
  401af1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401af5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401af9:	69 c0 b7 8e 00 00    	imul   $0x8eb7,%eax,%eax
  401aff:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b03:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b07:	69 c0 e5 ff 00 00    	imul   $0xffe5,%eax,%eax
  401b0d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b11:	8b 04 24             	mov    (%rsp),%eax
  401b14:	69 c0 74 c2 00 00    	imul   $0xc274,%eax,%eax
  401b1a:	89 04 24             	mov    %eax,(%rsp)
  401b1d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b21:	69 c0 04 7e 00 00    	imul   $0x7e04,%eax,%eax
  401b27:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b2b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b2f:	69 c0 4b ed 00 00    	imul   $0xed4b,%eax,%eax
  401b35:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b39:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b3d:	69 c0 15 bf 00 00    	imul   $0xbf15,%eax,%eax
  401b43:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b47:	8b 04 24             	mov    (%rsp),%eax
  401b4a:	69 c0 c2 83 00 00    	imul   $0x83c2,%eax,%eax
  401b50:	89 04 24             	mov    %eax,(%rsp)
  401b53:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b57:	6b c0 42             	imul   $0x42,%eax,%eax
  401b5a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b5e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b62:	69 c0 6e d8 00 00    	imul   $0xd86e,%eax,%eax
  401b68:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b6c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b70:	69 c0 7d df 00 00    	imul   $0xdf7d,%eax,%eax
  401b76:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b7a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b7e:	69 c0 fd 3d 00 00    	imul   $0x3dfd,%eax,%eax
  401b84:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b88:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b8c:	69 c0 af 1c 00 00    	imul   $0x1caf,%eax,%eax
  401b92:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b96:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b9a:	69 c0 ce fc 00 00    	imul   $0xfcce,%eax,%eax
  401ba0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ba4:	8b 04 24             	mov    (%rsp),%eax
  401ba7:	69 c0 fc 86 00 00    	imul   $0x86fc,%eax,%eax
  401bad:	89 04 24             	mov    %eax,(%rsp)
  401bb0:	8b 04 24             	mov    (%rsp),%eax
  401bb3:	69 c0 e7 95 00 00    	imul   $0x95e7,%eax,%eax
  401bb9:	89 04 24             	mov    %eax,(%rsp)
  401bbc:	8b 04 24             	mov    (%rsp),%eax
  401bbf:	69 c0 b1 29 00 00    	imul   $0x29b1,%eax,%eax
  401bc5:	89 04 24             	mov    %eax,(%rsp)
  401bc8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bcc:	69 c0 de 61 00 00    	imul   $0x61de,%eax,%eax
  401bd2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bd6:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bda:	69 c0 2e b8 00 00    	imul   $0xb82e,%eax,%eax
  401be0:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401be4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401be8:	69 c0 1f 5c 00 00    	imul   $0x5c1f,%eax,%eax
  401bee:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401bf2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401bf6:	69 c0 ed 33 00 00    	imul   $0x33ed,%eax,%eax
  401bfc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c00:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c04:	69 c0 06 7a 00 00    	imul   $0x7a06,%eax,%eax
  401c0a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c0e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c12:	69 c0 8e 0d 00 00    	imul   $0xd8e,%eax,%eax
  401c18:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c1c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c20:	69 c0 c5 4a 00 00    	imul   $0x4ac5,%eax,%eax
  401c26:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c2a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c2e:	69 c0 d7 34 00 00    	imul   $0x34d7,%eax,%eax
  401c34:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c38:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401c3c:	69 c0 93 ba 00 00    	imul   $0xba93,%eax,%eax
  401c42:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401c46:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c4a:	69 c0 11 8e 00 00    	imul   $0x8e11,%eax,%eax
  401c50:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c54:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c58:	69 c0 d2 8a 00 00    	imul   $0x8ad2,%eax,%eax
  401c5e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c62:	8b 04 24             	mov    (%rsp),%eax
  401c65:	69 c0 70 5f 00 00    	imul   $0x5f70,%eax,%eax
  401c6b:	89 04 24             	mov    %eax,(%rsp)
  401c6e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c72:	69 c0 58 fd 00 00    	imul   $0xfd58,%eax,%eax
  401c78:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c7c:	8b 04 24             	mov    (%rsp),%eax
  401c7f:	69 c0 fa fa 00 00    	imul   $0xfafa,%eax,%eax
  401c85:	89 04 24             	mov    %eax,(%rsp)
  401c88:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c8c:	69 c0 ff 21 00 00    	imul   $0x21ff,%eax,%eax
  401c92:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c96:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c9a:	69 c0 de b7 00 00    	imul   $0xb7de,%eax,%eax
  401ca0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ca4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ca8:	69 c0 41 4e 00 00    	imul   $0x4e41,%eax,%eax
  401cae:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cb2:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401cb6:	69 c0 2f a8 00 00    	imul   $0xa82f,%eax,%eax
  401cbc:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401cc0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401cc4:	69 c0 3f a6 00 00    	imul   $0xa63f,%eax,%eax
  401cca:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401cce:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401cd2:	69 c0 cb f3 00 00    	imul   $0xf3cb,%eax,%eax
  401cd8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401cdc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ce0:	69 c0 20 cf 00 00    	imul   $0xcf20,%eax,%eax
  401ce6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cea:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401cee:	69 c0 0e 1e 00 00    	imul   $0x1e0e,%eax,%eax
  401cf4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cf8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401cfc:	69 c0 2a 0f 00 00    	imul   $0xf2a,%eax,%eax
  401d02:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d06:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401d0a:	69 c0 18 3d 00 00    	imul   $0x3d18,%eax,%eax
  401d10:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401d14:	8b 04 24             	mov    (%rsp),%eax
  401d17:	69 c0 3a 67 00 00    	imul   $0x673a,%eax,%eax
  401d1d:	89 04 24             	mov    %eax,(%rsp)
  401d20:	8b 04 24             	mov    (%rsp),%eax
  401d23:	69 c0 4e c2 00 00    	imul   $0xc24e,%eax,%eax
  401d29:	89 04 24             	mov    %eax,(%rsp)
  401d2c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d30:	69 c0 eb 75 00 00    	imul   $0x75eb,%eax,%eax
  401d36:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d3a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d3e:	69 c0 ac 79 00 00    	imul   $0x79ac,%eax,%eax
  401d44:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d48:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d4c:	69 c0 2a 08 00 00    	imul   $0x82a,%eax,%eax
  401d52:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d56:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d5a:	69 c0 83 06 00 00    	imul   $0x683,%eax,%eax
  401d60:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d64:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d68:	69 c0 51 99 00 00    	imul   $0x9951,%eax,%eax
  401d6e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d72:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d76:	69 c0 06 ae 00 00    	imul   $0xae06,%eax,%eax
  401d7c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d80:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d84:	69 c0 6e 2e 00 00    	imul   $0x2e6e,%eax,%eax
  401d8a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d8e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d92:	69 c0 f3 91 00 00    	imul   $0x91f3,%eax,%eax
  401d98:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d9c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401da0:	69 c0 53 32 00 00    	imul   $0x3253,%eax,%eax
  401da6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401daa:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401dae:	69 c0 f3 f4 00 00    	imul   $0xf4f3,%eax,%eax
  401db4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401db8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401dbc:	69 c0 18 87 00 00    	imul   $0x8718,%eax,%eax
  401dc2:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401dc6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dca:	69 c0 58 1b 00 00    	imul   $0x1b58,%eax,%eax
  401dd0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401dd4:	8b 04 24             	mov    (%rsp),%eax
  401dd7:	69 c0 e6 65 00 00    	imul   $0x65e6,%eax,%eax
  401ddd:	89 04 24             	mov    %eax,(%rsp)
  401de0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401de4:	69 c0 ff 5f 00 00    	imul   $0x5fff,%eax,%eax
  401dea:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401dee:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401df2:	69 c0 9a 23 00 00    	imul   $0x239a,%eax,%eax
  401df8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401dfc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e00:	69 c0 2d bf 00 00    	imul   $0xbf2d,%eax,%eax
  401e06:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e0a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e0e:	69 c0 0b 44 00 00    	imul   $0x440b,%eax,%eax
  401e14:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e18:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401e1c:	69 c0 c9 0c 00 00    	imul   $0xcc9,%eax,%eax
  401e22:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401e26:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e2a:	69 c0 80 ad 00 00    	imul   $0xad80,%eax,%eax
  401e30:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e34:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e38:	69 c0 5f 76 00 00    	imul   $0x765f,%eax,%eax
  401e3e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e42:	8b 04 24             	mov    (%rsp),%eax
  401e45:	69 c0 ae d1 00 00    	imul   $0xd1ae,%eax,%eax
  401e4b:	89 04 24             	mov    %eax,(%rsp)
  401e4e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e52:	69 c0 65 2e 00 00    	imul   $0x2e65,%eax,%eax
  401e58:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e61:	ba 00 00 00 00       	mov    $0x0,%edx
  401e66:	83 f8 09             	cmp    $0x9,%eax
  401e69:	77 0c                	ja     401e77 <scramble+0x473>
  401e6b:	89 c1                	mov    %eax,%ecx
  401e6d:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401e70:	01 ca                	add    %ecx,%edx
  401e72:	83 c0 01             	add    $0x1,%eax
  401e75:	eb ef                	jmp    401e66 <scramble+0x462>
  401e77:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401e7c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e83:	00 00 
  401e85:	75 07                	jne    401e8e <scramble+0x48a>
  401e87:	89 d0                	mov    %edx,%eax
  401e89:	48 83 c4 38          	add    $0x38,%rsp
  401e8d:	c3                   	ret    
  401e8e:	e8 c1 08 00 00       	call   402754 <__stack_chk_fail>

0000000000401e93 <getbuf>:
  401e93:	f3 0f 1e fa          	endbr64 
  401e97:	48 83 ec 28          	sub    $0x28,%rsp
  401e9b:	48 89 e7             	mov    %rsp,%rdi
  401e9e:	e8 cd 03 00 00       	call   402270 <Gets>
  401ea3:	b8 01 00 00 00       	mov    $0x1,%eax
  401ea8:	48 83 c4 28          	add    $0x28,%rsp
  401eac:	c3                   	ret    

0000000000401ead <getbuf_withcanary>:
  401ead:	f3 0f 1e fa          	endbr64 
  401eb1:	55                   	push   %rbp
  401eb2:	48 89 e5             	mov    %rsp,%rbp
  401eb5:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401ebc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ec3:	00 00 
  401ec5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ec9:	31 c0                	xor    %eax,%eax
  401ecb:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401ed2:	00 00 00 
  401ed5:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401edb:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401ee1:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401ee8:	48 89 c7             	mov    %rax,%rdi
  401eeb:	e8 80 03 00 00       	call   402270 <Gets>
  401ef0:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  401ef6:	48 63 d0             	movslq %eax,%rdx
  401ef9:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f00:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  401f07:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f0e:	48 89 ce             	mov    %rcx,%rsi
  401f11:	48 89 c7             	mov    %rax,%rdi
  401f14:	e8 57 f4 ff ff       	call   401370 <memcpy@plt>
  401f19:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401f1f:	48 63 d0             	movslq %eax,%rdx
  401f22:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401f29:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  401f30:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  401f37:	48 89 c6             	mov    %rax,%rsi
  401f3a:	48 89 cf             	mov    %rcx,%rdi
  401f3d:	e8 2e f4 ff ff       	call   401370 <memcpy@plt>
  401f42:	b8 01 00 00 00       	mov    $0x1,%eax
  401f47:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401f4b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401f52:	00 00 
  401f54:	74 05                	je     401f5b <getbuf_withcanary+0xae>
  401f56:	e8 f9 07 00 00       	call   402754 <__stack_chk_fail>
  401f5b:	c9                   	leave  
  401f5c:	c3                   	ret    

0000000000401f5d <touch1>:
  401f5d:	f3 0f 1e fa          	endbr64 
  401f61:	50                   	push   %rax
  401f62:	58                   	pop    %rax
  401f63:	48 83 ec 08          	sub    $0x8,%rsp
  401f67:	c7 05 ab 55 00 00 01 	movl   $0x1,0x55ab(%rip)        # 40751c <vlevel>
  401f6e:	00 00 00 
  401f71:	48 8d 3d 9e 23 00 00 	lea    0x239e(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f78:	e8 33 f3 ff ff       	call   4012b0 <puts@plt>
  401f7d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f82:	e8 5b 05 00 00       	call   4024e2 <validate>
  401f87:	bf 00 00 00 00       	mov    $0x0,%edi
  401f8c:	e8 7f f4 ff ff       	call   401410 <exit@plt>

0000000000401f91 <touch2>:
  401f91:	f3 0f 1e fa          	endbr64 
  401f95:	50                   	push   %rax
  401f96:	58                   	pop    %rax
  401f97:	48 83 ec 08          	sub    $0x8,%rsp
  401f9b:	89 fa                	mov    %edi,%edx
  401f9d:	c7 05 75 55 00 00 02 	movl   $0x2,0x5575(%rip)        # 40751c <vlevel>
  401fa4:	00 00 00 
  401fa7:	39 3d 77 55 00 00    	cmp    %edi,0x5577(%rip)        # 407524 <cookie>
  401fad:	74 2a                	je     401fd9 <touch2+0x48>
  401faf:	48 8d 35 aa 23 00 00 	lea    0x23aa(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401fb6:	bf 01 00 00 00       	mov    $0x1,%edi
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 fb f3 ff ff       	call   4013c0 <__printf_chk@plt>
  401fc5:	bf 02 00 00 00       	mov    $0x2,%edi
  401fca:	e8 ee 05 00 00       	call   4025bd <fail>
  401fcf:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd4:	e8 37 f4 ff ff       	call   401410 <exit@plt>
  401fd9:	48 8d 35 58 23 00 00 	lea    0x2358(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401fe0:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fea:	e8 d1 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  401fef:	bf 02 00 00 00       	mov    $0x2,%edi
  401ff4:	e8 e9 04 00 00       	call   4024e2 <validate>
  401ff9:	eb d4                	jmp    401fcf <touch2+0x3e>

0000000000401ffb <hexmatch>:
  401ffb:	f3 0f 1e fa          	endbr64 
  401fff:	41 55                	push   %r13
  402001:	41 54                	push   %r12
  402003:	55                   	push   %rbp
  402004:	53                   	push   %rbx
  402005:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  40200c:	89 fd                	mov    %edi,%ebp
  40200e:	48 89 f3             	mov    %rsi,%rbx
  402011:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  402017:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  40201c:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  402021:	31 c0                	xor    %eax,%eax
  402023:	e8 68 f3 ff ff       	call   401390 <random@plt>
  402028:	48 89 c1             	mov    %rax,%rcx
  40202b:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  402032:	0a d7 a3 
  402035:	48 f7 ea             	imul   %rdx
  402038:	48 01 ca             	add    %rcx,%rdx
  40203b:	48 c1 fa 06          	sar    $0x6,%rdx
  40203f:	48 89 c8             	mov    %rcx,%rax
  402042:	48 c1 f8 3f          	sar    $0x3f,%rax
  402046:	48 29 c2             	sub    %rax,%rdx
  402049:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40204d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402051:	48 c1 e0 02          	shl    $0x2,%rax
  402055:	48 29 c1             	sub    %rax,%rcx
  402058:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  40205c:	41 89 e8             	mov    %ebp,%r8d
  40205f:	48 8d 0d cd 22 00 00 	lea    0x22cd(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  402066:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40206d:	be 01 00 00 00       	mov    $0x1,%esi
  402072:	4c 89 ef             	mov    %r13,%rdi
  402075:	b8 00 00 00 00       	mov    $0x0,%eax
  40207a:	e8 d1 f3 ff ff       	call   401450 <__sprintf_chk@plt>
  40207f:	ba 09 00 00 00       	mov    $0x9,%edx
  402084:	4c 89 ee             	mov    %r13,%rsi
  402087:	48 89 df             	mov    %rbx,%rdi
  40208a:	e8 01 f2 ff ff       	call   401290 <strncmp@plt>
  40208f:	85 c0                	test   %eax,%eax
  402091:	0f 94 c0             	sete   %al
  402094:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402099:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  40209e:	75 11                	jne    4020b1 <hexmatch+0xb6>
  4020a0:	0f b6 c0             	movzbl %al,%eax
  4020a3:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4020aa:	5b                   	pop    %rbx
  4020ab:	5d                   	pop    %rbp
  4020ac:	41 5c                	pop    %r12
  4020ae:	41 5d                	pop    %r13
  4020b0:	c3                   	ret    
  4020b1:	e8 9e 06 00 00       	call   402754 <__stack_chk_fail>

00000000004020b6 <touch3>:
  4020b6:	f3 0f 1e fa          	endbr64 
  4020ba:	53                   	push   %rbx
  4020bb:	48 89 fb             	mov    %rdi,%rbx
  4020be:	c7 05 54 54 00 00 03 	movl   $0x3,0x5454(%rip)        # 40751c <vlevel>
  4020c5:	00 00 00 
  4020c8:	48 89 fe             	mov    %rdi,%rsi
  4020cb:	8b 3d 53 54 00 00    	mov    0x5453(%rip),%edi        # 407524 <cookie>
  4020d1:	e8 25 ff ff ff       	call   401ffb <hexmatch>
  4020d6:	85 c0                	test   %eax,%eax
  4020d8:	74 2d                	je     402107 <touch3+0x51>
  4020da:	48 89 da             	mov    %rbx,%rdx
  4020dd:	48 8d 35 a4 22 00 00 	lea    0x22a4(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  4020e4:	bf 01 00 00 00       	mov    $0x1,%edi
  4020e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4020ee:	e8 cd f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020f3:	bf 03 00 00 00       	mov    $0x3,%edi
  4020f8:	e8 e5 03 00 00       	call   4024e2 <validate>
  4020fd:	bf 00 00 00 00       	mov    $0x0,%edi
  402102:	e8 09 f3 ff ff       	call   401410 <exit@plt>
  402107:	48 89 da             	mov    %rbx,%rdx
  40210a:	48 8d 35 9f 22 00 00 	lea    0x229f(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  402111:	bf 01 00 00 00       	mov    $0x1,%edi
  402116:	b8 00 00 00 00       	mov    $0x0,%eax
  40211b:	e8 a0 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402120:	bf 03 00 00 00       	mov    $0x3,%edi
  402125:	e8 93 04 00 00       	call   4025bd <fail>
  40212a:	eb d1                	jmp    4020fd <touch3+0x47>

000000000040212c <test>:
  40212c:	f3 0f 1e fa          	endbr64 
  402130:	48 83 ec 08          	sub    $0x8,%rsp
  402134:	b8 00 00 00 00       	mov    $0x0,%eax
  402139:	e8 55 fd ff ff       	call   401e93 <getbuf>
  40213e:	89 c2                	mov    %eax,%edx
  402140:	48 89 e0             	mov    %rsp,%rax
  402143:	48 83 e0 0f          	and    $0xf,%rax
  402147:	74 07                	je     402150 <aligned4>
  402149:	b9 00 00 00 00       	mov    $0x0,%ecx
  40214e:	eb 05                	jmp    402155 <done4>

0000000000402150 <aligned4>:
  402150:	b9 01 00 00 00       	mov    $0x1,%ecx

0000000000402155 <done4>:
  402155:	85 c9                	test   %ecx,%ecx
  402157:	75 23                	jne    40217c <done4+0x27>
  402159:	48 83 ec 08          	sub    $0x8,%rsp
  40215d:	48 8d 35 74 22 00 00 	lea    0x2274(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402164:	bf 01 00 00 00       	mov    $0x1,%edi
  402169:	b8 00 00 00 00       	mov    $0x0,%eax
  40216e:	e8 4d f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402173:	48 83 c4 08          	add    $0x8,%rsp
  402177:	48 83 c4 08          	add    $0x8,%rsp
  40217b:	c3                   	ret    
  40217c:	48 8d 35 55 22 00 00 	lea    0x2255(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402183:	bf 01 00 00 00       	mov    $0x1,%edi
  402188:	b8 00 00 00 00       	mov    $0x0,%eax
  40218d:	e8 2e f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402192:	eb e3                	jmp    402177 <done4+0x22>

0000000000402194 <test2>:
  402194:	f3 0f 1e fa          	endbr64 
  402198:	48 83 ec 08          	sub    $0x8,%rsp
  40219c:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a1:	e8 07 fd ff ff       	call   401ead <getbuf_withcanary>
  4021a6:	89 c2                	mov    %eax,%edx
  4021a8:	48 8d 35 51 22 00 00 	lea    0x2251(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  4021af:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021b9:	e8 02 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4021be:	48 83 c4 08          	add    $0x8,%rsp
  4021c2:	c3                   	ret    

00000000004021c3 <save_char>:
  4021c3:	8b 05 7b 5f 00 00    	mov    0x5f7b(%rip),%eax        # 408144 <gets_cnt>
  4021c9:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4021ce:	7f 4a                	jg     40221a <save_char+0x57>
  4021d0:	89 f9                	mov    %edi,%ecx
  4021d2:	c0 e9 04             	shr    $0x4,%cl
  4021d5:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4021d8:	4c 8d 05 91 25 00 00 	lea    0x2591(%rip),%r8        # 404770 <trans_char>
  4021df:	83 e1 0f             	and    $0xf,%ecx
  4021e2:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4021e7:	48 8d 0d 52 53 00 00 	lea    0x5352(%rip),%rcx        # 407540 <gets_buf>
  4021ee:	48 63 f2             	movslq %edx,%rsi
  4021f1:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4021f5:	8d 72 01             	lea    0x1(%rdx),%esi
  4021f8:	83 e7 0f             	and    $0xf,%edi
  4021fb:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  402200:	48 63 f6             	movslq %esi,%rsi
  402203:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  402207:	83 c2 02             	add    $0x2,%edx
  40220a:	48 63 d2             	movslq %edx,%rdx
  40220d:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  402211:	83 c0 01             	add    $0x1,%eax
  402214:	89 05 2a 5f 00 00    	mov    %eax,0x5f2a(%rip)        # 408144 <gets_cnt>
  40221a:	c3                   	ret    

000000000040221b <save_term>:
  40221b:	8b 05 23 5f 00 00    	mov    0x5f23(%rip),%eax        # 408144 <gets_cnt>
  402221:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402224:	48 98                	cltq   
  402226:	48 8d 15 13 53 00 00 	lea    0x5313(%rip),%rdx        # 407540 <gets_buf>
  40222d:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402231:	c3                   	ret    

0000000000402232 <check_fail>:
  402232:	f3 0f 1e fa          	endbr64 
  402236:	50                   	push   %rax
  402237:	58                   	pop    %rax
  402238:	48 83 ec 08          	sub    $0x8,%rsp
  40223c:	0f be 15 05 5f 00 00 	movsbl 0x5f05(%rip),%edx        # 408148 <target_prefix>
  402243:	4c 8d 05 f6 52 00 00 	lea    0x52f6(%rip),%r8        # 407540 <gets_buf>
  40224a:	8b 0d c8 52 00 00    	mov    0x52c8(%rip),%ecx        # 407518 <check_level>
  402250:	48 8d 35 d7 21 00 00 	lea    0x21d7(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  402257:	bf 01 00 00 00       	mov    $0x1,%edi
  40225c:	b8 00 00 00 00       	mov    $0x0,%eax
  402261:	e8 5a f1 ff ff       	call   4013c0 <__printf_chk@plt>
  402266:	bf 01 00 00 00       	mov    $0x1,%edi
  40226b:	e8 a0 f1 ff ff       	call   401410 <exit@plt>

0000000000402270 <Gets>:
  402270:	f3 0f 1e fa          	endbr64 
  402274:	41 54                	push   %r12
  402276:	55                   	push   %rbp
  402277:	53                   	push   %rbx
  402278:	49 89 fc             	mov    %rdi,%r12
  40227b:	c7 05 bf 5e 00 00 00 	movl   $0x0,0x5ebf(%rip)        # 408144 <gets_cnt>
  402282:	00 00 00 
  402285:	48 89 fb             	mov    %rdi,%rbx
  402288:	48 8b 3d 81 52 00 00 	mov    0x5281(%rip),%rdi        # 407510 <infile>
  40228f:	e8 ac f1 ff ff       	call   401440 <getc@plt>
  402294:	83 f8 ff             	cmp    $0xffffffff,%eax
  402297:	74 18                	je     4022b1 <Gets+0x41>
  402299:	83 f8 0a             	cmp    $0xa,%eax
  40229c:	74 13                	je     4022b1 <Gets+0x41>
  40229e:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  4022a2:	88 03                	mov    %al,(%rbx)
  4022a4:	0f b6 f8             	movzbl %al,%edi
  4022a7:	e8 17 ff ff ff       	call   4021c3 <save_char>
  4022ac:	48 89 eb             	mov    %rbp,%rbx
  4022af:	eb d7                	jmp    402288 <Gets+0x18>
  4022b1:	c6 03 00             	movb   $0x0,(%rbx)
  4022b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b9:	e8 5d ff ff ff       	call   40221b <save_term>
  4022be:	4c 89 e0             	mov    %r12,%rax
  4022c1:	5b                   	pop    %rbx
  4022c2:	5d                   	pop    %rbp
  4022c3:	41 5c                	pop    %r12
  4022c5:	c3                   	ret    

00000000004022c6 <notify_server>:
  4022c6:	f3 0f 1e fa          	endbr64 
  4022ca:	55                   	push   %rbp
  4022cb:	53                   	push   %rbx
  4022cc:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4022d3:	ff 
  4022d4:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4022db:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4022e0:	4c 39 dc             	cmp    %r11,%rsp
  4022e3:	75 ef                	jne    4022d4 <notify_server+0xe>
  4022e5:	48 83 ec 18          	sub    $0x18,%rsp
  4022e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022f0:	00 00 
  4022f2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022f9:	00 
  4022fa:	31 c0                	xor    %eax,%eax
  4022fc:	83 3d 25 52 00 00 00 	cmpl   $0x0,0x5225(%rip)        # 407528 <is_checker>
  402303:	0f 85 b7 01 00 00    	jne    4024c0 <notify_server+0x1fa>
  402309:	89 fb                	mov    %edi,%ebx
  40230b:	81 3d 2f 5e 00 00 9c 	cmpl   $0x1f9c,0x5e2f(%rip)        # 408144 <gets_cnt>
  402312:	1f 00 00 
  402315:	7f 18                	jg     40232f <notify_server+0x69>
  402317:	0f be 05 2a 5e 00 00 	movsbl 0x5e2a(%rip),%eax        # 408148 <target_prefix>
  40231e:	83 3d 7b 51 00 00 00 	cmpl   $0x0,0x517b(%rip)        # 4074a0 <notify>
  402325:	74 23                	je     40234a <notify_server+0x84>
  402327:	8b 15 f3 51 00 00    	mov    0x51f3(%rip),%edx        # 407520 <authkey>
  40232d:	eb 20                	jmp    40234f <notify_server+0x89>
  40232f:	48 8d 35 22 22 00 00 	lea    0x2222(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  402336:	bf 01 00 00 00       	mov    $0x1,%edi
  40233b:	e8 80 f0 ff ff       	call   4013c0 <__printf_chk@plt>
  402340:	bf 01 00 00 00       	mov    $0x1,%edi
  402345:	e8 c6 f0 ff ff       	call   401410 <exit@plt>
  40234a:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  40234f:	85 db                	test   %ebx,%ebx
  402351:	0f 84 9b 00 00 00    	je     4023f2 <notify_server+0x12c>
  402357:	48 8d 2d eb 20 00 00 	lea    0x20eb(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  40235e:	48 89 e7             	mov    %rsp,%rdi
  402361:	48 8d 0d d8 51 00 00 	lea    0x51d8(%rip),%rcx        # 407540 <gets_buf>
  402368:	51                   	push   %rcx
  402369:	56                   	push   %rsi
  40236a:	50                   	push   %rax
  40236b:	52                   	push   %rdx
  40236c:	49 89 e9             	mov    %rbp,%r9
  40236f:	44 8b 05 da 4d 00 00 	mov    0x4dda(%rip),%r8d        # 407150 <target_id>
  402376:	48 8d 0d d1 20 00 00 	lea    0x20d1(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  40237d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402382:	be 01 00 00 00       	mov    $0x1,%esi
  402387:	b8 00 00 00 00       	mov    $0x0,%eax
  40238c:	e8 bf f0 ff ff       	call   401450 <__sprintf_chk@plt>
  402391:	48 83 c4 20          	add    $0x20,%rsp
  402395:	83 3d 04 51 00 00 00 	cmpl   $0x0,0x5104(%rip)        # 4074a0 <notify>
  40239c:	0f 84 95 00 00 00    	je     402437 <notify_server+0x171>
  4023a2:	48 89 e1             	mov    %rsp,%rcx
  4023a5:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4023ac:	00 
  4023ad:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023b3:	48 8b 15 ae 4d 00 00 	mov    0x4dae(%rip),%rdx        # 407168 <lab>
  4023ba:	48 8b 35 af 4d 00 00 	mov    0x4daf(%rip),%rsi        # 407170 <course>
  4023c1:	48 8b 3d 98 4d 00 00 	mov    0x4d98(%rip),%rdi        # 407160 <user_id>
  4023c8:	e8 75 12 00 00       	call   403642 <driver_post>
  4023cd:	85 c0                	test   %eax,%eax
  4023cf:	78 2d                	js     4023fe <notify_server+0x138>
  4023d1:	85 db                	test   %ebx,%ebx
  4023d3:	74 51                	je     402426 <notify_server+0x160>
  4023d5:	48 8d 3d ac 21 00 00 	lea    0x21ac(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4023dc:	e8 cf ee ff ff       	call   4012b0 <puts@plt>
  4023e1:	48 8d 3d 8e 20 00 00 	lea    0x208e(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4023e8:	e8 c3 ee ff ff       	call   4012b0 <puts@plt>
  4023ed:	e9 ce 00 00 00       	jmp    4024c0 <notify_server+0x1fa>
  4023f2:	48 8d 2d 4b 20 00 00 	lea    0x204b(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4023f9:	e9 60 ff ff ff       	jmp    40235e <notify_server+0x98>
  4023fe:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  402405:	00 
  402406:	48 8d 35 5d 20 00 00 	lea    0x205d(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  40240d:	bf 01 00 00 00       	mov    $0x1,%edi
  402412:	b8 00 00 00 00       	mov    $0x0,%eax
  402417:	e8 a4 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40241c:	bf 01 00 00 00       	mov    $0x1,%edi
  402421:	e8 ea ef ff ff       	call   401410 <exit@plt>
  402426:	48 8d 3d 53 20 00 00 	lea    0x2053(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  40242d:	e8 7e ee ff ff       	call   4012b0 <puts@plt>
  402432:	e9 89 00 00 00       	jmp    4024c0 <notify_server+0x1fa>
  402437:	48 89 ea             	mov    %rbp,%rdx
  40243a:	48 8d 35 7f 21 00 00 	lea    0x217f(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402441:	bf 01 00 00 00       	mov    $0x1,%edi
  402446:	b8 00 00 00 00       	mov    $0x0,%eax
  40244b:	e8 70 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402450:	48 8b 15 09 4d 00 00 	mov    0x4d09(%rip),%rdx        # 407160 <user_id>
  402457:	48 8d 35 29 20 00 00 	lea    0x2029(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  40245e:	bf 01 00 00 00       	mov    $0x1,%edi
  402463:	b8 00 00 00 00       	mov    $0x0,%eax
  402468:	e8 53 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40246d:	48 8b 15 fc 4c 00 00 	mov    0x4cfc(%rip),%rdx        # 407170 <course>
  402474:	48 8d 35 19 20 00 00 	lea    0x2019(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  40247b:	bf 01 00 00 00       	mov    $0x1,%edi
  402480:	b8 00 00 00 00       	mov    $0x0,%eax
  402485:	e8 36 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40248a:	48 8b 15 d7 4c 00 00 	mov    0x4cd7(%rip),%rdx        # 407168 <lab>
  402491:	48 8d 35 08 20 00 00 	lea    0x2008(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  402498:	bf 01 00 00 00       	mov    $0x1,%edi
  40249d:	b8 00 00 00 00       	mov    $0x0,%eax
  4024a2:	e8 19 ef ff ff       	call   4013c0 <__printf_chk@plt>
  4024a7:	48 89 e2             	mov    %rsp,%rdx
  4024aa:	48 8d 35 f8 1f 00 00 	lea    0x1ff8(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  4024b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4024b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4024bb:	e8 00 ef ff ff       	call   4013c0 <__printf_chk@plt>
  4024c0:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4024c7:	00 
  4024c8:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4024cf:	00 00 
  4024d1:	75 0a                	jne    4024dd <notify_server+0x217>
  4024d3:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4024da:	5b                   	pop    %rbx
  4024db:	5d                   	pop    %rbp
  4024dc:	c3                   	ret    
  4024dd:	e8 72 02 00 00       	call   402754 <__stack_chk_fail>

00000000004024e2 <validate>:
  4024e2:	f3 0f 1e fa          	endbr64 
  4024e6:	53                   	push   %rbx
  4024e7:	89 fb                	mov    %edi,%ebx
  4024e9:	83 3d 38 50 00 00 00 	cmpl   $0x0,0x5038(%rip)        # 407528 <is_checker>
  4024f0:	74 79                	je     40256b <validate+0x89>
  4024f2:	39 3d 24 50 00 00    	cmp    %edi,0x5024(%rip)        # 40751c <vlevel>
  4024f8:	75 39                	jne    402533 <validate+0x51>
  4024fa:	8b 15 18 50 00 00    	mov    0x5018(%rip),%edx        # 407518 <check_level>
  402500:	39 fa                	cmp    %edi,%edx
  402502:	75 45                	jne    402549 <validate+0x67>
  402504:	0f be 0d 3d 5c 00 00 	movsbl 0x5c3d(%rip),%ecx        # 408148 <target_prefix>
  40250b:	4c 8d 0d 2e 50 00 00 	lea    0x502e(%rip),%r9        # 407540 <gets_buf>
  402512:	41 89 f8             	mov    %edi,%r8d
  402515:	8b 15 05 50 00 00    	mov    0x5005(%rip),%edx        # 407520 <authkey>
  40251b:	48 8d 35 ee 20 00 00 	lea    0x20ee(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402522:	bf 01 00 00 00       	mov    $0x1,%edi
  402527:	b8 00 00 00 00       	mov    $0x0,%eax
  40252c:	e8 8f ee ff ff       	call   4013c0 <__printf_chk@plt>
  402531:	5b                   	pop    %rbx
  402532:	c3                   	ret    
  402533:	48 8d 3d 7b 1f 00 00 	lea    0x1f7b(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40253a:	e8 71 ed ff ff       	call   4012b0 <puts@plt>
  40253f:	b8 00 00 00 00       	mov    $0x0,%eax
  402544:	e8 e9 fc ff ff       	call   402232 <check_fail>
  402549:	89 f9                	mov    %edi,%ecx
  40254b:	48 8d 35 96 20 00 00 	lea    0x2096(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402552:	bf 01 00 00 00       	mov    $0x1,%edi
  402557:	b8 00 00 00 00       	mov    $0x0,%eax
  40255c:	e8 5f ee ff ff       	call   4013c0 <__printf_chk@plt>
  402561:	b8 00 00 00 00       	mov    $0x0,%eax
  402566:	e8 c7 fc ff ff       	call   402232 <check_fail>
  40256b:	39 3d ab 4f 00 00    	cmp    %edi,0x4fab(%rip)        # 40751c <vlevel>
  402571:	74 1a                	je     40258d <validate+0xab>
  402573:	48 8d 3d 3b 1f 00 00 	lea    0x1f3b(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40257a:	e8 31 ed ff ff       	call   4012b0 <puts@plt>
  40257f:	89 de                	mov    %ebx,%esi
  402581:	bf 00 00 00 00       	mov    $0x0,%edi
  402586:	e8 3b fd ff ff       	call   4022c6 <notify_server>
  40258b:	eb a4                	jmp    402531 <validate+0x4f>
  40258d:	0f be 0d b4 5b 00 00 	movsbl 0x5bb4(%rip),%ecx        # 408148 <target_prefix>
  402594:	89 fa                	mov    %edi,%edx
  402596:	48 8d 35 9b 20 00 00 	lea    0x209b(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  40259d:	bf 01 00 00 00       	mov    $0x1,%edi
  4025a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a7:	e8 14 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4025ac:	89 de                	mov    %ebx,%esi
  4025ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4025b3:	e8 0e fd ff ff       	call   4022c6 <notify_server>
  4025b8:	e9 74 ff ff ff       	jmp    402531 <validate+0x4f>

00000000004025bd <fail>:
  4025bd:	f3 0f 1e fa          	endbr64 
  4025c1:	48 83 ec 08          	sub    $0x8,%rsp
  4025c5:	83 3d 5c 4f 00 00 00 	cmpl   $0x0,0x4f5c(%rip)        # 407528 <is_checker>
  4025cc:	75 11                	jne    4025df <fail+0x22>
  4025ce:	89 fe                	mov    %edi,%esi
  4025d0:	bf 00 00 00 00       	mov    $0x0,%edi
  4025d5:	e8 ec fc ff ff       	call   4022c6 <notify_server>
  4025da:	48 83 c4 08          	add    $0x8,%rsp
  4025de:	c3                   	ret    
  4025df:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e4:	e8 49 fc ff ff       	call   402232 <check_fail>

00000000004025e9 <bushandler>:
  4025e9:	f3 0f 1e fa          	endbr64 
  4025ed:	50                   	push   %rax
  4025ee:	58                   	pop    %rax
  4025ef:	48 83 ec 08          	sub    $0x8,%rsp
  4025f3:	83 3d 2e 4f 00 00 00 	cmpl   $0x0,0x4f2e(%rip)        # 407528 <is_checker>
  4025fa:	74 16                	je     402612 <bushandler+0x29>
  4025fc:	48 8d 3d d0 1e 00 00 	lea    0x1ed0(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  402603:	e8 a8 ec ff ff       	call   4012b0 <puts@plt>
  402608:	b8 00 00 00 00       	mov    $0x0,%eax
  40260d:	e8 20 fc ff ff       	call   402232 <check_fail>
  402612:	48 8d 3d 57 20 00 00 	lea    0x2057(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  402619:	e8 92 ec ff ff       	call   4012b0 <puts@plt>
  40261e:	48 8d 3d b8 1e 00 00 	lea    0x1eb8(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402625:	e8 86 ec ff ff       	call   4012b0 <puts@plt>
  40262a:	be 00 00 00 00       	mov    $0x0,%esi
  40262f:	bf 00 00 00 00       	mov    $0x0,%edi
  402634:	e8 8d fc ff ff       	call   4022c6 <notify_server>
  402639:	bf 01 00 00 00       	mov    $0x1,%edi
  40263e:	e8 cd ed ff ff       	call   401410 <exit@plt>

0000000000402643 <seghandler>:
  402643:	f3 0f 1e fa          	endbr64 
  402647:	50                   	push   %rax
  402648:	58                   	pop    %rax
  402649:	48 83 ec 08          	sub    $0x8,%rsp
  40264d:	83 3d d4 4e 00 00 00 	cmpl   $0x0,0x4ed4(%rip)        # 407528 <is_checker>
  402654:	74 16                	je     40266c <seghandler+0x29>
  402656:	48 8d 3d 96 1e 00 00 	lea    0x1e96(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  40265d:	e8 4e ec ff ff       	call   4012b0 <puts@plt>
  402662:	b8 00 00 00 00       	mov    $0x0,%eax
  402667:	e8 c6 fb ff ff       	call   402232 <check_fail>
  40266c:	48 8d 3d 1d 20 00 00 	lea    0x201d(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  402673:	e8 38 ec ff ff       	call   4012b0 <puts@plt>
  402678:	48 8d 3d 5e 1e 00 00 	lea    0x1e5e(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40267f:	e8 2c ec ff ff       	call   4012b0 <puts@plt>
  402684:	be 00 00 00 00       	mov    $0x0,%esi
  402689:	bf 00 00 00 00       	mov    $0x0,%edi
  40268e:	e8 33 fc ff ff       	call   4022c6 <notify_server>
  402693:	bf 01 00 00 00       	mov    $0x1,%edi
  402698:	e8 73 ed ff ff       	call   401410 <exit@plt>

000000000040269d <illegalhandler>:
  40269d:	f3 0f 1e fa          	endbr64 
  4026a1:	50                   	push   %rax
  4026a2:	58                   	pop    %rax
  4026a3:	48 83 ec 08          	sub    $0x8,%rsp
  4026a7:	83 3d 7a 4e 00 00 00 	cmpl   $0x0,0x4e7a(%rip)        # 407528 <is_checker>
  4026ae:	74 16                	je     4026c6 <illegalhandler+0x29>
  4026b0:	48 8d 3d 4f 1e 00 00 	lea    0x1e4f(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  4026b7:	e8 f4 eb ff ff       	call   4012b0 <puts@plt>
  4026bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c1:	e8 6c fb ff ff       	call   402232 <check_fail>
  4026c6:	48 8d 3d eb 1f 00 00 	lea    0x1feb(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4026cd:	e8 de eb ff ff       	call   4012b0 <puts@plt>
  4026d2:	48 8d 3d 04 1e 00 00 	lea    0x1e04(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4026d9:	e8 d2 eb ff ff       	call   4012b0 <puts@plt>
  4026de:	be 00 00 00 00       	mov    $0x0,%esi
  4026e3:	bf 00 00 00 00       	mov    $0x0,%edi
  4026e8:	e8 d9 fb ff ff       	call   4022c6 <notify_server>
  4026ed:	bf 01 00 00 00       	mov    $0x1,%edi
  4026f2:	e8 19 ed ff ff       	call   401410 <exit@plt>

00000000004026f7 <sigalrmhandler>:
  4026f7:	f3 0f 1e fa          	endbr64 
  4026fb:	50                   	push   %rax
  4026fc:	58                   	pop    %rax
  4026fd:	48 83 ec 08          	sub    $0x8,%rsp
  402701:	83 3d 20 4e 00 00 00 	cmpl   $0x0,0x4e20(%rip)        # 407528 <is_checker>
  402708:	74 16                	je     402720 <sigalrmhandler+0x29>
  40270a:	48 8d 3d 09 1e 00 00 	lea    0x1e09(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  402711:	e8 9a eb ff ff       	call   4012b0 <puts@plt>
  402716:	b8 00 00 00 00       	mov    $0x0,%eax
  40271b:	e8 12 fb ff ff       	call   402232 <check_fail>
  402720:	ba 02 00 00 00       	mov    $0x2,%edx
  402725:	48 8d 35 bc 1f 00 00 	lea    0x1fbc(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  40272c:	bf 01 00 00 00       	mov    $0x1,%edi
  402731:	b8 00 00 00 00       	mov    $0x0,%eax
  402736:	e8 85 ec ff ff       	call   4013c0 <__printf_chk@plt>
  40273b:	be 00 00 00 00       	mov    $0x0,%esi
  402740:	bf 00 00 00 00       	mov    $0x0,%edi
  402745:	e8 7c fb ff ff       	call   4022c6 <notify_server>
  40274a:	bf 01 00 00 00       	mov    $0x1,%edi
  40274f:	e8 bc ec ff ff       	call   401410 <exit@plt>

0000000000402754 <__stack_chk_fail>:
  402754:	f3 0f 1e fa          	endbr64 
  402758:	50                   	push   %rax
  402759:	58                   	pop    %rax
  40275a:	48 83 ec 08          	sub    $0x8,%rsp
  40275e:	83 3d c3 4d 00 00 00 	cmpl   $0x0,0x4dc3(%rip)        # 407528 <is_checker>
  402765:	74 16                	je     40277d <__stack_chk_fail+0x29>
  402767:	48 8d 3d b4 1d 00 00 	lea    0x1db4(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  40276e:	e8 3d eb ff ff       	call   4012b0 <puts@plt>
  402773:	b8 00 00 00 00       	mov    $0x0,%eax
  402778:	e8 b5 fa ff ff       	call   402232 <check_fail>
  40277d:	48 8d 3d 9c 1f 00 00 	lea    0x1f9c(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402784:	e8 27 eb ff ff       	call   4012b0 <puts@plt>
  402789:	48 8d 3d 4d 1d 00 00 	lea    0x1d4d(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402790:	e8 1b eb ff ff       	call   4012b0 <puts@plt>
  402795:	be 00 00 00 00       	mov    $0x0,%esi
  40279a:	bf 00 00 00 00       	mov    $0x0,%edi
  40279f:	e8 22 fb ff ff       	call   4022c6 <notify_server>
  4027a4:	bf 01 00 00 00       	mov    $0x1,%edi
  4027a9:	e8 62 ec ff ff       	call   401410 <exit@plt>

00000000004027ae <launch>:
  4027ae:	f3 0f 1e fa          	endbr64 
  4027b2:	55                   	push   %rbp
  4027b3:	48 89 e5             	mov    %rsp,%rbp
  4027b6:	53                   	push   %rbx
  4027b7:	48 83 ec 18          	sub    $0x18,%rsp
  4027bb:	48 89 fa             	mov    %rdi,%rdx
  4027be:	89 f3                	mov    %esi,%ebx
  4027c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027c7:	00 00 
  4027c9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4027cd:	31 c0                	xor    %eax,%eax
  4027cf:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4027d3:	48 89 c1             	mov    %rax,%rcx
  4027d6:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4027da:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4027e0:	48 89 e6             	mov    %rsp,%rsi
  4027e3:	48 29 c6             	sub    %rax,%rsi
  4027e6:	48 89 f0             	mov    %rsi,%rax
  4027e9:	48 39 c4             	cmp    %rax,%rsp
  4027ec:	74 12                	je     402800 <launch+0x52>
  4027ee:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4027f5:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4027fc:	00 00 
  4027fe:	eb e9                	jmp    4027e9 <launch+0x3b>
  402800:	48 89 c8             	mov    %rcx,%rax
  402803:	25 ff 0f 00 00       	and    $0xfff,%eax
  402808:	48 29 c4             	sub    %rax,%rsp
  40280b:	48 85 c0             	test   %rax,%rax
  40280e:	74 06                	je     402816 <launch+0x68>
  402810:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402816:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40281b:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40281f:	be f4 00 00 00       	mov    $0xf4,%esi
  402824:	e8 b7 ea ff ff       	call   4012e0 <memset@plt>
  402829:	48 8b 05 90 4c 00 00 	mov    0x4c90(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  402830:	48 39 05 d9 4c 00 00 	cmp    %rax,0x4cd9(%rip)        # 407510 <infile>
  402837:	74 42                	je     40287b <launch+0xcd>
  402839:	c7 05 d9 4c 00 00 00 	movl   $0x0,0x4cd9(%rip)        # 40751c <vlevel>
  402840:	00 00 00 
  402843:	85 db                	test   %ebx,%ebx
  402845:	75 42                	jne    402889 <launch+0xdb>
  402847:	b8 00 00 00 00       	mov    $0x0,%eax
  40284c:	e8 db f8 ff ff       	call   40212c <test>
  402851:	83 3d d0 4c 00 00 00 	cmpl   $0x0,0x4cd0(%rip)        # 407528 <is_checker>
  402858:	75 3b                	jne    402895 <launch+0xe7>
  40285a:	48 8d 3d e8 1c 00 00 	lea    0x1ce8(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402861:	e8 4a ea ff ff       	call   4012b0 <puts@plt>
  402866:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40286a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402871:	00 00 
  402873:	75 36                	jne    4028ab <launch+0xfd>
  402875:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402879:	c9                   	leave  
  40287a:	c3                   	ret    
  40287b:	48 8d 3d af 1c 00 00 	lea    0x1caf(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402882:	e8 29 ea ff ff       	call   4012b0 <puts@plt>
  402887:	eb b0                	jmp    402839 <launch+0x8b>
  402889:	b8 00 00 00 00       	mov    $0x0,%eax
  40288e:	e8 01 f9 ff ff       	call   402194 <test2>
  402893:	eb bc                	jmp    402851 <launch+0xa3>
  402895:	48 8d 3d a2 1c 00 00 	lea    0x1ca2(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  40289c:	e8 0f ea ff ff       	call   4012b0 <puts@plt>
  4028a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4028a6:	e8 87 f9 ff ff       	call   402232 <check_fail>
  4028ab:	e8 a4 fe ff ff       	call   402754 <__stack_chk_fail>

00000000004028b0 <stable_launch>:
  4028b0:	f3 0f 1e fa          	endbr64 
  4028b4:	55                   	push   %rbp
  4028b5:	53                   	push   %rbx
  4028b6:	48 83 ec 08          	sub    $0x8,%rsp
  4028ba:	89 f5                	mov    %esi,%ebp
  4028bc:	48 89 3d 45 4c 00 00 	mov    %rdi,0x4c45(%rip)        # 407508 <global_offset>
  4028c3:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4028c9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4028cf:	b9 32 01 00 00       	mov    $0x132,%ecx
  4028d4:	ba 07 00 00 00       	mov    $0x7,%edx
  4028d9:	be 00 00 10 00       	mov    $0x100000,%esi
  4028de:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4028e3:	e8 e8 e9 ff ff       	call   4012d0 <mmap@plt>
  4028e8:	48 89 c3             	mov    %rax,%rbx
  4028eb:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4028f1:	75 4a                	jne    40293d <stable_launch+0x8d>
  4028f3:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4028fa:	48 89 15 4f 58 00 00 	mov    %rdx,0x584f(%rip)        # 408150 <stack_top>
  402901:	48 89 e0             	mov    %rsp,%rax
  402904:	48 89 d4             	mov    %rdx,%rsp
  402907:	48 89 c2             	mov    %rax,%rdx
  40290a:	48 89 15 ef 4b 00 00 	mov    %rdx,0x4bef(%rip)        # 407500 <global_save_stack>
  402911:	89 ee                	mov    %ebp,%esi
  402913:	48 8b 3d ee 4b 00 00 	mov    0x4bee(%rip),%rdi        # 407508 <global_offset>
  40291a:	e8 8f fe ff ff       	call   4027ae <launch>
  40291f:	48 8b 05 da 4b 00 00 	mov    0x4bda(%rip),%rax        # 407500 <global_save_stack>
  402926:	48 89 c4             	mov    %rax,%rsp
  402929:	be 00 00 10 00       	mov    $0x100000,%esi
  40292e:	48 89 df             	mov    %rbx,%rdi
  402931:	e8 7a ea ff ff       	call   4013b0 <munmap@plt>
  402936:	48 83 c4 08          	add    $0x8,%rsp
  40293a:	5b                   	pop    %rbx
  40293b:	5d                   	pop    %rbp
  40293c:	c3                   	ret    
  40293d:	be 00 00 10 00       	mov    $0x100000,%esi
  402942:	48 89 c7             	mov    %rax,%rdi
  402945:	e8 66 ea ff ff       	call   4013b0 <munmap@plt>
  40294a:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40294f:	48 8d 15 f2 1d 00 00 	lea    0x1df2(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402956:	be 01 00 00 00       	mov    $0x1,%esi
  40295b:	48 8b 3d 7e 4b 00 00 	mov    0x4b7e(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402962:	b8 00 00 00 00       	mov    $0x0,%eax
  402967:	e8 c4 ea ff ff       	call   401430 <__fprintf_chk@plt>
  40296c:	bf 01 00 00 00       	mov    $0x1,%edi
  402971:	e8 9a ea ff ff       	call   401410 <exit@plt>

0000000000402976 <rio_readinitb>:
  402976:	89 37                	mov    %esi,(%rdi)
  402978:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40297f:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402983:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402987:	c3                   	ret    

0000000000402988 <sigalrm_handler>:
  402988:	f3 0f 1e fa          	endbr64 
  40298c:	50                   	push   %rax
  40298d:	58                   	pop    %rax
  40298e:	48 83 ec 08          	sub    $0x8,%rsp
  402992:	b9 00 00 00 00       	mov    $0x0,%ecx
  402997:	48 8d 15 e2 1d 00 00 	lea    0x1de2(%rip),%rdx        # 404780 <trans_char+0x10>
  40299e:	be 01 00 00 00       	mov    $0x1,%esi
  4029a3:	48 8b 3d 36 4b 00 00 	mov    0x4b36(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4029aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4029af:	e8 7c ea ff ff       	call   401430 <__fprintf_chk@plt>
  4029b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4029b9:	e8 52 ea ff ff       	call   401410 <exit@plt>

00000000004029be <rio_writen>:
  4029be:	41 55                	push   %r13
  4029c0:	41 54                	push   %r12
  4029c2:	55                   	push   %rbp
  4029c3:	53                   	push   %rbx
  4029c4:	48 83 ec 08          	sub    $0x8,%rsp
  4029c8:	41 89 fc             	mov    %edi,%r12d
  4029cb:	48 89 f5             	mov    %rsi,%rbp
  4029ce:	49 89 d5             	mov    %rdx,%r13
  4029d1:	48 89 d3             	mov    %rdx,%rbx
  4029d4:	eb 06                	jmp    4029dc <rio_writen+0x1e>
  4029d6:	48 29 c3             	sub    %rax,%rbx
  4029d9:	48 01 c5             	add    %rax,%rbp
  4029dc:	48 85 db             	test   %rbx,%rbx
  4029df:	74 24                	je     402a05 <rio_writen+0x47>
  4029e1:	48 89 da             	mov    %rbx,%rdx
  4029e4:	48 89 ee             	mov    %rbp,%rsi
  4029e7:	44 89 e7             	mov    %r12d,%edi
  4029ea:	e8 d1 e8 ff ff       	call   4012c0 <write@plt>
  4029ef:	48 85 c0             	test   %rax,%rax
  4029f2:	7f e2                	jg     4029d6 <rio_writen+0x18>
  4029f4:	e8 67 e8 ff ff       	call   401260 <__errno_location@plt>
  4029f9:	83 38 04             	cmpl   $0x4,(%rax)
  4029fc:	75 15                	jne    402a13 <rio_writen+0x55>
  4029fe:	b8 00 00 00 00       	mov    $0x0,%eax
  402a03:	eb d1                	jmp    4029d6 <rio_writen+0x18>
  402a05:	4c 89 e8             	mov    %r13,%rax
  402a08:	48 83 c4 08          	add    $0x8,%rsp
  402a0c:	5b                   	pop    %rbx
  402a0d:	5d                   	pop    %rbp
  402a0e:	41 5c                	pop    %r12
  402a10:	41 5d                	pop    %r13
  402a12:	c3                   	ret    
  402a13:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a1a:	eb ec                	jmp    402a08 <rio_writen+0x4a>

0000000000402a1c <rio_read>:
  402a1c:	41 55                	push   %r13
  402a1e:	41 54                	push   %r12
  402a20:	55                   	push   %rbp
  402a21:	53                   	push   %rbx
  402a22:	48 83 ec 08          	sub    $0x8,%rsp
  402a26:	48 89 fb             	mov    %rdi,%rbx
  402a29:	49 89 f5             	mov    %rsi,%r13
  402a2c:	49 89 d4             	mov    %rdx,%r12
  402a2f:	eb 17                	jmp    402a48 <rio_read+0x2c>
  402a31:	e8 2a e8 ff ff       	call   401260 <__errno_location@plt>
  402a36:	83 38 04             	cmpl   $0x4,(%rax)
  402a39:	74 0d                	je     402a48 <rio_read+0x2c>
  402a3b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a42:	eb 54                	jmp    402a98 <rio_read+0x7c>
  402a44:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a48:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402a4b:	85 ed                	test   %ebp,%ebp
  402a4d:	7f 23                	jg     402a72 <rio_read+0x56>
  402a4f:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a53:	8b 3b                	mov    (%rbx),%edi
  402a55:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a5a:	48 89 ee             	mov    %rbp,%rsi
  402a5d:	e8 ae e8 ff ff       	call   401310 <read@plt>
  402a62:	89 43 04             	mov    %eax,0x4(%rbx)
  402a65:	85 c0                	test   %eax,%eax
  402a67:	78 c8                	js     402a31 <rio_read+0x15>
  402a69:	75 d9                	jne    402a44 <rio_read+0x28>
  402a6b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a70:	eb 26                	jmp    402a98 <rio_read+0x7c>
  402a72:	89 e8                	mov    %ebp,%eax
  402a74:	4c 39 e0             	cmp    %r12,%rax
  402a77:	72 03                	jb     402a7c <rio_read+0x60>
  402a79:	44 89 e5             	mov    %r12d,%ebp
  402a7c:	4c 63 e5             	movslq %ebp,%r12
  402a7f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a83:	4c 89 e2             	mov    %r12,%rdx
  402a86:	4c 89 ef             	mov    %r13,%rdi
  402a89:	e8 e2 e8 ff ff       	call   401370 <memcpy@plt>
  402a8e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a92:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402a95:	4c 89 e0             	mov    %r12,%rax
  402a98:	48 83 c4 08          	add    $0x8,%rsp
  402a9c:	5b                   	pop    %rbx
  402a9d:	5d                   	pop    %rbp
  402a9e:	41 5c                	pop    %r12
  402aa0:	41 5d                	pop    %r13
  402aa2:	c3                   	ret    

0000000000402aa3 <rio_readlineb>:
  402aa3:	41 55                	push   %r13
  402aa5:	41 54                	push   %r12
  402aa7:	55                   	push   %rbp
  402aa8:	53                   	push   %rbx
  402aa9:	48 83 ec 18          	sub    $0x18,%rsp
  402aad:	49 89 fd             	mov    %rdi,%r13
  402ab0:	48 89 f5             	mov    %rsi,%rbp
  402ab3:	49 89 d4             	mov    %rdx,%r12
  402ab6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402abd:	00 00 
  402abf:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402ac4:	31 c0                	xor    %eax,%eax
  402ac6:	bb 01 00 00 00       	mov    $0x1,%ebx
  402acb:	eb 18                	jmp    402ae5 <rio_readlineb+0x42>
  402acd:	85 c0                	test   %eax,%eax
  402acf:	75 65                	jne    402b36 <rio_readlineb+0x93>
  402ad1:	48 83 fb 01          	cmp    $0x1,%rbx
  402ad5:	75 3d                	jne    402b14 <rio_readlineb+0x71>
  402ad7:	b8 00 00 00 00       	mov    $0x0,%eax
  402adc:	eb 3d                	jmp    402b1b <rio_readlineb+0x78>
  402ade:	48 83 c3 01          	add    $0x1,%rbx
  402ae2:	48 89 d5             	mov    %rdx,%rbp
  402ae5:	4c 39 e3             	cmp    %r12,%rbx
  402ae8:	73 2a                	jae    402b14 <rio_readlineb+0x71>
  402aea:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402aef:	ba 01 00 00 00       	mov    $0x1,%edx
  402af4:	4c 89 ef             	mov    %r13,%rdi
  402af7:	e8 20 ff ff ff       	call   402a1c <rio_read>
  402afc:	83 f8 01             	cmp    $0x1,%eax
  402aff:	75 cc                	jne    402acd <rio_readlineb+0x2a>
  402b01:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402b05:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402b0a:	88 45 00             	mov    %al,0x0(%rbp)
  402b0d:	3c 0a                	cmp    $0xa,%al
  402b0f:	75 cd                	jne    402ade <rio_readlineb+0x3b>
  402b11:	48 89 d5             	mov    %rdx,%rbp
  402b14:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402b18:	48 89 d8             	mov    %rbx,%rax
  402b1b:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402b20:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402b27:	00 00 
  402b29:	75 14                	jne    402b3f <rio_readlineb+0x9c>
  402b2b:	48 83 c4 18          	add    $0x18,%rsp
  402b2f:	5b                   	pop    %rbx
  402b30:	5d                   	pop    %rbp
  402b31:	41 5c                	pop    %r12
  402b33:	41 5d                	pop    %r13
  402b35:	c3                   	ret    
  402b36:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b3d:	eb dc                	jmp    402b1b <rio_readlineb+0x78>
  402b3f:	e8 10 fc ff ff       	call   402754 <__stack_chk_fail>

0000000000402b44 <urlencode>:
  402b44:	41 54                	push   %r12
  402b46:	55                   	push   %rbp
  402b47:	53                   	push   %rbx
  402b48:	48 83 ec 10          	sub    $0x10,%rsp
  402b4c:	48 89 fb             	mov    %rdi,%rbx
  402b4f:	48 89 f5             	mov    %rsi,%rbp
  402b52:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b59:	00 00 
  402b5b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b60:	31 c0                	xor    %eax,%eax
  402b62:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402b69:	f2 ae                	repnz scas %es:(%rdi),%al
  402b6b:	48 f7 d1             	not    %rcx
  402b6e:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402b71:	eb 0f                	jmp    402b82 <urlencode+0x3e>
  402b73:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402b77:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b7b:	48 83 c3 01          	add    $0x1,%rbx
  402b7f:	44 89 e0             	mov    %r12d,%eax
  402b82:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b86:	85 c0                	test   %eax,%eax
  402b88:	0f 84 a8 00 00 00    	je     402c36 <urlencode+0xf2>
  402b8e:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b92:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b96:	0f 94 c2             	sete   %dl
  402b99:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b9d:	0f 94 c0             	sete   %al
  402ba0:	08 c2                	or     %al,%dl
  402ba2:	75 cf                	jne    402b73 <urlencode+0x2f>
  402ba4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402ba8:	74 c9                	je     402b73 <urlencode+0x2f>
  402baa:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402bae:	74 c3                	je     402b73 <urlencode+0x2f>
  402bb0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402bb4:	3c 09                	cmp    $0x9,%al
  402bb6:	76 bb                	jbe    402b73 <urlencode+0x2f>
  402bb8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402bbc:	3c 19                	cmp    $0x19,%al
  402bbe:	76 b3                	jbe    402b73 <urlencode+0x2f>
  402bc0:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402bc4:	3c 19                	cmp    $0x19,%al
  402bc6:	76 ab                	jbe    402b73 <urlencode+0x2f>
  402bc8:	41 80 f8 20          	cmp    $0x20,%r8b
  402bcc:	74 56                	je     402c24 <urlencode+0xe0>
  402bce:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402bd2:	3c 5f                	cmp    $0x5f,%al
  402bd4:	0f 96 c2             	setbe  %dl
  402bd7:	41 80 f8 09          	cmp    $0x9,%r8b
  402bdb:	0f 94 c0             	sete   %al
  402bde:	08 c2                	or     %al,%dl
  402be0:	74 4f                	je     402c31 <urlencode+0xed>
  402be2:	48 89 e7             	mov    %rsp,%rdi
  402be5:	45 0f b6 c0          	movzbl %r8b,%r8d
  402be9:	48 8d 0d 45 1c 00 00 	lea    0x1c45(%rip),%rcx        # 404835 <trans_char+0xc5>
  402bf0:	ba 08 00 00 00       	mov    $0x8,%edx
  402bf5:	be 01 00 00 00       	mov    $0x1,%esi
  402bfa:	b8 00 00 00 00       	mov    $0x0,%eax
  402bff:	e8 4c e8 ff ff       	call   401450 <__sprintf_chk@plt>
  402c04:	0f b6 04 24          	movzbl (%rsp),%eax
  402c08:	88 45 00             	mov    %al,0x0(%rbp)
  402c0b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402c10:	88 45 01             	mov    %al,0x1(%rbp)
  402c13:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402c18:	88 45 02             	mov    %al,0x2(%rbp)
  402c1b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402c1f:	e9 57 ff ff ff       	jmp    402b7b <urlencode+0x37>
  402c24:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402c28:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402c2c:	e9 4a ff ff ff       	jmp    402b7b <urlencode+0x37>
  402c31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c36:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402c3b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402c42:	00 00 
  402c44:	75 09                	jne    402c4f <urlencode+0x10b>
  402c46:	48 83 c4 10          	add    $0x10,%rsp
  402c4a:	5b                   	pop    %rbx
  402c4b:	5d                   	pop    %rbp
  402c4c:	41 5c                	pop    %r12
  402c4e:	c3                   	ret    
  402c4f:	e8 00 fb ff ff       	call   402754 <__stack_chk_fail>

0000000000402c54 <submitr>:
  402c54:	f3 0f 1e fa          	endbr64 
  402c58:	41 57                	push   %r15
  402c5a:	41 56                	push   %r14
  402c5c:	41 55                	push   %r13
  402c5e:	41 54                	push   %r12
  402c60:	55                   	push   %rbp
  402c61:	53                   	push   %rbx
  402c62:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402c69:	ff 
  402c6a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402c71:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402c76:	4c 39 dc             	cmp    %r11,%rsp
  402c79:	75 ef                	jne    402c6a <submitr+0x16>
  402c7b:	48 83 ec 68          	sub    $0x68,%rsp
  402c7f:	49 89 fc             	mov    %rdi,%r12
  402c82:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402c86:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402c8b:	49 89 cd             	mov    %rcx,%r13
  402c8e:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402c93:	4d 89 ce             	mov    %r9,%r14
  402c96:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402c9d:	00 
  402c9e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ca5:	00 00 
  402ca7:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402cae:	00 
  402caf:	31 c0                	xor    %eax,%eax
  402cb1:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402cb8:	00 
  402cb9:	ba 00 00 00 00       	mov    $0x0,%edx
  402cbe:	be 01 00 00 00       	mov    $0x1,%esi
  402cc3:	bf 02 00 00 00       	mov    $0x2,%edi
  402cc8:	e8 93 e7 ff ff       	call   401460 <socket@plt>
  402ccd:	85 c0                	test   %eax,%eax
  402ccf:	0f 88 a5 02 00 00    	js     402f7a <submitr+0x326>
  402cd5:	89 c3                	mov    %eax,%ebx
  402cd7:	4c 89 e7             	mov    %r12,%rdi
  402cda:	e8 61 e6 ff ff       	call   401340 <gethostbyname@plt>
  402cdf:	48 85 c0             	test   %rax,%rax
  402ce2:	0f 84 de 02 00 00    	je     402fc6 <submitr+0x372>
  402ce8:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402ced:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402cf4:	00 00 
  402cf6:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402cfd:	00 00 
  402cff:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402d06:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d0a:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d0e:	48 8b 30             	mov    (%rax),%rsi
  402d11:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402d16:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d1b:	e8 30 e6 ff ff       	call   401350 <__memmove_chk@plt>
  402d20:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402d25:	66 c1 c6 08          	rol    $0x8,%si
  402d29:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402d2e:	ba 10 00 00 00       	mov    $0x10,%edx
  402d33:	4c 89 fe             	mov    %r15,%rsi
  402d36:	89 df                	mov    %ebx,%edi
  402d38:	e8 e3 e6 ff ff       	call   401420 <connect@plt>
  402d3d:	85 c0                	test   %eax,%eax
  402d3f:	0f 88 f7 02 00 00    	js     40303c <submitr+0x3e8>
  402d45:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402d4c:	b8 00 00 00 00       	mov    $0x0,%eax
  402d51:	48 89 f1             	mov    %rsi,%rcx
  402d54:	4c 89 f7             	mov    %r14,%rdi
  402d57:	f2 ae                	repnz scas %es:(%rdi),%al
  402d59:	48 89 ca             	mov    %rcx,%rdx
  402d5c:	48 f7 d2             	not    %rdx
  402d5f:	48 89 f1             	mov    %rsi,%rcx
  402d62:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d67:	f2 ae                	repnz scas %es:(%rdi),%al
  402d69:	48 f7 d1             	not    %rcx
  402d6c:	49 89 c8             	mov    %rcx,%r8
  402d6f:	48 89 f1             	mov    %rsi,%rcx
  402d72:	4c 89 ef             	mov    %r13,%rdi
  402d75:	f2 ae                	repnz scas %es:(%rdi),%al
  402d77:	48 f7 d1             	not    %rcx
  402d7a:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402d7f:	48 89 f1             	mov    %rsi,%rcx
  402d82:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402d87:	f2 ae                	repnz scas %es:(%rdi),%al
  402d89:	48 89 c8             	mov    %rcx,%rax
  402d8c:	48 f7 d0             	not    %rax
  402d8f:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402d94:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402d99:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402da0:	00 
  402da1:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402da7:	0f 87 f7 02 00 00    	ja     4030a4 <submitr+0x450>
  402dad:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402db4:	00 
  402db5:	b9 00 04 00 00       	mov    $0x400,%ecx
  402dba:	b8 00 00 00 00       	mov    $0x0,%eax
  402dbf:	48 89 f7             	mov    %rsi,%rdi
  402dc2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402dc5:	4c 89 f7             	mov    %r14,%rdi
  402dc8:	e8 77 fd ff ff       	call   402b44 <urlencode>
  402dcd:	85 c0                	test   %eax,%eax
  402dcf:	0f 88 42 03 00 00    	js     403117 <submitr+0x4c3>
  402dd5:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402ddc:	00 
  402ddd:	48 83 ec 08          	sub    $0x8,%rsp
  402de1:	41 54                	push   %r12
  402de3:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402dea:	00 
  402deb:	50                   	push   %rax
  402dec:	41 55                	push   %r13
  402dee:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402df3:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402df8:	48 8d 0d a9 19 00 00 	lea    0x19a9(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402dff:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e04:	be 01 00 00 00       	mov    $0x1,%esi
  402e09:	4c 89 ff             	mov    %r15,%rdi
  402e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  402e11:	e8 3a e6 ff ff       	call   401450 <__sprintf_chk@plt>
  402e16:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e22:	4c 89 ff             	mov    %r15,%rdi
  402e25:	f2 ae                	repnz scas %es:(%rdi),%al
  402e27:	48 f7 d1             	not    %rcx
  402e2a:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402e2e:	48 83 c4 20          	add    $0x20,%rsp
  402e32:	4c 89 fe             	mov    %r15,%rsi
  402e35:	89 df                	mov    %ebx,%edi
  402e37:	e8 82 fb ff ff       	call   4029be <rio_writen>
  402e3c:	48 85 c0             	test   %rax,%rax
  402e3f:	0f 88 5d 03 00 00    	js     4031a2 <submitr+0x54e>
  402e45:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402e4a:	89 de                	mov    %ebx,%esi
  402e4c:	4c 89 e7             	mov    %r12,%rdi
  402e4f:	e8 22 fb ff ff       	call   402976 <rio_readinitb>
  402e54:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e5b:	00 
  402e5c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e61:	4c 89 e7             	mov    %r12,%rdi
  402e64:	e8 3a fc ff ff       	call   402aa3 <rio_readlineb>
  402e69:	48 85 c0             	test   %rax,%rax
  402e6c:	0f 8e 9c 03 00 00    	jle    40320e <submitr+0x5ba>
  402e72:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402e77:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402e7e:	00 
  402e7f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e86:	00 
  402e87:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402e8e:	00 
  402e8f:	48 8d 35 a6 19 00 00 	lea    0x19a6(%rip),%rsi        # 40483c <trans_char+0xcc>
  402e96:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9b:	e8 00 e5 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  402ea0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ea7:	00 
  402ea8:	b9 03 00 00 00       	mov    $0x3,%ecx
  402ead:	48 8d 3d 9f 19 00 00 	lea    0x199f(%rip),%rdi        # 404853 <trans_char+0xe3>
  402eb4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402eb6:	0f 97 c0             	seta   %al
  402eb9:	1c 00                	sbb    $0x0,%al
  402ebb:	84 c0                	test   %al,%al
  402ebd:	0f 84 cb 03 00 00    	je     40328e <submitr+0x63a>
  402ec3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402eca:	00 
  402ecb:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402ed0:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ed5:	e8 c9 fb ff ff       	call   402aa3 <rio_readlineb>
  402eda:	48 85 c0             	test   %rax,%rax
  402edd:	7f c1                	jg     402ea0 <submitr+0x24c>
  402edf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ee6:	3a 20 43 
  402ee9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402ef0:	20 75 6e 
  402ef3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ef7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402efb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f02:	74 6f 20 
  402f05:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402f0c:	68 65 61 
  402f0f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402f13:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402f17:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402f1e:	66 72 6f 
  402f21:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402f28:	6f 6c 61 
  402f2b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402f2f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402f33:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402f3a:	76 65 72 
  402f3d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f41:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402f45:	89 df                	mov    %ebx,%edi
  402f47:	e8 b4 e3 ff ff       	call   401300 <close@plt>
  402f4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f51:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402f58:	00 
  402f59:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402f60:	00 00 
  402f62:	0f 85 96 04 00 00    	jne    4033fe <submitr+0x7aa>
  402f68:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402f6f:	5b                   	pop    %rbx
  402f70:	5d                   	pop    %rbp
  402f71:	41 5c                	pop    %r12
  402f73:	41 5d                	pop    %r13
  402f75:	41 5e                	pop    %r14
  402f77:	41 5f                	pop    %r15
  402f79:	c3                   	ret    
  402f7a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f81:	3a 20 43 
  402f84:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f8b:	20 75 6e 
  402f8e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402f92:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402f96:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f9d:	74 6f 20 
  402fa0:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402fa7:	65 20 73 
  402faa:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402fae:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402fb2:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402fb9:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402fbf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fc4:	eb 8b                	jmp    402f51 <submitr+0x2fd>
  402fc6:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402fcd:	3a 20 44 
  402fd0:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402fd7:	20 75 6e 
  402fda:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402fde:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402fe2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fe9:	74 6f 20 
  402fec:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402ff3:	76 65 20 
  402ff6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ffa:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ffe:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403005:	61 62 20 
  403008:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  40300f:	72 20 61 
  403012:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403016:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40301a:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  403021:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  403027:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  40302b:	89 df                	mov    %ebx,%edi
  40302d:	e8 ce e2 ff ff       	call   401300 <close@plt>
  403032:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403037:	e9 15 ff ff ff       	jmp    402f51 <submitr+0x2fd>
  40303c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403043:	3a 20 55 
  403046:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40304d:	20 74 6f 
  403050:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403054:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403058:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40305f:	65 63 74 
  403062:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403069:	68 65 20 
  40306c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403070:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403074:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40307b:	61 62 20 
  40307e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403082:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403089:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  40308f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403093:	89 df                	mov    %ebx,%edi
  403095:	e8 66 e2 ff ff       	call   401300 <close@plt>
  40309a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309f:	e9 ad fe ff ff       	jmp    402f51 <submitr+0x2fd>
  4030a4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4030ab:	3a 20 52 
  4030ae:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4030b5:	20 73 74 
  4030b8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030bc:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030c0:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4030c7:	74 6f 6f 
  4030ca:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4030d1:	65 2e 20 
  4030d4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4030d8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030dc:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4030e3:	61 73 65 
  4030e6:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4030ed:	49 54 52 
  4030f0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030f4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4030f8:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4030ff:	55 46 00 
  403102:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403106:	89 df                	mov    %ebx,%edi
  403108:	e8 f3 e1 ff ff       	call   401300 <close@plt>
  40310d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403112:	e9 3a fe ff ff       	jmp    402f51 <submitr+0x2fd>
  403117:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40311e:	3a 20 52 
  403121:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403128:	20 73 74 
  40312b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40312f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403133:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40313a:	63 6f 6e 
  40313d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403144:	20 61 6e 
  403147:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40314b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40314f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403156:	67 61 6c 
  403159:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403160:	6e 70 72 
  403163:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403167:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40316b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403172:	6c 65 20 
  403175:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40317c:	63 74 65 
  40317f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403183:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403187:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40318d:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403191:	89 df                	mov    %ebx,%edi
  403193:	e8 68 e1 ff ff       	call   401300 <close@plt>
  403198:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40319d:	e9 af fd ff ff       	jmp    402f51 <submitr+0x2fd>
  4031a2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4031a9:	3a 20 43 
  4031ac:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031b3:	20 75 6e 
  4031b6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031ba:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031be:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031c5:	74 6f 20 
  4031c8:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4031cf:	20 74 6f 
  4031d2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031d6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031da:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4031e1:	41 75 74 
  4031e4:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4031eb:	73 65 72 
  4031ee:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031f2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031f6:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4031fd:	89 df                	mov    %ebx,%edi
  4031ff:	e8 fc e0 ff ff       	call   401300 <close@plt>
  403204:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403209:	e9 43 fd ff ff       	jmp    402f51 <submitr+0x2fd>
  40320e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403215:	3a 20 43 
  403218:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40321f:	20 75 6e 
  403222:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403226:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40322a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403231:	74 6f 20 
  403234:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40323b:	66 69 72 
  40323e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403242:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403246:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40324d:	61 64 65 
  403250:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403257:	6d 20 41 
  40325a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40325e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403262:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403269:	62 20 73 
  40326c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403270:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  403277:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  40327d:	89 df                	mov    %ebx,%edi
  40327f:	e8 7c e0 ff ff       	call   401300 <close@plt>
  403284:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403289:	e9 c3 fc ff ff       	jmp    402f51 <submitr+0x2fd>
  40328e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403295:	00 
  403296:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40329b:	ba 00 20 00 00       	mov    $0x2000,%edx
  4032a0:	e8 fe f7 ff ff       	call   402aa3 <rio_readlineb>
  4032a5:	48 85 c0             	test   %rax,%rax
  4032a8:	0f 8e 96 00 00 00    	jle    403344 <submitr+0x6f0>
  4032ae:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4032b3:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4032ba:	0f 85 05 01 00 00    	jne    4033c5 <submitr+0x771>
  4032c0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4032c7:	00 
  4032c8:	48 89 ef             	mov    %rbp,%rdi
  4032cb:	e8 d0 df ff ff       	call   4012a0 <strcpy@plt>
  4032d0:	89 df                	mov    %ebx,%edi
  4032d2:	e8 29 e0 ff ff       	call   401300 <close@plt>
  4032d7:	b9 04 00 00 00       	mov    $0x4,%ecx
  4032dc:	48 8d 3d 6a 15 00 00 	lea    0x156a(%rip),%rdi        # 40484d <trans_char+0xdd>
  4032e3:	48 89 ee             	mov    %rbp,%rsi
  4032e6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4032e8:	0f 97 c0             	seta   %al
  4032eb:	1c 00                	sbb    $0x0,%al
  4032ed:	0f be c0             	movsbl %al,%eax
  4032f0:	85 c0                	test   %eax,%eax
  4032f2:	0f 84 59 fc ff ff    	je     402f51 <submitr+0x2fd>
  4032f8:	b9 05 00 00 00       	mov    $0x5,%ecx
  4032fd:	48 8d 3d 4d 15 00 00 	lea    0x154d(%rip),%rdi        # 404851 <trans_char+0xe1>
  403304:	48 89 ee             	mov    %rbp,%rsi
  403307:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403309:	0f 97 c0             	seta   %al
  40330c:	1c 00                	sbb    $0x0,%al
  40330e:	0f be c0             	movsbl %al,%eax
  403311:	85 c0                	test   %eax,%eax
  403313:	0f 84 38 fc ff ff    	je     402f51 <submitr+0x2fd>
  403319:	b9 03 00 00 00       	mov    $0x3,%ecx
  40331e:	48 8d 3d 31 15 00 00 	lea    0x1531(%rip),%rdi        # 404856 <trans_char+0xe6>
  403325:	48 89 ee             	mov    %rbp,%rsi
  403328:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40332a:	0f 97 c0             	seta   %al
  40332d:	1c 00                	sbb    $0x0,%al
  40332f:	0f be c0             	movsbl %al,%eax
  403332:	85 c0                	test   %eax,%eax
  403334:	0f 84 17 fc ff ff    	je     402f51 <submitr+0x2fd>
  40333a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40333f:	e9 0d fc ff ff       	jmp    402f51 <submitr+0x2fd>
  403344:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40334b:	3a 20 43 
  40334e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403355:	20 75 6e 
  403358:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40335c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403360:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403367:	74 6f 20 
  40336a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403371:	73 74 61 
  403374:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403378:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40337c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403383:	65 73 73 
  403386:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40338d:	72 6f 6d 
  403390:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403394:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403398:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40339f:	6c 61 62 
  4033a2:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  4033a9:	65 72 00 
  4033ac:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4033b0:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4033b4:	89 df                	mov    %ebx,%edi
  4033b6:	e8 45 df ff ff       	call   401300 <close@plt>
  4033bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033c0:	e9 8c fb ff ff       	jmp    402f51 <submitr+0x2fd>
  4033c5:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4033cc:	00 
  4033cd:	48 8d 0d 34 14 00 00 	lea    0x1434(%rip),%rcx        # 404808 <trans_char+0x98>
  4033d4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4033db:	be 01 00 00 00       	mov    $0x1,%esi
  4033e0:	48 89 ef             	mov    %rbp,%rdi
  4033e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4033e8:	e8 63 e0 ff ff       	call   401450 <__sprintf_chk@plt>
  4033ed:	89 df                	mov    %ebx,%edi
  4033ef:	e8 0c df ff ff       	call   401300 <close@plt>
  4033f4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033f9:	e9 53 fb ff ff       	jmp    402f51 <submitr+0x2fd>
  4033fe:	e8 51 f3 ff ff       	call   402754 <__stack_chk_fail>

0000000000403403 <init_timeout>:
  403403:	f3 0f 1e fa          	endbr64 
  403407:	85 ff                	test   %edi,%edi
  403409:	74 26                	je     403431 <init_timeout+0x2e>
  40340b:	53                   	push   %rbx
  40340c:	89 fb                	mov    %edi,%ebx
  40340e:	78 1a                	js     40342a <init_timeout+0x27>
  403410:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402988 <sigalrm_handler>
  403417:	bf 0e 00 00 00       	mov    $0xe,%edi
  40341c:	e8 0f df ff ff       	call   401330 <signal@plt>
  403421:	89 df                	mov    %ebx,%edi
  403423:	e8 c8 de ff ff       	call   4012f0 <alarm@plt>
  403428:	5b                   	pop    %rbx
  403429:	c3                   	ret    
  40342a:	bb 00 00 00 00       	mov    $0x0,%ebx
  40342f:	eb df                	jmp    403410 <init_timeout+0xd>
  403431:	c3                   	ret    

0000000000403432 <init_driver>:
  403432:	f3 0f 1e fa          	endbr64 
  403436:	41 54                	push   %r12
  403438:	55                   	push   %rbp
  403439:	53                   	push   %rbx
  40343a:	48 83 ec 20          	sub    $0x20,%rsp
  40343e:	48 89 fd             	mov    %rdi,%rbp
  403441:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403448:	00 00 
  40344a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40344f:	31 c0                	xor    %eax,%eax
  403451:	be 01 00 00 00       	mov    $0x1,%esi
  403456:	bf 0d 00 00 00       	mov    $0xd,%edi
  40345b:	e8 d0 de ff ff       	call   401330 <signal@plt>
  403460:	be 01 00 00 00       	mov    $0x1,%esi
  403465:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40346a:	e8 c1 de ff ff       	call   401330 <signal@plt>
  40346f:	be 01 00 00 00       	mov    $0x1,%esi
  403474:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403479:	e8 b2 de ff ff       	call   401330 <signal@plt>
  40347e:	ba 00 00 00 00       	mov    $0x0,%edx
  403483:	be 01 00 00 00       	mov    $0x1,%esi
  403488:	bf 02 00 00 00       	mov    $0x2,%edi
  40348d:	e8 ce df ff ff       	call   401460 <socket@plt>
  403492:	85 c0                	test   %eax,%eax
  403494:	0f 88 9c 00 00 00    	js     403536 <init_driver+0x104>
  40349a:	89 c3                	mov    %eax,%ebx
  40349c:	48 8d 3d b6 13 00 00 	lea    0x13b6(%rip),%rdi        # 404859 <trans_char+0xe9>
  4034a3:	e8 98 de ff ff       	call   401340 <gethostbyname@plt>
  4034a8:	48 85 c0             	test   %rax,%rax
  4034ab:	0f 84 d1 00 00 00    	je     403582 <init_driver+0x150>
  4034b1:	49 89 e4             	mov    %rsp,%r12
  4034b4:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4034bb:	00 
  4034bc:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4034c3:	00 00 
  4034c5:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4034cb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4034cf:	48 8b 40 18          	mov    0x18(%rax),%rax
  4034d3:	48 8b 30             	mov    (%rax),%rsi
  4034d6:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4034db:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4034e0:	e8 6b de ff ff       	call   401350 <__memmove_chk@plt>
  4034e5:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4034ec:	ba 10 00 00 00       	mov    $0x10,%edx
  4034f1:	4c 89 e6             	mov    %r12,%rsi
  4034f4:	89 df                	mov    %ebx,%edi
  4034f6:	e8 25 df ff ff       	call   401420 <connect@plt>
  4034fb:	85 c0                	test   %eax,%eax
  4034fd:	0f 88 e7 00 00 00    	js     4035ea <init_driver+0x1b8>
  403503:	89 df                	mov    %ebx,%edi
  403505:	e8 f6 dd ff ff       	call   401300 <close@plt>
  40350a:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  403510:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403514:	b8 00 00 00 00       	mov    $0x0,%eax
  403519:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40351e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403525:	00 00 
  403527:	0f 85 10 01 00 00    	jne    40363d <init_driver+0x20b>
  40352d:	48 83 c4 20          	add    $0x20,%rsp
  403531:	5b                   	pop    %rbx
  403532:	5d                   	pop    %rbp
  403533:	41 5c                	pop    %r12
  403535:	c3                   	ret    
  403536:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40353d:	3a 20 43 
  403540:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403547:	20 75 6e 
  40354a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40354e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403552:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403559:	74 6f 20 
  40355c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403563:	65 20 73 
  403566:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40356a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40356e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403575:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40357b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403580:	eb 97                	jmp    403519 <init_driver+0xe7>
  403582:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403589:	3a 20 44 
  40358c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403593:	20 75 6e 
  403596:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40359a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40359e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4035a5:	74 6f 20 
  4035a8:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4035af:	76 65 20 
  4035b2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035b6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4035ba:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4035c1:	72 20 61 
  4035c4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4035c8:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4035cf:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4035d5:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4035d9:	89 df                	mov    %ebx,%edi
  4035db:	e8 20 dd ff ff       	call   401300 <close@plt>
  4035e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035e5:	e9 2f ff ff ff       	jmp    403519 <init_driver+0xe7>
  4035ea:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4035f1:	3a 20 55 
  4035f4:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4035fb:	20 74 6f 
  4035fe:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403602:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403606:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40360d:	65 63 74 
  403610:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403617:	65 72 76 
  40361a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40361e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403622:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403628:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  40362c:	89 df                	mov    %ebx,%edi
  40362e:	e8 cd dc ff ff       	call   401300 <close@plt>
  403633:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403638:	e9 dc fe ff ff       	jmp    403519 <init_driver+0xe7>
  40363d:	e8 12 f1 ff ff       	call   402754 <__stack_chk_fail>

0000000000403642 <driver_post>:
  403642:	f3 0f 1e fa          	endbr64 
  403646:	53                   	push   %rbx
  403647:	4c 89 cb             	mov    %r9,%rbx
  40364a:	45 85 c0             	test   %r8d,%r8d
  40364d:	75 18                	jne    403667 <driver_post+0x25>
  40364f:	48 85 ff             	test   %rdi,%rdi
  403652:	74 05                	je     403659 <driver_post+0x17>
  403654:	80 3f 00             	cmpb   $0x0,(%rdi)
  403657:	75 37                	jne    403690 <driver_post+0x4e>
  403659:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40365e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403662:	44 89 c0             	mov    %r8d,%eax
  403665:	5b                   	pop    %rbx
  403666:	c3                   	ret    
  403667:	48 89 ca             	mov    %rcx,%rdx
  40366a:	48 8d 35 f8 11 00 00 	lea    0x11f8(%rip),%rsi        # 404869 <trans_char+0xf9>
  403671:	bf 01 00 00 00       	mov    $0x1,%edi
  403676:	b8 00 00 00 00       	mov    $0x0,%eax
  40367b:	e8 40 dd ff ff       	call   4013c0 <__printf_chk@plt>
  403680:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403685:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403689:	b8 00 00 00 00       	mov    $0x0,%eax
  40368e:	eb d5                	jmp    403665 <driver_post+0x23>
  403690:	48 83 ec 08          	sub    $0x8,%rsp
  403694:	41 51                	push   %r9
  403696:	49 89 c9             	mov    %rcx,%r9
  403699:	49 89 d0             	mov    %rdx,%r8
  40369c:	48 89 f9             	mov    %rdi,%rcx
  40369f:	48 89 f2             	mov    %rsi,%rdx
  4036a2:	be 39 30 00 00       	mov    $0x3039,%esi
  4036a7:	48 8d 3d ab 11 00 00 	lea    0x11ab(%rip),%rdi        # 404859 <trans_char+0xe9>
  4036ae:	e8 a1 f5 ff ff       	call   402c54 <submitr>
  4036b3:	48 83 c4 10          	add    $0x10,%rsp
  4036b7:	eb ac                	jmp    403665 <driver_post+0x23>

00000000004036b9 <check>:
  4036b9:	f3 0f 1e fa          	endbr64 
  4036bd:	89 f8                	mov    %edi,%eax
  4036bf:	c1 e8 1c             	shr    $0x1c,%eax
  4036c2:	74 1d                	je     4036e1 <check+0x28>
  4036c4:	b9 00 00 00 00       	mov    $0x0,%ecx
  4036c9:	83 f9 1f             	cmp    $0x1f,%ecx
  4036cc:	7f 0d                	jg     4036db <check+0x22>
  4036ce:	89 f8                	mov    %edi,%eax
  4036d0:	d3 e8                	shr    %cl,%eax
  4036d2:	3c 0a                	cmp    $0xa,%al
  4036d4:	74 11                	je     4036e7 <check+0x2e>
  4036d6:	83 c1 08             	add    $0x8,%ecx
  4036d9:	eb ee                	jmp    4036c9 <check+0x10>
  4036db:	b8 01 00 00 00       	mov    $0x1,%eax
  4036e0:	c3                   	ret    
  4036e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4036e6:	c3                   	ret    
  4036e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4036ec:	c3                   	ret    

00000000004036ed <gencookie>:
  4036ed:	f3 0f 1e fa          	endbr64 
  4036f1:	53                   	push   %rbx
  4036f2:	83 c7 01             	add    $0x1,%edi
  4036f5:	e8 76 db ff ff       	call   401270 <srandom@plt>
  4036fa:	e8 91 dc ff ff       	call   401390 <random@plt>
  4036ff:	48 89 c7             	mov    %rax,%rdi
  403702:	89 c3                	mov    %eax,%ebx
  403704:	e8 b0 ff ff ff       	call   4036b9 <check>
  403709:	85 c0                	test   %eax,%eax
  40370b:	74 ed                	je     4036fa <gencookie+0xd>
  40370d:	89 d8                	mov    %ebx,%eax
  40370f:	5b                   	pop    %rbx
  403710:	c3                   	ret    
  403711:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  403718:	00 00 00 
  40371b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403720 <__libc_csu_init>:
  403720:	f3 0f 1e fa          	endbr64 
  403724:	41 57                	push   %r15
  403726:	4c 8d 3d e3 36 00 00 	lea    0x36e3(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40372d:	41 56                	push   %r14
  40372f:	49 89 d6             	mov    %rdx,%r14
  403732:	41 55                	push   %r13
  403734:	49 89 f5             	mov    %rsi,%r13
  403737:	41 54                	push   %r12
  403739:	41 89 fc             	mov    %edi,%r12d
  40373c:	55                   	push   %rbp
  40373d:	48 8d 2d d4 36 00 00 	lea    0x36d4(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403744:	53                   	push   %rbx
  403745:	4c 29 fd             	sub    %r15,%rbp
  403748:	48 83 ec 08          	sub    $0x8,%rsp
  40374c:	e8 af d8 ff ff       	call   401000 <_init>
  403751:	48 c1 fd 03          	sar    $0x3,%rbp
  403755:	74 1f                	je     403776 <__libc_csu_init+0x56>
  403757:	31 db                	xor    %ebx,%ebx
  403759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403760:	4c 89 f2             	mov    %r14,%rdx
  403763:	4c 89 ee             	mov    %r13,%rsi
  403766:	44 89 e7             	mov    %r12d,%edi
  403769:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40376d:	48 83 c3 01          	add    $0x1,%rbx
  403771:	48 39 dd             	cmp    %rbx,%rbp
  403774:	75 ea                	jne    403760 <__libc_csu_init+0x40>
  403776:	48 83 c4 08          	add    $0x8,%rsp
  40377a:	5b                   	pop    %rbx
  40377b:	5d                   	pop    %rbp
  40377c:	41 5c                	pop    %r12
  40377e:	41 5d                	pop    %r13
  403780:	41 5e                	pop    %r14
  403782:	41 5f                	pop    %r15
  403784:	c3                   	ret    
  403785:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40378c:	00 00 00 00 

0000000000403790 <__libc_csu_fini>:
  403790:	f3 0f 1e fa          	endbr64 
  403794:	c3                   	ret    

Disassembly of section .fini:

0000000000403798 <_fini>:
  403798:	f3 0f 1e fa          	endbr64 
  40379c:	48 83 ec 08          	sub    $0x8,%rsp
  4037a0:	48 83 c4 08          	add    $0x8,%rsp
  4037a4:	c3                   	ret    
