
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	06c28293          	addi	t0,t0,108 # 70 <__bss_end>
   c:	00000317          	auipc	t1,0x0
  10:	06430313          	addi	t1,t1,100 # 70 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	014080e7          	jalr	ra,20(ra) # 38 <main>
  2c:	800002b7          	lui	t0,0x80000
  30:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  34:	0000006f          	jal	zero,34 <_start+0x34>

Disassembly of section .text:

00000038 <main>:
  38:	000006b7          	lui	a3,0x0
  3c:	06c68693          	addi	a3,a3,108 # 6c <add_to_100_limit>
  40:	0006a783          	lw	a5,0(a3)
  44:	0207c063          	blt	a5,zero,64 <main+0x2c>
  48:	00000793          	addi	a5,zero,0
  4c:	00000513          	addi	a0,zero,0
  50:	0006a703          	lw	a4,0(a3)
  54:	00f50533          	add	a0,a0,a5
  58:	00178793          	addi	a5,a5,1
  5c:	fef75ae3          	bge	a4,a5,50 <main+0x18>
  60:	00008067          	jalr	zero,0(ra)
  64:	00000513          	addi	a0,zero,0
  68:	00008067          	jalr	zero,0(ra)
