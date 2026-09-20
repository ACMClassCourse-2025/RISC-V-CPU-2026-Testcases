
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	10428293          	addi	t0,t0,260 # 108 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	11030313          	addi	t1,t1,272 # 11c <__bss_end>
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
  44:	10878793          	addi	a5,a5,264 # 108 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1087a503          	lw	a0,264(a5) # 108 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fed4>
  74:	00812423          	sw	s0,8(sp)
  78:	00000437          	lui	s0,0x0
  7c:	10c40413          	addi	s0,s0,268 # 10c <a>
  80:	00000513          	addi	a0,zero,0
  84:	00112623          	sw	ra,12(sp)
  88:	00042023          	sw	zero,0(s0)
  8c:	00042223          	sw	zero,4(s0)
  90:	00042423          	sw	zero,8(s0)
  94:	00042623          	sw	zero,12(s0)
  98:	00000097          	auipc	ra,0x0
  9c:	fa8080e7          	jalr	ra,-88(ra) # 40 <put>
  a0:	00442503          	lw	a0,4(s0)
  a4:	00000097          	auipc	ra,0x0
  a8:	f9c080e7          	jalr	ra,-100(ra) # 40 <put>
  ac:	00842503          	lw	a0,8(s0)
  b0:	00000097          	auipc	ra,0x0
  b4:	f90080e7          	jalr	ra,-112(ra) # 40 <put>
  b8:	00c42503          	lw	a0,12(s0)
  bc:	00000097          	auipc	ra,0x0
  c0:	f84080e7          	jalr	ra,-124(ra) # 40 <put>
  c4:	00100513          	addi	a0,zero,1
  c8:	00000097          	auipc	ra,0x0
  cc:	f78080e7          	jalr	ra,-136(ra) # 40 <put>
  d0:	00200513          	addi	a0,zero,2
  d4:	00000097          	auipc	ra,0x0
  d8:	f6c080e7          	jalr	ra,-148(ra) # 40 <put>
  dc:	00300513          	addi	a0,zero,3
  e0:	00000097          	auipc	ra,0x0
  e4:	f60080e7          	jalr	ra,-160(ra) # 40 <put>
  e8:	00400513          	addi	a0,zero,4
  ec:	00000097          	auipc	ra,0x0
  f0:	f54080e7          	jalr	ra,-172(ra) # 40 <put>
  f4:	00c12083          	lw	ra,12(sp)
  f8:	00812403          	lw	s0,8(sp)
  fc:	00000513          	addi	a0,zero,0
 100:	01010113          	addi	sp,sp,16
 104:	00008067          	jalr	zero,0(ra)
