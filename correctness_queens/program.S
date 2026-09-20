
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	2c828293          	addi	t0,t0,712 # 2cc <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	38830313          	addi	t1,t1,904 # 394 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	278080e7          	jalr	ra,632(ra) # 29c <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	2cc78793          	addi	a5,a5,716 # 2cc <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	2cc7a503          	lw	a0,716(a5) # 2cc <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <search.part.0>:
  70:	fd010113          	addi	sp,sp,-48 # 3ffd0 <__bss_end+0x3fc3c>
  74:	01312e23          	sw	s3,28(sp)
  78:	000009b7          	lui	s3,0x0
  7c:	2d098993          	addi	s3,s3,720 # 2d0 <N>
  80:	0009a703          	lw	a4,0(s3)
  84:	02112623          	sw	ra,44(sp)
  88:	02812423          	sw	s0,40(sp)
  8c:	02912223          	sw	s1,36(sp)
  90:	03212023          	sw	s2,32(sp)
  94:	01412c23          	sw	s4,24(sp)
  98:	01512a23          	sw	s5,20(sp)
  9c:	01612823          	sw	s6,16(sp)
  a0:	01712623          	sw	s7,12(sp)
  a4:	01812423          	sw	s8,8(sp)
  a8:	01912223          	sw	s9,4(sp)
  ac:	06e05463          	bge	zero,a4,114 <search.part.0+0xa4>
  b0:	00251793          	slli	a5,a0,0x2
  b4:	02498913          	addi	s2,s3,36
  b8:	00050a13          	addi	s4,a0,0
  bc:	00498493          	addi	s1,s3,4
  c0:	00f90933          	add	s2,s2,a5
  c4:	00000413          	addi	s0,zero,0
  c8:	00100b93          	addi	s7,zero,1
  cc:	00f98ab3          	add	s5,s3,a5
  d0:	00150c93          	addi	s9,a0,1
  d4:	0004a783          	lw	a5,0(s1)
  d8:	02079463          	bne	a5,zero,100 <search.part.0+0x90>
  dc:	00092783          	lw	a5,0(s2)
  e0:	02079063          	bne	a5,zero,100 <search.part.0+0x90>
  e4:	00e407b3          	add	a5,s0,a4
  e8:	414787b3          	sub	a5,a5,s4
  ec:	00f78793          	addi	a5,a5,15
  f0:	00279793          	slli	a5,a5,0x2
  f4:	00f987b3          	add	a5,s3,a5
  f8:	0247ab03          	lw	s6,36(a5)
  fc:	040b0663          	beq	s6,zero,148 <search.part.0+0xd8>
 100:	0009a703          	lw	a4,0(s3)
 104:	00140413          	addi	s0,s0,1
 108:	00448493          	addi	s1,s1,4
 10c:	00490913          	addi	s2,s2,4
 110:	fce442e3          	blt	s0,a4,d4 <search.part.0+0x64>
 114:	02c12083          	lw	ra,44(sp)
 118:	02812403          	lw	s0,40(sp)
 11c:	02412483          	lw	s1,36(sp)
 120:	02012903          	lw	s2,32(sp)
 124:	01c12983          	lw	s3,28(sp)
 128:	01812a03          	lw	s4,24(sp)
 12c:	01412a83          	lw	s5,20(sp)
 130:	01012b03          	lw	s6,16(sp)
 134:	00c12b83          	lw	s7,12(sp)
 138:	00812c03          	lw	s8,8(sp)
 13c:	00412c83          	lw	s9,4(sp)
 140:	03010113          	addi	sp,sp,48
 144:	00008067          	jalr	zero,0(ra)
 148:	0377a223          	sw	s7,36(a5)
 14c:	01792023          	sw	s7,0(s2)
 150:	0174a023          	sw	s7,0(s1)
 154:	0a8aa223          	sw	s0,164(s5)
 158:	02ec8c63          	beq	s9,a4,190 <search.part.0+0x120>
 15c:	000c8513          	addi	a0,s9,0
 160:	00000097          	auipc	ra,0x0
 164:	f10080e7          	jalr	ra,-240(ra) # 70 <search.part.0>
 168:	0009a703          	lw	a4,0(s3)
 16c:	00e407b3          	add	a5,s0,a4
 170:	414787b3          	sub	a5,a5,s4
 174:	00f78793          	addi	a5,a5,15
 178:	00279793          	slli	a5,a5,0x2
 17c:	00f987b3          	add	a5,s3,a5
 180:	0207a223          	sw	zero,36(a5)
 184:	00092023          	sw	zero,0(s2)
 188:	0004a023          	sw	zero,0(s1)
 18c:	f79ff06f          	jal	zero,104 <search.part.0+0x94>
 190:	0009a703          	lw	a4,0(s3)
 194:	fce05ce3          	bge	zero,a4,16c <search.part.0+0xfc>
 198:	0a498c13          	addi	s8,s3,164
 19c:	000c2503          	lw	a0,0(s8)
 1a0:	001b0b13          	addi	s6,s6,1
 1a4:	004c0c13          	addi	s8,s8,4
 1a8:	00000097          	auipc	ra,0x0
 1ac:	e98080e7          	jalr	ra,-360(ra) # 40 <put>
 1b0:	0009a703          	lw	a4,0(s3)
 1b4:	feeb44e3          	blt	s6,a4,19c <search.part.0+0x12c>
 1b8:	fb5ff06f          	jal	zero,16c <search.part.0+0xfc>

000001bc <printBoard>:
 1bc:	ff010113          	addi	sp,sp,-16
 1c0:	01212023          	sw	s2,0(sp)
 1c4:	00000937          	lui	s2,0x0
 1c8:	2d090913          	addi	s2,s2,720 # 2d0 <N>
 1cc:	00092783          	lw	a5,0(s2)
 1d0:	00112623          	sw	ra,12(sp)
 1d4:	00812423          	sw	s0,8(sp)
 1d8:	00912223          	sw	s1,4(sp)
 1dc:	02f05463          	bge	zero,a5,204 <printBoard+0x48>
 1e0:	0a490493          	addi	s1,s2,164
 1e4:	00000413          	addi	s0,zero,0
 1e8:	0004a503          	lw	a0,0(s1)
 1ec:	00140413          	addi	s0,s0,1
 1f0:	00448493          	addi	s1,s1,4
 1f4:	00000097          	auipc	ra,0x0
 1f8:	e4c080e7          	jalr	ra,-436(ra) # 40 <put>
 1fc:	00092783          	lw	a5,0(s2)
 200:	fef444e3          	blt	s0,a5,1e8 <printBoard+0x2c>
 204:	00c12083          	lw	ra,12(sp)
 208:	00812403          	lw	s0,8(sp)
 20c:	00412483          	lw	s1,4(sp)
 210:	00012903          	lw	s2,0(sp)
 214:	01010113          	addi	sp,sp,16
 218:	00008067          	jalr	zero,0(ra)

0000021c <search>:
 21c:	ff010113          	addi	sp,sp,-16
 220:	00812423          	sw	s0,8(sp)
 224:	00000437          	lui	s0,0x0
 228:	2d040413          	addi	s0,s0,720 # 2d0 <N>
 22c:	00042783          	lw	a5,0(s0)
 230:	00112623          	sw	ra,12(sp)
 234:	00912223          	sw	s1,4(sp)
 238:	01212023          	sw	s2,0(sp)
 23c:	02a78063          	beq	a5,a0,25c <search+0x40>
 240:	00812403          	lw	s0,8(sp)
 244:	00c12083          	lw	ra,12(sp)
 248:	00412483          	lw	s1,4(sp)
 24c:	00012903          	lw	s2,0(sp)
 250:	01010113          	addi	sp,sp,16
 254:	00000317          	auipc	t1,0x0
 258:	e1c30067          	jalr	zero,-484(t1) # 70 <search.part.0>
 25c:	0a440913          	addi	s2,s0,164
 260:	00000493          	addi	s1,zero,0
 264:	02f05063          	bge	zero,a5,284 <search+0x68>
 268:	00092503          	lw	a0,0(s2)
 26c:	00148493          	addi	s1,s1,1
 270:	00490913          	addi	s2,s2,4
 274:	00000097          	auipc	ra,0x0
 278:	dcc080e7          	jalr	ra,-564(ra) # 40 <put>
 27c:	00042783          	lw	a5,0(s0)
 280:	fef4c4e3          	blt	s1,a5,268 <search+0x4c>
 284:	00c12083          	lw	ra,12(sp)
 288:	00812403          	lw	s0,8(sp)
 28c:	00412483          	lw	s1,4(sp)
 290:	00012903          	lw	s2,0(sp)
 294:	01010113          	addi	sp,sp,16
 298:	00008067          	jalr	zero,0(ra)

0000029c <main>:
 29c:	ff010113          	addi	sp,sp,-16
 2a0:	00000513          	addi	a0,zero,0
 2a4:	000007b7          	lui	a5,0x0
 2a8:	00800713          	addi	a4,zero,8
 2ac:	00112623          	sw	ra,12(sp)
 2b0:	2ce7a823          	sw	a4,720(a5) # 2d0 <N>
 2b4:	00000097          	auipc	ra,0x0
 2b8:	f68080e7          	jalr	ra,-152(ra) # 21c <search>
 2bc:	00c12083          	lw	ra,12(sp)
 2c0:	00000513          	addi	a0,zero,0
 2c4:	01010113          	addi	sp,sp,16
 2c8:	00008067          	jalr	zero,0(ra)
