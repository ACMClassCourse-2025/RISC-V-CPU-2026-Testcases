
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00001297          	auipc	t0,0x1
   8:	f0c28293          	addi	t0,t0,-244 # f10 <__bss_end>
   c:	00001317          	auipc	t1,0x1
  10:	f0430313          	addi	t1,t1,-252 # f10 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	068080e7          	jalr	ra,104(ra) # 8c <main>
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

0000005c <vvadd>:
  5c:	02a05663          	bge	zero,a0,88 <vvadd+0x2c>
  60:	00251513          	slli	a0,a0,0x2
  64:	00a58533          	add	a0,a1,a0
  68:	0005a783          	lw	a5,0(a1)
  6c:	00062703          	lw	a4,0(a2)
  70:	00458593          	addi	a1,a1,4
  74:	00460613          	addi	a2,a2,4
  78:	00e787b3          	add	a5,a5,a4
  7c:	00f6a023          	sw	a5,0(a3)
  80:	00468693          	addi	a3,a3,4
  84:	fea592e3          	bne	a1,a0,68 <vvadd+0xc>
  88:	00008067          	jalr	zero,0(ra)

0000008c <main>:
  8c:	000007b7          	lui	a5,0x0
  90:	b5010113          	addi	sp,sp,-1200 # 3fb50 <__bss_end+0x3ec40>
  94:	10078793          	addi	a5,a5,256 # 100 <input1_data>
  98:	4b078613          	addi	a2,a5,1200
  9c:	00010693          	addi	a3,sp,0
  a0:	00060813          	addi	a6,a2,0
  a4:	00068593          	addi	a1,a3,0
  a8:	0007a703          	lw	a4,0(a5)
  ac:	00062503          	lw	a0,0(a2)
  b0:	00478793          	addi	a5,a5,4
  b4:	00460613          	addi	a2,a2,4
  b8:	00a70733          	add	a4,a4,a0
  bc:	00e5a023          	sw	a4,0(a1)
  c0:	00458593          	addi	a1,a1,4
  c4:	ff0792e3          	bne	a5,a6,a8 <main+0x1c>
  c8:	000017b7          	lui	a5,0x1
  cc:	a6078793          	addi	a5,a5,-1440 # a60 <verify_data>
  d0:	00000513          	addi	a0,zero,0
  d4:	12c00593          	addi	a1,zero,300
  d8:	0006a603          	lw	a2,0(a3)
  dc:	0007a703          	lw	a4,0(a5)
  e0:	00150513          	addi	a0,a0,1
  e4:	00468693          	addi	a3,a3,4
  e8:	00e61863          	bne	a2,a4,f8 <main+0x6c>
  ec:	00478793          	addi	a5,a5,4
  f0:	feb514e3          	bne	a0,a1,d8 <main+0x4c>
  f4:	00000513          	addi	a0,zero,0
  f8:	4b010113          	addi	sp,sp,1200
  fc:	00008067          	jalr	zero,0(ra)
