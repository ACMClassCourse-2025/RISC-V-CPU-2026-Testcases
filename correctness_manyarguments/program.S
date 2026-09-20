
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	0e828293          	addi	t0,t0,232 # ec <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	0e430313          	addi	t1,t1,228 # f0 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	0a4080e7          	jalr	ra,164(ra) # c8 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	0ec78793          	addi	a5,a5,236 # ec <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	0ec7a503          	lw	a0,236(a5) # ec <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <a>:
  70:	00b50533          	add	a0,a0,a1
  74:	00c50533          	add	a0,a0,a2
  78:	00d50533          	add	a0,a0,a3
  7c:	00e50533          	add	a0,a0,a4
  80:	00f50533          	add	a0,a0,a5
  84:	00012783          	lw	a5,0(sp) # 40000 <__stack_top>
  88:	01050533          	add	a0,a0,a6
  8c:	01150533          	add	a0,a0,a7
  90:	00f507b3          	add	a5,a0,a5
  94:	00412503          	lw	a0,4(sp)
  98:	00a787b3          	add	a5,a5,a0
  9c:	00812503          	lw	a0,8(sp)
  a0:	00a787b3          	add	a5,a5,a0
  a4:	00c12503          	lw	a0,12(sp)
  a8:	00a787b3          	add	a5,a5,a0
  ac:	01012503          	lw	a0,16(sp)
  b0:	00a787b3          	add	a5,a5,a0
  b4:	01412503          	lw	a0,20(sp)
  b8:	00a787b3          	add	a5,a5,a0
  bc:	01812503          	lw	a0,24(sp)
  c0:	00a78533          	add	a0,a5,a0
  c4:	00008067          	jalr	zero,0(ra)

000000c8 <main>:
  c8:	ff010113          	addi	sp,sp,-16
  cc:	07800513          	addi	a0,zero,120
  d0:	00112623          	sw	ra,12(sp)
  d4:	00000097          	auipc	ra,0x0
  d8:	f6c080e7          	jalr	ra,-148(ra) # 40 <put>
  dc:	00c12083          	lw	ra,12(sp)
  e0:	00000513          	addi	a0,zero,0
  e4:	01010113          	addi	sp,sp,16
  e8:	00008067          	jalr	zero,0(ra)
