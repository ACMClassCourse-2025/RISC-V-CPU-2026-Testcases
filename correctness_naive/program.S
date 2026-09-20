
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	09028293          	addi	t0,t0,144 # 94 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	08c30313          	addi	t1,t1,140 # 98 <__bss_end>
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
  44:	09478793          	addi	a5,a5,148 # 94 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	0947a503          	lw	a0,148(a5) # 94 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3ff58>
  74:	0b100513          	addi	a0,zero,177
  78:	00112623          	sw	ra,12(sp)
  7c:	00000097          	auipc	ra,0x0
  80:	fc4080e7          	jalr	ra,-60(ra) # 40 <put>
  84:	00c12083          	lw	ra,12(sp)
  88:	00000513          	addi	a0,zero,0
  8c:	01010113          	addi	sp,sp,16
  90:	00008067          	jalr	zero,0(ra)
