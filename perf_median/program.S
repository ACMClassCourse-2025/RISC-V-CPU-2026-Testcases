
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00001297          	auipc	t0,0x1
   8:	da828293          	addi	t0,t0,-600 # dac <__bss_end>
   c:	00001317          	auipc	t1,0x1
  10:	da030313          	addi	t1,t1,-608 # dac <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	038080e7          	jalr	ra,56(ra) # 5c <main>
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

0000005c <main>:
  5c:	9b010113          	addi	sp,sp,-1616 # 3f9b0 <__bss_end+0x3ec04>
  60:	000005b7          	lui	a1,0x0
  64:	64812423          	sw	s0,1608(sp)
  68:	19000513          	addi	a0,zero,400
  6c:	12c58413          	addi	s0,a1,300 # 12c <input_data>
  70:	00010613          	addi	a2,sp,0
  74:	12c58593          	addi	a1,a1,300
  78:	64112623          	sw	ra,1612(sp)
  7c:	00000097          	auipc	ra,0x0
  80:	048080e7          	jalr	ra,72(ra) # c4 <median>
  84:	00010793          	addi	a5,sp,0
  88:	64040713          	addi	a4,s0,1600
  8c:	00000513          	addi	a0,zero,0
  90:	19000593          	addi	a1,zero,400
  94:	0007a603          	lw	a2,0(a5)
  98:	00072683          	lw	a3,0(a4)
  9c:	00150513          	addi	a0,a0,1
  a0:	00478793          	addi	a5,a5,4
  a4:	00d61863          	bne	a2,a3,b4 <main+0x58>
  a8:	00470713          	addi	a4,a4,4
  ac:	feb514e3          	bne	a0,a1,94 <main+0x38>
  b0:	00000513          	addi	a0,zero,0
  b4:	64c12083          	lw	ra,1612(sp)
  b8:	64812403          	lw	s0,1608(sp)
  bc:	65010113          	addi	sp,sp,1616
  c0:	00008067          	jalr	zero,0(ra)

000000c4 <median>:
  c4:	00251813          	slli	a6,a0,0x2
  c8:	ffc80813          	addi	a6,a6,-4
  cc:	010607b3          	add	a5,a2,a6
  d0:	00062023          	sw	zero,0(a2)
  d4:	0007a023          	sw	zero,0(a5)
  d8:	00200713          	addi	a4,zero,2
  dc:	00460793          	addi	a5,a2,4
  e0:	01060833          	add	a6,a2,a6
  e4:	02a75663          	bge	a4,a0,110 <median+0x4c>
  e8:	0005a683          	lw	a3,0(a1)
  ec:	0045a703          	lw	a4,4(a1)
  f0:	0085a603          	lw	a2,8(a1)
  f4:	02e6d063          	bge	a3,a4,114 <median+0x50>
  f8:	02c74663          	blt	a4,a2,124 <median+0x60>
  fc:	02d65063          	bge	a2,a3,11c <median+0x58>
 100:	00d7a023          	sw	a3,0(a5)
 104:	00478793          	addi	a5,a5,4
 108:	00458593          	addi	a1,a1,4
 10c:	fd079ee3          	bne	a5,a6,e8 <median+0x24>
 110:	00008067          	jalr	zero,0(ra)
 114:	fec6c6e3          	blt	a3,a2,100 <median+0x3c>
 118:	00e64663          	blt	a2,a4,124 <median+0x60>
 11c:	00c7a023          	sw	a2,0(a5)
 120:	fe5ff06f          	jal	zero,104 <median+0x40>
 124:	00e7a023          	sw	a4,0(a5)
 128:	fddff06f          	jal	zero,104 <median+0x40>
