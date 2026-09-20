
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	16c28293          	addi	t0,t0,364 # 170 <course_put_hash>
   c:	00003317          	auipc	t1,0x3
  10:	d2c30313          	addi	t1,t1,-724 # 2d38 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	04c080e7          	jalr	ra,76(ra) # 70 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	17078793          	addi	a5,a5,368 # 170 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1707a503          	lw	a0,368(a5) # 170 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	000007b7          	lui	a5,0x0
  74:	00003737          	lui	a4,0x3
  78:	fe010113          	addi	sp,sp,-32 # 3ffe0 <__bss_end+0x3d2a8>
  7c:	17478793          	addi	a5,a5,372 # 174 <f>
  80:	bc070713          	addi	a4,a4,-1088 # 2bc0 <f+0x2a4c>
  84:	00112e23          	sw	ra,28(sp)
  88:	00812c23          	sw	s0,24(sp)
  8c:	00912a23          	sw	s1,20(sp)
  90:	01212823          	sw	s2,16(sp)
  94:	01312623          	sw	s3,12(sp)
  98:	01412423          	sw	s4,8(sp)
  9c:	01512223          	sw	s5,4(sp)
  a0:	00e78733          	add	a4,a5,a4
  a4:	7d000693          	addi	a3,zero,2000
  a8:	00d7a023          	sw	a3,0(a5)
  ac:	00478793          	addi	a5,a5,4
  b0:	fee79ce3          	bne	a5,a4,a8 <main+0x38>
  b4:	000019b7          	lui	s3,0x1
  b8:	00003a37          	lui	s4,0x3
  bc:	00002937          	lui	s2,0x2
  c0:	aef98a93          	addi	s5,s3,-1297 # aef <f+0x97b>
  c4:	d30a0a13          	addi	s4,s4,-720 # 2d30 <f+0x2bbc>
  c8:	5df98993          	addi	s3,s3,1503
  cc:	00000513          	addi	a0,zero,0
  d0:	71090913          	addi	s2,s2,1808 # 2710 <f+0x259c>
  d4:	fff00493          	addi	s1,zero,-1
  d8:	004a2783          	lw	a5,4(s4)
  dc:	000a8613          	addi	a2,s5,0
  e0:	ffe98693          	addi	a3,s3,-2
  e4:	032787b3          	mul	a5,a5,s2
  e8:	000a0713          	addi	a4,s4,0
  ec:	0337e5b3          	rem	a1,a5,s3
  f0:	0337c433          	div	s0,a5,s3
  f4:	00ba2223          	sw	a1,4(s4)
  f8:	00072783          	lw	a5,0(a4)
  fc:	ffc70713          	addi	a4,a4,-4
 100:	02c40433          	mul	s0,s0,a2
 104:	fff60613          	addi	a2,a2,-1
 108:	032787b3          	mul	a5,a5,s2
 10c:	008787b3          	add	a5,a5,s0
 110:	02d7e5b3          	rem	a1,a5,a3
 114:	00b72223          	sw	a1,4(a4)
 118:	02d7c433          	div	s0,a5,a3
 11c:	ffe68693          	addi	a3,a3,-2
 120:	fc061ce3          	bne	a2,zero,f8 <main+0x88>
 124:	fe498993          	addi	s3,s3,-28
 128:	ff2a8a93          	addi	s5,s5,-14
 12c:	fc8a0a13          	addi	s4,s4,-56
 130:	032447b3          	div	a5,s0,s2
 134:	00a78533          	add	a0,a5,a0
 138:	00000097          	auipc	ra,0x0
 13c:	f08080e7          	jalr	ra,-248(ra) # 40 <put>
 140:	03246533          	rem	a0,s0,s2
 144:	f8999ae3          	bne	s3,s1,d8 <main+0x68>
 148:	01c12083          	lw	ra,28(sp)
 14c:	01812403          	lw	s0,24(sp)
 150:	01412483          	lw	s1,20(sp)
 154:	01012903          	lw	s2,16(sp)
 158:	00c12983          	lw	s3,12(sp)
 15c:	00812a03          	lw	s4,8(sp)
 160:	00412a83          	lw	s5,4(sp)
 164:	00000513          	addi	a0,zero,0
 168:	02010113          	addi	sp,sp,32
 16c:	00008067          	jalr	zero,0(ra)
