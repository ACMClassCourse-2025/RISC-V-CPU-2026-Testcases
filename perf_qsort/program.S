
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00004297          	auipc	t0,0x4
   8:	24428293          	addi	t0,t0,580 # 4248 <__bss_end>
   c:	00004317          	auipc	t1,0x4
  10:	23c30313          	addi	t1,t1,572 # 4248 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	1bc080e7          	jalr	ra,444(ra) # 1e0 <main>
  2c:	800002b7          	lui	t0,0x80000
  30:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  34:	0000006f          	jal	zero,34 <_start+0x34>

Disassembly of section .text:

00000038 <memcpy>:
  38:	02060063          	beq	a2,zero,58 <memcpy+0x20>
  3c:	00c50633          	add	a2,a0,a2
  40:	00050793          	addi	a5,a0,0
  44:	0005c703          	lbu	a4,0(a1)
  48:	00178793          	addi	a5,a5,1
  4c:	00158593          	addi	a1,a1,1
  50:	fee78fa3          	sb	a4,-1(a5)
  54:	fec798e3          	bne	a5,a2,44 <memcpy+0xc>
  58:	00008067          	jalr	zero,0(ra)

0000005c <sort>:
  5c:	f3010113          	addi	sp,sp,-208 # 3ff30 <__bss_end+0x3bce8>
  60:	00251513          	slli	a0,a0,0x2
  64:	00810f13          	addi	t5,sp,8
  68:	40000fb7          	lui	t6,0x40000
  6c:	00058e93          	addi	t4,a1,0
  70:	00a588b3          	add	a7,a1,a0
  74:	000f0313          	addi	t1,t5,0
  78:	00458593          	addi	a1,a1,4
  7c:	02400e13          	addi	t3,zero,36
  80:	ffff8f93          	addi	t6,t6,-1 # 3fffffff <__stack_top+0x3ffbffff>
  84:	40b887b3          	sub	a5,a7,a1
  88:	04fe4863          	blt	t3,a5,d8 <sort+0x7c>
  8c:	ffc58613          	addi	a2,a1,-4
  90:	0315f863          	bgeu	a1,a7,c0 <sort+0x64>
  94:	0005a683          	lw	a3,0(a1)
  98:	00058793          	addi	a5,a1,0
  9c:	0100006f          	jal	zero,ac <sort+0x50>
  a0:	00e7a023          	sw	a4,0(a5)
  a4:	ffc78793          	addi	a5,a5,-4
  a8:	00f60663          	beq	a2,a5,b4 <sort+0x58>
  ac:	ffc7a703          	lw	a4,-4(a5)
  b0:	fee6c8e3          	blt	a3,a4,a0 <sort+0x44>
  b4:	00d7a023          	sw	a3,0(a5)
  b8:	00458593          	addi	a1,a1,4
  bc:	fd15ece3          	bltu	a1,a7,94 <sort+0x38>
  c0:	11e30c63          	beq	t1,t5,1d8 <sort+0x17c>
  c4:	00032883          	lw	a7,0(t1)
  c8:	ffc32583          	lw	a1,-4(t1)
  cc:	ff830313          	addi	t1,t1,-8
  d0:	40b887b3          	sub	a5,a7,a1
  d4:	fafe5ce3          	bge	t3,a5,8c <sort+0x30>
  d8:	41d587b3          	sub	a5,a1,t4
  dc:	41d88733          	sub	a4,a7,t4
  e0:	4027d793          	srai	a5,a5,0x2
  e4:	40275713          	srai	a4,a4,0x2
  e8:	00e78733          	add	a4,a5,a4
  ec:	01f75793          	srli	a5,a4,0x1f
  f0:	00e787b3          	add	a5,a5,a4
  f4:	4017d793          	srai	a5,a5,0x1
  f8:	01f787b3          	add	a5,a5,t6
  fc:	00279793          	slli	a5,a5,0x2
 100:	0005a703          	lw	a4,0(a1)
 104:	00fe87b3          	add	a5,t4,a5
 108:	0007a683          	lw	a3,0(a5)
 10c:	00e7a023          	sw	a4,0(a5)
 110:	ffc5a703          	lw	a4,-4(a1)
 114:	00d5a023          	sw	a3,0(a1)
 118:	ffc8a783          	lw	a5,-4(a7)
 11c:	00e7da63          	bge	a5,a4,130 <sort+0xd4>
 120:	fef5ae23          	sw	a5,-4(a1)
 124:	fee8ae23          	sw	a4,-4(a7)
 128:	0005a683          	lw	a3,0(a1)
 12c:	00070793          	addi	a5,a4,0
 130:	00d7d863          	bge	a5,a3,140 <sort+0xe4>
 134:	00f5a023          	sw	a5,0(a1)
 138:	fed8ae23          	sw	a3,-4(a7)
 13c:	0005a683          	lw	a3,0(a1)
 140:	ffc5a783          	lw	a5,-4(a1)
 144:	00f6d863          	bge	a3,a5,154 <sort+0xf8>
 148:	fed5ae23          	sw	a3,-4(a1)
 14c:	00f5a023          	sw	a5,0(a1)
 150:	00078693          	addi	a3,a5,0
 154:	00458513          	addi	a0,a1,4
 158:	00088793          	addi	a5,a7,0
 15c:	00052803          	lw	a6,0(a0)
 160:	00450513          	addi	a0,a0,4
 164:	fed84ce3          	blt	a6,a3,15c <sort+0x100>
 168:	ff87a703          	lw	a4,-8(a5)
 16c:	00078613          	addi	a2,a5,0
 170:	ffc78793          	addi	a5,a5,-4
 174:	fee6cae3          	blt	a3,a4,168 <sort+0x10c>
 178:	00a7e863          	bltu	a5,a0,188 <sort+0x12c>
 17c:	fee52e23          	sw	a4,-4(a0)
 180:	ff07ae23          	sw	a6,-4(a5)
 184:	fd9ff06f          	jal	zero,15c <sort+0x100>
 188:	40a88833          	sub	a6,a7,a0
 18c:	00e5a023          	sw	a4,0(a1)
 190:	40285713          	srai	a4,a6,0x2
 194:	40b78833          	sub	a6,a5,a1
 198:	fed7ae23          	sw	a3,-4(a5)
 19c:	00170793          	addi	a5,a4,1
 1a0:	40285713          	srai	a4,a6,0x2
 1a4:	00830693          	addi	a3,t1,8
 1a8:	ff860613          	addi	a2,a2,-8
 1ac:	00e7cc63          	blt	a5,a4,1c4 <sort+0x168>
 1b0:	01132423          	sw	a7,8(t1)
 1b4:	00a32223          	sw	a0,4(t1)
 1b8:	00060893          	addi	a7,a2,0
 1bc:	00068313          	addi	t1,a3,0
 1c0:	ec5ff06f          	jal	zero,84 <sort+0x28>
 1c4:	00b32223          	sw	a1,4(t1)
 1c8:	00c32423          	sw	a2,8(t1)
 1cc:	00050593          	addi	a1,a0,0
 1d0:	00068313          	addi	t1,a3,0
 1d4:	eb1ff06f          	jal	zero,84 <sort+0x28>
 1d8:	0d010113          	addi	sp,sp,208
 1dc:	00008067          	jalr	zero,0(ra)

000001e0 <main>:
 1e0:	ff010113          	addi	sp,sp,-16
 1e4:	00812423          	sw	s0,8(sp)
 1e8:	00001537          	lui	a0,0x1
 1ec:	00002437          	lui	s0,0x2
 1f0:	80050513          	addi	a0,a0,-2048 # 800 <verify_data+0x5b8>
 1f4:	24840593          	addi	a1,s0,584 # 2248 <input_data>
 1f8:	00112623          	sw	ra,12(sp)
 1fc:	00000097          	auipc	ra,0x0
 200:	e60080e7          	jalr	ra,-416(ra) # 5c <sort>
 204:	00000737          	lui	a4,0x0
 208:	24840793          	addi	a5,s0,584
 20c:	24870713          	addi	a4,a4,584 # 248 <verify_data>
 210:	00000513          	addi	a0,zero,0
 214:	0007a603          	lw	a2,0(a5)
 218:	00072683          	lw	a3,0(a4)
 21c:	00150513          	addi	a0,a0,1
 220:	80050593          	addi	a1,a0,-2048
 224:	00d61a63          	bne	a2,a3,238 <main+0x58>
 228:	00478793          	addi	a5,a5,4
 22c:	00470713          	addi	a4,a4,4
 230:	fe0592e3          	bne	a1,zero,214 <main+0x34>
 234:	00000513          	addi	a0,zero,0
 238:	00c12083          	lw	ra,12(sp)
 23c:	00812403          	lw	s0,8(sp)
 240:	01010113          	addi	sp,sp,16
 244:	00008067          	jalr	zero,0(ra)
