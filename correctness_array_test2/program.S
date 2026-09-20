
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	13428293          	addi	t0,t0,308 # 138 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	14030313          	addi	t1,t1,320 # 14c <__bss_end>
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
  44:	13878793          	addi	a5,a5,312 # 138 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1387a503          	lw	a0,312(a5) # 138 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fea4>
  74:	000007b7          	lui	a5,0x0
  78:	00812423          	sw	s0,8(sp)
  7c:	00400513          	addi	a0,zero,4
  80:	1347a403          	lw	s0,308(a5) # 134 <pa>
  84:	00112623          	sw	ra,12(sp)
  88:	00000097          	auipc	ra,0x0
  8c:	fb8080e7          	jalr	ra,-72(ra) # 40 <put>
  90:	00100793          	addi	a5,zero,1
  94:	00f42023          	sw	a5,0(s0)
  98:	00200793          	addi	a5,zero,2
  9c:	00f42223          	sw	a5,4(s0)
  a0:	00300793          	addi	a5,zero,3
  a4:	00f42423          	sw	a5,8(s0)
  a8:	00400793          	addi	a5,zero,4
  ac:	00f42623          	sw	a5,12(s0)
  b0:	00100513          	addi	a0,zero,1
  b4:	00000097          	auipc	ra,0x0
  b8:	f8c080e7          	jalr	ra,-116(ra) # 40 <put>
  bc:	00442503          	lw	a0,4(s0)
  c0:	00000097          	auipc	ra,0x0
  c4:	f80080e7          	jalr	ra,-128(ra) # 40 <put>
  c8:	00842503          	lw	a0,8(s0)
  cc:	00000097          	auipc	ra,0x0
  d0:	f74080e7          	jalr	ra,-140(ra) # 40 <put>
  d4:	00c42503          	lw	a0,12(s0)
  d8:	00000097          	auipc	ra,0x0
  dc:	f68080e7          	jalr	ra,-152(ra) # 40 <put>
  e0:	00000513          	addi	a0,zero,0
  e4:	00042023          	sw	zero,0(s0)
  e8:	00042223          	sw	zero,4(s0)
  ec:	00042423          	sw	zero,8(s0)
  f0:	00042623          	sw	zero,12(s0)
  f4:	00000097          	auipc	ra,0x0
  f8:	f4c080e7          	jalr	ra,-180(ra) # 40 <put>
  fc:	00442503          	lw	a0,4(s0)
 100:	00000097          	auipc	ra,0x0
 104:	f40080e7          	jalr	ra,-192(ra) # 40 <put>
 108:	00842503          	lw	a0,8(s0)
 10c:	00000097          	auipc	ra,0x0
 110:	f34080e7          	jalr	ra,-204(ra) # 40 <put>
 114:	00c42503          	lw	a0,12(s0)
 118:	00000097          	auipc	ra,0x0
 11c:	f28080e7          	jalr	ra,-216(ra) # 40 <put>
 120:	00c12083          	lw	ra,12(sp)
 124:	00812403          	lw	s0,8(sp)
 128:	00000513          	addi	a0,zero,0
 12c:	01010113          	addi	sp,sp,16
 130:	00008067          	jalr	zero,0(ra)
