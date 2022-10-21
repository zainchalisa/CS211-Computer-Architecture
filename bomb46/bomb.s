
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 4e 00 00    	pushq  0x4eca(%rip)        # 5ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 4e 00 00 	bnd jmpq *0x4ecb(%rip)        # 5ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <.plt>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <.plt>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <.plt>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <.plt>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <.plt>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <.plt>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <.plt>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <.plt>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <.plt>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <.plt>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <.plt>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	pushq  $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmpq 1020 <.plt>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	pushq  $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmpq 1020 <.plt>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	pushq  $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmpq 1020 <.plt>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	pushq  $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmpq 1020 <.plt>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	pushq  $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmpq 1020 <.plt>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 4e 00 00 	bnd jmpq *0x4e0d(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 4d 00 00 	bnd jmpq *0x4d05(%rip)        # 5f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcasecmp@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 4c 00 00 	bnd jmpq *0x4cfd(%rip)        # 5f08 <strcasecmp@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <__errno_location@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 4c 00 00 	bnd jmpq *0x4cf5(%rip)        # 5f10 <__errno_location@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <strcpy@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 4c 00 00 	bnd jmpq *0x4ced(%rip)        # 5f18 <strcpy@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <puts@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 4c 00 00 	bnd jmpq *0x4ce5(%rip)        # 5f20 <puts@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <write@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 4c 00 00 	bnd jmpq *0x4cdd(%rip)        # 5f28 <write@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 4c 00 00 	bnd jmpq *0x4cd5(%rip)        # 5f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 4c 00 00 	bnd jmpq *0x4ccd(%rip)        # 5f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 4c 00 00 	bnd jmpq *0x4cc5(%rip)        # 5f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 4c 00 00 	bnd jmpq *0x4cbd(%rip)        # 5f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 4c 00 00 	bnd jmpq *0x4cb5(%rip)        # 5f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <signal@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 4c 00 00 	bnd jmpq *0x4cad(%rip)        # 5f58 <signal@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <gethostbyname@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 4c 00 00 	bnd jmpq *0x4ca5(%rip)        # 5f60 <gethostbyname@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <__memmove_chk@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 4c 00 00 	bnd jmpq *0x4c9d(%rip)        # 5f68 <__memmove_chk@GLIBC_2.3.4>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strtol@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 4c 00 00 	bnd jmpq *0x4c95(%rip)        # 5f70 <strtol@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <fflush@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 4c 00 00 	bnd jmpq *0x4c8d(%rip)        # 5f78 <fflush@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__isoc99_sscanf@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 4c 00 00 	bnd jmpq *0x4c85(%rip)        # 5f80 <__isoc99_sscanf@GLIBC_2.7>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__printf_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 4c 00 00 	bnd jmpq *0x4c7d(%rip)        # 5f88 <__printf_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <fopen@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 4c 00 00 	bnd jmpq *0x4c75(%rip)        # 5f90 <fopen@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <gethostname@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 4c 00 00 	bnd jmpq *0x4c6d(%rip)        # 5f98 <gethostname@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 4c 00 00 	bnd jmpq *0x4c65(%rip)        # 5fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 4c 00 00 	bnd jmpq *0x4c5d(%rip)        # 5fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 4c 00 00 	bnd jmpq *0x4c55(%rip)        # 5fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 4c 00 00 	bnd jmpq *0x4c4d(%rip)        # 5fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 4c 00 00 	bnd jmpq *0x4c45(%rip)        # 5fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 4c 00 00 	bnd jmpq *0x4c3d(%rip)        # 5fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 4c 00 00 	bnd jmpq *0x4c35(%rip)        # 5fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	4c 8d 05 06 19 00 00 	lea    0x1906(%rip),%r8        # 2cc0 <__libc_csu_fini>
    13ba:	48 8d 0d 8f 18 00 00 	lea    0x188f(%rip),%rcx        # 2c50 <__libc_csu_init>
    13c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1489 <main>
    13c8:	ff 15 12 4c 00 00    	callq  *0x4c12(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    13ce:	f4                   	hlt    
    13cf:	90                   	nop

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d a9 52 00 00 	lea    0x52a9(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    13d7:	48 8d 05 a2 52 00 00 	lea    0x52a2(%rip),%rax        # 6680 <stdout@@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 ee 4b 00 00 	mov    0x4bee(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmpq   *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	retq   
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 79 52 00 00 	lea    0x5279(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    1407:	48 8d 35 72 52 00 00 	lea    0x5272(%rip),%rsi        # 6680 <stdout@@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 4b 00 00 	mov    0x4bc5(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmpq   *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	retq   
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 5d 52 00 00 00 	cmpb   $0x0,0x525d(%rip)        # 66a8 <completed.8061>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 4b 00 00 	cmpq   $0x0,0x4ba2(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 4b 00 00 	mov    0x4ba6(%rip),%rdi        # 6008 <__dso_handle>
    1462:	e8 79 fd ff ff       	callq  11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	callq  13d0 <deregister_tm_clones>
    146c:	c6 05 35 52 00 00 01 	movb   $0x1,0x5235(%rip)        # 66a8 <completed.8061>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	retq   
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	retq   
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmpq   1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 f8 00 00 00    	je     158f <main+0x106>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 21 01 00 00    	jne    15c4 <main+0x13b>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 5d fe ff ff       	callq  1310 <fopen@plt>
    14b3:	48 89 05 f6 51 00 00 	mov    %rax,0x51f6(%rip)        # 66b0 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 df 00 00 00    	je     15a2 <main+0x119>
    14c3:	e8 97 06 00 00       	callq  1b5f <initialize_bomb>
    14c8:	48 8d 3d b9 1b 00 00 	lea    0x1bb9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14cf:	e8 5c fd ff ff       	callq  1230 <puts@plt>
    14d4:	48 8d 3d ed 1b 00 00 	lea    0x1bed(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14db:	e8 50 fd ff ff       	callq  1230 <puts@plt>
    14e0:	e8 91 09 00 00       	callq  1e76 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 fa 00 00 00       	callq  15e7 <phase_1>
    14ed:	e8 cc 0a 00 00       	callq  1fbe <phase_defused>
    14f2:	48 8d 3d ff 1b 00 00 	lea    0x1bff(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14f9:	e8 32 fd ff ff       	callq  1230 <puts@plt>
    14fe:	e8 73 09 00 00       	callq  1e76 <read_line>
    1503:	48 89 c7             	mov    %rax,%rdi
    1506:	e8 00 01 00 00       	callq  160b <phase_2>
    150b:	e8 ae 0a 00 00       	callq  1fbe <phase_defused>
    1510:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1517:	e8 14 fd ff ff       	callq  1230 <puts@plt>
    151c:	e8 55 09 00 00       	callq  1e76 <read_line>
    1521:	48 89 c7             	mov    %rax,%rdi
    1524:	e8 54 01 00 00       	callq  167d <phase_3>
    1529:	e8 90 0a 00 00       	callq  1fbe <phase_defused>
    152e:	48 8d 3d 26 1b 00 00 	lea    0x1b26(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1535:	e8 f6 fc ff ff       	callq  1230 <puts@plt>
    153a:	e8 37 09 00 00       	callq  1e76 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 32 02 00 00       	callq  1779 <phase_4>
    1547:	e8 72 0a 00 00       	callq  1fbe <phase_defused>
    154c:	48 8d 3d d5 1b 00 00 	lea    0x1bd5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1553:	e8 d8 fc ff ff       	callq  1230 <puts@plt>
    1558:	e8 19 09 00 00       	callq  1e76 <read_line>
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 8d 02 00 00       	callq  17f2 <phase_5>
    1565:	e8 54 0a 00 00       	callq  1fbe <phase_defused>
    156a:	48 8d 3d f9 1a 00 00 	lea    0x1af9(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1571:	e8 ba fc ff ff       	callq  1230 <puts@plt>
    1576:	e8 fb 08 00 00       	callq  1e76 <read_line>
    157b:	48 89 c7             	mov    %rax,%rdi
    157e:	e8 06 03 00 00       	callq  1889 <phase_6>
    1583:	e8 36 0a 00 00       	callq  1fbe <phase_defused>
    1588:	b8 00 00 00 00       	mov    $0x0,%eax
    158d:	5b                   	pop    %rbx
    158e:	c3                   	retq   
    158f:	48 8b 05 fa 50 00 00 	mov    0x50fa(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    1596:	48 89 05 13 51 00 00 	mov    %rax,0x5113(%rip)        # 66b0 <infile>
    159d:	e9 21 ff ff ff       	jmpq   14c3 <main+0x3a>
    15a2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15a6:	48 8b 13             	mov    (%rbx),%rdx
    15a9:	48 8d 35 56 1a 00 00 	lea    0x1a56(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    15b0:	bf 01 00 00 00       	mov    $0x1,%edi
    15b5:	e8 46 fd ff ff       	callq  1300 <__printf_chk@plt>
    15ba:	bf 08 00 00 00       	mov    $0x8,%edi
    15bf:	e8 6c fd ff ff       	callq  1330 <exit@plt>
    15c4:	48 8b 16             	mov    (%rsi),%rdx
    15c7:	48 8d 35 55 1a 00 00 	lea    0x1a55(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ce:	bf 01 00 00 00       	mov    $0x1,%edi
    15d3:	b8 00 00 00 00       	mov    $0x0,%eax
    15d8:	e8 23 fd ff ff       	callq  1300 <__printf_chk@plt>
    15dd:	bf 08 00 00 00       	mov    $0x8,%edi
    15e2:	e8 49 fd ff ff       	callq  1330 <exit@plt>

00000000000015e7 <phase_1>:
    15e7:	f3 0f 1e fa          	endbr64 
    15eb:	48 83 ec 08          	sub    $0x8,%rsp
    15ef:	48 8d 35 5a 1b 00 00 	lea    0x1b5a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15f6:	e8 04 05 00 00       	callq  1aff <strings_not_equal> 
    15fb:	85 c0                	test   %eax,%eax
    15fd:	75 05                	jne    1604 <phase_1+0x1d>
    15ff:	48 83 c4 08          	add    $0x8,%rsp
    1603:	c3                   	retq   
    1604:	e8 e6 07 00 00       	callq  1def <explode_bomb>
    1609:	eb f4                	jmp    15ff <phase_1+0x18>

000000000000160b <phase_2>:
    160b:	f3 0f 1e fa          	endbr64 
    160f:	55                   	push   %rbp
    1610:	53                   	push   %rbx
    1611:	48 83 ec 28          	sub    $0x28,%rsp
    1615:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    161c:	00 00 
    161e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1623:	31 c0                	xor    %eax,%eax
    1625:	48 89 e6             	mov    %rsp,%rsi
    1628:	e8 04 08 00 00       	callq  1e31 <read_six_numbers>
    162d:	83 3c 24 00          	cmpl   $0x0,(%rsp) 
    1631:	78 0a                	js     163d <phase_2+0x32>
    1633:	48 89 e5             	mov    %rsp,%rbp
    1636:	bb 01 00 00 00       	mov    $0x1,%ebx
    163b:	eb 18                	jmp    1655 <phase_2+0x4a>
    163d:	e8 ad 07 00 00       	callq  1def <explode_bomb>
    1642:	eb ef                	jmp    1633 <phase_2+0x28>
    1644:	e8 a6 07 00 00       	callq  1def <explode_bomb>
    1649:	83 c3 01             	add    $0x1,%ebx 
    164c:	48 83 c5 04          	add    $0x4,%rbp 
    1650:	83 fb 06             	cmp    $0x6,%ebx 
    1653:	74 0c                	je     1661 <phase_2+0x56>
    1655:	89 d8                	mov    %ebx,%eax
    1657:	03 45 00             	add    0x0(%rbp),%eax
    165a:	39 45 04             	cmp    %eax,0x4(%rbp) 
    165d:	74 ea                	je     1649 <phase_2+0x3e>
    165f:	eb e3                	jmp    1644 <phase_2+0x39>
    1661:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1666:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    166d:	00 00 
    166f:	75 07                	jne    1678 <phase_2+0x6d>
    1671:	48 83 c4 28          	add    $0x28,%rsp
    1675:	5b                   	pop    %rbx
    1676:	5d                   	pop    %rbp
    1677:	c3                   	retq   
    1678:	e8 d3 fb ff ff       	callq  1250 <__stack_chk_fail@plt>

000000000000167d <phase_3>:
    167d:	f3 0f 1e fa          	endbr64 
    1681:	48 83 ec 18          	sub    $0x18,%rsp
    1685:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    168c:	00 00 
    168e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1693:	31 c0                	xor    %eax,%eax
    1695:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    169a:	48 89 e2             	mov    %rsp,%rdx
    169d:	48 8d 35 a1 1d 00 00 	lea    0x1da1(%rip),%rsi        # 3445 <array.3473+0x265>
    16a4:	e8 47 fc ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    16a9:	83 f8 01             	cmp    $0x1,%eax
    16ac:	7e 1a                	jle    16c8 <phase_3+0x4b>
    16ae:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    16b2:	77 65                	ja     1719 <phase_3+0x9c>
    16b4:	8b 04 24             	mov    (%rsp),%eax
    16b7:	48 8d 15 02 1b 00 00 	lea    0x1b02(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    16be:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    16c2:	48 01 d0             	add    %rdx,%rax
    16c5:	3e ff e0             	notrack jmpq *%rax
    16c8:	e8 22 07 00 00       	callq  1def <explode_bomb>
    16cd:	eb df                	jmp    16ae <phase_3+0x31>
    16cf:	b8 54 02 00 00       	mov    $0x254,%eax
    16d4:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    16d8:	75 52                	jne    172c <phase_3+0xaf>
    16da:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    16df:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    16e6:	00 00 
    16e8:	75 49                	jne    1733 <phase_3+0xb6>
    16ea:	48 83 c4 18          	add    $0x18,%rsp
    16ee:	c3                   	retq   
    16ef:	b8 b9 01 00 00       	mov    $0x1b9,%eax
    16f4:	eb de                	jmp    16d4 <phase_3+0x57>
    16f6:	b8 36 02 00 00       	mov    $0x236,%eax
    16fb:	eb d7                	jmp    16d4 <phase_3+0x57>
    16fd:	b8 cf 03 00 00       	mov    $0x3cf,%eax
    1702:	eb d0                	jmp    16d4 <phase_3+0x57>
    1704:	b8 bc 03 00 00       	mov    $0x3bc,%eax
    1709:	eb c9                	jmp    16d4 <phase_3+0x57>
    170b:	b8 d6 00 00 00       	mov    $0xd6,%eax
    1710:	eb c2                	jmp    16d4 <phase_3+0x57>
    1712:	b8 14 02 00 00       	mov    $0x214,%eax
    1717:	eb bb                	jmp    16d4 <phase_3+0x57>
    1719:	e8 d1 06 00 00       	callq  1def <explode_bomb>
    171e:	b8 00 00 00 00       	mov    $0x0,%eax
    1723:	eb af                	jmp    16d4 <phase_3+0x57>
    1725:	b8 dd 01 00 00       	mov    $0x1dd,%eax
    172a:	eb a8                	jmp    16d4 <phase_3+0x57>
    172c:	e8 be 06 00 00       	callq  1def <explode_bomb>
    1731:	eb a7                	jmp    16da <phase_3+0x5d>
    1733:	e8 18 fb ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001738 <func4>:
    1738:	f3 0f 1e fa          	endbr64 
    173c:	48 83 ec 08          	sub    $0x8,%rsp
    1740:	89 d0                	mov    %edx,%eax
    1742:	29 f0                	sub    %esi,%eax
    1744:	89 c1                	mov    %eax,%ecx
    1746:	c1 e9 1f             	shr    $0x1f,%ecx
    1749:	01 c1                	add    %eax,%ecx
    174b:	d1 f9                	sar    %ecx
    174d:	01 f1                	add    %esi,%ecx
    174f:	39 f9                	cmp    %edi,%ecx
    1751:	7f 0c                	jg     175f <func4+0x27>
    1753:	b8 00 00 00 00       	mov    $0x0,%eax
    1758:	7c 11                	jl     176b <func4+0x33>
    175a:	48 83 c4 08          	add    $0x8,%rsp
    175e:	c3                   	retq   
    175f:	8d 51 ff             	lea    -0x1(%rcx),%edx
    1762:	e8 d1 ff ff ff       	callq  1738 <func4>
    1767:	01 c0                	add    %eax,%eax
    1769:	eb ef                	jmp    175a <func4+0x22>
    176b:	8d 71 01             	lea    0x1(%rcx),%esi
    176e:	e8 c5 ff ff ff       	callq  1738 <func4>
    1773:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1777:	eb e1                	jmp    175a <func4+0x22>

0000000000001779 <phase_4>:
    1779:	f3 0f 1e fa          	endbr64 
    177d:	48 83 ec 18          	sub    $0x18,%rsp
    1781:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1788:	00 00 
    178a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    178f:	31 c0                	xor    %eax,%eax
    1791:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1796:	48 89 e2             	mov    %rsp,%rdx
    1799:	48 8d 35 a5 1c 00 00 	lea    0x1ca5(%rip),%rsi        # 3445 <array.3473+0x265>
    17a0:	e8 4b fb ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    17a5:	83 f8 02             	cmp    $0x2,%eax
    17a8:	75 06                	jne    17b0 <phase_4+0x37>
    17aa:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    17ae:	76 05                	jbe    17b5 <phase_4+0x3c>
    17b0:	e8 3a 06 00 00       	callq  1def <explode_bomb>
    17b5:	ba 0e 00 00 00       	mov    $0xe,%edx
    17ba:	be 00 00 00 00       	mov    $0x0,%esi
    17bf:	8b 3c 24             	mov    (%rsp),%edi
    17c2:	e8 71 ff ff ff       	callq  1738 <func4>
    17c7:	83 f8 04             	cmp    $0x4,%eax
    17ca:	75 07                	jne    17d3 <phase_4+0x5a>
    17cc:	83 7c 24 04 04       	cmpl   $0x4,0x4(%rsp)
    17d1:	74 05                	je     17d8 <phase_4+0x5f>
    17d3:	e8 17 06 00 00       	callq  1def <explode_bomb>
    17d8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    17dd:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17e4:	00 00 
    17e6:	75 05                	jne    17ed <phase_4+0x74>
    17e8:	48 83 c4 18          	add    $0x18,%rsp
    17ec:	c3                   	retq   
    17ed:	e8 5e fa ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000017f2 <phase_5>:
    17f2:	f3 0f 1e fa          	endbr64 
    17f6:	48 83 ec 18          	sub    $0x18,%rsp
    17fa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1801:	00 00 
    1803:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1808:	31 c0                	xor    %eax,%eax
    180a:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    180f:	48 89 e2             	mov    %rsp,%rdx
    1812:	48 8d 35 2c 1c 00 00 	lea    0x1c2c(%rip),%rsi        # 3445 <array.3473+0x265>
    1819:	e8 d2 fa ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    181e:	83 f8 01             	cmp    $0x1,%eax
    1821:	7e 5a                	jle    187d <phase_5+0x8b>
    1823:	8b 04 24             	mov    (%rsp),%eax
    1826:	83 e0 0f             	and    $0xf,%eax
    1829:	89 04 24             	mov    %eax,(%rsp)
    182c:	83 f8 0f             	cmp    $0xf,%eax
    182f:	74 32                	je     1863 <phase_5+0x71>
    1831:	b9 00 00 00 00       	mov    $0x0,%ecx
    1836:	ba 00 00 00 00       	mov    $0x0,%edx
    183b:	48 8d 35 9e 19 00 00 	lea    0x199e(%rip),%rsi        # 31e0 <array.3473>
    1842:	83 c2 01             	add    $0x1,%edx
    1845:	48 98                	cltq   
    1847:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    184a:	01 c1                	add    %eax,%ecx
    184c:	83 f8 0f             	cmp    $0xf,%eax
    184f:	75 f1                	jne    1842 <phase_5+0x50>
    1851:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1858:	83 fa 0f             	cmp    $0xf,%edx
    185b:	75 06                	jne    1863 <phase_5+0x71>
    185d:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1861:	74 05                	je     1868 <phase_5+0x76>
    1863:	e8 87 05 00 00       	callq  1def <explode_bomb>
    1868:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    186d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1874:	00 00 
    1876:	75 0c                	jne    1884 <phase_5+0x92>
    1878:	48 83 c4 18          	add    $0x18,%rsp
    187c:	c3                   	retq   
    187d:	e8 6d 05 00 00       	callq  1def <explode_bomb>
    1882:	eb 9f                	jmp    1823 <phase_5+0x31>
    1884:	e8 c7 f9 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001889 <phase_6>:
    1889:	f3 0f 1e fa          	endbr64 
    188d:	41 56                	push   %r14
    188f:	41 55                	push   %r13
    1891:	41 54                	push   %r12
    1893:	55                   	push   %rbp
    1894:	53                   	push   %rbx
    1895:	48 83 ec 60          	sub    $0x60,%rsp
    1899:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18a0:	00 00 
    18a2:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    18a7:	31 c0                	xor    %eax,%eax
    18a9:	49 89 e5             	mov    %rsp,%r13
    18ac:	4c 89 ee             	mov    %r13,%rsi
    18af:	e8 7d 05 00 00       	callq  1e31 <read_six_numbers>
    18b4:	41 be 01 00 00 00    	mov    $0x1,%r14d
    18ba:	49 89 e4             	mov    %rsp,%r12
    18bd:	eb 28                	jmp    18e7 <phase_6+0x5e>
    18bf:	e8 2b 05 00 00       	callq  1def <explode_bomb>
    18c4:	eb 30                	jmp    18f6 <phase_6+0x6d>
    18c6:	48 83 c3 01          	add    $0x1,%rbx
    18ca:	83 fb 05             	cmp    $0x5,%ebx
    18cd:	7f 10                	jg     18df <phase_6+0x56>
    18cf:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18d3:	39 45 00             	cmp    %eax,0x0(%rbp)
    18d6:	75 ee                	jne    18c6 <phase_6+0x3d>
    18d8:	e8 12 05 00 00       	callq  1def <explode_bomb>
    18dd:	eb e7                	jmp    18c6 <phase_6+0x3d>
    18df:	49 83 c6 01          	add    $0x1,%r14
    18e3:	49 83 c5 04          	add    $0x4,%r13
    18e7:	4c 89 ed             	mov    %r13,%rbp
    18ea:	41 8b 45 00          	mov    0x0(%r13),%eax
    18ee:	83 e8 01             	sub    $0x1,%eax
    18f1:	83 f8 05             	cmp    $0x5,%eax
    18f4:	77 c9                	ja     18bf <phase_6+0x36>
    18f6:	41 83 fe 05          	cmp    $0x5,%r14d
    18fa:	7f 05                	jg     1901 <phase_6+0x78>
    18fc:	4c 89 f3             	mov    %r14,%rbx
    18ff:	eb ce                	jmp    18cf <phase_6+0x46>
    1901:	be 00 00 00 00       	mov    $0x0,%esi
    1906:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1909:	b8 01 00 00 00       	mov    $0x1,%eax
    190e:	48 8d 15 0b 49 00 00 	lea    0x490b(%rip),%rdx        # 6220 <node1>
    1915:	83 f9 01             	cmp    $0x1,%ecx
    1918:	7e 0b                	jle    1925 <phase_6+0x9c>
    191a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    191e:	83 c0 01             	add    $0x1,%eax
    1921:	39 c8                	cmp    %ecx,%eax
    1923:	75 f5                	jne    191a <phase_6+0x91>
    1925:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    192a:	48 83 c6 01          	add    $0x1,%rsi
    192e:	48 83 fe 06          	cmp    $0x6,%rsi
    1932:	75 d2                	jne    1906 <phase_6+0x7d>
    1934:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1939:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    193e:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1942:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1947:	48 89 50 08          	mov    %rdx,0x8(%rax)
    194b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1950:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1954:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1959:	48 89 50 08          	mov    %rdx,0x8(%rax)
    195d:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1962:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1966:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    196d:	00 
    196e:	bd 05 00 00 00       	mov    $0x5,%ebp
    1973:	eb 09                	jmp    197e <phase_6+0xf5>
    1975:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1979:	83 ed 01             	sub    $0x1,%ebp
    197c:	74 11                	je     198f <phase_6+0x106>
    197e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1982:	8b 00                	mov    (%rax),%eax
    1984:	39 03                	cmp    %eax,(%rbx)
    1986:	7d ed                	jge    1975 <phase_6+0xec>
    1988:	e8 62 04 00 00       	callq  1def <explode_bomb>
    198d:	eb e6                	jmp    1975 <phase_6+0xec>
    198f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1994:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    199b:	00 00 
    199d:	75 0d                	jne    19ac <phase_6+0x123>
    199f:	48 83 c4 60          	add    $0x60,%rsp
    19a3:	5b                   	pop    %rbx
    19a4:	5d                   	pop    %rbp
    19a5:	41 5c                	pop    %r12
    19a7:	41 5d                	pop    %r13
    19a9:	41 5e                	pop    %r14
    19ab:	c3                   	retq   
    19ac:	e8 9f f8 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000019b1 <fun7>:
    19b1:	f3 0f 1e fa          	endbr64 
    19b5:	48 85 ff             	test   %rdi,%rdi
    19b8:	74 32                	je     19ec <fun7+0x3b>
    19ba:	48 83 ec 08          	sub    $0x8,%rsp
    19be:	8b 17                	mov    (%rdi),%edx
    19c0:	39 f2                	cmp    %esi,%edx
    19c2:	7f 0c                	jg     19d0 <fun7+0x1f>
    19c4:	b8 00 00 00 00       	mov    $0x0,%eax
    19c9:	75 12                	jne    19dd <fun7+0x2c>
    19cb:	48 83 c4 08          	add    $0x8,%rsp
    19cf:	c3                   	retq   
    19d0:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    19d4:	e8 d8 ff ff ff       	callq  19b1 <fun7>
    19d9:	01 c0                	add    %eax,%eax
    19db:	eb ee                	jmp    19cb <fun7+0x1a>
    19dd:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    19e1:	e8 cb ff ff ff       	callq  19b1 <fun7>
    19e6:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    19ea:	eb df                	jmp    19cb <fun7+0x1a>
    19ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19f1:	c3                   	retq   

00000000000019f2 <secret_phase>:
    19f2:	f3 0f 1e fa          	endbr64 
    19f6:	53                   	push   %rbx
    19f7:	e8 7a 04 00 00       	callq  1e76 <read_line>
    19fc:	48 89 c7             	mov    %rax,%rdi
    19ff:	ba 0a 00 00 00       	mov    $0xa,%edx
    1a04:	be 00 00 00 00       	mov    $0x0,%esi
    1a09:	e8 c2 f8 ff ff       	callq  12d0 <strtol@plt>
    1a0e:	48 89 c3             	mov    %rax,%rbx
    1a11:	8d 40 ff             	lea    -0x1(%rax),%eax
    1a14:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1a19:	77 26                	ja     1a41 <secret_phase+0x4f>
    1a1b:	89 de                	mov    %ebx,%esi
    1a1d:	48 8d 3d 1c 47 00 00 	lea    0x471c(%rip),%rdi        # 6140 <n1>
    1a24:	e8 88 ff ff ff       	callq  19b1 <fun7>
    1a29:	83 f8 01             	cmp    $0x1,%eax
    1a2c:	75 1a                	jne    1a48 <secret_phase+0x56>
    1a2e:	48 8d 3d 4b 17 00 00 	lea    0x174b(%rip),%rdi        # 3180 <_IO_stdin_used+0x180>
    1a35:	e8 f6 f7 ff ff       	callq  1230 <puts@plt>
    1a3a:	e8 7f 05 00 00       	callq  1fbe <phase_defused>
    1a3f:	5b                   	pop    %rbx
    1a40:	c3                   	retq   
    1a41:	e8 a9 03 00 00       	callq  1def <explode_bomb>
    1a46:	eb d3                	jmp    1a1b <secret_phase+0x29>
    1a48:	e8 a2 03 00 00       	callq  1def <explode_bomb>
    1a4d:	eb df                	jmp    1a2e <secret_phase+0x3c>

0000000000001a4f <sig_handler>:
    1a4f:	f3 0f 1e fa          	endbr64 
    1a53:	50                   	push   %rax
    1a54:	58                   	pop    %rax
    1a55:	48 83 ec 08          	sub    $0x8,%rsp
    1a59:	48 8d 3d c0 17 00 00 	lea    0x17c0(%rip),%rdi        # 3220 <array.3473+0x40>
    1a60:	e8 cb f7 ff ff       	callq  1230 <puts@plt>
    1a65:	bf 03 00 00 00       	mov    $0x3,%edi
    1a6a:	e8 f1 f8 ff ff       	callq  1360 <sleep@plt>
    1a6f:	48 8d 35 4b 19 00 00 	lea    0x194b(%rip),%rsi        # 33c1 <array.3473+0x1e1>
    1a76:	bf 01 00 00 00       	mov    $0x1,%edi
    1a7b:	b8 00 00 00 00       	mov    $0x0,%eax
    1a80:	e8 7b f8 ff ff       	callq  1300 <__printf_chk@plt>
    1a85:	48 8b 3d f4 4b 00 00 	mov    0x4bf4(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    1a8c:	e8 4f f8 ff ff       	callq  12e0 <fflush@plt>
    1a91:	bf 01 00 00 00       	mov    $0x1,%edi
    1a96:	e8 c5 f8 ff ff       	callq  1360 <sleep@plt>
    1a9b:	48 8d 3d 27 19 00 00 	lea    0x1927(%rip),%rdi        # 33c9 <array.3473+0x1e9>
    1aa2:	e8 89 f7 ff ff       	callq  1230 <puts@plt>
    1aa7:	bf 10 00 00 00       	mov    $0x10,%edi
    1aac:	e8 7f f8 ff ff       	callq  1330 <exit@plt>

0000000000001ab1 <invalid_phase>:
    1ab1:	f3 0f 1e fa          	endbr64 
    1ab5:	50                   	push   %rax
    1ab6:	58                   	pop    %rax
    1ab7:	48 83 ec 08          	sub    $0x8,%rsp
    1abb:	48 89 fa             	mov    %rdi,%rdx
    1abe:	48 8d 35 0c 19 00 00 	lea    0x190c(%rip),%rsi        # 33d1 <array.3473+0x1f1>
    1ac5:	bf 01 00 00 00       	mov    $0x1,%edi
    1aca:	b8 00 00 00 00       	mov    $0x0,%eax
    1acf:	e8 2c f8 ff ff       	callq  1300 <__printf_chk@plt>
    1ad4:	bf 08 00 00 00       	mov    $0x8,%edi
    1ad9:	e8 52 f8 ff ff       	callq  1330 <exit@plt>

0000000000001ade <string_length>:
    1ade:	f3 0f 1e fa          	endbr64 
    1ae2:	80 3f 00             	cmpb   $0x0,(%rdi)
    1ae5:	74 12                	je     1af9 <string_length+0x1b>
    1ae7:	b8 00 00 00 00       	mov    $0x0,%eax
    1aec:	48 83 c7 01          	add    $0x1,%rdi
    1af0:	83 c0 01             	add    $0x1,%eax
    1af3:	80 3f 00             	cmpb   $0x0,(%rdi)
    1af6:	75 f4                	jne    1aec <string_length+0xe>
    1af8:	c3                   	retq   
    1af9:	b8 00 00 00 00       	mov    $0x0,%eax
    1afe:	c3                   	retq   

0000000000001aff <strings_not_equal>:
    1aff:	f3 0f 1e fa          	endbr64 
    1b03:	41 54                	push   %r12
    1b05:	55                   	push   %rbp
    1b06:	53                   	push   %rbx
    1b07:	48 89 fb             	mov    %rdi,%rbx
    1b0a:	48 89 f5             	mov    %rsi,%rbp
    1b0d:	e8 cc ff ff ff       	callq  1ade <string_length>
    1b12:	41 89 c4             	mov    %eax,%r12d
    1b15:	48 89 ef             	mov    %rbp,%rdi
    1b18:	e8 c1 ff ff ff       	callq  1ade <string_length>
    1b1d:	89 c2                	mov    %eax,%edx
    1b1f:	b8 01 00 00 00       	mov    $0x1,%eax
    1b24:	41 39 d4             	cmp    %edx,%r12d
    1b27:	75 31                	jne    1b5a <strings_not_equal+0x5b>
    1b29:	0f b6 13             	movzbl (%rbx),%edx
    1b2c:	84 d2                	test   %dl,%dl
    1b2e:	74 1e                	je     1b4e <strings_not_equal+0x4f>
    1b30:	b8 00 00 00 00       	mov    $0x0,%eax
    1b35:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b39:	75 1a                	jne    1b55 <strings_not_equal+0x56>
    1b3b:	48 83 c0 01          	add    $0x1,%rax
    1b3f:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b43:	84 d2                	test   %dl,%dl
    1b45:	75 ee                	jne    1b35 <strings_not_equal+0x36>
    1b47:	b8 00 00 00 00       	mov    $0x0,%eax
    1b4c:	eb 0c                	jmp    1b5a <strings_not_equal+0x5b>
    1b4e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b53:	eb 05                	jmp    1b5a <strings_not_equal+0x5b>
    1b55:	b8 01 00 00 00       	mov    $0x1,%eax
    1b5a:	5b                   	pop    %rbx
    1b5b:	5d                   	pop    %rbp
    1b5c:	41 5c                	pop    %r12
    1b5e:	c3                   	retq   

0000000000001b5f <initialize_bomb>:
    1b5f:	f3 0f 1e fa          	endbr64 
    1b63:	55                   	push   %rbp
    1b64:	53                   	push   %rbx
    1b65:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b6c:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b71:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1b78:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1b7d:	48 83 ec 58          	sub    $0x58,%rsp
    1b81:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b88:	00 00 
    1b8a:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1b91:	00 
    1b92:	31 c0                	xor    %eax,%eax
    1b94:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 1a4f <sig_handler>
    1b9b:	bf 02 00 00 00       	mov    $0x2,%edi
    1ba0:	e8 fb f6 ff ff       	callq  12a0 <signal@plt>
    1ba5:	48 89 e7             	mov    %rsp,%rdi
    1ba8:	be 40 00 00 00       	mov    $0x40,%esi
    1bad:	e8 6e f7 ff ff       	callq  1320 <gethostname@plt>
    1bb2:	85 c0                	test   %eax,%eax
    1bb4:	75 45                	jne    1bfb <initialize_bomb+0x9c>
    1bb6:	48 8b 3d c3 46 00 00 	mov    0x46c3(%rip),%rdi        # 6280 <host_table>
    1bbd:	48 8d 1d c4 46 00 00 	lea    0x46c4(%rip),%rbx        # 6288 <host_table+0x8>
    1bc4:	48 89 e5             	mov    %rsp,%rbp
    1bc7:	48 85 ff             	test   %rdi,%rdi
    1bca:	74 19                	je     1be5 <initialize_bomb+0x86>
    1bcc:	48 89 ee             	mov    %rbp,%rsi
    1bcf:	e8 2c f6 ff ff       	callq  1200 <strcasecmp@plt>
    1bd4:	85 c0                	test   %eax,%eax
    1bd6:	74 5e                	je     1c36 <initialize_bomb+0xd7>
    1bd8:	48 83 c3 08          	add    $0x8,%rbx
    1bdc:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1be0:	48 85 ff             	test   %rdi,%rdi
    1be3:	75 e7                	jne    1bcc <initialize_bomb+0x6d>
    1be5:	48 8d 3d a4 16 00 00 	lea    0x16a4(%rip),%rdi        # 3290 <array.3473+0xb0>
    1bec:	e8 3f f6 ff ff       	callq  1230 <puts@plt>
    1bf1:	bf 08 00 00 00       	mov    $0x8,%edi
    1bf6:	e8 35 f7 ff ff       	callq  1330 <exit@plt>
    1bfb:	48 8d 3d 56 16 00 00 	lea    0x1656(%rip),%rdi        # 3258 <array.3473+0x78>
    1c02:	e8 29 f6 ff ff       	callq  1230 <puts@plt>
    1c07:	bf 08 00 00 00       	mov    $0x8,%edi
    1c0c:	e8 1f f7 ff ff       	callq  1330 <exit@plt>
    1c11:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1c16:	48 8d 35 c5 17 00 00 	lea    0x17c5(%rip),%rsi        # 33e2 <array.3473+0x202>
    1c1d:	bf 01 00 00 00       	mov    $0x1,%edi
    1c22:	b8 00 00 00 00       	mov    $0x0,%eax
    1c27:	e8 d4 f6 ff ff       	callq  1300 <__printf_chk@plt>
    1c2c:	bf 08 00 00 00       	mov    $0x8,%edi
    1c31:	e8 fa f6 ff ff       	callq  1330 <exit@plt>
    1c36:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1c3b:	e8 a2 0d 00 00       	callq  29e2 <init_driver>
    1c40:	85 c0                	test   %eax,%eax
    1c42:	78 cd                	js     1c11 <initialize_bomb+0xb2>
    1c44:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1c4b:	00 
    1c4c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1c53:	00 00 
    1c55:	75 0a                	jne    1c61 <initialize_bomb+0x102>
    1c57:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1c5e:	5b                   	pop    %rbx
    1c5f:	5d                   	pop    %rbp
    1c60:	c3                   	retq   
    1c61:	e8 ea f5 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001c66 <initialize_bomb_solve>:
    1c66:	f3 0f 1e fa          	endbr64 
    1c6a:	c3                   	retq   

0000000000001c6b <blank_line>:
    1c6b:	f3 0f 1e fa          	endbr64 
    1c6f:	55                   	push   %rbp
    1c70:	53                   	push   %rbx
    1c71:	48 83 ec 08          	sub    $0x8,%rsp
    1c75:	48 89 fd             	mov    %rdi,%rbp
    1c78:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1c7c:	84 db                	test   %bl,%bl
    1c7e:	74 1e                	je     1c9e <blank_line+0x33>
    1c80:	e8 eb f6 ff ff       	callq  1370 <__ctype_b_loc@plt>
    1c85:	48 83 c5 01          	add    $0x1,%rbp
    1c89:	48 0f be db          	movsbq %bl,%rbx
    1c8d:	48 8b 00             	mov    (%rax),%rax
    1c90:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1c95:	75 e1                	jne    1c78 <blank_line+0xd>
    1c97:	b8 00 00 00 00       	mov    $0x0,%eax
    1c9c:	eb 05                	jmp    1ca3 <blank_line+0x38>
    1c9e:	b8 01 00 00 00       	mov    $0x1,%eax
    1ca3:	48 83 c4 08          	add    $0x8,%rsp
    1ca7:	5b                   	pop    %rbx
    1ca8:	5d                   	pop    %rbp
    1ca9:	c3                   	retq   

0000000000001caa <skip>:
    1caa:	f3 0f 1e fa          	endbr64 
    1cae:	55                   	push   %rbp
    1caf:	53                   	push   %rbx
    1cb0:	48 83 ec 08          	sub    $0x8,%rsp
    1cb4:	48 8d 2d 05 4a 00 00 	lea    0x4a05(%rip),%rbp        # 66c0 <input_strings>
    1cbb:	48 63 05 ea 49 00 00 	movslq 0x49ea(%rip),%rax        # 66ac <num_input_strings>
    1cc2:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1cc6:	48 c1 e7 04          	shl    $0x4,%rdi
    1cca:	48 01 ef             	add    %rbp,%rdi
    1ccd:	48 8b 15 dc 49 00 00 	mov    0x49dc(%rip),%rdx        # 66b0 <infile>
    1cd4:	be 50 00 00 00       	mov    $0x50,%esi
    1cd9:	e8 b2 f5 ff ff       	callq  1290 <fgets@plt>
    1cde:	48 89 c3             	mov    %rax,%rbx
    1ce1:	48 85 c0             	test   %rax,%rax
    1ce4:	74 0c                	je     1cf2 <skip+0x48>
    1ce6:	48 89 c7             	mov    %rax,%rdi
    1ce9:	e8 7d ff ff ff       	callq  1c6b <blank_line>
    1cee:	85 c0                	test   %eax,%eax
    1cf0:	75 c9                	jne    1cbb <skip+0x11>
    1cf2:	48 89 d8             	mov    %rbx,%rax
    1cf5:	48 83 c4 08          	add    $0x8,%rsp
    1cf9:	5b                   	pop    %rbx
    1cfa:	5d                   	pop    %rbp
    1cfb:	c3                   	retq   

0000000000001cfc <send_msg>:
    1cfc:	f3 0f 1e fa          	endbr64 
    1d00:	53                   	push   %rbx
    1d01:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1d08:	ff 
    1d09:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1d10:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1d15:	4c 39 dc             	cmp    %r11,%rsp
    1d18:	75 ef                	jne    1d09 <send_msg+0xd>
    1d1a:	48 83 ec 10          	sub    $0x10,%rsp
    1d1e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d25:	00 00 
    1d27:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1d2e:	00 
    1d2f:	31 c0                	xor    %eax,%eax
    1d31:	8b 15 75 49 00 00    	mov    0x4975(%rip),%edx        # 66ac <num_input_strings>
    1d37:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1d3a:	48 98                	cltq   
    1d3c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1d40:	48 c1 e0 04          	shl    $0x4,%rax
    1d44:	48 8d 0d 75 49 00 00 	lea    0x4975(%rip),%rcx        # 66c0 <input_strings>
    1d4b:	48 01 c8             	add    %rcx,%rax
    1d4e:	85 ff                	test   %edi,%edi
    1d50:	4c 8d 0d a5 16 00 00 	lea    0x16a5(%rip),%r9        # 33fc <array.3473+0x21c>
    1d57:	48 8d 0d a6 16 00 00 	lea    0x16a6(%rip),%rcx        # 3404 <array.3473+0x224>
    1d5e:	4c 0f 44 c9          	cmove  %rcx,%r9
    1d62:	48 89 e3             	mov    %rsp,%rbx
    1d65:	50                   	push   %rax
    1d66:	52                   	push   %rdx
    1d67:	44 8b 05 ce 43 00 00 	mov    0x43ce(%rip),%r8d        # 613c <bomb_id>
    1d6e:	48 8d 0d 98 16 00 00 	lea    0x1698(%rip),%rcx        # 340d <array.3473+0x22d>
    1d75:	ba 00 20 00 00       	mov    $0x2000,%edx
    1d7a:	be 01 00 00 00       	mov    $0x1,%esi
    1d7f:	48 89 df             	mov    %rbx,%rdi
    1d82:	b8 00 00 00 00       	mov    $0x0,%eax
    1d87:	e8 f4 f5 ff ff       	callq  1380 <__sprintf_chk@plt>
    1d8c:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1d93:	00 
    1d94:	b9 00 00 00 00       	mov    $0x0,%ecx
    1d99:	48 89 da             	mov    %rbx,%rdx
    1d9c:	48 8d 35 7d 43 00 00 	lea    0x437d(%rip),%rsi        # 6120 <user_password>
    1da3:	48 8d 3d 8b 43 00 00 	lea    0x438b(%rip),%rdi        # 6135 <userid>
    1daa:	e8 28 0e 00 00       	callq  2bd7 <driver_post>
    1daf:	48 83 c4 10          	add    $0x10,%rsp
    1db3:	85 c0                	test   %eax,%eax
    1db5:	78 1c                	js     1dd3 <send_msg+0xd7>
    1db7:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1dbe:	00 
    1dbf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1dc6:	00 00 
    1dc8:	75 20                	jne    1dea <send_msg+0xee>
    1dca:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1dd1:	5b                   	pop    %rbx
    1dd2:	c3                   	retq   
    1dd3:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1dda:	00 
    1ddb:	e8 50 f4 ff ff       	callq  1230 <puts@plt>
    1de0:	bf 00 00 00 00       	mov    $0x0,%edi
    1de5:	e8 46 f5 ff ff       	callq  1330 <exit@plt>
    1dea:	e8 61 f4 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001def <explode_bomb>:
    1def:	f3 0f 1e fa          	endbr64 
    1df3:	50                   	push   %rax
    1df4:	58                   	pop    %rax
    1df5:	48 83 ec 08          	sub    $0x8,%rsp
    1df9:	48 8d 3d 19 16 00 00 	lea    0x1619(%rip),%rdi        # 3419 <array.3473+0x239>
    1e00:	e8 2b f4 ff ff       	callq  1230 <puts@plt>
    1e05:	48 8d 3d 16 16 00 00 	lea    0x1616(%rip),%rdi        # 3422 <array.3473+0x242>
    1e0c:	e8 1f f4 ff ff       	callq  1230 <puts@plt>
    1e11:	bf 00 00 00 00       	mov    $0x0,%edi
    1e16:	e8 e1 fe ff ff       	callq  1cfc <send_msg>
    1e1b:	48 8d 3d a6 14 00 00 	lea    0x14a6(%rip),%rdi        # 32c8 <array.3473+0xe8>
    1e22:	e8 09 f4 ff ff       	callq  1230 <puts@plt>
    1e27:	bf 08 00 00 00       	mov    $0x8,%edi
    1e2c:	e8 ff f4 ff ff       	callq  1330 <exit@plt>

0000000000001e31 <read_six_numbers>:
    1e31:	f3 0f 1e fa          	endbr64 
    1e35:	48 83 ec 08          	sub    $0x8,%rsp
    1e39:	48 89 f2             	mov    %rsi,%rdx
    1e3c:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1e40:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1e44:	50                   	push   %rax
    1e45:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1e49:	50                   	push   %rax
    1e4a:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1e4e:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1e52:	48 8d 35 e0 15 00 00 	lea    0x15e0(%rip),%rsi        # 3439 <array.3473+0x259>
    1e59:	b8 00 00 00 00       	mov    $0x0,%eax
    1e5e:	e8 8d f4 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    1e63:	48 83 c4 10          	add    $0x10,%rsp
    1e67:	83 f8 05             	cmp    $0x5,%eax
    1e6a:	7e 05                	jle    1e71 <read_six_numbers+0x40>
    1e6c:	48 83 c4 08          	add    $0x8,%rsp
    1e70:	c3                   	retq   
    1e71:	e8 79 ff ff ff       	callq  1def <explode_bomb>

0000000000001e76 <read_line>:
    1e76:	f3 0f 1e fa          	endbr64 
    1e7a:	48 83 ec 08          	sub    $0x8,%rsp
    1e7e:	b8 00 00 00 00       	mov    $0x0,%eax
    1e83:	e8 22 fe ff ff       	callq  1caa <skip>
    1e88:	48 85 c0             	test   %rax,%rax
    1e8b:	74 6f                	je     1efc <read_line+0x86>
    1e8d:	8b 35 19 48 00 00    	mov    0x4819(%rip),%esi        # 66ac <num_input_strings>
    1e93:	48 63 c6             	movslq %esi,%rax
    1e96:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1e9a:	48 c1 e2 04          	shl    $0x4,%rdx
    1e9e:	48 8d 05 1b 48 00 00 	lea    0x481b(%rip),%rax        # 66c0 <input_strings>
    1ea5:	48 01 c2             	add    %rax,%rdx
    1ea8:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1eaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1eb4:	48 89 d7             	mov    %rdx,%rdi
    1eb7:	f2 ae                	repnz scas %es:(%rdi),%al
    1eb9:	48 f7 d1             	not    %rcx
    1ebc:	48 83 e9 01          	sub    $0x1,%rcx
    1ec0:	83 f9 4e             	cmp    $0x4e,%ecx
    1ec3:	0f 8f ab 00 00 00    	jg     1f74 <read_line+0xfe>
    1ec9:	83 e9 01             	sub    $0x1,%ecx
    1ecc:	48 63 c9             	movslq %ecx,%rcx
    1ecf:	48 63 c6             	movslq %esi,%rax
    1ed2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ed6:	48 c1 e0 04          	shl    $0x4,%rax
    1eda:	48 89 c7             	mov    %rax,%rdi
    1edd:	48 8d 05 dc 47 00 00 	lea    0x47dc(%rip),%rax        # 66c0 <input_strings>
    1ee4:	48 01 f8             	add    %rdi,%rax
    1ee7:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1eeb:	83 c6 01             	add    $0x1,%esi
    1eee:	89 35 b8 47 00 00    	mov    %esi,0x47b8(%rip)        # 66ac <num_input_strings>
    1ef4:	48 89 d0             	mov    %rdx,%rax
    1ef7:	48 83 c4 08          	add    $0x8,%rsp
    1efb:	c3                   	retq   
    1efc:	48 8b 05 8d 47 00 00 	mov    0x478d(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    1f03:	48 39 05 a6 47 00 00 	cmp    %rax,0x47a6(%rip)        # 66b0 <infile>
    1f0a:	74 1b                	je     1f27 <read_line+0xb1>
    1f0c:	48 8d 3d 56 15 00 00 	lea    0x1556(%rip),%rdi        # 3469 <array.3473+0x289>
    1f13:	e8 d8 f2 ff ff       	callq  11f0 <getenv@plt>
    1f18:	48 85 c0             	test   %rax,%rax
    1f1b:	74 20                	je     1f3d <read_line+0xc7>
    1f1d:	bf 00 00 00 00       	mov    $0x0,%edi
    1f22:	e8 09 f4 ff ff       	callq  1330 <exit@plt>
    1f27:	48 8d 3d 1d 15 00 00 	lea    0x151d(%rip),%rdi        # 344b <array.3473+0x26b>
    1f2e:	e8 fd f2 ff ff       	callq  1230 <puts@plt>
    1f33:	bf 08 00 00 00       	mov    $0x8,%edi
    1f38:	e8 f3 f3 ff ff       	callq  1330 <exit@plt>
    1f3d:	48 8b 05 4c 47 00 00 	mov    0x474c(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    1f44:	48 89 05 65 47 00 00 	mov    %rax,0x4765(%rip)        # 66b0 <infile>
    1f4b:	b8 00 00 00 00       	mov    $0x0,%eax
    1f50:	e8 55 fd ff ff       	callq  1caa <skip>
    1f55:	48 85 c0             	test   %rax,%rax
    1f58:	0f 85 2f ff ff ff    	jne    1e8d <read_line+0x17>
    1f5e:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 344b <array.3473+0x26b>
    1f65:	e8 c6 f2 ff ff       	callq  1230 <puts@plt>
    1f6a:	bf 00 00 00 00       	mov    $0x0,%edi
    1f6f:	e8 bc f3 ff ff       	callq  1330 <exit@plt>
    1f74:	48 8d 3d f9 14 00 00 	lea    0x14f9(%rip),%rdi        # 3474 <array.3473+0x294>
    1f7b:	e8 b0 f2 ff ff       	callq  1230 <puts@plt>
    1f80:	8b 05 26 47 00 00    	mov    0x4726(%rip),%eax        # 66ac <num_input_strings>
    1f86:	8d 50 01             	lea    0x1(%rax),%edx
    1f89:	89 15 1d 47 00 00    	mov    %edx,0x471d(%rip)        # 66ac <num_input_strings>
    1f8f:	48 98                	cltq   
    1f91:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1f95:	48 8d 15 24 47 00 00 	lea    0x4724(%rip),%rdx        # 66c0 <input_strings>
    1f9c:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1fa3:	75 6e 63 
    1fa6:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1fad:	2a 2a 00 
    1fb0:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1fb4:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1fb9:	e8 31 fe ff ff       	callq  1def <explode_bomb>

0000000000001fbe <phase_defused>:
    1fbe:	f3 0f 1e fa          	endbr64 
    1fc2:	48 83 ec 78          	sub    $0x78,%rsp
    1fc6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fcd:	00 00 
    1fcf:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1fd4:	31 c0                	xor    %eax,%eax
    1fd6:	bf 01 00 00 00       	mov    $0x1,%edi
    1fdb:	e8 1c fd ff ff       	callq  1cfc <send_msg>
    1fe0:	83 3d c5 46 00 00 06 	cmpl   $0x6,0x46c5(%rip)        # 66ac <num_input_strings>
    1fe7:	74 19                	je     2002 <phase_defused+0x44>
    1fe9:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1fee:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1ff5:	00 00 
    1ff7:	0f 85 84 00 00 00    	jne    2081 <phase_defused+0xc3>
    1ffd:	48 83 c4 78          	add    $0x78,%rsp
    2001:	c3                   	retq   
    2002:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2007:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    200c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    2011:	48 8d 35 77 14 00 00 	lea    0x1477(%rip),%rsi        # 348f <array.3473+0x2af>
    2018:	48 8d 3d 91 47 00 00 	lea    0x4791(%rip),%rdi        # 67b0 <input_strings+0xf0>
    201f:	b8 00 00 00 00       	mov    $0x0,%eax
    2024:	e8 c7 f2 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    2029:	83 f8 03             	cmp    $0x3,%eax
    202c:	74 1a                	je     2048 <phase_defused+0x8a>
    202e:	48 8d 3d 1b 13 00 00 	lea    0x131b(%rip),%rdi        # 3350 <array.3473+0x170>
    2035:	e8 f6 f1 ff ff       	callq  1230 <puts@plt>
    203a:	48 8d 3d 3f 13 00 00 	lea    0x133f(%rip),%rdi        # 3380 <array.3473+0x1a0>
    2041:	e8 ea f1 ff ff       	callq  1230 <puts@plt>
    2046:	eb a1                	jmp    1fe9 <phase_defused+0x2b>
    2048:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    204d:	48 8d 35 44 14 00 00 	lea    0x1444(%rip),%rsi        # 3498 <array.3473+0x2b8>
    2054:	e8 a6 fa ff ff       	callq  1aff <strings_not_equal>
    2059:	85 c0                	test   %eax,%eax
    205b:	75 d1                	jne    202e <phase_defused+0x70>
    205d:	48 8d 3d 8c 12 00 00 	lea    0x128c(%rip),%rdi        # 32f0 <array.3473+0x110>
    2064:	e8 c7 f1 ff ff       	callq  1230 <puts@plt>
    2069:	48 8d 3d a8 12 00 00 	lea    0x12a8(%rip),%rdi        # 3318 <array.3473+0x138>
    2070:	e8 bb f1 ff ff       	callq  1230 <puts@plt>
    2075:	b8 00 00 00 00       	mov    $0x0,%eax
    207a:	e8 73 f9 ff ff       	callq  19f2 <secret_phase>
    207f:	eb ad                	jmp    202e <phase_defused+0x70>
    2081:	e8 ca f1 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002086 <sigalrm_handler>:
    2086:	f3 0f 1e fa          	endbr64 
    208a:	50                   	push   %rax
    208b:	58                   	pop    %rax
    208c:	48 83 ec 08          	sub    $0x8,%rsp
    2090:	b9 00 00 00 00       	mov    $0x0,%ecx
    2095:	48 8d 15 cc 14 00 00 	lea    0x14cc(%rip),%rdx        # 3568 <array.3473+0x388>
    209c:	be 01 00 00 00       	mov    $0x1,%esi
    20a1:	48 8b 3d f8 45 00 00 	mov    0x45f8(%rip),%rdi        # 66a0 <stderr@@GLIBC_2.2.5>
    20a8:	b8 00 00 00 00       	mov    $0x0,%eax
    20ad:	e8 9e f2 ff ff       	callq  1350 <__fprintf_chk@plt>
    20b2:	bf 01 00 00 00       	mov    $0x1,%edi
    20b7:	e8 74 f2 ff ff       	callq  1330 <exit@plt>

00000000000020bc <rio_readlineb>:
    20bc:	41 56                	push   %r14
    20be:	41 55                	push   %r13
    20c0:	41 54                	push   %r12
    20c2:	55                   	push   %rbp
    20c3:	53                   	push   %rbx
    20c4:	48 89 f5             	mov    %rsi,%rbp
    20c7:	48 83 fa 01          	cmp    $0x1,%rdx
    20cb:	0f 86 90 00 00 00    	jbe    2161 <rio_readlineb+0xa5>
    20d1:	48 89 fb             	mov    %rdi,%rbx
    20d4:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    20d9:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    20df:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    20e3:	eb 54                	jmp    2139 <rio_readlineb+0x7d>
    20e5:	e8 26 f1 ff ff       	callq  1210 <__errno_location@plt>
    20ea:	83 38 04             	cmpl   $0x4,(%rax)
    20ed:	75 53                	jne    2142 <rio_readlineb+0x86>
    20ef:	ba 00 20 00 00       	mov    $0x2000,%edx
    20f4:	4c 89 e6             	mov    %r12,%rsi
    20f7:	8b 3b                	mov    (%rbx),%edi
    20f9:	e8 82 f1 ff ff       	callq  1280 <read@plt>
    20fe:	89 c2                	mov    %eax,%edx
    2100:	89 43 04             	mov    %eax,0x4(%rbx)
    2103:	85 c0                	test   %eax,%eax
    2105:	78 de                	js     20e5 <rio_readlineb+0x29>
    2107:	85 c0                	test   %eax,%eax
    2109:	74 40                	je     214b <rio_readlineb+0x8f>
    210b:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    210f:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2113:	0f b6 08             	movzbl (%rax),%ecx
    2116:	48 83 c0 01          	add    $0x1,%rax
    211a:	48 89 43 08          	mov    %rax,0x8(%rbx)
    211e:	83 ea 01             	sub    $0x1,%edx
    2121:	89 53 04             	mov    %edx,0x4(%rbx)
    2124:	48 83 c5 01          	add    $0x1,%rbp
    2128:	88 4d ff             	mov    %cl,-0x1(%rbp)
    212b:	80 f9 0a             	cmp    $0xa,%cl
    212e:	74 3c                	je     216c <rio_readlineb+0xb0>
    2130:	41 83 c5 01          	add    $0x1,%r13d
    2134:	4c 39 f5             	cmp    %r14,%rbp
    2137:	74 30                	je     2169 <rio_readlineb+0xad>
    2139:	8b 53 04             	mov    0x4(%rbx),%edx
    213c:	85 d2                	test   %edx,%edx
    213e:	7e af                	jle    20ef <rio_readlineb+0x33>
    2140:	eb cd                	jmp    210f <rio_readlineb+0x53>
    2142:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2149:	eb 05                	jmp    2150 <rio_readlineb+0x94>
    214b:	b8 00 00 00 00       	mov    $0x0,%eax
    2150:	85 c0                	test   %eax,%eax
    2152:	75 28                	jne    217c <rio_readlineb+0xc0>
    2154:	b8 00 00 00 00       	mov    $0x0,%eax
    2159:	41 83 fd 01          	cmp    $0x1,%r13d
    215d:	75 0d                	jne    216c <rio_readlineb+0xb0>
    215f:	eb 12                	jmp    2173 <rio_readlineb+0xb7>
    2161:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2167:	eb 03                	jmp    216c <rio_readlineb+0xb0>
    2169:	4c 89 f5             	mov    %r14,%rbp
    216c:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    2170:	49 63 c5             	movslq %r13d,%rax
    2173:	5b                   	pop    %rbx
    2174:	5d                   	pop    %rbp
    2175:	41 5c                	pop    %r12
    2177:	41 5d                	pop    %r13
    2179:	41 5e                	pop    %r14
    217b:	c3                   	retq   
    217c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2183:	eb ee                	jmp    2173 <rio_readlineb+0xb7>

0000000000002185 <submitr>:
    2185:	f3 0f 1e fa          	endbr64 
    2189:	41 57                	push   %r15
    218b:	41 56                	push   %r14
    218d:	41 55                	push   %r13
    218f:	41 54                	push   %r12
    2191:	55                   	push   %rbp
    2192:	53                   	push   %rbx
    2193:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    219a:	ff 
    219b:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    21a2:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    21a7:	4c 39 dc             	cmp    %r11,%rsp
    21aa:	75 ef                	jne    219b <submitr+0x16>
    21ac:	48 83 ec 68          	sub    $0x68,%rsp
    21b0:	49 89 fd             	mov    %rdi,%r13
    21b3:	89 f5                	mov    %esi,%ebp
    21b5:	48 89 14 24          	mov    %rdx,(%rsp)
    21b9:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    21be:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    21c3:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    21c8:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    21cf:	00 
    21d0:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    21d7:	00 
    21d8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    21df:	00 00 
    21e1:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    21e8:	00 
    21e9:	31 c0                	xor    %eax,%eax
    21eb:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    21f2:	00 
    21f3:	ba 00 00 00 00       	mov    $0x0,%edx
    21f8:	be 01 00 00 00       	mov    $0x1,%esi
    21fd:	bf 02 00 00 00       	mov    $0x2,%edi
    2202:	e8 89 f1 ff ff       	callq  1390 <socket@plt>
    2207:	85 c0                	test   %eax,%eax
    2209:	0f 88 17 01 00 00    	js     2326 <submitr+0x1a1>
    220f:	41 89 c4             	mov    %eax,%r12d
    2212:	4c 89 ef             	mov    %r13,%rdi
    2215:	e8 96 f0 ff ff       	callq  12b0 <gethostbyname@plt>
    221a:	48 85 c0             	test   %rax,%rax
    221d:	0f 84 53 01 00 00    	je     2376 <submitr+0x1f1>
    2223:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    2228:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    222f:	00 00 
    2231:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    2238:	00 00 
    223a:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    2241:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2245:	48 8b 40 18          	mov    0x18(%rax),%rax
    2249:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    224e:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2253:	48 8b 30             	mov    (%rax),%rsi
    2256:	e8 65 f0 ff ff       	callq  12c0 <__memmove_chk@plt>
    225b:	66 c1 c5 08          	rol    $0x8,%bp
    225f:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    2264:	ba 10 00 00 00       	mov    $0x10,%edx
    2269:	4c 89 ee             	mov    %r13,%rsi
    226c:	44 89 e7             	mov    %r12d,%edi
    226f:	e8 cc f0 ff ff       	callq  1340 <connect@plt>
    2274:	85 c0                	test   %eax,%eax
    2276:	0f 88 65 01 00 00    	js     23e1 <submitr+0x25c>
    227c:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    2283:	b8 00 00 00 00       	mov    $0x0,%eax
    2288:	4c 89 c9             	mov    %r9,%rcx
    228b:	48 89 df             	mov    %rbx,%rdi
    228e:	f2 ae                	repnz scas %es:(%rdi),%al
    2290:	48 f7 d1             	not    %rcx
    2293:	48 89 ce             	mov    %rcx,%rsi
    2296:	4c 89 c9             	mov    %r9,%rcx
    2299:	48 8b 3c 24          	mov    (%rsp),%rdi
    229d:	f2 ae                	repnz scas %es:(%rdi),%al
    229f:	49 89 c8             	mov    %rcx,%r8
    22a2:	4c 89 c9             	mov    %r9,%rcx
    22a5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    22aa:	f2 ae                	repnz scas %es:(%rdi),%al
    22ac:	48 89 ca             	mov    %rcx,%rdx
    22af:	48 f7 d2             	not    %rdx
    22b2:	4c 89 c9             	mov    %r9,%rcx
    22b5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    22ba:	f2 ae                	repnz scas %es:(%rdi),%al
    22bc:	4c 29 c2             	sub    %r8,%rdx
    22bf:	48 29 ca             	sub    %rcx,%rdx
    22c2:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    22c7:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    22cc:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    22d2:	0f 87 66 01 00 00    	ja     243e <submitr+0x2b9>
    22d8:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    22df:	00 
    22e0:	b9 00 04 00 00       	mov    $0x400,%ecx
    22e5:	b8 00 00 00 00       	mov    $0x0,%eax
    22ea:	48 89 d7             	mov    %rdx,%rdi
    22ed:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    22f0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    22f7:	48 89 df             	mov    %rbx,%rdi
    22fa:	f2 ae                	repnz scas %es:(%rdi),%al
    22fc:	48 f7 d1             	not    %rcx
    22ff:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    2303:	83 f9 01             	cmp    $0x1,%ecx
    2306:	0f 84 08 05 00 00    	je     2814 <submitr+0x68f>
    230c:	8d 40 ff             	lea    -0x1(%rax),%eax
    230f:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    2314:	48 89 d5             	mov    %rdx,%rbp
    2317:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    231e:	00 20 00 
    2321:	e9 a6 01 00 00       	jmpq   24cc <submitr+0x347>
    2326:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    232d:	3a 20 43 
    2330:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2337:	20 75 6e 
    233a:	49 89 07             	mov    %rax,(%r15)
    233d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2341:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2348:	74 6f 20 
    234b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2352:	65 20 73 
    2355:	49 89 47 10          	mov    %rax,0x10(%r15)
    2359:	49 89 57 18          	mov    %rdx,0x18(%r15)
    235d:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2364:	65 
    2365:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    236c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2371:	e9 16 03 00 00       	jmpq   268c <submitr+0x507>
    2376:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    237d:	3a 20 44 
    2380:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2387:	20 75 6e 
    238a:	49 89 07             	mov    %rax,(%r15)
    238d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2391:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2398:	74 6f 20 
    239b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    23a2:	76 65 20 
    23a5:	49 89 47 10          	mov    %rax,0x10(%r15)
    23a9:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23ad:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    23b4:	72 20 61 
    23b7:	49 89 47 20          	mov    %rax,0x20(%r15)
    23bb:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    23c2:	65 
    23c3:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    23ca:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    23cf:	44 89 e7             	mov    %r12d,%edi
    23d2:	e8 99 ee ff ff       	callq  1270 <close@plt>
    23d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23dc:	e9 ab 02 00 00       	jmpq   268c <submitr+0x507>
    23e1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    23e8:	3a 20 55 
    23eb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    23f2:	20 74 6f 
    23f5:	49 89 07             	mov    %rax,(%r15)
    23f8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23fc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2403:	65 63 74 
    2406:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    240d:	68 65 20 
    2410:	49 89 47 10          	mov    %rax,0x10(%r15)
    2414:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2418:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    241f:	76 
    2420:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2427:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    242c:	44 89 e7             	mov    %r12d,%edi
    242f:	e8 3c ee ff ff       	callq  1270 <close@plt>
    2434:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2439:	e9 4e 02 00 00       	jmpq   268c <submitr+0x507>
    243e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2445:	3a 20 52 
    2448:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    244f:	20 73 74 
    2452:	49 89 07             	mov    %rax,(%r15)
    2455:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2459:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2460:	74 6f 6f 
    2463:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    246a:	65 2e 20 
    246d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2471:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2475:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    247c:	61 73 65 
    247f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2486:	49 54 52 
    2489:	49 89 47 20          	mov    %rax,0x20(%r15)
    248d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2491:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2498:	55 46 00 
    249b:	49 89 47 30          	mov    %rax,0x30(%r15)
    249f:	44 89 e7             	mov    %r12d,%edi
    24a2:	e8 c9 ed ff ff       	callq  1270 <close@plt>
    24a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24ac:	e9 db 01 00 00       	jmpq   268c <submitr+0x507>
    24b1:	49 0f a3 c5          	bt     %rax,%r13
    24b5:	73 21                	jae    24d8 <submitr+0x353>
    24b7:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    24bb:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24bf:	48 83 c3 01          	add    $0x1,%rbx
    24c3:	4c 39 f3             	cmp    %r14,%rbx
    24c6:	0f 84 48 03 00 00    	je     2814 <submitr+0x68f>
    24cc:	44 0f b6 03          	movzbl (%rbx),%r8d
    24d0:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    24d4:	3c 35                	cmp    $0x35,%al
    24d6:	76 d9                	jbe    24b1 <submitr+0x32c>
    24d8:	44 89 c0             	mov    %r8d,%eax
    24db:	83 e0 df             	and    $0xffffffdf,%eax
    24de:	83 e8 41             	sub    $0x41,%eax
    24e1:	3c 19                	cmp    $0x19,%al
    24e3:	76 d2                	jbe    24b7 <submitr+0x332>
    24e5:	41 80 f8 20          	cmp    $0x20,%r8b
    24e9:	74 63                	je     254e <submitr+0x3c9>
    24eb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    24ef:	3c 5f                	cmp    $0x5f,%al
    24f1:	76 0a                	jbe    24fd <submitr+0x378>
    24f3:	41 80 f8 09          	cmp    $0x9,%r8b
    24f7:	0f 85 8a 02 00 00    	jne    2787 <submitr+0x602>
    24fd:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    2504:	00 
    2505:	45 0f b6 c0          	movzbl %r8b,%r8d
    2509:	48 8d 0d 2e 11 00 00 	lea    0x112e(%rip),%rcx        # 363e <array.3473+0x45e>
    2510:	ba 08 00 00 00       	mov    $0x8,%edx
    2515:	be 01 00 00 00       	mov    $0x1,%esi
    251a:	b8 00 00 00 00       	mov    $0x0,%eax
    251f:	e8 5c ee ff ff       	callq  1380 <__sprintf_chk@plt>
    2524:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    252b:	00 
    252c:	88 45 00             	mov    %al,0x0(%rbp)
    252f:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    2536:	00 
    2537:	88 45 01             	mov    %al,0x1(%rbp)
    253a:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    2541:	00 
    2542:	88 45 02             	mov    %al,0x2(%rbp)
    2545:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2549:	e9 71 ff ff ff       	jmpq   24bf <submitr+0x33a>
    254e:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2552:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2556:	e9 64 ff ff ff       	jmpq   24bf <submitr+0x33a>
    255b:	48 01 c5             	add    %rax,%rbp
    255e:	48 29 c3             	sub    %rax,%rbx
    2561:	0f 84 25 03 00 00    	je     288c <submitr+0x707>
    2567:	48 89 da             	mov    %rbx,%rdx
    256a:	48 89 ee             	mov    %rbp,%rsi
    256d:	44 89 e7             	mov    %r12d,%edi
    2570:	e8 cb ec ff ff       	callq  1240 <write@plt>
    2575:	48 85 c0             	test   %rax,%rax
    2578:	7f e1                	jg     255b <submitr+0x3d6>
    257a:	e8 91 ec ff ff       	callq  1210 <__errno_location@plt>
    257f:	83 38 04             	cmpl   $0x4,(%rax)
    2582:	0f 85 a0 01 00 00    	jne    2728 <submitr+0x5a3>
    2588:	4c 89 e8             	mov    %r13,%rax
    258b:	eb ce                	jmp    255b <submitr+0x3d6>
    258d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2594:	3a 20 43 
    2597:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    259e:	20 75 6e 
    25a1:	49 89 07             	mov    %rax,(%r15)
    25a4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25a8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    25af:	74 6f 20 
    25b2:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    25b9:	66 69 72 
    25bc:	49 89 47 10          	mov    %rax,0x10(%r15)
    25c0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25c4:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    25cb:	61 64 65 
    25ce:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    25d5:	6d 20 73 
    25d8:	49 89 47 20          	mov    %rax,0x20(%r15)
    25dc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25e0:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    25e7:	65 
    25e8:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    25ef:	44 89 e7             	mov    %r12d,%edi
    25f2:	e8 79 ec ff ff       	callq  1270 <close@plt>
    25f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25fc:	e9 8b 00 00 00       	jmpq   268c <submitr+0x507>
    2601:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    2608:	00 
    2609:	48 8d 0d 80 0f 00 00 	lea    0xf80(%rip),%rcx        # 3590 <array.3473+0x3b0>
    2610:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2617:	be 01 00 00 00       	mov    $0x1,%esi
    261c:	4c 89 ff             	mov    %r15,%rdi
    261f:	b8 00 00 00 00       	mov    $0x0,%eax
    2624:	e8 57 ed ff ff       	callq  1380 <__sprintf_chk@plt>
    2629:	44 89 e7             	mov    %r12d,%edi
    262c:	e8 3f ec ff ff       	callq  1270 <close@plt>
    2631:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2636:	eb 54                	jmp    268c <submitr+0x507>
    2638:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    263f:	00 
    2640:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2645:	ba 00 20 00 00       	mov    $0x2000,%edx
    264a:	e8 6d fa ff ff       	callq  20bc <rio_readlineb>
    264f:	48 85 c0             	test   %rax,%rax
    2652:	7e 61                	jle    26b5 <submitr+0x530>
    2654:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    265b:	00 
    265c:	4c 89 ff             	mov    %r15,%rdi
    265f:	e8 bc eb ff ff       	callq  1220 <strcpy@plt>
    2664:	44 89 e7             	mov    %r12d,%edi
    2667:	e8 04 ec ff ff       	callq  1270 <close@plt>
    266c:	b9 03 00 00 00       	mov    $0x3,%ecx
    2671:	48 8d 3d e1 0f 00 00 	lea    0xfe1(%rip),%rdi        # 3659 <array.3473+0x479>
    2678:	4c 89 fe             	mov    %r15,%rsi
    267b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    267d:	0f 97 c0             	seta   %al
    2680:	1c 00                	sbb    $0x0,%al
    2682:	84 c0                	test   %al,%al
    2684:	0f 95 c0             	setne  %al
    2687:	0f b6 c0             	movzbl %al,%eax
    268a:	f7 d8                	neg    %eax
    268c:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    2693:	00 
    2694:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    269b:	00 00 
    269d:	0f 85 0c 03 00 00    	jne    29af <submitr+0x82a>
    26a3:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    26aa:	5b                   	pop    %rbx
    26ab:	5d                   	pop    %rbp
    26ac:	41 5c                	pop    %r12
    26ae:	41 5d                	pop    %r13
    26b0:	41 5e                	pop    %r14
    26b2:	41 5f                	pop    %r15
    26b4:	c3                   	retq   
    26b5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26bc:	3a 20 43 
    26bf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26c6:	20 75 6e 
    26c9:	49 89 07             	mov    %rax,(%r15)
    26cc:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26d0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    26d7:	74 6f 20 
    26da:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    26e1:	73 74 61 
    26e4:	49 89 47 10          	mov    %rax,0x10(%r15)
    26e8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26ec:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    26f3:	65 73 73 
    26f6:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    26fd:	72 6f 6d 
    2700:	49 89 47 20          	mov    %rax,0x20(%r15)
    2704:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2708:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    270f:	65 72 00 
    2712:	49 89 47 30          	mov    %rax,0x30(%r15)
    2716:	44 89 e7             	mov    %r12d,%edi
    2719:	e8 52 eb ff ff       	callq  1270 <close@plt>
    271e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2723:	e9 64 ff ff ff       	jmpq   268c <submitr+0x507>
    2728:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    272f:	3a 20 43 
    2732:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2739:	20 75 6e 
    273c:	49 89 07             	mov    %rax,(%r15)
    273f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2743:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    274a:	74 6f 20 
    274d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2754:	20 74 6f 
    2757:	49 89 47 10          	mov    %rax,0x10(%r15)
    275b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    275f:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2766:	73 65 72 
    2769:	49 89 47 20          	mov    %rax,0x20(%r15)
    276d:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2774:	00 
    2775:	44 89 e7             	mov    %r12d,%edi
    2778:	e8 f3 ea ff ff       	callq  1270 <close@plt>
    277d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2782:	e9 05 ff ff ff       	jmpq   268c <submitr+0x507>
    2787:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    278e:	3a 20 52 
    2791:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2798:	20 73 74 
    279b:	49 89 07             	mov    %rax,(%r15)
    279e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27a2:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    27a9:	63 6f 6e 
    27ac:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    27b3:	20 61 6e 
    27b6:	49 89 47 10          	mov    %rax,0x10(%r15)
    27ba:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27be:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    27c5:	67 61 6c 
    27c8:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    27cf:	6e 70 72 
    27d2:	49 89 47 20          	mov    %rax,0x20(%r15)
    27d6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27da:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    27e1:	6c 65 20 
    27e4:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    27eb:	63 74 65 
    27ee:	49 89 47 30          	mov    %rax,0x30(%r15)
    27f2:	49 89 57 38          	mov    %rdx,0x38(%r15)
    27f6:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    27fd:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2802:	44 89 e7             	mov    %r12d,%edi
    2805:	e8 66 ea ff ff       	callq  1270 <close@plt>
    280a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    280f:	e9 78 fe ff ff       	jmpq   268c <submitr+0x507>
    2814:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
    281b:	00 
    281c:	48 83 ec 08          	sub    $0x8,%rsp
    2820:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
    2827:	00 
    2828:	50                   	push   %rax
    2829:	ff 74 24 20          	pushq  0x20(%rsp)
    282d:	ff 74 24 30          	pushq  0x30(%rsp)
    2831:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    2836:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    283b:	48 8d 0d 7e 0d 00 00 	lea    0xd7e(%rip),%rcx        # 35c0 <array.3473+0x3e0>
    2842:	ba 00 20 00 00       	mov    $0x2000,%edx
    2847:	be 01 00 00 00       	mov    $0x1,%esi
    284c:	48 89 df             	mov    %rbx,%rdi
    284f:	b8 00 00 00 00       	mov    $0x0,%eax
    2854:	e8 27 eb ff ff       	callq  1380 <__sprintf_chk@plt>
    2859:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2860:	b8 00 00 00 00       	mov    $0x0,%eax
    2865:	48 89 df             	mov    %rbx,%rdi
    2868:	f2 ae                	repnz scas %es:(%rdi),%al
    286a:	48 f7 d1             	not    %rcx
    286d:	48 83 c4 20          	add    $0x20,%rsp
    2871:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    2878:	00 
    2879:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    287f:	48 89 cb             	mov    %rcx,%rbx
    2882:	48 83 eb 01          	sub    $0x1,%rbx
    2886:	0f 85 db fc ff ff    	jne    2567 <submitr+0x3e2>
    288c:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    2891:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    2898:	00 
    2899:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    289e:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    28a3:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    28a8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    28af:	00 
    28b0:	ba 00 20 00 00       	mov    $0x2000,%edx
    28b5:	e8 02 f8 ff ff       	callq  20bc <rio_readlineb>
    28ba:	48 85 c0             	test   %rax,%rax
    28bd:	0f 8e ca fc ff ff    	jle    258d <submitr+0x408>
    28c3:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    28c8:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    28cf:	00 
    28d0:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    28d7:	00 
    28d8:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    28df:	00 
    28e0:	48 8d 35 5e 0d 00 00 	lea    0xd5e(%rip),%rsi        # 3645 <array.3473+0x465>
    28e7:	b8 00 00 00 00       	mov    $0x0,%eax
    28ec:	e8 ff e9 ff ff       	callq  12f0 <__isoc99_sscanf@plt>
    28f1:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    28f6:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    28fd:	0f 85 fe fc ff ff    	jne    2601 <submitr+0x47c>
    2903:	48 8d 1d 4c 0d 00 00 	lea    0xd4c(%rip),%rbx        # 3656 <array.3473+0x476>
    290a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2911:	00 
    2912:	b9 03 00 00 00       	mov    $0x3,%ecx
    2917:	48 89 df             	mov    %rbx,%rdi
    291a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    291c:	0f 97 c0             	seta   %al
    291f:	1c 00                	sbb    $0x0,%al
    2921:	84 c0                	test   %al,%al
    2923:	0f 84 0f fd ff ff    	je     2638 <submitr+0x4b3>
    2929:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    2930:	00 
    2931:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2936:	ba 00 20 00 00       	mov    $0x2000,%edx
    293b:	e8 7c f7 ff ff       	callq  20bc <rio_readlineb>
    2940:	48 85 c0             	test   %rax,%rax
    2943:	7f c5                	jg     290a <submitr+0x785>
    2945:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    294c:	3a 20 43 
    294f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2956:	20 75 6e 
    2959:	49 89 07             	mov    %rax,(%r15)
    295c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2960:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2967:	74 6f 20 
    296a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2971:	68 65 61 
    2974:	49 89 47 10          	mov    %rax,0x10(%r15)
    2978:	49 89 57 18          	mov    %rdx,0x18(%r15)
    297c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2983:	66 72 6f 
    2986:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    298d:	76 65 72 
    2990:	49 89 47 20          	mov    %rax,0x20(%r15)
    2994:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2998:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    299d:	44 89 e7             	mov    %r12d,%edi
    29a0:	e8 cb e8 ff ff       	callq  1270 <close@plt>
    29a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29aa:	e9 dd fc ff ff       	jmpq   268c <submitr+0x507>
    29af:	e8 9c e8 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000029b4 <init_timeout>:
    29b4:	f3 0f 1e fa          	endbr64 
    29b8:	85 ff                	test   %edi,%edi
    29ba:	75 01                	jne    29bd <init_timeout+0x9>
    29bc:	c3                   	retq   
    29bd:	53                   	push   %rbx
    29be:	89 fb                	mov    %edi,%ebx
    29c0:	48 8d 35 bf f6 ff ff 	lea    -0x941(%rip),%rsi        # 2086 <sigalrm_handler>
    29c7:	bf 0e 00 00 00       	mov    $0xe,%edi
    29cc:	e8 cf e8 ff ff       	callq  12a0 <signal@plt>
    29d1:	85 db                	test   %ebx,%ebx
    29d3:	bf 00 00 00 00       	mov    $0x0,%edi
    29d8:	0f 49 fb             	cmovns %ebx,%edi
    29db:	e8 80 e8 ff ff       	callq  1260 <alarm@plt>
    29e0:	5b                   	pop    %rbx
    29e1:	c3                   	retq   

00000000000029e2 <init_driver>:
    29e2:	f3 0f 1e fa          	endbr64 
    29e6:	41 54                	push   %r12
    29e8:	55                   	push   %rbp
    29e9:	53                   	push   %rbx
    29ea:	48 83 ec 20          	sub    $0x20,%rsp
    29ee:	48 89 fd             	mov    %rdi,%rbp
    29f1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29f8:	00 00 
    29fa:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    29ff:	31 c0                	xor    %eax,%eax
    2a01:	be 01 00 00 00       	mov    $0x1,%esi
    2a06:	bf 0d 00 00 00       	mov    $0xd,%edi
    2a0b:	e8 90 e8 ff ff       	callq  12a0 <signal@plt>
    2a10:	be 01 00 00 00       	mov    $0x1,%esi
    2a15:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2a1a:	e8 81 e8 ff ff       	callq  12a0 <signal@plt>
    2a1f:	be 01 00 00 00       	mov    $0x1,%esi
    2a24:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2a29:	e8 72 e8 ff ff       	callq  12a0 <signal@plt>
    2a2e:	ba 00 00 00 00       	mov    $0x0,%edx
    2a33:	be 01 00 00 00       	mov    $0x1,%esi
    2a38:	bf 02 00 00 00       	mov    $0x2,%edi
    2a3d:	e8 4e e9 ff ff       	callq  1390 <socket@plt>
    2a42:	85 c0                	test   %eax,%eax
    2a44:	0f 88 9c 00 00 00    	js     2ae6 <init_driver+0x104>
    2a4a:	89 c3                	mov    %eax,%ebx
    2a4c:	48 8d 3d a0 0a 00 00 	lea    0xaa0(%rip),%rdi        # 34f3 <array.3473+0x313>
    2a53:	e8 58 e8 ff ff       	callq  12b0 <gethostbyname@plt>
    2a58:	48 85 c0             	test   %rax,%rax
    2a5b:	0f 84 d1 00 00 00    	je     2b32 <init_driver+0x150>
    2a61:	49 89 e4             	mov    %rsp,%r12
    2a64:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2a6b:	00 
    2a6c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2a73:	00 00 
    2a75:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2a7b:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2a7f:	48 8b 40 18          	mov    0x18(%rax),%rax
    2a83:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2a88:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2a8d:	48 8b 30             	mov    (%rax),%rsi
    2a90:	e8 2b e8 ff ff       	callq  12c0 <__memmove_chk@plt>
    2a95:	66 c7 44 24 02 56 c4 	movw   $0xc456,0x2(%rsp)
    2a9c:	ba 10 00 00 00       	mov    $0x10,%edx
    2aa1:	4c 89 e6             	mov    %r12,%rsi
    2aa4:	89 df                	mov    %ebx,%edi
    2aa6:	e8 95 e8 ff ff       	callq  1340 <connect@plt>
    2aab:	85 c0                	test   %eax,%eax
    2aad:	0f 88 e7 00 00 00    	js     2b9a <init_driver+0x1b8>
    2ab3:	89 df                	mov    %ebx,%edi
    2ab5:	e8 b6 e7 ff ff       	callq  1270 <close@plt>
    2aba:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2ac0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2ac4:	b8 00 00 00 00       	mov    $0x0,%eax
    2ac9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2ace:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2ad5:	00 00 
    2ad7:	0f 85 f5 00 00 00    	jne    2bd2 <init_driver+0x1f0>
    2add:	48 83 c4 20          	add    $0x20,%rsp
    2ae1:	5b                   	pop    %rbx
    2ae2:	5d                   	pop    %rbp
    2ae3:	41 5c                	pop    %r12
    2ae5:	c3                   	retq   
    2ae6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2aed:	3a 20 43 
    2af0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2af7:	20 75 6e 
    2afa:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2afe:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b02:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b09:	74 6f 20 
    2b0c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2b13:	65 20 73 
    2b16:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b1a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b1e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2b25:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2b2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b30:	eb 97                	jmp    2ac9 <init_driver+0xe7>
    2b32:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2b39:	3a 20 44 
    2b3c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2b43:	20 75 6e 
    2b46:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2b4a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2b4e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b55:	74 6f 20 
    2b58:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2b5f:	76 65 20 
    2b62:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2b66:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2b6a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2b71:	72 20 61 
    2b74:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2b78:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2b7f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2b85:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2b89:	89 df                	mov    %ebx,%edi
    2b8b:	e8 e0 e6 ff ff       	callq  1270 <close@plt>
    2b90:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b95:	e9 2f ff ff ff       	jmpq   2ac9 <init_driver+0xe7>
    2b9a:	4c 8d 05 52 09 00 00 	lea    0x952(%rip),%r8        # 34f3 <array.3473+0x313>
    2ba1:	48 8d 0d 70 0a 00 00 	lea    0xa70(%rip),%rcx        # 3618 <array.3473+0x438>
    2ba8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2baf:	be 01 00 00 00       	mov    $0x1,%esi
    2bb4:	48 89 ef             	mov    %rbp,%rdi
    2bb7:	b8 00 00 00 00       	mov    $0x0,%eax
    2bbc:	e8 bf e7 ff ff       	callq  1380 <__sprintf_chk@plt>
    2bc1:	89 df                	mov    %ebx,%edi
    2bc3:	e8 a8 e6 ff ff       	callq  1270 <close@plt>
    2bc8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2bcd:	e9 f7 fe ff ff       	jmpq   2ac9 <init_driver+0xe7>
    2bd2:	e8 79 e6 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002bd7 <driver_post>:
    2bd7:	f3 0f 1e fa          	endbr64 
    2bdb:	53                   	push   %rbx
    2bdc:	4c 89 c3             	mov    %r8,%rbx
    2bdf:	85 c9                	test   %ecx,%ecx
    2be1:	75 17                	jne    2bfa <driver_post+0x23>
    2be3:	48 85 ff             	test   %rdi,%rdi
    2be6:	74 05                	je     2bed <driver_post+0x16>
    2be8:	80 3f 00             	cmpb   $0x0,(%rdi)
    2beb:	75 33                	jne    2c20 <driver_post+0x49>
    2bed:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2bf2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2bf6:	89 c8                	mov    %ecx,%eax
    2bf8:	5b                   	pop    %rbx
    2bf9:	c3                   	retq   
    2bfa:	48 8d 35 5b 0a 00 00 	lea    0xa5b(%rip),%rsi        # 365c <array.3473+0x47c>
    2c01:	bf 01 00 00 00       	mov    $0x1,%edi
    2c06:	b8 00 00 00 00       	mov    $0x0,%eax
    2c0b:	e8 f0 e6 ff ff       	callq  1300 <__printf_chk@plt>
    2c10:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2c15:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2c19:	b8 00 00 00 00       	mov    $0x0,%eax
    2c1e:	eb d8                	jmp    2bf8 <driver_post+0x21>
    2c20:	41 50                	push   %r8
    2c22:	52                   	push   %rdx
    2c23:	4c 8d 0d 49 0a 00 00 	lea    0xa49(%rip),%r9        # 3673 <array.3473+0x493>
    2c2a:	49 89 f0             	mov    %rsi,%r8
    2c2d:	48 89 f9             	mov    %rdi,%rcx
    2c30:	48 8d 15 40 0a 00 00 	lea    0xa40(%rip),%rdx        # 3677 <array.3473+0x497>
    2c37:	be c4 56 00 00       	mov    $0x56c4,%esi
    2c3c:	48 8d 3d b0 08 00 00 	lea    0x8b0(%rip),%rdi        # 34f3 <array.3473+0x313>
    2c43:	e8 3d f5 ff ff       	callq  2185 <submitr>
    2c48:	48 83 c4 10          	add    $0x10,%rsp
    2c4c:	eb aa                	jmp    2bf8 <driver_post+0x21>
    2c4e:	66 90                	xchg   %ax,%ax

0000000000002c50 <__libc_csu_init>:
    2c50:	f3 0f 1e fa          	endbr64 
    2c54:	41 57                	push   %r15
    2c56:	4c 8d 3d 8b 30 00 00 	lea    0x308b(%rip),%r15        # 5ce8 <__frame_dummy_init_array_entry>
    2c5d:	41 56                	push   %r14
    2c5f:	49 89 d6             	mov    %rdx,%r14
    2c62:	41 55                	push   %r13
    2c64:	49 89 f5             	mov    %rsi,%r13
    2c67:	41 54                	push   %r12
    2c69:	41 89 fc             	mov    %edi,%r12d
    2c6c:	55                   	push   %rbp
    2c6d:	48 8d 2d 7c 30 00 00 	lea    0x307c(%rip),%rbp        # 5cf0 <__do_global_dtors_aux_fini_array_entry>
    2c74:	53                   	push   %rbx
    2c75:	4c 29 fd             	sub    %r15,%rbp
    2c78:	48 83 ec 08          	sub    $0x8,%rsp
    2c7c:	e8 7f e3 ff ff       	callq  1000 <_init>
    2c81:	48 c1 fd 03          	sar    $0x3,%rbp
    2c85:	74 1f                	je     2ca6 <__libc_csu_init+0x56>
    2c87:	31 db                	xor    %ebx,%ebx
    2c89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2c90:	4c 89 f2             	mov    %r14,%rdx
    2c93:	4c 89 ee             	mov    %r13,%rsi
    2c96:	44 89 e7             	mov    %r12d,%edi
    2c99:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2c9d:	48 83 c3 01          	add    $0x1,%rbx
    2ca1:	48 39 dd             	cmp    %rbx,%rbp
    2ca4:	75 ea                	jne    2c90 <__libc_csu_init+0x40>
    2ca6:	48 83 c4 08          	add    $0x8,%rsp
    2caa:	5b                   	pop    %rbx
    2cab:	5d                   	pop    %rbp
    2cac:	41 5c                	pop    %r12
    2cae:	41 5d                	pop    %r13
    2cb0:	41 5e                	pop    %r14
    2cb2:	41 5f                	pop    %r15
    2cb4:	c3                   	retq   
    2cb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2cbc:	00 00 00 00 

0000000000002cc0 <__libc_csu_fini>:
    2cc0:	f3 0f 1e fa          	endbr64 
    2cc4:	c3                   	retq   

Disassembly of section .fini:

0000000000002cc8 <_fini>:
    2cc8:	f3 0f 1e fa          	endbr64 
    2ccc:	48 83 ec 08          	sub    $0x8,%rsp
    2cd0:	48 83 c4 08          	add    $0x8,%rsp
    2cd4:	c3                   	retq   
