
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ba 5e 00 00    	push   0x5eba(%rip)        # 6ee0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 bb 5e 00 00 	bnd jmp *0x5ebb(%rip)        # 6ee8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <.plt>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <.plt>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <.plt>
    11ff:	90                   	nop

Disassembly of section .plt.got:

0000000000001200 <__cxa_finalize@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 ed 5d 00 00 	bnd jmp *0x5ded(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001210 <getenv@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 6ef0 <getenv@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <free@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 6ef8 <free@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strcasecmp@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 6f00 <strcasecmp@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <__errno_location@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 6f08 <__errno_location@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <strcpy@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 6f10 <strcpy@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <puts@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 ad 5c 00 00 	bnd jmp *0x5cad(%rip)        # 6f18 <puts@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <write@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 6f20 <write@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <__stack_chk_fail@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 6f28 <__stack_chk_fail@GLIBC_2.4>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <alarm@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 6f30 <alarm@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <close@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 6f38 <close@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <read@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 6f40 <read@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <fgets@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 6f48 <fgets@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <signal@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 6f50 <signal@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <gethostbyname@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 6f58 <gethostbyname@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__memmove_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 6f60 <__memmove_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <memcpy@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 6f68 <memcpy@GLIBC_2.14>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <malloc@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 6f70 <malloc@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fflush@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 6f78 <fflush@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__isoc99_sscanf@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 6f80 <__isoc99_sscanf@GLIBC_2.7>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__printf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 6f88 <__printf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <fopen@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 6f90 <fopen@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <gethostname@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 6f98 <gethostname@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <exit@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 6fa0 <exit@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <connect@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 6fa8 <connect@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <__fprintf_chk@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 6fb0 <__fprintf_chk@GLIBC_2.3.4>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <sleep@plt>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 6fb8 <sleep@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__ctype_b_loc@plt>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 6fc0 <__ctype_b_loc@GLIBC_2.3>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <__sprintf_chk@plt>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 6fc8 <__sprintf_chk@GLIBC_2.3.4>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <socket@plt>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 6fd0 <socket@GLIBC_2.2.5>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013e0 <_start>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	31 ed                	xor    %ebp,%ebp
    13e6:	49 89 d1             	mov    %rdx,%r9
    13e9:	5e                   	pop    %rsi
    13ea:	48 89 e2             	mov    %rsp,%rdx
    13ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13f1:	50                   	push   %rax
    13f2:	54                   	push   %rsp
    13f3:	4c 8d 05 26 1d 00 00 	lea    0x1d26(%rip),%r8        # 3120 <__libc_csu_fini>
    13fa:	48 8d 0d af 1c 00 00 	lea    0x1caf(%rip),%rcx        # 30b0 <__libc_csu_init>
    1401:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 14c9 <main>
    1408:	ff 15 d2 5b 00 00    	call   *0x5bd2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    140e:	f4                   	hlt    
    140f:	90                   	nop

0000000000001410 <deregister_tm_clones>:
    1410:	48 8d 3d 49 70 00 00 	lea    0x7049(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1417:	48 8d 05 42 70 00 00 	lea    0x7042(%rip),%rax        # 8460 <stdout@GLIBC_2.2.5>
    141e:	48 39 f8             	cmp    %rdi,%rax
    1421:	74 15                	je     1438 <deregister_tm_clones+0x28>
    1423:	48 8b 05 ae 5b 00 00 	mov    0x5bae(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    142a:	48 85 c0             	test   %rax,%rax
    142d:	74 09                	je     1438 <deregister_tm_clones+0x28>
    142f:	ff e0                	jmp    *%rax
    1431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <register_tm_clones>:
    1440:	48 8d 3d 19 70 00 00 	lea    0x7019(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1447:	48 8d 35 12 70 00 00 	lea    0x7012(%rip),%rsi        # 8460 <stdout@GLIBC_2.2.5>
    144e:	48 29 fe             	sub    %rdi,%rsi
    1451:	48 89 f0             	mov    %rsi,%rax
    1454:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1458:	48 c1 f8 03          	sar    $0x3,%rax
    145c:	48 01 c6             	add    %rax,%rsi
    145f:	48 d1 fe             	sar    %rsi
    1462:	74 14                	je     1478 <register_tm_clones+0x38>
    1464:	48 8b 05 85 5b 00 00 	mov    0x5b85(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    146b:	48 85 c0             	test   %rax,%rax
    146e:	74 08                	je     1478 <register_tm_clones+0x38>
    1470:	ff e0                	jmp    *%rax
    1472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <__do_global_dtors_aux>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	80 3d fd 6f 00 00 00 	cmpb   $0x0,0x6ffd(%rip)        # 8488 <completed.8060>
    148b:	75 2b                	jne    14b8 <__do_global_dtors_aux+0x38>
    148d:	55                   	push   %rbp
    148e:	48 83 3d 62 5b 00 00 	cmpq   $0x0,0x5b62(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    1495:	00 
    1496:	48 89 e5             	mov    %rsp,%rbp
    1499:	74 0c                	je     14a7 <__do_global_dtors_aux+0x27>
    149b:	48 8b 3d 66 5b 00 00 	mov    0x5b66(%rip),%rdi        # 7008 <__dso_handle>
    14a2:	e8 59 fd ff ff       	call   1200 <__cxa_finalize@plt>
    14a7:	e8 64 ff ff ff       	call   1410 <deregister_tm_clones>
    14ac:	c6 05 d5 6f 00 00 01 	movb   $0x1,0x6fd5(%rip)        # 8488 <completed.8060>
    14b3:	5d                   	pop    %rbp
    14b4:	c3                   	ret    
    14b5:	0f 1f 00             	nopl   (%rax)
    14b8:	c3                   	ret    
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <frame_dummy>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	e9 77 ff ff ff       	jmp    1440 <register_tm_clones>

00000000000014c9 <main>:
    14c9:	f3 0f 1e fa          	endbr64 
    14cd:	53                   	push   %rbx
    14ce:	83 ff 01             	cmp    $0x1,%edi
    14d1:	74 51                	je     1524 <main+0x5b>
    14d3:	48 89 f3             	mov    %rsi,%rbx
    14d6:	83 ff 02             	cmp    $0x2,%edi
    14d9:	75 7b                	jne    1556 <main+0x8d>
    14db:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14df:	48 8d 35 82 33 00 00 	lea    0x3382(%rip),%rsi        # 4868 <transition_table+0x428>
    14e6:	e8 65 fe ff ff       	call   1350 <fopen@plt>
    14eb:	48 89 05 9e 6f 00 00 	mov    %rax,0x6f9e(%rip)        # 8490 <infile>
    14f2:	48 85 c0             	test   %rax,%rax
    14f5:	74 3d                	je     1534 <main+0x6b>
    14f7:	e8 90 08 00 00       	call   1d8c <initialize_bomb>
    14fc:	48 89 c3             	mov    %rax,%rbx
    14ff:	81 38 11 fa 23 20    	cmpl   $0x2023fa11,(%rax)
    1505:	74 72                	je     1579 <main+0xb0>
    1507:	48 8d 35 7a 2b 00 00 	lea    0x2b7a(%rip),%rsi        # 4088 <_IO_stdin_used+0x88>
    150e:	bf 01 00 00 00       	mov    $0x1,%edi
    1513:	b8 00 00 00 00       	mov    $0x0,%eax
    1518:	e8 23 fe ff ff       	call   1340 <__printf_chk@plt>
    151d:	b8 00 00 00 00       	mov    $0x0,%eax
    1522:	5b                   	pop    %rbx
    1523:	c3                   	ret    
    1524:	48 8b 05 45 6f 00 00 	mov    0x6f45(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    152b:	48 89 05 5e 6f 00 00 	mov    %rax,0x6f5e(%rip)        # 8490 <infile>
    1532:	eb c3                	jmp    14f7 <main+0x2e>
    1534:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1538:	48 8b 13             	mov    (%rbx),%rdx
    153b:	48 8d 35 c2 2a 00 00 	lea    0x2ac2(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    1542:	bf 01 00 00 00       	mov    $0x1,%edi
    1547:	e8 f4 fd ff ff       	call   1340 <__printf_chk@plt>
    154c:	bf 08 00 00 00       	mov    $0x8,%edi
    1551:	e8 1a fe ff ff       	call   1370 <exit@plt>
    1556:	48 8b 16             	mov    (%rsi),%rdx
    1559:	48 8d 35 c1 2a 00 00 	lea    0x2ac1(%rip),%rsi        # 4021 <_IO_stdin_used+0x21>
    1560:	bf 01 00 00 00       	mov    $0x1,%edi
    1565:	b8 00 00 00 00       	mov    $0x0,%eax
    156a:	e8 d1 fd ff ff       	call   1340 <__printf_chk@plt>
    156f:	bf 08 00 00 00       	mov    $0x8,%edi
    1574:	e8 f7 fd ff ff       	call   1370 <exit@plt>
    1579:	48 8d 3d 48 2b 00 00 	lea    0x2b48(%rip),%rdi        # 40c8 <_IO_stdin_used+0xc8>
    1580:	e8 db fc ff ff       	call   1260 <puts@plt>
    1585:	48 8d 3d 7c 2b 00 00 	lea    0x2b7c(%rip),%rdi        # 4108 <_IO_stdin_used+0x108>
    158c:	e8 cf fc ff ff       	call   1260 <puts@plt>
    1591:	e8 d3 0b 00 00       	call   2169 <read_line>
    1596:	48 89 c7             	mov    %rax,%rdi
    1599:	e8 da 01 00 00       	call   1778 <phase_1>
    159e:	48 89 df             	mov    %rbx,%rdi
    15a1:	e8 0e 0d 00 00       	call   22b4 <phase_defused>
    15a6:	48 8d 3d 9b 2b 00 00 	lea    0x2b9b(%rip),%rdi        # 4148 <_IO_stdin_used+0x148>
    15ad:	e8 ae fc ff ff       	call   1260 <puts@plt>
    15b2:	e8 b2 0b 00 00       	call   2169 <read_line>
    15b7:	48 89 c7             	mov    %rax,%rdi
    15ba:	e8 dd 01 00 00       	call   179c <phase_2>
    15bf:	48 89 df             	mov    %rbx,%rdi
    15c2:	e8 ed 0c 00 00       	call   22b4 <phase_defused>
    15c7:	48 8d 3d 6d 2a 00 00 	lea    0x2a6d(%rip),%rdi        # 403b <_IO_stdin_used+0x3b>
    15ce:	e8 8d fc ff ff       	call   1260 <puts@plt>
    15d3:	e8 91 0b 00 00       	call   2169 <read_line>
    15d8:	48 89 c7             	mov    %rax,%rdi
    15db:	e8 2d 02 00 00       	call   180d <phase_3>
    15e0:	48 89 df             	mov    %rbx,%rdi
    15e3:	e8 cc 0c 00 00       	call   22b4 <phase_defused>
    15e8:	48 8d 3d 69 2a 00 00 	lea    0x2a69(%rip),%rdi        # 4058 <_IO_stdin_used+0x58>
    15ef:	e8 6c fc ff ff       	call   1260 <puts@plt>
    15f4:	e8 70 0b 00 00       	call   2169 <read_line>
    15f9:	48 89 c7             	mov    %rax,%rdi
    15fc:	e8 fe 02 00 00       	call   18ff <phase_4>
    1601:	48 89 df             	mov    %rbx,%rdi
    1604:	e8 ab 0c 00 00       	call   22b4 <phase_defused>
    1609:	48 8d 3d 68 2b 00 00 	lea    0x2b68(%rip),%rdi        # 4178 <_IO_stdin_used+0x178>
    1610:	e8 4b fc ff ff       	call   1260 <puts@plt>
    1615:	e8 4f 0b 00 00       	call   2169 <read_line>
    161a:	48 89 c7             	mov    %rax,%rdi
    161d:	e8 5c 03 00 00       	call   197e <phase_5>
    1622:	48 89 df             	mov    %rbx,%rdi
    1625:	e8 8a 0c 00 00       	call   22b4 <phase_defused>
    162a:	48 8d 3d 36 2a 00 00 	lea    0x2a36(%rip),%rdi        # 4067 <_IO_stdin_used+0x67>
    1631:	e8 2a fc ff ff       	call   1260 <puts@plt>
    1636:	e8 2e 0b 00 00       	call   2169 <read_line>
    163b:	48 89 c7             	mov    %rax,%rdi
    163e:	e8 ce 03 00 00       	call   1a11 <phase_6>
    1643:	48 89 df             	mov    %rbx,%rdi
    1646:	e8 69 0c 00 00       	call   22b4 <phase_defused>
    164b:	48 89 df             	mov    %rbx,%rdi
    164e:	e8 cd fb ff ff       	call   1220 <free@plt>
    1653:	e9 c5 fe ff ff       	jmp    151d <main+0x54>

0000000000001658 <genshin>:
    1658:	f3 0f 1e fa          	endbr64 
    165c:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1663:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    166a:	00 00 
    166c:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    1673:	00 
    1674:	31 c0                	xor    %eax,%eax
    1676:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    167b:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1680:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1685:	48 8d 35 10 2b 00 00 	lea    0x2b10(%rip),%rsi        # 419c <_IO_stdin_used+0x19c>
    168c:	48 8d 3d 75 6f 00 00 	lea    0x6f75(%rip),%rdi        # 8608 <input_strings+0x168>
    1693:	e8 98 fc ff ff       	call   1330 <__isoc99_sscanf@plt>
    1698:	83 f8 03             	cmp    $0x3,%eax
    169b:	74 20                	je     16bd <genshin+0x65>
    169d:	b8 00 00 00 00       	mov    $0x0,%eax
    16a2:	48 8b b4 24 88 00 00 	mov    0x88(%rsp),%rsi
    16a9:	00 
    16aa:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    16b1:	00 00 
    16b3:	75 2b                	jne    16e0 <genshin+0x88>
    16b5:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    16bc:	c3                   	ret    
    16bd:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    16c2:	48 8d 35 df 2a 00 00 	lea    0x2adf(%rip),%rsi        # 41a8 <_IO_stdin_used+0x1a8>
    16c9:	e8 6d 06 00 00       	call   1d3b <strings_not_equal>
    16ce:	85 c0                	test   %eax,%eax
    16d0:	74 07                	je     16d9 <genshin+0x81>
    16d2:	b8 00 00 00 00       	mov    $0x0,%eax
    16d7:	eb c9                	jmp    16a2 <genshin+0x4a>
    16d9:	b8 01 00 00 00       	mov    $0x1,%eax
    16de:	eb c2                	jmp    16a2 <genshin+0x4a>
    16e0:	e8 9b fb ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000016e5 <qidong>:
    16e5:	f3 0f 1e fa          	endbr64 
    16e9:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    16f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16f7:	00 00 
    16f9:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    16fe:	31 c0                	xor    %eax,%eax
    1700:	48 8d 05 11 6e 00 00 	lea    0x6e11(%rip),%rax        # 8518 <input_strings+0x78>
    1707:	80 38 00             	cmpb   $0x0,(%rax)
    170a:	74 06                	je     1712 <qidong+0x2d>
    170c:	48 83 c0 01          	add    $0x1,%rax
    1710:	eb f5                	jmp    1707 <qidong+0x22>
    1712:	48 83 e8 01          	sub    $0x1,%rax
    1716:	48 89 e2             	mov    %rsp,%rdx
    1719:	eb 0a                	jmp    1725 <qidong+0x40>
    171b:	88 0a                	mov    %cl,(%rdx)
    171d:	48 83 c2 01          	add    $0x1,%rdx
    1721:	48 83 e8 01          	sub    $0x1,%rax
    1725:	0f b6 08             	movzbl (%rax),%ecx
    1728:	80 f9 20             	cmp    $0x20,%cl
    172b:	74 0c                	je     1739 <qidong+0x54>
    172d:	48 8d 35 e4 6d 00 00 	lea    0x6de4(%rip),%rsi        # 8518 <input_strings+0x78>
    1734:	48 39 f0             	cmp    %rsi,%rax
    1737:	75 e2                	jne    171b <qidong+0x36>
    1739:	c6 02 00             	movb   $0x0,(%rdx)
    173c:	48 89 e7             	mov    %rsp,%rdi
    173f:	48 8d 35 8a 2a 00 00 	lea    0x2a8a(%rip),%rsi        # 41d0 <_IO_stdin_used+0x1d0>
    1746:	e8 f0 05 00 00       	call   1d3b <strings_not_equal>
    174b:	85 c0                	test   %eax,%eax
    174d:	74 1d                	je     176c <qidong+0x87>
    174f:	b8 00 00 00 00       	mov    $0x0,%eax
    1754:	48 8b 7c 24 78       	mov    0x78(%rsp),%rdi
    1759:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1760:	00 00 
    1762:	75 0f                	jne    1773 <qidong+0x8e>
    1764:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    176b:	c3                   	ret    
    176c:	b8 01 00 00 00       	mov    $0x1,%eax
    1771:	eb e1                	jmp    1754 <qidong+0x6f>
    1773:	e8 08 fb ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001778 <phase_1>:
    1778:	f3 0f 1e fa          	endbr64 
    177c:	48 83 ec 08          	sub    $0x8,%rsp
    1780:	48 8d 35 79 2a 00 00 	lea    0x2a79(%rip),%rsi        # 4200 <_IO_stdin_used+0x200>
    1787:	e8 af 05 00 00       	call   1d3b <strings_not_equal>
    178c:	85 c0                	test   %eax,%eax
    178e:	75 05                	jne    1795 <phase_1+0x1d>
    1790:	48 83 c4 08          	add    $0x8,%rsp
    1794:	c3                   	ret    
    1795:	e8 04 09 00 00       	call   209e <explode_bomb>
    179a:	eb f4                	jmp    1790 <phase_1+0x18>

000000000000179c <phase_2>:
    179c:	f3 0f 1e fa          	endbr64 
    17a0:	53                   	push   %rbx
    17a1:	48 83 ec 20          	sub    $0x20,%rsp
    17a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17ac:	00 00 
    17ae:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17b3:	31 c0                	xor    %eax,%eax
    17b5:	48 89 e6             	mov    %rsp,%rsi
    17b8:	e8 67 09 00 00       	call   2124 <read_six_numbers>
    17bd:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    17c1:	75 07                	jne    17ca <phase_2+0x2e>
    17c3:	bb 01 00 00 00       	mov    $0x1,%ebx
    17c8:	eb 0f                	jmp    17d9 <phase_2+0x3d>
    17ca:	e8 cf 08 00 00       	call   209e <explode_bomb>
    17cf:	eb f2                	jmp    17c3 <phase_2+0x27>
    17d1:	e8 c8 08 00 00       	call   209e <explode_bomb>
    17d6:	83 c3 01             	add    $0x1,%ebx
    17d9:	83 fb 05             	cmp    $0x5,%ebx
    17dc:	7f 14                	jg     17f2 <phase_2+0x56>
    17de:	48 63 d3             	movslq %ebx,%rdx
    17e1:	8d 43 ff             	lea    -0x1(%rbx),%eax
    17e4:	48 98                	cltq   
    17e6:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    17e9:	01 c0                	add    %eax,%eax
    17eb:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
    17ee:	74 e6                	je     17d6 <phase_2+0x3a>
    17f0:	eb df                	jmp    17d1 <phase_2+0x35>
    17f2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17f7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17fe:	00 00 
    1800:	75 06                	jne    1808 <phase_2+0x6c>
    1802:	48 83 c4 20          	add    $0x20,%rsp
    1806:	5b                   	pop    %rbx
    1807:	c3                   	ret    
    1808:	e8 73 fa ff ff       	call   1280 <__stack_chk_fail@plt>

000000000000180d <phase_3>:
    180d:	f3 0f 1e fa          	endbr64 
    1811:	48 83 ec 18          	sub    $0x18,%rsp
    1815:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    181c:	00 00 
    181e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1823:	31 c0                	xor    %eax,%eax
    1825:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    182a:	48 89 e2             	mov    %rsp,%rdx
    182d:	48 8d 35 96 2f 00 00 	lea    0x2f96(%rip),%rsi        # 47ca <transition_table+0x38a>
    1834:	e8 f7 fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    1839:	83 f8 01             	cmp    $0x1,%eax
    183c:	7e 1b                	jle    1859 <phase_3+0x4c>
    183e:	8b 04 24             	mov    (%rsp),%eax
    1841:	83 f8 07             	cmp    $0x7,%eax
    1844:	77 64                	ja     18aa <phase_3+0x9d>
    1846:	89 c0                	mov    %eax,%eax
    1848:	48 8d 15 91 2b 00 00 	lea    0x2b91(%rip),%rdx        # 43e0 <_IO_stdin_used+0x3e0>
    184f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1853:	48 01 d0             	add    %rdx,%rax
    1856:	3e ff e0             	notrack jmp *%rax
    1859:	e8 40 08 00 00       	call   209e <explode_bomb>
    185e:	eb de                	jmp    183e <phase_3+0x31>
    1860:	b8 1e 02 00 00       	mov    $0x21e,%eax
    1865:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    1869:	75 52                	jne    18bd <phase_3+0xb0>
    186b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1870:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1877:	00 00 
    1879:	75 49                	jne    18c4 <phase_3+0xb7>
    187b:	48 83 c4 18          	add    $0x18,%rsp
    187f:	c3                   	ret    
    1880:	b8 58 03 00 00       	mov    $0x358,%eax
    1885:	eb de                	jmp    1865 <phase_3+0x58>
    1887:	b8 64 02 00 00       	mov    $0x264,%eax
    188c:	eb d7                	jmp    1865 <phase_3+0x58>
    188e:	b8 cb 03 00 00       	mov    $0x3cb,%eax
    1893:	eb d0                	jmp    1865 <phase_3+0x58>
    1895:	b8 cc 00 00 00       	mov    $0xcc,%eax
    189a:	eb c9                	jmp    1865 <phase_3+0x58>
    189c:	b8 fd 00 00 00       	mov    $0xfd,%eax
    18a1:	eb c2                	jmp    1865 <phase_3+0x58>
    18a3:	b8 70 00 00 00       	mov    $0x70,%eax
    18a8:	eb bb                	jmp    1865 <phase_3+0x58>
    18aa:	e8 ef 07 00 00       	call   209e <explode_bomb>
    18af:	b8 00 00 00 00       	mov    $0x0,%eax
    18b4:	eb af                	jmp    1865 <phase_3+0x58>
    18b6:	b8 60 03 00 00       	mov    $0x360,%eax
    18bb:	eb a8                	jmp    1865 <phase_3+0x58>
    18bd:	e8 dc 07 00 00       	call   209e <explode_bomb>
    18c2:	eb a7                	jmp    186b <phase_3+0x5e>
    18c4:	e8 b7 f9 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000018c9 <func4>:
    18c9:	f3 0f 1e fa          	endbr64 
    18cd:	53                   	push   %rbx
    18ce:	89 d0                	mov    %edx,%eax
    18d0:	29 f0                	sub    %esi,%eax
    18d2:	89 c3                	mov    %eax,%ebx
    18d4:	c1 eb 1f             	shr    $0x1f,%ebx
    18d7:	01 c3                	add    %eax,%ebx
    18d9:	d1 fb                	sar    %ebx
    18db:	01 f3                	add    %esi,%ebx
    18dd:	39 fb                	cmp    %edi,%ebx
    18df:	7f 06                	jg     18e7 <func4+0x1e>
    18e1:	7c 10                	jl     18f3 <func4+0x2a>
    18e3:	89 d8                	mov    %ebx,%eax
    18e5:	5b                   	pop    %rbx
    18e6:	c3                   	ret    
    18e7:	8d 53 ff             	lea    -0x1(%rbx),%edx
    18ea:	e8 da ff ff ff       	call   18c9 <func4>
    18ef:	01 c3                	add    %eax,%ebx
    18f1:	eb f0                	jmp    18e3 <func4+0x1a>
    18f3:	8d 73 01             	lea    0x1(%rbx),%esi
    18f6:	e8 ce ff ff ff       	call   18c9 <func4>
    18fb:	01 c3                	add    %eax,%ebx
    18fd:	eb e4                	jmp    18e3 <func4+0x1a>

00000000000018ff <phase_4>:
    18ff:	f3 0f 1e fa          	endbr64 
    1903:	48 83 ec 18          	sub    $0x18,%rsp
    1907:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    190e:	00 00 
    1910:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1915:	31 c0                	xor    %eax,%eax
    1917:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    191c:	48 89 e2             	mov    %rsp,%rdx
    191f:	48 8d 35 a4 2e 00 00 	lea    0x2ea4(%rip),%rsi        # 47ca <transition_table+0x38a>
    1926:	e8 05 fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    192b:	83 f8 02             	cmp    $0x2,%eax
    192e:	75 0c                	jne    193c <phase_4+0x3d>
    1930:	8b 04 24             	mov    (%rsp),%eax
    1933:	85 c0                	test   %eax,%eax
    1935:	78 05                	js     193c <phase_4+0x3d>
    1937:	83 f8 0e             	cmp    $0xe,%eax
    193a:	7e 05                	jle    1941 <phase_4+0x42>
    193c:	e8 5d 07 00 00       	call   209e <explode_bomb>
    1941:	ba 0e 00 00 00       	mov    $0xe,%edx
    1946:	be 00 00 00 00       	mov    $0x0,%esi
    194b:	8b 3c 24             	mov    (%rsp),%edi
    194e:	e8 76 ff ff ff       	call   18c9 <func4>
    1953:	83 f8 23             	cmp    $0x23,%eax
    1956:	75 07                	jne    195f <phase_4+0x60>
    1958:	83 7c 24 04 23       	cmpl   $0x23,0x4(%rsp)
    195d:	74 05                	je     1964 <phase_4+0x65>
    195f:	e8 3a 07 00 00       	call   209e <explode_bomb>
    1964:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1969:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1970:	00 00 
    1972:	75 05                	jne    1979 <phase_4+0x7a>
    1974:	48 83 c4 18          	add    $0x18,%rsp
    1978:	c3                   	ret    
    1979:	e8 02 f9 ff ff       	call   1280 <__stack_chk_fail@plt>

000000000000197e <phase_5>:
    197e:	f3 0f 1e fa          	endbr64 
    1982:	48 83 ec 18          	sub    $0x18,%rsp
    1986:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    198d:	00 00 
    198f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1994:	31 c0                	xor    %eax,%eax
    1996:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    199b:	48 89 e2             	mov    %rsp,%rdx
    199e:	48 8d 35 25 2e 00 00 	lea    0x2e25(%rip),%rsi        # 47ca <transition_table+0x38a>
    19a5:	e8 86 f9 ff ff       	call   1330 <__isoc99_sscanf@plt>
    19aa:	83 f8 01             	cmp    $0x1,%eax
    19ad:	7e 31                	jle    19e0 <phase_5+0x62>
    19af:	8b 04 24             	mov    (%rsp),%eax
    19b2:	83 e0 0f             	and    $0xf,%eax
    19b5:	89 04 24             	mov    %eax,(%rsp)
    19b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    19bd:	ba 00 00 00 00       	mov    $0x0,%edx
    19c2:	8b 04 24             	mov    (%rsp),%eax
    19c5:	83 f8 0f             	cmp    $0xf,%eax
    19c8:	74 1d                	je     19e7 <phase_5+0x69>
    19ca:	83 c2 01             	add    $0x1,%edx
    19cd:	48 98                	cltq   
    19cf:	48 8d 35 2a 2a 00 00 	lea    0x2a2a(%rip),%rsi        # 4400 <array.3496>
    19d6:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    19d9:	89 04 24             	mov    %eax,(%rsp)
    19dc:	01 c1                	add    %eax,%ecx
    19de:	eb e2                	jmp    19c2 <phase_5+0x44>
    19e0:	e8 b9 06 00 00       	call   209e <explode_bomb>
    19e5:	eb c8                	jmp    19af <phase_5+0x31>
    19e7:	83 fa 0f             	cmp    $0xf,%edx
    19ea:	75 06                	jne    19f2 <phase_5+0x74>
    19ec:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    19f0:	74 05                	je     19f7 <phase_5+0x79>
    19f2:	e8 a7 06 00 00       	call   209e <explode_bomb>
    19f7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    19fc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1a03:	00 00 
    1a05:	75 05                	jne    1a0c <phase_5+0x8e>
    1a07:	48 83 c4 18          	add    $0x18,%rsp
    1a0b:	c3                   	ret    
    1a0c:	e8 6f f8 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001a11 <phase_6>:
    1a11:	f3 0f 1e fa          	endbr64 
    1a15:	41 54                	push   %r12
    1a17:	55                   	push   %rbp
    1a18:	53                   	push   %rbx
    1a19:	48 83 ec 60          	sub    $0x60,%rsp
    1a1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a24:	00 00 
    1a26:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a2b:	31 c0                	xor    %eax,%eax

    1a2d:	48 89 e6             	mov    %rsp,%rsi                  # int num[6];
    1a30:	e8 ef 06 00 00       	call   2124 <read_six_numbers>    # read_six_numbers(input, num);
    1a35:	bd 00 00 00 00       	mov    $0x0,%ebp
    1a3a:	eb 27                	jmp    1a63 <phase_6+0x52>
    1a3c:	e8 5d 06 00 00       	call   209e <explode_bomb>
    1a41:	eb 33                	jmp    1a76 <phase_6+0x65>
    1a43:	e8 56 06 00 00       	call   209e <explode_bomb>
    1a48:	83 c3 01             	add    $0x1,%ebx
    1a4b:	83 fb 05             	cmp    $0x5,%ebx
    1a4e:	7f 10                	jg     1a60 <phase_6+0x4f>
    1a50:	48 63 c5             	movslq %ebp,%rax
    1a53:	48 63 d3             	movslq %ebx,%rdx
    1a56:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    1a59:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    1a5c:	75 ea                	jne    1a48 <phase_6+0x37>
    1a5e:	eb e3                	jmp    1a43 <phase_6+0x32>
    1a60:	44 89 e5             	mov    %r12d,%ebp
    1a63:	83 fd 05             	cmp    $0x5,%ebp
    1a66:	7f 17                	jg     1a7f <phase_6+0x6e>
    1a68:	48 63 c5             	movslq %ebp,%rax
    1a6b:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    1a6e:	83 e8 01             	sub    $0x1,%eax
    1a71:	83 f8 05             	cmp    $0x5,%eax
    1a74:	77 c6                	ja     1a3c <phase_6+0x2b>
    1a76:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    1a7a:	44 89 e3             	mov    %r12d,%ebx
    1a7d:	eb cc                	jmp    1a4b <phase_6+0x3a>
    1a7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a84:	eb 11                	jmp    1a97 <phase_6+0x86>
    1a86:	48 63 c8             	movslq %eax,%rcx
    1a89:	ba 07 00 00 00       	mov    $0x7,%edx
    1a8e:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    1a91:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    1a94:	83 c0 01             	add    $0x1,%eax
    1a97:	83 f8 05             	cmp    $0x5,%eax
    1a9a:	7e ea                	jle    1a86 <phase_6+0x75>
    1a9c:	be 00 00 00 00       	mov    $0x0,%esi
    1aa1:	eb 17                	jmp    1aba <phase_6+0xa9>
    1aa3:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1aa7:	83 c0 01             	add    $0x1,%eax
    1aaa:	48 63 ce             	movslq %esi,%rcx
    1aad:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    1ab0:	7f f1                	jg     1aa3 <phase_6+0x92>
    1ab2:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    1ab7:	83 c6 01             	add    $0x1,%esi
    1aba:	83 fe 05             	cmp    $0x5,%esi
    1abd:	7f 0e                	jg     1acd <phase_6+0xbc>
    1abf:	b8 01 00 00 00       	mov    $0x1,%eax
    1ac4:	48 8d 15 85 65 00 00 	lea    0x6585(%rip),%rdx        # 8050 <node1>
    1acb:	eb dd                	jmp    1aaa <phase_6+0x99>
    1acd:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1ad2:	48 89 d9             	mov    %rbx,%rcx
    1ad5:	b8 01 00 00 00       	mov    $0x1,%eax
    1ada:	eb 12                	jmp    1aee <phase_6+0xdd>
    1adc:	48 63 d0             	movslq %eax,%rdx
    1adf:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    1ae4:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    1ae8:	83 c0 01             	add    $0x1,%eax
    1aeb:	48 89 d1             	mov    %rdx,%rcx
    1aee:	83 f8 05             	cmp    $0x5,%eax
    1af1:	7e e9                	jle    1adc <phase_6+0xcb>
    1af3:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    1afa:	00 
    1afb:	bd 00 00 00 00       	mov    $0x0,%ebp
    1b00:	eb 07                	jmp    1b09 <phase_6+0xf8>
    1b02:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1b06:	83 c5 01             	add    $0x1,%ebp
    1b09:	83 fd 04             	cmp    $0x4,%ebp
    1b0c:	7f 11                	jg     1b1f <phase_6+0x10e>
    1b0e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1b12:	8b 00                	mov    (%rax),%eax
    1b14:	39 03                	cmp    %eax,(%rbx)
    1b16:	7e ea                	jle    1b02 <phase_6+0xf1>
    1b18:	e8 81 05 00 00       	call   209e <explode_bomb>
    1b1d:	eb e3                	jmp    1b02 <phase_6+0xf1>
    1b1f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1b24:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b2b:	00 00 
    1b2d:	75 09                	jne    1b38 <phase_6+0x127>
    1b2f:	48 83 c4 60          	add    $0x60,%rsp
    1b33:	5b                   	pop    %rbx
    1b34:	5d                   	pop    %rbp
    1b35:	41 5c                	pop    %r12
    1b37:	c3                   	ret    
    1b38:	e8 43 f7 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001b3d <emulate_fsm>:
    1b3d:	f3 0f 1e fa          	endbr64 
    1b41:	55                   	push   %rbp
    1b42:	53                   	push   %rbx
    1b43:	48 83 ec 08          	sub    $0x8,%rsp
    1b47:	89 fd                	mov    %edi,%ebp
    1b49:	48 89 f3             	mov    %rsi,%rbx
    1b4c:	eb 27                	jmp    1b75 <emulate_fsm+0x38>
    1b4e:	0f be 03             	movsbl (%rbx),%eax
    1b51:	83 e8 30             	sub    $0x30,%eax
    1b54:	48 63 ed             	movslq %ebp,%rbp
    1b57:	48 98                	cltq   
    1b59:	48 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%rdi
    1b60:	00 
    1b61:	48 29 c7             	sub    %rax,%rdi
    1b64:	48 01 ef             	add    %rbp,%rdi
    1b67:	48 8d 05 d2 28 00 00 	lea    0x28d2(%rip),%rax        # 4440 <transition_table>
    1b6e:	8b 2c b8             	mov    (%rax,%rdi,4),%ebp
    1b71:	48 83 c3 01          	add    $0x1,%rbx
    1b75:	0f b6 03             	movzbl (%rbx),%eax
    1b78:	84 c0                	test   %al,%al
    1b7a:	74 0e                	je     1b8a <emulate_fsm+0x4d>
    1b7c:	83 e8 30             	sub    $0x30,%eax
    1b7f:	3c 01                	cmp    $0x1,%al
    1b81:	76 cb                	jbe    1b4e <emulate_fsm+0x11>
    1b83:	e8 16 05 00 00       	call   209e <explode_bomb>
    1b88:	eb c4                	jmp    1b4e <emulate_fsm+0x11>
    1b8a:	89 e8                	mov    %ebp,%eax
    1b8c:	48 83 c4 08          	add    $0x8,%rsp
    1b90:	5b                   	pop    %rbx
    1b91:	5d                   	pop    %rbp
    1b92:	c3                   	ret    

0000000000001b93 <check_synchronizing_sequence>:
    1b93:	f3 0f 1e fa          	endbr64 
    1b97:	41 54                	push   %r12
    1b99:	55                   	push   %rbp
    1b9a:	53                   	push   %rbx
    1b9b:	48 89 fd             	mov    %rdi,%rbp
    1b9e:	48 89 fe             	mov    %rdi,%rsi
    1ba1:	bf 00 00 00 00       	mov    $0x0,%edi
    1ba6:	e8 92 ff ff ff       	call   1b3d <emulate_fsm>
    1bab:	41 89 c4             	mov    %eax,%r12d
    1bae:	bb 01 00 00 00       	mov    $0x1,%ebx
    1bb3:	83 fb 06             	cmp    $0x6,%ebx
    1bb6:	7f 14                	jg     1bcc <check_synchronizing_sequence+0x39>
    1bb8:	48 89 ee             	mov    %rbp,%rsi
    1bbb:	89 df                	mov    %ebx,%edi
    1bbd:	e8 7b ff ff ff       	call   1b3d <emulate_fsm>
    1bc2:	44 39 e0             	cmp    %r12d,%eax
    1bc5:	75 0f                	jne    1bd6 <check_synchronizing_sequence+0x43>
    1bc7:	83 c3 01             	add    $0x1,%ebx
    1bca:	eb e7                	jmp    1bb3 <check_synchronizing_sequence+0x20>
    1bcc:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd1:	5b                   	pop    %rbx
    1bd2:	5d                   	pop    %rbp
    1bd3:	41 5c                	pop    %r12
    1bd5:	c3                   	ret    
    1bd6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1bdb:	eb f4                	jmp    1bd1 <check_synchronizing_sequence+0x3e>

0000000000001bdd <secret_phase>:
    1bdd:	f3 0f 1e fa          	endbr64 
    1be1:	55                   	push   %rbp
    1be2:	53                   	push   %rbx
    1be3:	48 83 ec 18          	sub    $0x18,%rsp
    1be7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bee:	00 00 
    1bf0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1bf5:	31 c0                	xor    %eax,%eax
    1bf7:	e8 6d 05 00 00       	call   2169 <read_line>
    1bfc:	48 89 c5             	mov    %rax,%rbp
    1bff:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c04:	eb 08                	jmp    1c0e <secret_phase+0x31>
    1c06:	e8 93 04 00 00       	call   209e <explode_bomb>
    1c0b:	83 c3 01             	add    $0x1,%ebx
    1c0e:	48 63 c3             	movslq %ebx,%rax
    1c11:	80 7c 05 00 00       	cmpb   $0x0,0x0(%rbp,%rax,1)
    1c16:	74 07                	je     1c1f <secret_phase+0x42>
    1c18:	83 fb 0c             	cmp    $0xc,%ebx
    1c1b:	7e ee                	jle    1c0b <secret_phase+0x2e>
    1c1d:	eb e7                	jmp    1c06 <secret_phase+0x29>
    1c1f:	48 89 ef             	mov    %rbp,%rdi
    1c22:	e8 6c ff ff ff       	call   1b93 <check_synchronizing_sequence>
    1c27:	85 c0                	test   %eax,%eax
    1c29:	75 5d                	jne    1c88 <secret_phase+0xab>
    1c2b:	48 8d 3d 0e 26 00 00 	lea    0x260e(%rip),%rdi        # 4240 <_IO_stdin_used+0x240>
    1c32:	e8 29 f6 ff ff       	call   1260 <puts@plt>
    1c37:	48 8d 3d 52 26 00 00 	lea    0x2652(%rip),%rdi        # 4290 <_IO_stdin_used+0x290>
    1c3e:	e8 1d f6 ff ff       	call   1260 <puts@plt>
    1c43:	48 8d 3d 96 26 00 00 	lea    0x2696(%rip),%rdi        # 42e0 <_IO_stdin_used+0x2e0>
    1c4a:	e8 11 f6 ff ff       	call   1260 <puts@plt>
    1c4f:	48 8d 3d ca 26 00 00 	lea    0x26ca(%rip),%rdi        # 4320 <_IO_stdin_used+0x320>
    1c56:	e8 05 f6 ff ff       	call   1260 <puts@plt>
    1c5b:	48 8d 3d f6 26 00 00 	lea    0x26f6(%rip),%rdi        # 4358 <_IO_stdin_used+0x358>
    1c62:	e8 f9 f5 ff ff       	call   1260 <puts@plt>
    1c67:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    1c6c:	e8 43 06 00 00       	call   22b4 <phase_defused>
    1c71:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1c76:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c7d:	00 00 
    1c7f:	75 0e                	jne    1c8f <secret_phase+0xb2>
    1c81:	48 83 c4 18          	add    $0x18,%rsp
    1c85:	5b                   	pop    %rbx
    1c86:	5d                   	pop    %rbp
    1c87:	c3                   	ret    
    1c88:	e8 11 04 00 00       	call   209e <explode_bomb>
    1c8d:	eb 9c                	jmp    1c2b <secret_phase+0x4e>
    1c8f:	e8 ec f5 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001c94 <sig_handler>:
    1c94:	f3 0f 1e fa          	endbr64 
    1c98:	50                   	push   %rax
    1c99:	58                   	pop    %rax
    1c9a:	48 83 ec 08          	sub    $0x8,%rsp
    1c9e:	48 8d 3d d3 27 00 00 	lea    0x27d3(%rip),%rdi        # 4478 <transition_table+0x38>
    1ca5:	e8 b6 f5 ff ff       	call   1260 <puts@plt>
    1caa:	bf 03 00 00 00       	mov    $0x3,%edi
    1caf:	e8 ec f6 ff ff       	call   13a0 <sleep@plt>
    1cb4:	48 8d 35 88 2a 00 00 	lea    0x2a88(%rip),%rsi        # 4743 <transition_table+0x303>
    1cbb:	bf 01 00 00 00       	mov    $0x1,%edi
    1cc0:	b8 00 00 00 00       	mov    $0x0,%eax
    1cc5:	e8 76 f6 ff ff       	call   1340 <__printf_chk@plt>
    1cca:	48 8b 3d 8f 67 00 00 	mov    0x678f(%rip),%rdi        # 8460 <stdout@GLIBC_2.2.5>
    1cd1:	e8 4a f6 ff ff       	call   1320 <fflush@plt>
    1cd6:	bf 01 00 00 00       	mov    $0x1,%edi
    1cdb:	e8 c0 f6 ff ff       	call   13a0 <sleep@plt>
    1ce0:	48 8d 3d 64 2a 00 00 	lea    0x2a64(%rip),%rdi        # 474b <transition_table+0x30b>
    1ce7:	e8 74 f5 ff ff       	call   1260 <puts@plt>
    1cec:	bf 10 00 00 00       	mov    $0x10,%edi
    1cf1:	e8 7a f6 ff ff       	call   1370 <exit@plt>

0000000000001cf6 <invalid_phase>:
    1cf6:	f3 0f 1e fa          	endbr64 
    1cfa:	50                   	push   %rax
    1cfb:	58                   	pop    %rax
    1cfc:	48 83 ec 08          	sub    $0x8,%rsp
    1d00:	48 89 fa             	mov    %rdi,%rdx
    1d03:	48 8d 35 49 2a 00 00 	lea    0x2a49(%rip),%rsi        # 4753 <transition_table+0x313>
    1d0a:	bf 01 00 00 00       	mov    $0x1,%edi
    1d0f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d14:	e8 27 f6 ff ff       	call   1340 <__printf_chk@plt>
    1d19:	bf 08 00 00 00       	mov    $0x8,%edi
    1d1e:	e8 4d f6 ff ff       	call   1370 <exit@plt>

0000000000001d23 <string_length>:
    1d23:	f3 0f 1e fa          	endbr64 
    1d27:	b8 00 00 00 00       	mov    $0x0,%eax
    1d2c:	80 3f 00             	cmpb   $0x0,(%rdi)
    1d2f:	74 09                	je     1d3a <string_length+0x17>
    1d31:	48 83 c7 01          	add    $0x1,%rdi
    1d35:	83 c0 01             	add    $0x1,%eax
    1d38:	eb f2                	jmp    1d2c <string_length+0x9>
    1d3a:	c3                   	ret    

0000000000001d3b <strings_not_equal>:
    1d3b:	f3 0f 1e fa          	endbr64 
    1d3f:	41 54                	push   %r12
    1d41:	55                   	push   %rbp
    1d42:	53                   	push   %rbx
    1d43:	48 89 fb             	mov    %rdi,%rbx
    1d46:	48 89 f5             	mov    %rsi,%rbp
    1d49:	e8 d5 ff ff ff       	call   1d23 <string_length>
    1d4e:	41 89 c4             	mov    %eax,%r12d
    1d51:	48 89 ef             	mov    %rbp,%rdi
    1d54:	e8 ca ff ff ff       	call   1d23 <string_length>
    1d59:	41 39 c4             	cmp    %eax,%r12d
    1d5c:	75 1d                	jne    1d7b <strings_not_equal+0x40>
    1d5e:	0f b6 03             	movzbl (%rbx),%eax
    1d61:	84 c0                	test   %al,%al
    1d63:	74 0f                	je     1d74 <strings_not_equal+0x39>
    1d65:	38 45 00             	cmp    %al,0x0(%rbp)
    1d68:	75 1b                	jne    1d85 <strings_not_equal+0x4a>
    1d6a:	48 83 c3 01          	add    $0x1,%rbx
    1d6e:	48 83 c5 01          	add    $0x1,%rbp
    1d72:	eb ea                	jmp    1d5e <strings_not_equal+0x23>
    1d74:	b8 00 00 00 00       	mov    $0x0,%eax
    1d79:	eb 05                	jmp    1d80 <strings_not_equal+0x45>
    1d7b:	b8 01 00 00 00       	mov    $0x1,%eax
    1d80:	5b                   	pop    %rbx
    1d81:	5d                   	pop    %rbp
    1d82:	41 5c                	pop    %r12
    1d84:	c3                   	ret    
    1d85:	b8 01 00 00 00       	mov    $0x1,%eax
    1d8a:	eb f4                	jmp    1d80 <strings_not_equal+0x45>

0000000000001d8c <initialize_bomb>:
    1d8c:	f3 0f 1e fa          	endbr64 
    1d90:	c7 00 11 fa 23 20    	movl   $0x2023fa11,(%rax)
    1d96:	c3                   	ret    
    1d97:	00 11                	add    %dl,(%rcx)
    1d99:	fa                   	cli    
    1d9a:	23 20                	and    (%rax),%esp
    1d9c:	c3                   	ret    
    1d9d:	00 48 81             	add    %cl,-0x7f(%rax)
    1da0:	ec                   	in     (%dx),%al
    1da1:	00 10                	add    %dl,(%rax)
    1da3:	00 00                	add    %al,(%rax)
    1da5:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1daa:	48 83 ec 58          	sub    $0x58,%rsp
    1dae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1db5:	00 00 
    1db7:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1dbe:	00 
    1dbf:	31 c0                	xor    %eax,%eax
    1dc1:	48 8d 35 cc fe ff ff 	lea    -0x134(%rip),%rsi        # 1c94 <sig_handler>
    1dc8:	bf 02 00 00 00       	mov    $0x2,%edi
    1dcd:	e8 fe f4 ff ff       	call   12d0 <signal@plt>
    1dd2:	48 89 e7             	mov    %rsp,%rdi
    1dd5:	be 40 00 00 00       	mov    $0x40,%esi
    1dda:	e8 81 f5 ff ff       	call   1360 <gethostname@plt>
    1ddf:	85 c0                	test   %eax,%eax
    1de1:	75 06                	jne    1de9 <initialize_bomb+0x5d>
    1de3:	89 c5                	mov    %eax,%ebp
    1de5:	89 c3                	mov    %eax,%ebx
    1de7:	eb 19                	jmp    1e02 <initialize_bomb+0x76>
    1de9:	48 8d 3d c0 26 00 00 	lea    0x26c0(%rip),%rdi        # 44b0 <transition_table+0x70>
    1df0:	e8 6b f4 ff ff       	call   1260 <puts@plt>
    1df5:	bf 08 00 00 00       	mov    $0x8,%edi
    1dfa:	e8 71 f5 ff ff       	call   1370 <exit@plt>
    1dff:	83 c3 01             	add    $0x1,%ebx
    1e02:	48 63 c3             	movslq %ebx,%rax
    1e05:	48 8d 15 94 62 00 00 	lea    0x6294(%rip),%rdx        # 80a0 <host_table>
    1e0c:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
    1e10:	48 85 ff             	test   %rdi,%rdi
    1e13:	74 11                	je     1e26 <initialize_bomb+0x9a>
    1e15:	48 89 e6             	mov    %rsp,%rsi
    1e18:	e8 13 f4 ff ff       	call   1230 <strcasecmp@plt>
    1e1d:	85 c0                	test   %eax,%eax
    1e1f:	75 de                	jne    1dff <initialize_bomb+0x73>
    1e21:	bd 01 00 00 00       	mov    $0x1,%ebp
    1e26:	85 ed                	test   %ebp,%ebp
    1e28:	74 3b                	je     1e65 <initialize_bomb+0xd9>
    1e2a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1e2f:	e8 f1 0f 00 00       	call   2e25 <init_driver>
    1e34:	85 c0                	test   %eax,%eax
    1e36:	78 43                	js     1e7b <initialize_bomb+0xef>
    1e38:	bf 04 00 00 00       	mov    $0x4,%edi
    1e3d:	e8 ce f4 ff ff       	call   1310 <malloc@plt>
    1e42:	c7 00 11 fa 23 20    	movl   $0x2023fa11,(%rax)
    1e48:	48 8b 8c 24 48 20 00 	mov    0x2048(%rsp),%rcx
    1e4f:	00 
    1e50:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    1e57:	00 00 
    1e59:	75 45                	jne    1ea0 <initialize_bomb+0x114>
    1e5b:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1e62:	5b                   	pop    %rbx
    1e63:	5d                   	pop    %rbp
    1e64:	c3                   	ret    
    1e65:	48 8d 3d 7c 26 00 00 	lea    0x267c(%rip),%rdi        # 44e8 <transition_table+0xa8>
    1e6c:	e8 ef f3 ff ff       	call   1260 <puts@plt>
    1e71:	bf 08 00 00 00       	mov    $0x8,%edi
    1e76:	e8 f5 f4 ff ff       	call   1370 <exit@plt>
    1e7b:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1e80:	48 8d 35 dd 28 00 00 	lea    0x28dd(%rip),%rsi        # 4764 <transition_table+0x324>
    1e87:	bf 01 00 00 00       	mov    $0x1,%edi
    1e8c:	b8 00 00 00 00       	mov    $0x0,%eax
    1e91:	e8 aa f4 ff ff       	call   1340 <__printf_chk@plt>
    1e96:	bf 08 00 00 00       	mov    $0x8,%edi
    1e9b:	e8 d0 f4 ff ff       	call   1370 <exit@plt>
    1ea0:	e8 db f3 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001ea5 <initialize_bomb_solve>:
    1ea5:	f3 0f 1e fa          	endbr64 
    1ea9:	c3                   	ret    

0000000000001eaa <blank_line>:
    1eaa:	f3 0f 1e fa          	endbr64 
    1eae:	55                   	push   %rbp
    1eaf:	53                   	push   %rbx
    1eb0:	48 83 ec 08          	sub    $0x8,%rsp
    1eb4:	48 89 fd             	mov    %rdi,%rbp
    1eb7:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1ebb:	84 db                	test   %bl,%bl
    1ebd:	74 1e                	je     1edd <blank_line+0x33>
    1ebf:	e8 ec f4 ff ff       	call   13b0 <__ctype_b_loc@plt>
    1ec4:	48 8b 00             	mov    (%rax),%rax
    1ec7:	48 83 c5 01          	add    $0x1,%rbp
    1ecb:	48 0f be db          	movsbq %bl,%rbx
    1ecf:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1ed4:	75 e1                	jne    1eb7 <blank_line+0xd>
    1ed6:	b8 00 00 00 00       	mov    $0x0,%eax
    1edb:	eb 05                	jmp    1ee2 <blank_line+0x38>
    1edd:	b8 01 00 00 00       	mov    $0x1,%eax
    1ee2:	48 83 c4 08          	add    $0x8,%rsp
    1ee6:	5b                   	pop    %rbx
    1ee7:	5d                   	pop    %rbp
    1ee8:	c3                   	ret    

0000000000001ee9 <skip>:
    1ee9:	f3 0f 1e fa          	endbr64 
    1eed:	53                   	push   %rbx
    1eee:	48 63 15 97 65 00 00 	movslq 0x6597(%rip),%rdx        # 848c <num_input_strings>
    1ef5:	48 89 d0             	mov    %rdx,%rax
    1ef8:	48 c1 e0 04          	shl    $0x4,%rax
    1efc:	48 29 d0             	sub    %rdx,%rax
    1eff:	48 8d 15 9a 65 00 00 	lea    0x659a(%rip),%rdx        # 84a0 <input_strings>
    1f06:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    1f0a:	48 8b 15 7f 65 00 00 	mov    0x657f(%rip),%rdx        # 8490 <infile>
    1f11:	be 78 00 00 00       	mov    $0x78,%esi
    1f16:	e8 a5 f3 ff ff       	call   12c0 <fgets@plt>
    1f1b:	48 89 c3             	mov    %rax,%rbx
    1f1e:	48 85 c0             	test   %rax,%rax
    1f21:	74 0c                	je     1f2f <skip+0x46>
    1f23:	48 89 c7             	mov    %rax,%rdi
    1f26:	e8 7f ff ff ff       	call   1eaa <blank_line>
    1f2b:	85 c0                	test   %eax,%eax
    1f2d:	75 bf                	jne    1eee <skip+0x5>
    1f2f:	48 89 d8             	mov    %rbx,%rax
    1f32:	5b                   	pop    %rbx
    1f33:	c3                   	ret    

0000000000001f34 <send_msg>:
    1f34:	f3 0f 1e fa          	endbr64 
    1f38:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
    1f3e:	c3                   	ret    
    1f3f:	c0 ff ff             	sar    $0xff,%bh
    1f42:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1f49:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1f4e:	4c 39 dc             	cmp    %r11,%rsp
    1f51:	75 ef                	jne    1f42 <send_msg+0xe>
    1f53:	48 83 ec 18          	sub    $0x18,%rsp
    1f57:	41 89 f8             	mov    %edi,%r8d
    1f5a:	48 89 f3             	mov    %rsi,%rbx
    1f5d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1f64:	00 00 
    1f66:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1f6d:	00 
    1f6e:	31 c0                	xor    %eax,%eax
    1f70:	8b 35 16 65 00 00    	mov    0x6516(%rip),%esi        # 848c <num_input_strings>
    1f76:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1f79:	48 98                	cltq   
    1f7b:	48 89 c2             	mov    %rax,%rdx
    1f7e:	48 c1 e2 04          	shl    $0x4,%rdx
    1f82:	48 29 c2             	sub    %rax,%rdx
    1f85:	48 89 d0             	mov    %rdx,%rax
    1f88:	48 8d 15 11 65 00 00 	lea    0x6511(%rip),%rdx        # 84a0 <input_strings>
    1f8f:	48 8d 14 c2          	lea    (%rdx,%rax,8),%rdx
    1f93:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1f9a:	b8 00 00 00 00       	mov    $0x0,%eax
    1f9f:	48 89 d7             	mov    %rdx,%rdi
    1fa2:	f2 ae                	repnz scas %es:(%rdi),%al
    1fa4:	48 89 c8             	mov    %rcx,%rax
    1fa7:	48 f7 d0             	not    %rax
    1faa:	48 83 c0 63          	add    $0x63,%rax
    1fae:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1fb4:	0f 87 9c 00 00 00    	ja     2056 <send_msg+0x122>
    1fba:	45 85 c0             	test   %r8d,%r8d
    1fbd:	0f 84 b3 00 00 00    	je     2076 <send_msg+0x142>
    1fc3:	48 8d 05 bd 27 00 00 	lea    0x27bd(%rip),%rax        # 4787 <transition_table+0x347>
    1fca:	48 89 e5             	mov    %rsp,%rbp
    1fcd:	48 83 ec 08          	sub    $0x8,%rsp
    1fd1:	52                   	push   %rdx
    1fd2:	56                   	push   %rsi
    1fd3:	50                   	push   %rax
    1fd4:	4c 8d 0d 65 58 00 00 	lea    0x5865(%rip),%r9        # 7840 <authkey>
    1fdb:	44 8b 05 5e 60 00 00 	mov    0x605e(%rip),%r8d        # 8040 <bomb_id>
    1fe2:	48 8d 0d a6 27 00 00 	lea    0x27a6(%rip),%rcx        # 478f <transition_table+0x34f>
    1fe9:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fee:	be 01 00 00 00       	mov    $0x1,%esi
    1ff3:	48 89 ef             	mov    %rbp,%rdi
    1ff6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ffb:	e8 c0 f3 ff ff       	call   13c0 <__sprintf_chk@plt>
    2000:	48 83 c4 20          	add    $0x20,%rsp
    2004:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    200b:	00 
    200c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2012:	48 89 e9             	mov    %rbp,%rcx
    2015:	48 8d 15 24 50 00 00 	lea    0x5024(%rip),%rdx        # 7040 <lab>
    201c:	48 8d 35 1d 54 00 00 	lea    0x541d(%rip),%rsi        # 7440 <course>
    2023:	48 8d 3d 16 5c 00 00 	lea    0x5c16(%rip),%rdi        # 7c40 <userid>
    202a:	e8 06 10 00 00       	call   3035 <driver_post>
    202f:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    2035:	85 c0                	test   %eax,%eax
    2037:	78 49                	js     2082 <send_msg+0x14e>
    2039:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2040:	00 
    2041:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    2048:	00 00 
    204a:	75 4d                	jne    2099 <send_msg+0x165>
    204c:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    2053:	5b                   	pop    %rbx
    2054:	5d                   	pop    %rbp
    2055:	c3                   	ret    
    2056:	48 8d 35 c3 24 00 00 	lea    0x24c3(%rip),%rsi        # 4520 <transition_table+0xe0>
    205d:	bf 01 00 00 00       	mov    $0x1,%edi
    2062:	b8 00 00 00 00       	mov    $0x0,%eax
    2067:	e8 d4 f2 ff ff       	call   1340 <__printf_chk@plt>
    206c:	bf 08 00 00 00       	mov    $0x8,%edi
    2071:	e8 fa f2 ff ff       	call   1370 <exit@plt>
    2076:	48 8d 05 01 27 00 00 	lea    0x2701(%rip),%rax        # 477e <transition_table+0x33e>
    207d:	e9 48 ff ff ff       	jmp    1fca <send_msg+0x96>
    2082:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2089:	00 
    208a:	e8 d1 f1 ff ff       	call   1260 <puts@plt>
    208f:	bf 00 00 00 00       	mov    $0x0,%edi
    2094:	e8 d7 f2 ff ff       	call   1370 <exit@plt>
    2099:	e8 e2 f1 ff ff       	call   1280 <__stack_chk_fail@plt>

000000000000209e <explode_bomb>:
    209e:	f3 0f 1e fa          	endbr64 
    20a2:	c3                   	ret    
    20a3:	58                   	pop    %rax
    20a4:	48 83 ec 18          	sub    $0x18,%rsp
    20a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20af:	00 00 
    20b1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    20b6:	31 c0                	xor    %eax,%eax
    20b8:	48 8d 3d df 26 00 00 	lea    0x26df(%rip),%rdi        # 479e <transition_table+0x35e>
    20bf:	e8 9c f1 ff ff       	call   1260 <puts@plt>
    20c4:	48 8d 3d dc 26 00 00 	lea    0x26dc(%rip),%rdi        # 47a7 <transition_table+0x367>
    20cb:	e8 90 f1 ff ff       	call   1260 <puts@plt>
    20d0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    20d7:	00 
    20d8:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    20dd:	bf 00 00 00 00       	mov    $0x0,%edi
    20e2:	e8 4d fe ff ff       	call   1f34 <send_msg>
    20e7:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    20ec:	74 20                	je     210e <explode_bomb+0x70>
    20ee:	48 8d 35 53 24 00 00 	lea    0x2453(%rip),%rsi        # 4548 <transition_table+0x108>
    20f5:	bf 01 00 00 00       	mov    $0x1,%edi
    20fa:	b8 00 00 00 00       	mov    $0x0,%eax
    20ff:	e8 3c f2 ff ff       	call   1340 <__printf_chk@plt>
    2104:	bf 08 00 00 00       	mov    $0x8,%edi
    2109:	e8 62 f2 ff ff       	call   1370 <exit@plt>
    210e:	48 8d 3d 7b 24 00 00 	lea    0x247b(%rip),%rdi        # 4590 <transition_table+0x150>
    2115:	e8 46 f1 ff ff       	call   1260 <puts@plt>
    211a:	bf 08 00 00 00       	mov    $0x8,%edi
    211f:	e8 4c f2 ff ff       	call   1370 <exit@plt>

0000000000002124 <read_six_numbers>:
    2124:	f3 0f 1e fa          	endbr64 
    2128:	48 83 ec 08          	sub    $0x8,%rsp
    212c:	48 89 f2             	mov    %rsi,%rdx
    212f:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2133:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2137:	50                   	push   %rax
    2138:	48 8d 46 10          	lea    0x10(%rsi),%rax
    213c:	50                   	push   %rax
    213d:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2141:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2145:	48 8d 35 72 26 00 00 	lea    0x2672(%rip),%rsi        # 47be <transition_table+0x37e>
    214c:	b8 00 00 00 00       	mov    $0x0,%eax
    2151:	e8 da f1 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2156:	48 83 c4 10          	add    $0x10,%rsp
    215a:	83 f8 05             	cmp    $0x5,%eax
    215d:	7e 05                	jle    2164 <read_six_numbers+0x40>
    215f:	48 83 c4 08          	add    $0x8,%rsp
    2163:	c3                   	ret    
    2164:	e8 35 ff ff ff       	call   209e <explode_bomb>

0000000000002169 <read_line>:
    2169:	f3 0f 1e fa          	endbr64 
    216d:	48 83 ec 08          	sub    $0x8,%rsp
    2171:	b8 00 00 00 00       	mov    $0x0,%eax
    2176:	e8 6e fd ff ff       	call   1ee9 <skip>
    217b:	48 85 c0             	test   %rax,%rax
    217e:	74 72                	je     21f2 <read_line+0x89>
    2180:	8b 15 06 63 00 00    	mov    0x6306(%rip),%edx        # 848c <num_input_strings>
    2186:	48 63 ca             	movslq %edx,%rcx
    2189:	48 89 c8             	mov    %rcx,%rax
    218c:	48 c1 e0 04          	shl    $0x4,%rax
    2190:	48 29 c8             	sub    %rcx,%rax
    2193:	48 8d 0d 06 63 00 00 	lea    0x6306(%rip),%rcx        # 84a0 <input_strings>
    219a:	48 8d 34 c1          	lea    (%rcx,%rax,8),%rsi
    219e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    21a5:	b8 00 00 00 00       	mov    $0x0,%eax
    21aa:	48 89 f7             	mov    %rsi,%rdi
    21ad:	f2 ae                	repnz scas %es:(%rdi),%al
    21af:	48 f7 d1             	not    %rcx
    21b2:	48 83 e9 01          	sub    $0x1,%rcx
    21b6:	83 f9 76             	cmp    $0x76,%ecx
    21b9:	0f 8f ab 00 00 00    	jg     226a <read_line+0x101>
    21bf:	83 e9 01             	sub    $0x1,%ecx
    21c2:	48 63 c9             	movslq %ecx,%rcx
    21c5:	48 63 fa             	movslq %edx,%rdi
    21c8:	48 89 f8             	mov    %rdi,%rax
    21cb:	48 c1 e0 04          	shl    $0x4,%rax
    21cf:	48 29 f8             	sub    %rdi,%rax
    21d2:	48 8d 3d c7 62 00 00 	lea    0x62c7(%rip),%rdi        # 84a0 <input_strings>
    21d9:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
    21dd:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    21e1:	83 c2 01             	add    $0x1,%edx
    21e4:	89 15 a2 62 00 00    	mov    %edx,0x62a2(%rip)        # 848c <num_input_strings>
    21ea:	48 89 f0             	mov    %rsi,%rax
    21ed:	48 83 c4 08          	add    $0x8,%rsp
    21f1:	c3                   	ret    
    21f2:	48 8b 05 77 62 00 00 	mov    0x6277(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    21f9:	48 39 05 90 62 00 00 	cmp    %rax,0x6290(%rip)        # 8490 <infile>
    2200:	74 1b                	je     221d <read_line+0xb4>
    2202:	48 8d 3d e5 25 00 00 	lea    0x25e5(%rip),%rdi        # 47ee <transition_table+0x3ae>
    2209:	e8 02 f0 ff ff       	call   1210 <getenv@plt>
    220e:	48 85 c0             	test   %rax,%rax
    2211:	74 20                	je     2233 <read_line+0xca>
    2213:	bf 00 00 00 00       	mov    $0x0,%edi
    2218:	e8 53 f1 ff ff       	call   1370 <exit@plt>
    221d:	48 8d 3d ac 25 00 00 	lea    0x25ac(%rip),%rdi        # 47d0 <transition_table+0x390>
    2224:	e8 37 f0 ff ff       	call   1260 <puts@plt>
    2229:	bf 08 00 00 00       	mov    $0x8,%edi
    222e:	e8 3d f1 ff ff       	call   1370 <exit@plt>
    2233:	48 8b 05 36 62 00 00 	mov    0x6236(%rip),%rax        # 8470 <stdin@GLIBC_2.2.5>
    223a:	48 89 05 4f 62 00 00 	mov    %rax,0x624f(%rip)        # 8490 <infile>
    2241:	b8 00 00 00 00       	mov    $0x0,%eax
    2246:	e8 9e fc ff ff       	call   1ee9 <skip>
    224b:	48 85 c0             	test   %rax,%rax
    224e:	0f 85 2c ff ff ff    	jne    2180 <read_line+0x17>
    2254:	48 8d 3d 75 25 00 00 	lea    0x2575(%rip),%rdi        # 47d0 <transition_table+0x390>
    225b:	e8 00 f0 ff ff       	call   1260 <puts@plt>
    2260:	bf 00 00 00 00       	mov    $0x0,%edi
    2265:	e8 06 f1 ff ff       	call   1370 <exit@plt>
    226a:	48 8d 3d 88 25 00 00 	lea    0x2588(%rip),%rdi        # 47f9 <transition_table+0x3b9>
    2271:	e8 ea ef ff ff       	call   1260 <puts@plt>
    2276:	8b 05 10 62 00 00    	mov    0x6210(%rip),%eax        # 848c <num_input_strings>
    227c:	8d 50 01             	lea    0x1(%rax),%edx
    227f:	89 15 07 62 00 00    	mov    %edx,0x6207(%rip)        # 848c <num_input_strings>
    2285:	48 98                	cltq   
    2287:	48 6b c0 78          	imul   $0x78,%rax,%rax
    228b:	48 8d 15 0e 62 00 00 	lea    0x620e(%rip),%rdx        # 84a0 <input_strings>
    2292:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2299:	75 6e 63 
    229c:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    22a3:	2a 2a 00 
    22a6:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    22aa:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    22af:	e8 ea fd ff ff       	call   209e <explode_bomb>

00000000000022b4 <phase_defused>:
    22b4:	f3 0f 1e fa          	endbr64 
    22b8:	53                   	push   %rbx
    22b9:	48 89 fb             	mov    %rdi,%rbx
    22bc:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    22c2:	48 89 fe             	mov    %rdi,%rsi
    22c5:	bf 01 00 00 00       	mov    $0x1,%edi
    22ca:	e8 65 fc ff ff       	call   1f34 <send_msg>
    22cf:	83 3b 01             	cmpl   $0x1,(%rbx)
    22d2:	75 0b                	jne    22df <phase_defused+0x2b>
    22d4:	83 3d b1 61 00 00 06 	cmpl   $0x6,0x61b1(%rip)        # 848c <num_input_strings>
    22db:	74 22                	je     22ff <phase_defused+0x4b>
    22dd:	5b                   	pop    %rbx
    22de:	c3                   	ret    
    22df:	48 8d 35 62 22 00 00 	lea    0x2262(%rip),%rsi        # 4548 <transition_table+0x108>
    22e6:	bf 01 00 00 00       	mov    $0x1,%edi
    22eb:	b8 00 00 00 00       	mov    $0x0,%eax
    22f0:	e8 4b f0 ff ff       	call   1340 <__printf_chk@plt>
    22f5:	bf 08 00 00 00       	mov    $0x8,%edi
    22fa:	e8 71 f0 ff ff       	call   1370 <exit@plt>
    22ff:	e8 54 f3 ff ff       	call   1658 <genshin>
    2304:	85 c0                	test   %eax,%eax
    2306:	75 26                	jne    232e <phase_defused+0x7a>
    2308:	48 8d 3d 61 23 00 00 	lea    0x2361(%rip),%rdi        # 4670 <transition_table+0x230>
    230f:	e8 4c ef ff ff       	call   1260 <puts@plt>
    2314:	48 8d 3d 95 23 00 00 	lea    0x2395(%rip),%rdi        # 46b0 <transition_table+0x270>
    231b:	e8 40 ef ff ff       	call   1260 <puts@plt>
    2320:	48 8d 3d d1 23 00 00 	lea    0x23d1(%rip),%rdi        # 46f8 <transition_table+0x2b8>
    2327:	e8 34 ef ff ff       	call   1260 <puts@plt>
    232c:	eb af                	jmp    22dd <phase_defused+0x29>
    232e:	e8 b2 f3 ff ff       	call   16e5 <qidong>
    2333:	85 c0                	test   %eax,%eax
    2335:	74 24                	je     235b <phase_defused+0xa7>
    2337:	48 8d 3d 7a 22 00 00 	lea    0x227a(%rip),%rdi        # 45b8 <transition_table+0x178>
    233e:	e8 1d ef ff ff       	call   1260 <puts@plt>
    2343:	48 8d 3d 96 22 00 00 	lea    0x2296(%rip),%rdi        # 45e0 <transition_table+0x1a0>
    234a:	e8 11 ef ff ff       	call   1260 <puts@plt>
    234f:	b8 00 00 00 00       	mov    $0x0,%eax
    2354:	e8 84 f8 ff ff       	call   1bdd <secret_phase>
    2359:	eb ad                	jmp    2308 <phase_defused+0x54>
    235b:	48 8d 3d be 22 00 00 	lea    0x22be(%rip),%rdi        # 4620 <transition_table+0x1e0>
    2362:	e8 f9 ee ff ff       	call   1260 <puts@plt>
    2367:	eb 9f                	jmp    2308 <phase_defused+0x54>

0000000000002369 <rio_readinitb>:
    2369:	89 37                	mov    %esi,(%rdi)
    236b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    2372:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2376:	48 89 47 08          	mov    %rax,0x8(%rdi)
    237a:	c3                   	ret    

000000000000237b <sigalrm_handler>:
    237b:	f3 0f 1e fa          	endbr64 
    237f:	50                   	push   %rax
    2380:	58                   	pop    %rax
    2381:	48 83 ec 08          	sub    $0x8,%rsp
    2385:	b9 00 00 00 00       	mov    $0x0,%ecx
    238a:	48 8d 15 df 24 00 00 	lea    0x24df(%rip),%rdx        # 4870 <transition_table+0x430>
    2391:	be 01 00 00 00       	mov    $0x1,%esi
    2396:	48 8b 3d e3 60 00 00 	mov    0x60e3(%rip),%rdi        # 8480 <stderr@GLIBC_2.2.5>
    239d:	b8 00 00 00 00       	mov    $0x0,%eax
    23a2:	e8 e9 ef ff ff       	call   1390 <__fprintf_chk@plt>
    23a7:	bf 01 00 00 00       	mov    $0x1,%edi
    23ac:	e8 bf ef ff ff       	call   1370 <exit@plt>

00000000000023b1 <rio_writen>:
    23b1:	41 55                	push   %r13
    23b3:	41 54                	push   %r12
    23b5:	55                   	push   %rbp
    23b6:	53                   	push   %rbx
    23b7:	48 83 ec 08          	sub    $0x8,%rsp
    23bb:	41 89 fc             	mov    %edi,%r12d
    23be:	48 89 f5             	mov    %rsi,%rbp
    23c1:	49 89 d5             	mov    %rdx,%r13
    23c4:	48 89 d3             	mov    %rdx,%rbx
    23c7:	eb 06                	jmp    23cf <rio_writen+0x1e>
    23c9:	48 29 c3             	sub    %rax,%rbx
    23cc:	48 01 c5             	add    %rax,%rbp
    23cf:	48 85 db             	test   %rbx,%rbx
    23d2:	74 24                	je     23f8 <rio_writen+0x47>
    23d4:	48 89 da             	mov    %rbx,%rdx
    23d7:	48 89 ee             	mov    %rbp,%rsi
    23da:	44 89 e7             	mov    %r12d,%edi
    23dd:	e8 8e ee ff ff       	call   1270 <write@plt>
    23e2:	48 85 c0             	test   %rax,%rax
    23e5:	7f e2                	jg     23c9 <rio_writen+0x18>
    23e7:	e8 54 ee ff ff       	call   1240 <__errno_location@plt>
    23ec:	83 38 04             	cmpl   $0x4,(%rax)
    23ef:	75 15                	jne    2406 <rio_writen+0x55>
    23f1:	b8 00 00 00 00       	mov    $0x0,%eax
    23f6:	eb d1                	jmp    23c9 <rio_writen+0x18>
    23f8:	4c 89 e8             	mov    %r13,%rax
    23fb:	48 83 c4 08          	add    $0x8,%rsp
    23ff:	5b                   	pop    %rbx
    2400:	5d                   	pop    %rbp
    2401:	41 5c                	pop    %r12
    2403:	41 5d                	pop    %r13
    2405:	c3                   	ret    
    2406:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    240d:	eb ec                	jmp    23fb <rio_writen+0x4a>

000000000000240f <rio_read>:
    240f:	41 55                	push   %r13
    2411:	41 54                	push   %r12
    2413:	55                   	push   %rbp
    2414:	53                   	push   %rbx
    2415:	48 83 ec 08          	sub    $0x8,%rsp
    2419:	48 89 fb             	mov    %rdi,%rbx
    241c:	49 89 f5             	mov    %rsi,%r13
    241f:	49 89 d4             	mov    %rdx,%r12
    2422:	eb 17                	jmp    243b <rio_read+0x2c>
    2424:	e8 17 ee ff ff       	call   1240 <__errno_location@plt>
    2429:	83 38 04             	cmpl   $0x4,(%rax)
    242c:	74 0d                	je     243b <rio_read+0x2c>
    242e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2435:	eb 54                	jmp    248b <rio_read+0x7c>
    2437:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    243b:	8b 6b 04             	mov    0x4(%rbx),%ebp
    243e:	85 ed                	test   %ebp,%ebp
    2440:	7f 23                	jg     2465 <rio_read+0x56>
    2442:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    2446:	8b 3b                	mov    (%rbx),%edi
    2448:	ba 00 20 00 00       	mov    $0x2000,%edx
    244d:	48 89 ee             	mov    %rbp,%rsi
    2450:	e8 5b ee ff ff       	call   12b0 <read@plt>
    2455:	89 43 04             	mov    %eax,0x4(%rbx)
    2458:	85 c0                	test   %eax,%eax
    245a:	78 c8                	js     2424 <rio_read+0x15>
    245c:	75 d9                	jne    2437 <rio_read+0x28>
    245e:	b8 00 00 00 00       	mov    $0x0,%eax
    2463:	eb 26                	jmp    248b <rio_read+0x7c>
    2465:	89 e8                	mov    %ebp,%eax
    2467:	4c 39 e0             	cmp    %r12,%rax
    246a:	72 03                	jb     246f <rio_read+0x60>
    246c:	44 89 e5             	mov    %r12d,%ebp
    246f:	4c 63 e5             	movslq %ebp,%r12
    2472:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    2476:	4c 89 e2             	mov    %r12,%rdx
    2479:	4c 89 ef             	mov    %r13,%rdi
    247c:	e8 7f ee ff ff       	call   1300 <memcpy@plt>
    2481:	4c 01 63 08          	add    %r12,0x8(%rbx)
    2485:	29 6b 04             	sub    %ebp,0x4(%rbx)
    2488:	4c 89 e0             	mov    %r12,%rax
    248b:	48 83 c4 08          	add    $0x8,%rsp
    248f:	5b                   	pop    %rbx
    2490:	5d                   	pop    %rbp
    2491:	41 5c                	pop    %r12
    2493:	41 5d                	pop    %r13
    2495:	c3                   	ret    

0000000000002496 <rio_readlineb>:
    2496:	41 55                	push   %r13
    2498:	41 54                	push   %r12
    249a:	55                   	push   %rbp
    249b:	53                   	push   %rbx
    249c:	48 83 ec 18          	sub    $0x18,%rsp
    24a0:	49 89 fd             	mov    %rdi,%r13
    24a3:	48 89 f5             	mov    %rsi,%rbp
    24a6:	49 89 d4             	mov    %rdx,%r12
    24a9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24b0:	00 00 
    24b2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24b7:	31 c0                	xor    %eax,%eax
    24b9:	bb 01 00 00 00       	mov    $0x1,%ebx
    24be:	eb 18                	jmp    24d8 <rio_readlineb+0x42>
    24c0:	85 c0                	test   %eax,%eax
    24c2:	75 65                	jne    2529 <rio_readlineb+0x93>
    24c4:	48 83 fb 01          	cmp    $0x1,%rbx
    24c8:	75 3d                	jne    2507 <rio_readlineb+0x71>
    24ca:	b8 00 00 00 00       	mov    $0x0,%eax
    24cf:	eb 3d                	jmp    250e <rio_readlineb+0x78>
    24d1:	48 83 c3 01          	add    $0x1,%rbx
    24d5:	48 89 d5             	mov    %rdx,%rbp
    24d8:	4c 39 e3             	cmp    %r12,%rbx
    24db:	73 2a                	jae    2507 <rio_readlineb+0x71>
    24dd:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    24e2:	ba 01 00 00 00       	mov    $0x1,%edx
    24e7:	4c 89 ef             	mov    %r13,%rdi
    24ea:	e8 20 ff ff ff       	call   240f <rio_read>
    24ef:	83 f8 01             	cmp    $0x1,%eax
    24f2:	75 cc                	jne    24c0 <rio_readlineb+0x2a>
    24f4:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    24f8:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    24fd:	88 45 00             	mov    %al,0x0(%rbp)
    2500:	3c 0a                	cmp    $0xa,%al
    2502:	75 cd                	jne    24d1 <rio_readlineb+0x3b>
    2504:	48 89 d5             	mov    %rdx,%rbp
    2507:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    250b:	48 89 d8             	mov    %rbx,%rax
    250e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    2513:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    251a:	00 00 
    251c:	75 14                	jne    2532 <rio_readlineb+0x9c>
    251e:	48 83 c4 18          	add    $0x18,%rsp
    2522:	5b                   	pop    %rbx
    2523:	5d                   	pop    %rbp
    2524:	41 5c                	pop    %r12
    2526:	41 5d                	pop    %r13
    2528:	c3                   	ret    
    2529:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2530:	eb dc                	jmp    250e <rio_readlineb+0x78>
    2532:	e8 49 ed ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002537 <urlencode>:
    2537:	41 54                	push   %r12
    2539:	55                   	push   %rbp
    253a:	53                   	push   %rbx
    253b:	48 83 ec 10          	sub    $0x10,%rsp
    253f:	48 89 fb             	mov    %rdi,%rbx
    2542:	48 89 f5             	mov    %rsi,%rbp
    2545:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    254c:	00 00 
    254e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2553:	31 c0                	xor    %eax,%eax
    2555:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    255c:	f2 ae                	repnz scas %es:(%rdi),%al
    255e:	48 f7 d1             	not    %rcx
    2561:	8d 41 ff             	lea    -0x1(%rcx),%eax
    2564:	eb 0f                	jmp    2575 <urlencode+0x3e>
    2566:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    256a:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    256e:	48 83 c3 01          	add    $0x1,%rbx
    2572:	44 89 e0             	mov    %r12d,%eax
    2575:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    2579:	85 c0                	test   %eax,%eax
    257b:	0f 84 a8 00 00 00    	je     2629 <urlencode+0xf2>
    2581:	44 0f b6 03          	movzbl (%rbx),%r8d
    2585:	41 80 f8 2a          	cmp    $0x2a,%r8b
    2589:	0f 94 c2             	sete   %dl
    258c:	41 80 f8 2d          	cmp    $0x2d,%r8b
    2590:	0f 94 c0             	sete   %al
    2593:	08 c2                	or     %al,%dl
    2595:	75 cf                	jne    2566 <urlencode+0x2f>
    2597:	41 80 f8 2e          	cmp    $0x2e,%r8b
    259b:	74 c9                	je     2566 <urlencode+0x2f>
    259d:	41 80 f8 5f          	cmp    $0x5f,%r8b
    25a1:	74 c3                	je     2566 <urlencode+0x2f>
    25a3:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    25a7:	3c 09                	cmp    $0x9,%al
    25a9:	76 bb                	jbe    2566 <urlencode+0x2f>
    25ab:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    25af:	3c 19                	cmp    $0x19,%al
    25b1:	76 b3                	jbe    2566 <urlencode+0x2f>
    25b3:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    25b7:	3c 19                	cmp    $0x19,%al
    25b9:	76 ab                	jbe    2566 <urlencode+0x2f>
    25bb:	41 80 f8 20          	cmp    $0x20,%r8b
    25bf:	74 56                	je     2617 <urlencode+0xe0>
    25c1:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    25c5:	3c 5f                	cmp    $0x5f,%al
    25c7:	0f 96 c2             	setbe  %dl
    25ca:	41 80 f8 09          	cmp    $0x9,%r8b
    25ce:	0f 94 c0             	sete   %al
    25d1:	08 c2                	or     %al,%dl
    25d3:	74 4f                	je     2624 <urlencode+0xed>
    25d5:	48 89 e7             	mov    %rsp,%rdi
    25d8:	45 0f b6 c0          	movzbl %r8b,%r8d
    25dc:	48 8d 0d 42 23 00 00 	lea    0x2342(%rip),%rcx        # 4925 <transition_table+0x4e5>
    25e3:	ba 08 00 00 00       	mov    $0x8,%edx
    25e8:	be 01 00 00 00       	mov    $0x1,%esi
    25ed:	b8 00 00 00 00       	mov    $0x0,%eax
    25f2:	e8 c9 ed ff ff       	call   13c0 <__sprintf_chk@plt>
    25f7:	0f b6 04 24          	movzbl (%rsp),%eax
    25fb:	88 45 00             	mov    %al,0x0(%rbp)
    25fe:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    2603:	88 45 01             	mov    %al,0x1(%rbp)
    2606:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    260b:	88 45 02             	mov    %al,0x2(%rbp)
    260e:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2612:	e9 57 ff ff ff       	jmp    256e <urlencode+0x37>
    2617:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    261b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    261f:	e9 4a ff ff ff       	jmp    256e <urlencode+0x37>
    2624:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2629:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    262e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
    2635:	00 00 
    2637:	75 09                	jne    2642 <urlencode+0x10b>
    2639:	48 83 c4 10          	add    $0x10,%rsp
    263d:	5b                   	pop    %rbx
    263e:	5d                   	pop    %rbp
    263f:	41 5c                	pop    %r12
    2641:	c3                   	ret    
    2642:	e8 39 ec ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002647 <submitr>:
    2647:	f3 0f 1e fa          	endbr64 
    264b:	41 57                	push   %r15
    264d:	41 56                	push   %r14
    264f:	41 55                	push   %r13
    2651:	41 54                	push   %r12
    2653:	55                   	push   %rbp
    2654:	53                   	push   %rbx
    2655:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    265c:	ff 
    265d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2664:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2669:	4c 39 dc             	cmp    %r11,%rsp
    266c:	75 ef                	jne    265d <submitr+0x16>
    266e:	48 83 ec 68          	sub    $0x68,%rsp
    2672:	49 89 fc             	mov    %rdi,%r12
    2675:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
    2679:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    267e:	49 89 cd             	mov    %rcx,%r13
    2681:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2686:	4d 89 ce             	mov    %r9,%r14
    2689:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
    2690:	00 
    2691:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2698:	00 00 
    269a:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    26a1:	00 
    26a2:	31 c0                	xor    %eax,%eax
    26a4:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    26ab:	00 
    26ac:	ba 00 00 00 00       	mov    $0x0,%edx
    26b1:	be 01 00 00 00       	mov    $0x1,%esi
    26b6:	bf 02 00 00 00       	mov    $0x2,%edi
    26bb:	e8 10 ed ff ff       	call   13d0 <socket@plt>
    26c0:	85 c0                	test   %eax,%eax
    26c2:	0f 88 a5 02 00 00    	js     296d <submitr+0x326>
    26c8:	89 c3                	mov    %eax,%ebx
    26ca:	4c 89 e7             	mov    %r12,%rdi
    26cd:	e8 0e ec ff ff       	call   12e0 <gethostbyname@plt>
    26d2:	48 85 c0             	test   %rax,%rax
    26d5:	0f 84 de 02 00 00    	je     29b9 <submitr+0x372>
    26db:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    26e0:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    26e7:	00 00 
    26e9:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    26f0:	00 00 
    26f2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    26f9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    26fd:	48 8b 40 18          	mov    0x18(%rax),%rax
    2701:	48 8b 30             	mov    (%rax),%rsi
    2704:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    2709:	b9 0c 00 00 00       	mov    $0xc,%ecx
    270e:	e8 dd eb ff ff       	call   12f0 <__memmove_chk@plt>
    2713:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
    2718:	66 c1 c6 08          	rol    $0x8,%si
    271c:	66 89 74 24 32       	mov    %si,0x32(%rsp)
    2721:	ba 10 00 00 00       	mov    $0x10,%edx
    2726:	4c 89 fe             	mov    %r15,%rsi
    2729:	89 df                	mov    %ebx,%edi
    272b:	e8 50 ec ff ff       	call   1380 <connect@plt>
    2730:	85 c0                	test   %eax,%eax
    2732:	0f 88 f7 02 00 00    	js     2a2f <submitr+0x3e8>
    2738:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    273f:	b8 00 00 00 00       	mov    $0x0,%eax
    2744:	48 89 f1             	mov    %rsi,%rcx
    2747:	4c 89 f7             	mov    %r14,%rdi
    274a:	f2 ae                	repnz scas %es:(%rdi),%al
    274c:	48 89 ca             	mov    %rcx,%rdx
    274f:	48 f7 d2             	not    %rdx
    2752:	48 89 f1             	mov    %rsi,%rcx
    2755:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    275a:	f2 ae                	repnz scas %es:(%rdi),%al
    275c:	48 f7 d1             	not    %rcx
    275f:	49 89 c8             	mov    %rcx,%r8
    2762:	48 89 f1             	mov    %rsi,%rcx
    2765:	4c 89 ef             	mov    %r13,%rdi
    2768:	f2 ae                	repnz scas %es:(%rdi),%al
    276a:	48 f7 d1             	not    %rcx
    276d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
    2772:	48 89 f1             	mov    %rsi,%rcx
    2775:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    277a:	f2 ae                	repnz scas %es:(%rdi),%al
    277c:	48 89 c8             	mov    %rcx,%rax
    277f:	48 f7 d0             	not    %rax
    2782:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
    2787:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
    278c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
    2793:	00 
    2794:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    279a:	0f 87 f7 02 00 00    	ja     2a97 <submitr+0x450>
    27a0:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    27a7:	00 
    27a8:	b9 00 04 00 00       	mov    $0x400,%ecx
    27ad:	b8 00 00 00 00       	mov    $0x0,%eax
    27b2:	48 89 f7             	mov    %rsi,%rdi
    27b5:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    27b8:	4c 89 f7             	mov    %r14,%rdi
    27bb:	e8 77 fd ff ff       	call   2537 <urlencode>
    27c0:	85 c0                	test   %eax,%eax
    27c2:	0f 88 42 03 00 00    	js     2b0a <submitr+0x4c3>
    27c8:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    27cf:	00 
    27d0:	48 83 ec 08          	sub    $0x8,%rsp
    27d4:	41 54                	push   %r12
    27d6:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    27dd:	00 
    27de:	50                   	push   %rax
    27df:	41 55                	push   %r13
    27e1:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    27e6:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    27eb:	48 8d 0d a6 20 00 00 	lea    0x20a6(%rip),%rcx        # 4898 <transition_table+0x458>
    27f2:	ba 00 20 00 00       	mov    $0x2000,%edx
    27f7:	be 01 00 00 00       	mov    $0x1,%esi
    27fc:	4c 89 ff             	mov    %r15,%rdi
    27ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2804:	e8 b7 eb ff ff       	call   13c0 <__sprintf_chk@plt>
    2809:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2810:	b8 00 00 00 00       	mov    $0x0,%eax
    2815:	4c 89 ff             	mov    %r15,%rdi
    2818:	f2 ae                	repnz scas %es:(%rdi),%al
    281a:	48 f7 d1             	not    %rcx
    281d:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
    2821:	48 83 c4 20          	add    $0x20,%rsp
    2825:	4c 89 fe             	mov    %r15,%rsi
    2828:	89 df                	mov    %ebx,%edi
    282a:	e8 82 fb ff ff       	call   23b1 <rio_writen>
    282f:	48 85 c0             	test   %rax,%rax
    2832:	0f 88 5d 03 00 00    	js     2b95 <submitr+0x54e>
    2838:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    283d:	89 de                	mov    %ebx,%esi
    283f:	4c 89 e7             	mov    %r12,%rdi
    2842:	e8 22 fb ff ff       	call   2369 <rio_readinitb>
    2847:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    284e:	00 
    284f:	ba 00 20 00 00       	mov    $0x2000,%edx
    2854:	4c 89 e7             	mov    %r12,%rdi
    2857:	e8 3a fc ff ff       	call   2496 <rio_readlineb>
    285c:	48 85 c0             	test   %rax,%rax
    285f:	0f 8e 9c 03 00 00    	jle    2c01 <submitr+0x5ba>
    2865:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    286a:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    2871:	00 
    2872:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    2879:	00 
    287a:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    2881:	00 
    2882:	48 8d 35 a3 20 00 00 	lea    0x20a3(%rip),%rsi        # 492c <transition_table+0x4ec>
    2889:	b8 00 00 00 00       	mov    $0x0,%eax
    288e:	e8 9d ea ff ff       	call   1330 <__isoc99_sscanf@plt>
    2893:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    289a:	00 
    289b:	b9 03 00 00 00       	mov    $0x3,%ecx
    28a0:	48 8d 3d 9c 20 00 00 	lea    0x209c(%rip),%rdi        # 4943 <transition_table+0x503>
    28a7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    28a9:	0f 97 c0             	seta   %al
    28ac:	1c 00                	sbb    $0x0,%al
    28ae:	84 c0                	test   %al,%al
    28b0:	0f 84 cb 03 00 00    	je     2c81 <submitr+0x63a>
    28b6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    28bd:	00 
    28be:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    28c3:	ba 00 20 00 00       	mov    $0x2000,%edx
    28c8:	e8 c9 fb ff ff       	call   2496 <rio_readlineb>
    28cd:	48 85 c0             	test   %rax,%rax
    28d0:	7f c1                	jg     2893 <submitr+0x24c>
    28d2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28d9:	3a 20 43 
    28dc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28e3:	20 75 6e 
    28e6:	48 89 45 00          	mov    %rax,0x0(%rbp)
    28ea:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    28ee:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28f5:	74 6f 20 
    28f8:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    28ff:	68 65 61 
    2902:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2906:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    290a:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2911:	66 72 6f 
    2914:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    291b:	6f 6c 61 
    291e:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2922:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2926:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    292d:	76 65 72 
    2930:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2934:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    2938:	89 df                	mov    %ebx,%edi
    293a:	e8 61 e9 ff ff       	call   12a0 <close@plt>
    293f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2944:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
    294b:	00 
    294c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
    2953:	00 00 
    2955:	0f 85 96 04 00 00    	jne    2df1 <submitr+0x7aa>
    295b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    2962:	5b                   	pop    %rbx
    2963:	5d                   	pop    %rbp
    2964:	41 5c                	pop    %r12
    2966:	41 5d                	pop    %r13
    2968:	41 5e                	pop    %r14
    296a:	41 5f                	pop    %r15
    296c:	c3                   	ret    
    296d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2974:	3a 20 43 
    2977:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    297e:	20 75 6e 
    2981:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2985:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2989:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2990:	74 6f 20 
    2993:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    299a:	65 20 73 
    299d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29a1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29a5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    29ac:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    29b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29b7:	eb 8b                	jmp    2944 <submitr+0x2fd>
    29b9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    29c0:	3a 20 44 
    29c3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29ca:	20 75 6e 
    29cd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29d1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29dc:	74 6f 20 
    29df:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29e6:	76 65 20 
    29e9:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29ed:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29f1:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    29f8:	61 62 20 
    29fb:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    2a02:	72 20 61 
    2a05:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a09:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2a0d:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    2a14:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    2a1a:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    2a1e:	89 df                	mov    %ebx,%edi
    2a20:	e8 7b e8 ff ff       	call   12a0 <close@plt>
    2a25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a2a:	e9 15 ff ff ff       	jmp    2944 <submitr+0x2fd>
    2a2f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2a36:	3a 20 55 
    2a39:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2a40:	20 74 6f 
    2a43:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a47:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a4b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2a52:	65 63 74 
    2a55:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2a5c:	68 65 20 
    2a5f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a63:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a67:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    2a6e:	61 62 20 
    2a71:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a75:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    2a7c:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    2a82:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a86:	89 df                	mov    %ebx,%edi
    2a88:	e8 13 e8 ff ff       	call   12a0 <close@plt>
    2a8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a92:	e9 ad fe ff ff       	jmp    2944 <submitr+0x2fd>
    2a97:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2a9e:	3a 20 52 
    2aa1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2aa8:	20 73 74 
    2aab:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2aaf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ab3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2aba:	74 6f 6f 
    2abd:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2ac4:	65 2e 20 
    2ac7:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2acb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2acf:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2ad6:	61 73 65 
    2ad9:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2ae0:	49 54 52 
    2ae3:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2ae7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2aeb:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2af2:	55 46 00 
    2af5:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2af9:	89 df                	mov    %ebx,%edi
    2afb:	e8 a0 e7 ff ff       	call   12a0 <close@plt>
    2b00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b05:	e9 3a fe ff ff       	jmp    2944 <submitr+0x2fd>
    2b0a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2b11:	3a 20 52 
    2b14:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2b1b:	20 73 74 
    2b1e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b22:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b26:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2b2d:	63 6f 6e 
    2b30:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2b37:	20 61 6e 
    2b3a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b3e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b42:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2b49:	67 61 6c 
    2b4c:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2b53:	6e 70 72 
    2b56:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b5a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2b5e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2b65:	6c 65 20 
    2b68:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2b6f:	63 74 65 
    2b72:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2b76:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2b7a:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    2b80:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    2b84:	89 df                	mov    %ebx,%edi
    2b86:	e8 15 e7 ff ff       	call   12a0 <close@plt>
    2b8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b90:	e9 af fd ff ff       	jmp    2944 <submitr+0x2fd>
    2b95:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2b9c:	3a 20 43 
    2b9f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2ba6:	20 75 6e 
    2ba9:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2bad:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2bb1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2bb8:	74 6f 20 
    2bbb:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2bc2:	20 74 6f 
    2bc5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2bc9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2bcd:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    2bd4:	41 75 74 
    2bd7:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    2bde:	73 65 72 
    2be1:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2be5:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2be9:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    2bf0:	89 df                	mov    %ebx,%edi
    2bf2:	e8 a9 e6 ff ff       	call   12a0 <close@plt>
    2bf7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bfc:	e9 43 fd ff ff       	jmp    2944 <submitr+0x2fd>
    2c01:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c08:	3a 20 43 
    2c0b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c12:	20 75 6e 
    2c15:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c19:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c1d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c24:	74 6f 20 
    2c27:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2c2e:	66 69 72 
    2c31:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c35:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c39:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2c40:	61 64 65 
    2c43:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    2c4a:	6d 20 41 
    2c4d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c51:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2c55:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    2c5c:	62 20 73 
    2c5f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2c63:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    2c6a:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    2c70:	89 df                	mov    %ebx,%edi
    2c72:	e8 29 e6 ff ff       	call   12a0 <close@plt>
    2c77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c7c:	e9 c3 fc ff ff       	jmp    2944 <submitr+0x2fd>
    2c81:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2c88:	00 
    2c89:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2c8e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2c93:	e8 fe f7 ff ff       	call   2496 <rio_readlineb>
    2c98:	48 85 c0             	test   %rax,%rax
    2c9b:	0f 8e 96 00 00 00    	jle    2d37 <submitr+0x6f0>
    2ca1:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    2ca6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2cad:	0f 85 05 01 00 00    	jne    2db8 <submitr+0x771>
    2cb3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2cba:	00 
    2cbb:	48 89 ef             	mov    %rbp,%rdi
    2cbe:	e8 8d e5 ff ff       	call   1250 <strcpy@plt>
    2cc3:	89 df                	mov    %ebx,%edi
    2cc5:	e8 d6 e5 ff ff       	call   12a0 <close@plt>
    2cca:	b9 04 00 00 00       	mov    $0x4,%ecx
    2ccf:	48 8d 3d 67 1c 00 00 	lea    0x1c67(%rip),%rdi        # 493d <transition_table+0x4fd>
    2cd6:	48 89 ee             	mov    %rbp,%rsi
    2cd9:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2cdb:	0f 97 c0             	seta   %al
    2cde:	1c 00                	sbb    $0x0,%al
    2ce0:	0f be c0             	movsbl %al,%eax
    2ce3:	85 c0                	test   %eax,%eax
    2ce5:	0f 84 59 fc ff ff    	je     2944 <submitr+0x2fd>
    2ceb:	b9 05 00 00 00       	mov    $0x5,%ecx
    2cf0:	48 8d 3d 4a 1c 00 00 	lea    0x1c4a(%rip),%rdi        # 4941 <transition_table+0x501>
    2cf7:	48 89 ee             	mov    %rbp,%rsi
    2cfa:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2cfc:	0f 97 c0             	seta   %al
    2cff:	1c 00                	sbb    $0x0,%al
    2d01:	0f be c0             	movsbl %al,%eax
    2d04:	85 c0                	test   %eax,%eax
    2d06:	0f 84 38 fc ff ff    	je     2944 <submitr+0x2fd>
    2d0c:	b9 03 00 00 00       	mov    $0x3,%ecx
    2d11:	48 8d 3d 2e 1c 00 00 	lea    0x1c2e(%rip),%rdi        # 4946 <transition_table+0x506>
    2d18:	48 89 ee             	mov    %rbp,%rsi
    2d1b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2d1d:	0f 97 c0             	seta   %al
    2d20:	1c 00                	sbb    $0x0,%al
    2d22:	0f be c0             	movsbl %al,%eax
    2d25:	85 c0                	test   %eax,%eax
    2d27:	0f 84 17 fc ff ff    	je     2944 <submitr+0x2fd>
    2d2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d32:	e9 0d fc ff ff       	jmp    2944 <submitr+0x2fd>
    2d37:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2d3e:	3a 20 43 
    2d41:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2d48:	20 75 6e 
    2d4b:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2d4f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2d53:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2d5a:	74 6f 20 
    2d5d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2d64:	73 74 61 
    2d67:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d6b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d6f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2d76:	65 73 73 
    2d79:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2d80:	72 6f 6d 
    2d83:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d87:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    2d8b:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    2d92:	6c 61 62 
    2d95:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    2d9c:	65 72 00 
    2d9f:	48 89 45 30          	mov    %rax,0x30(%rbp)
    2da3:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    2da7:	89 df                	mov    %ebx,%edi
    2da9:	e8 f2 e4 ff ff       	call   12a0 <close@plt>
    2dae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2db3:	e9 8c fb ff ff       	jmp    2944 <submitr+0x2fd>
    2db8:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2dbf:	00 
    2dc0:	48 8d 0d 31 1b 00 00 	lea    0x1b31(%rip),%rcx        # 48f8 <transition_table+0x4b8>
    2dc7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2dce:	be 01 00 00 00       	mov    $0x1,%esi
    2dd3:	48 89 ef             	mov    %rbp,%rdi
    2dd6:	b8 00 00 00 00       	mov    $0x0,%eax
    2ddb:	e8 e0 e5 ff ff       	call   13c0 <__sprintf_chk@plt>
    2de0:	89 df                	mov    %ebx,%edi
    2de2:	e8 b9 e4 ff ff       	call   12a0 <close@plt>
    2de7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2dec:	e9 53 fb ff ff       	jmp    2944 <submitr+0x2fd>
    2df1:	e8 8a e4 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002df6 <init_timeout>:
    2df6:	f3 0f 1e fa          	endbr64 
    2dfa:	85 ff                	test   %edi,%edi
    2dfc:	74 26                	je     2e24 <init_timeout+0x2e>
    2dfe:	53                   	push   %rbx
    2dff:	89 fb                	mov    %edi,%ebx
    2e01:	78 1a                	js     2e1d <init_timeout+0x27>
    2e03:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 237b <sigalrm_handler>
    2e0a:	bf 0e 00 00 00       	mov    $0xe,%edi
    2e0f:	e8 bc e4 ff ff       	call   12d0 <signal@plt>
    2e14:	89 df                	mov    %ebx,%edi
    2e16:	e8 75 e4 ff ff       	call   1290 <alarm@plt>
    2e1b:	5b                   	pop    %rbx
    2e1c:	c3                   	ret    
    2e1d:	bb 00 00 00 00       	mov    $0x0,%ebx
    2e22:	eb df                	jmp    2e03 <init_timeout+0xd>
    2e24:	c3                   	ret    

0000000000002e25 <init_driver>:
    2e25:	f3 0f 1e fa          	endbr64 
    2e29:	41 54                	push   %r12
    2e2b:	55                   	push   %rbp
    2e2c:	53                   	push   %rbx
    2e2d:	48 83 ec 20          	sub    $0x20,%rsp
    2e31:	48 89 fd             	mov    %rdi,%rbp
    2e34:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e3b:	00 00 
    2e3d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2e42:	31 c0                	xor    %eax,%eax
    2e44:	be 01 00 00 00       	mov    $0x1,%esi
    2e49:	bf 0d 00 00 00       	mov    $0xd,%edi
    2e4e:	e8 7d e4 ff ff       	call   12d0 <signal@plt>
    2e53:	be 01 00 00 00       	mov    $0x1,%esi
    2e58:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e5d:	e8 6e e4 ff ff       	call   12d0 <signal@plt>
    2e62:	be 01 00 00 00       	mov    $0x1,%esi
    2e67:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2e6c:	e8 5f e4 ff ff       	call   12d0 <signal@plt>
    2e71:	ba 00 00 00 00       	mov    $0x0,%edx
    2e76:	be 01 00 00 00       	mov    $0x1,%esi
    2e7b:	bf 02 00 00 00       	mov    $0x2,%edi
    2e80:	e8 4b e5 ff ff       	call   13d0 <socket@plt>
    2e85:	85 c0                	test   %eax,%eax
    2e87:	0f 88 9c 00 00 00    	js     2f29 <init_driver+0x104>
    2e8d:	89 c3                	mov    %eax,%ebx
    2e8f:	48 8d 3d b3 1a 00 00 	lea    0x1ab3(%rip),%rdi        # 4949 <transition_table+0x509>
    2e96:	e8 45 e4 ff ff       	call   12e0 <gethostbyname@plt>
    2e9b:	48 85 c0             	test   %rax,%rax
    2e9e:	0f 84 d1 00 00 00    	je     2f75 <init_driver+0x150>
    2ea4:	49 89 e4             	mov    %rsp,%r12
    2ea7:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2eae:	00 
    2eaf:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2eb6:	00 00 
    2eb8:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2ebe:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2ec2:	48 8b 40 18          	mov    0x18(%rax),%rax
    2ec6:	48 8b 30             	mov    (%rax),%rsi
    2ec9:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2ece:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2ed3:	e8 18 e4 ff ff       	call   12f0 <__memmove_chk@plt>
    2ed8:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
    2edf:	ba 10 00 00 00       	mov    $0x10,%edx
    2ee4:	4c 89 e6             	mov    %r12,%rsi
    2ee7:	89 df                	mov    %ebx,%edi
    2ee9:	e8 92 e4 ff ff       	call   1380 <connect@plt>
    2eee:	85 c0                	test   %eax,%eax
    2ef0:	0f 88 e7 00 00 00    	js     2fdd <init_driver+0x1b8>
    2ef6:	89 df                	mov    %ebx,%edi
    2ef8:	e8 a3 e3 ff ff       	call   12a0 <close@plt>
    2efd:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2f03:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2f07:	b8 00 00 00 00       	mov    $0x0,%eax
    2f0c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2f11:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2f18:	00 00 
    2f1a:	0f 85 10 01 00 00    	jne    3030 <init_driver+0x20b>
    2f20:	48 83 c4 20          	add    $0x20,%rsp
    2f24:	5b                   	pop    %rbx
    2f25:	5d                   	pop    %rbp
    2f26:	41 5c                	pop    %r12
    2f28:	c3                   	ret    
    2f29:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2f30:	3a 20 43 
    2f33:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2f3a:	20 75 6e 
    2f3d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f41:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f45:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f4c:	74 6f 20 
    2f4f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2f56:	65 20 73 
    2f59:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2f5d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2f61:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2f68:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2f6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2f73:	eb 97                	jmp    2f0c <init_driver+0xe7>
    2f75:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2f7c:	3a 20 44 
    2f7f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2f86:	20 75 6e 
    2f89:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2f8d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2f91:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2f98:	74 6f 20 
    2f9b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2fa2:	76 65 20 
    2fa5:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2fa9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2fad:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2fb4:	72 20 61 
    2fb7:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2fbb:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2fc2:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2fc8:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2fcc:	89 df                	mov    %ebx,%edi
    2fce:	e8 cd e2 ff ff       	call   12a0 <close@plt>
    2fd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fd8:	e9 2f ff ff ff       	jmp    2f0c <init_driver+0xe7>
    2fdd:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2fe4:	3a 20 55 
    2fe7:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2fee:	20 74 6f 
    2ff1:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ff5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ff9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    3000:	65 63 74 
    3003:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    300a:	65 72 76 
    300d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3011:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3015:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    301b:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    301f:	89 df                	mov    %ebx,%edi
    3021:	e8 7a e2 ff ff       	call   12a0 <close@plt>
    3026:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    302b:	e9 dc fe ff ff       	jmp    2f0c <init_driver+0xe7>
    3030:	e8 4b e2 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000003035 <driver_post>:
    3035:	f3 0f 1e fa          	endbr64 
    3039:	53                   	push   %rbx
    303a:	4c 89 cb             	mov    %r9,%rbx
    303d:	45 85 c0             	test   %r8d,%r8d
    3040:	75 18                	jne    305a <driver_post+0x25>
    3042:	48 85 ff             	test   %rdi,%rdi
    3045:	74 05                	je     304c <driver_post+0x17>
    3047:	80 3f 00             	cmpb   $0x0,(%rdi)
    304a:	75 37                	jne    3083 <driver_post+0x4e>
    304c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3051:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3055:	44 89 c0             	mov    %r8d,%eax
    3058:	5b                   	pop    %rbx
    3059:	c3                   	ret    
    305a:	48 89 ca             	mov    %rcx,%rdx
    305d:	48 8d 35 f5 18 00 00 	lea    0x18f5(%rip),%rsi        # 4959 <transition_table+0x519>
    3064:	bf 01 00 00 00       	mov    $0x1,%edi
    3069:	b8 00 00 00 00       	mov    $0x0,%eax
    306e:	e8 cd e2 ff ff       	call   1340 <__printf_chk@plt>
    3073:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3078:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    307c:	b8 00 00 00 00       	mov    $0x0,%eax
    3081:	eb d5                	jmp    3058 <driver_post+0x23>
    3083:	48 83 ec 08          	sub    $0x8,%rsp
    3087:	41 51                	push   %r9
    3089:	49 89 c9             	mov    %rcx,%r9
    308c:	49 89 d0             	mov    %rdx,%r8
    308f:	48 89 f9             	mov    %rdi,%rcx
    3092:	48 89 f2             	mov    %rsi,%rdx
    3095:	be 39 30 00 00       	mov    $0x3039,%esi
    309a:	48 8d 3d a8 18 00 00 	lea    0x18a8(%rip),%rdi        # 4949 <transition_table+0x509>
    30a1:	e8 a1 f5 ff ff       	call   2647 <submitr>
    30a6:	48 83 c4 10          	add    $0x10,%rsp
    30aa:	eb ac                	jmp    3058 <driver_post+0x23>
    30ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000030b0 <__libc_csu_init>:
    30b0:	f3 0f 1e fa          	endbr64 
    30b4:	41 57                	push   %r15
    30b6:	4c 8d 3d 0b 3c 00 00 	lea    0x3c0b(%rip),%r15        # 6cc8 <__frame_dummy_init_array_entry>
    30bd:	41 56                	push   %r14
    30bf:	49 89 d6             	mov    %rdx,%r14
    30c2:	41 55                	push   %r13
    30c4:	49 89 f5             	mov    %rsi,%r13
    30c7:	41 54                	push   %r12
    30c9:	41 89 fc             	mov    %edi,%r12d
    30cc:	55                   	push   %rbp
    30cd:	48 8d 2d fc 3b 00 00 	lea    0x3bfc(%rip),%rbp        # 6cd0 <__do_global_dtors_aux_fini_array_entry>
    30d4:	53                   	push   %rbx
    30d5:	4c 29 fd             	sub    %r15,%rbp
    30d8:	48 83 ec 08          	sub    $0x8,%rsp
    30dc:	e8 1f df ff ff       	call   1000 <_init>
    30e1:	48 c1 fd 03          	sar    $0x3,%rbp
    30e5:	74 1f                	je     3106 <__libc_csu_init+0x56>
    30e7:	31 db                	xor    %ebx,%ebx
    30e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    30f0:	4c 89 f2             	mov    %r14,%rdx
    30f3:	4c 89 ee             	mov    %r13,%rsi
    30f6:	44 89 e7             	mov    %r12d,%edi
    30f9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    30fd:	48 83 c3 01          	add    $0x1,%rbx
    3101:	48 39 dd             	cmp    %rbx,%rbp
    3104:	75 ea                	jne    30f0 <__libc_csu_init+0x40>
    3106:	48 83 c4 08          	add    $0x8,%rsp
    310a:	5b                   	pop    %rbx
    310b:	5d                   	pop    %rbp
    310c:	41 5c                	pop    %r12
    310e:	41 5d                	pop    %r13
    3110:	41 5e                	pop    %r14
    3112:	41 5f                	pop    %r15
    3114:	c3                   	ret    
    3115:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    311c:	00 00 00 00 

0000000000003120 <__libc_csu_fini>:
    3120:	f3 0f 1e fa          	endbr64 
    3124:	c3                   	ret    

Disassembly of section .fini:

0000000000003128 <_fini>:
    3128:	f3 0f 1e fa          	endbr64 
    312c:	48 83 ec 08          	sub    $0x8,%rsp
    3130:	48 83 c4 08          	add    $0x8,%rsp
    3134:	c3                   	ret    
