
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	0f028293          	addi	t0,t0,240 # f4 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	0ec30313          	addi	t1,t1,236 # f8 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	060080e7          	jalr	ra,96(ra) # 84 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	0f478793          	addi	a5,a5,244 # f4 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	0f47a503          	lw	a0,244(a5) # f4 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <gcd>:
  70:	00058793          	addi	a5,a1,0
  74:	02b565b3          	rem	a1,a0,a1
  78:	00078513          	addi	a0,a5,0
  7c:	fe059ae3          	bne	a1,zero,70 <gcd>
  80:	00008067          	jalr	zero,0(ra)

00000084 <main>:
  84:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fef8>
  88:	00100513          	addi	a0,zero,1
  8c:	00112623          	sw	ra,12(sp)
  90:	00000097          	auipc	ra,0x0
  94:	fb0080e7          	jalr	ra,-80(ra) # 40 <put>
  98:	000017b7          	lui	a5,0x1
  9c:	00009537          	lui	a0,0x9
  a0:	c0f78793          	addi	a5,a5,-1009 # c0f <__bss_end+0xb17>
  a4:	8aa50513          	addi	a0,a0,-1878 # 88aa <__bss_end+0x87b2>
  a8:	00078713          	addi	a4,a5,0
  ac:	02f567b3          	rem	a5,a0,a5
  b0:	00070513          	addi	a0,a4,0
  b4:	fe079ae3          	bne	a5,zero,a8 <main+0x24>
  b8:	00000097          	auipc	ra,0x0
  bc:	f88080e7          	jalr	ra,-120(ra) # 40 <put>
  c0:	00001537          	lui	a0,0x1
  c4:	60300793          	addi	a5,zero,1539
  c8:	b5b50513          	addi	a0,a0,-1189 # b5b <__bss_end+0xa63>
  cc:	00078713          	addi	a4,a5,0
  d0:	02f567b3          	rem	a5,a0,a5
  d4:	00070513          	addi	a0,a4,0
  d8:	fe079ae3          	bne	a5,zero,cc <main+0x48>
  dc:	00000097          	auipc	ra,0x0
  e0:	f64080e7          	jalr	ra,-156(ra) # 40 <put>
  e4:	00c12083          	lw	ra,12(sp)
  e8:	00000513          	addi	a0,zero,0
  ec:	01010113          	addi	sp,sp,16
  f0:	00008067          	jalr	zero,0(ra)
