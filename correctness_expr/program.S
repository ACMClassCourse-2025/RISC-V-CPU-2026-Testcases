
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	10828293          	addi	t0,t0,264 # 10c <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	10430313          	addi	t1,t1,260 # 110 <__bss_end>
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
  44:	10c78793          	addi	a5,a5,268 # 10c <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	10c7a503          	lw	a0,268(a5) # 10c <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fee0>
  74:	200006b7          	lui	a3,0x20000
  78:	40000737          	lui	a4,0x40000
  7c:	00812423          	sw	s0,8(sp)
  80:	00912223          	sw	s1,4(sp)
  84:	00112623          	sw	ra,12(sp)
  88:	00100413          	addi	s0,zero,1
  8c:	00100493          	addi	s1,zero,1
  90:	00100513          	addi	a0,zero,1
  94:	fff68693          	addi	a3,a3,-1 # 1fffffff <__stack_top+0x1ffbffff>
  98:	ffe70713          	addi	a4,a4,-2 # 3ffffffe <__stack_top+0x3ffbfffe>
  9c:	40a407b3          	sub	a5,s0,a0
  a0:	40a78533          	sub	a0,a5,a0
  a4:	00151513          	slli	a0,a0,0x1
  a8:	009787b3          	add	a5,a5,s1
  ac:	40a78533          	sub	a0,a5,a0
  b0:	40a40433          	sub	s0,s0,a0
  b4:	40a407b3          	sub	a5,s0,a0
  b8:	00179793          	slli	a5,a5,0x1
  bc:	009404b3          	add	s1,s0,s1
  c0:	40f484b3          	sub	s1,s1,a5
  c4:	00940433          	add	s0,s0,s1
  c8:	40f40433          	sub	s0,s0,a5
  cc:	00d407b3          	add	a5,s0,a3
  d0:	fcf776e3          	bgeu	a4,a5,9c <main+0x2c>
  d4:	00000097          	auipc	ra,0x0
  d8:	f6c080e7          	jalr	ra,-148(ra) # 40 <put>
  dc:	00048513          	addi	a0,s1,0
  e0:	00000097          	auipc	ra,0x0
  e4:	f60080e7          	jalr	ra,-160(ra) # 40 <put>
  e8:	00040513          	addi	a0,s0,0
  ec:	00000097          	auipc	ra,0x0
  f0:	f54080e7          	jalr	ra,-172(ra) # 40 <put>
  f4:	00c12083          	lw	ra,12(sp)
  f8:	00812403          	lw	s0,8(sp)
  fc:	00412483          	lw	s1,4(sp)
 100:	00000513          	addi	a0,zero,0
 104:	01010113          	addi	sp,sp,16
 108:	00008067          	jalr	zero,0(ra)
