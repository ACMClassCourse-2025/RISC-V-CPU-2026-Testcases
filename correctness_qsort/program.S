
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	23428293          	addi	t0,t0,564 # 238 <course_put_hash>
   c:	0000a317          	auipc	t1,0xa
  10:	00430313          	addi	t1,t1,4 # a010 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	178080e7          	jalr	ra,376(ra) # 19c <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	23878793          	addi	a5,a5,568 # 238 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	2387a503          	lw	a0,568(a5) # 238 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <qsrt>:
  70:	00b50733          	add	a4,a0,a1
  74:	01f75793          	srli	a5,a4,0x1f
  78:	00e787b3          	add	a5,a5,a4
  7c:	4017d793          	srai	a5,a5,0x1
  80:	000008b7          	lui	a7,0x0
  84:	24088893          	addi	a7,a7,576 # 240 <a>
  88:	00279793          	slli	a5,a5,0x2
  8c:	00f887b3          	add	a5,a7,a5
  90:	0007a603          	lw	a2,0(a5)
  94:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x35fe0>
  98:	40000eb7          	lui	t4,0x40000
  9c:	00812423          	sw	s0,8(sp)
  a0:	00912223          	sw	s1,4(sp)
  a4:	00112623          	sw	ra,12(sp)
  a8:	00058493          	addi	s1,a1,0
  ac:	00050413          	addi	s0,a0,0
  b0:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <__stack_top+0x3ffbffff>
  b4:	0885c663          	blt	a1,s0,140 <qsrt+0xd0>
  b8:	00241313          	slli	t1,s0,0x2
  bc:	006887b3          	add	a5,a7,t1
  c0:	0007a683          	lw	a3,0(a5)
  c4:	00259e13          	slli	t3,a1,0x2
  c8:	00140713          	addi	a4,s0,1
  cc:	01c88833          	add	a6,a7,t3
  d0:	00271793          	slli	a5,a4,0x2
  d4:	00082803          	lw	a6,0(a6)
  d8:	00f887b3          	add	a5,a7,a5
  dc:	00c6c663          	blt	a3,a2,e8 <qsrt+0x78>
  e0:	0800006f          	jal	zero,160 <qsrt+0xf0>
  e4:	00170713          	addi	a4,a4,1
  e8:	0007a683          	lw	a3,0(a5)
  ec:	00070413          	addi	s0,a4,0
  f0:	00478793          	addi	a5,a5,4
  f4:	fec6c8e3          	blt	a3,a2,e4 <qsrt+0x74>
  f8:	03065063          	bge	a2,a6,118 <qsrt+0xa8>
  fc:	01d587b3          	add	a5,a1,t4
 100:	00279793          	slli	a5,a5,0x2
 104:	00f887b3          	add	a5,a7,a5
 108:	0007a803          	lw	a6,0(a5)
 10c:	fff58593          	addi	a1,a1,-1
 110:	ffc78793          	addi	a5,a5,-4
 114:	ff064ae3          	blt	a2,a6,108 <qsrt+0x98>
 118:	f885cee3          	blt	a1,s0,b4 <qsrt+0x44>
 11c:	00241313          	slli	t1,s0,0x2
 120:	00259e13          	slli	t3,a1,0x2
 124:	00688333          	add	t1,a7,t1
 128:	01032023          	sw	a6,0(t1)
 12c:	01c88e33          	add	t3,a7,t3
 130:	00de2023          	sw	a3,0(t3)
 134:	00140413          	addi	s0,s0,1
 138:	fff58593          	addi	a1,a1,-1
 13c:	f685dee3          	bge	a1,s0,b8 <qsrt+0x48>
 140:	02b54463          	blt	a0,a1,168 <qsrt+0xf8>
 144:	02944863          	blt	s0,s1,174 <qsrt+0x104>
 148:	00c12083          	lw	ra,12(sp)
 14c:	00812403          	lw	s0,8(sp)
 150:	00412483          	lw	s1,4(sp)
 154:	00000513          	addi	a0,zero,0
 158:	01010113          	addi	sp,sp,16
 15c:	00008067          	jalr	zero,0(ra)
 160:	f9064ee3          	blt	a2,a6,fc <qsrt+0x8c>
 164:	fc1ff06f          	jal	zero,124 <qsrt+0xb4>
 168:	00000097          	auipc	ra,0x0
 16c:	f08080e7          	jalr	ra,-248(ra) # 70 <qsrt>
 170:	fc945ce3          	bge	s0,s1,148 <qsrt+0xd8>
 174:	00048593          	addi	a1,s1,0
 178:	00040513          	addi	a0,s0,0
 17c:	00000097          	auipc	ra,0x0
 180:	ef4080e7          	jalr	ra,-268(ra) # 70 <qsrt>
 184:	00c12083          	lw	ra,12(sp)
 188:	00812403          	lw	s0,8(sp)
 18c:	00412483          	lw	s1,4(sp)
 190:	00000513          	addi	a0,zero,0
 194:	01010113          	addi	sp,sp,16
 198:	00008067          	jalr	zero,0(ra)

0000019c <main>:
 19c:	ff010113          	addi	sp,sp,-16
 1a0:	01212023          	sw	s2,0(sp)
 1a4:	000027b7          	lui	a5,0x2
 1a8:	00000937          	lui	s2,0x0
 1ac:	00000737          	lui	a4,0x0
 1b0:	71078793          	addi	a5,a5,1808 # 2710 <a+0x24d0>
 1b4:	23c90913          	addi	s2,s2,572 # 23c <n>
 1b8:	00812423          	sw	s0,8(sp)
 1bc:	00112623          	sw	ra,12(sp)
 1c0:	24470413          	addi	s0,a4,580 # 244 <a+0x4>
 1c4:	00912223          	sw	s1,4(sp)
 1c8:	00f92023          	sw	a5,0(s2)
 1cc:	24470713          	addi	a4,a4,580
 1d0:	00f72023          	sw	a5,0(a4)
 1d4:	fff78793          	addi	a5,a5,-1
 1d8:	00470713          	addi	a4,a4,4
 1dc:	fe079ae3          	bne	a5,zero,1d0 <main+0x34>
 1e0:	000025b7          	lui	a1,0x2
 1e4:	71058593          	addi	a1,a1,1808 # 2710 <a+0x24d0>
 1e8:	00100513          	addi	a0,zero,1
 1ec:	00000097          	auipc	ra,0x0
 1f0:	e84080e7          	jalr	ra,-380(ra) # 70 <qsrt>
 1f4:	00092783          	lw	a5,0(s2)
 1f8:	02f05263          	bge	zero,a5,21c <main+0x80>
 1fc:	00100493          	addi	s1,zero,1
 200:	00042503          	lw	a0,0(s0)
 204:	00148493          	addi	s1,s1,1
 208:	00440413          	addi	s0,s0,4
 20c:	00000097          	auipc	ra,0x0
 210:	e34080e7          	jalr	ra,-460(ra) # 40 <put>
 214:	00092783          	lw	a5,0(s2)
 218:	fe97d4e3          	bge	a5,s1,200 <main+0x64>
 21c:	00c12083          	lw	ra,12(sp)
 220:	00812403          	lw	s0,8(sp)
 224:	00412483          	lw	s1,4(sp)
 228:	00012903          	lw	s2,0(sp)
 22c:	00000513          	addi	a0,zero,0
 230:	01010113          	addi	sp,sp,16
 234:	00008067          	jalr	zero,0(ra)
