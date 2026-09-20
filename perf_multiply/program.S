
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	5e428293          	addi	t0,t0,1508 # 5e8 <__bss_end>
   c:	00000317          	auipc	t1,0x0
  10:	5dc30313          	addi	t1,t1,1500 # 5e8 <__bss_end>
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
  5c:	e5010113          	addi	sp,sp,-432 # 3fe50 <__bss_end+0x3f868>
  60:	1a812423          	sw	s0,424(sp)
  64:	00000437          	lui	s0,0x0
  68:	19412c23          	sw	s4,408(sp)
  6c:	13840a13          	addi	s4,s0,312 # 138 <input_data1>
  70:	1a912223          	sw	s1,420(sp)
  74:	19512a23          	sw	s5,404(sp)
  78:	190a0493          	addi	s1,s4,400
  7c:	00010a93          	addi	s5,sp,0
  80:	1b212023          	sw	s2,416(sp)
  84:	19312e23          	sw	s3,412(sp)
  88:	1a112623          	sw	ra,428(sp)
  8c:	13840413          	addi	s0,s0,312
  90:	00048993          	addi	s3,s1,0
  94:	000a8913          	addi	s2,s5,0
  98:	0004a583          	lw	a1,0(s1)
  9c:	00042503          	lw	a0,0(s0)
  a0:	00440413          	addi	s0,s0,4
  a4:	00448493          	addi	s1,s1,4
  a8:	00000097          	auipc	ra,0x0
  ac:	064080e7          	jalr	ra,100(ra) # 10c <multiply>
  b0:	00a92023          	sw	a0,0(s2)
  b4:	00490913          	addi	s2,s2,4
  b8:	ff3410e3          	bne	s0,s3,98 <main+0x3c>
  bc:	320a0793          	addi	a5,s4,800
  c0:	00000513          	addi	a0,zero,0
  c4:	06400613          	addi	a2,zero,100
  c8:	000aa683          	lw	a3,0(s5)
  cc:	0007a703          	lw	a4,0(a5)
  d0:	00150513          	addi	a0,a0,1
  d4:	004a8a93          	addi	s5,s5,4
  d8:	00e69863          	bne	a3,a4,e8 <main+0x8c>
  dc:	00478793          	addi	a5,a5,4
  e0:	fec514e3          	bne	a0,a2,c8 <main+0x6c>
  e4:	00000513          	addi	a0,zero,0
  e8:	1ac12083          	lw	ra,428(sp)
  ec:	1a812403          	lw	s0,424(sp)
  f0:	1a412483          	lw	s1,420(sp)
  f4:	1a012903          	lw	s2,416(sp)
  f8:	19c12983          	lw	s3,412(sp)
  fc:	19812a03          	lw	s4,408(sp)
 100:	19412a83          	lw	s5,404(sp)
 104:	1b010113          	addi	sp,sp,432
 108:	00008067          	jalr	zero,0(ra)

0000010c <multiply>:
 10c:	00050713          	addi	a4,a0,0
 110:	02000693          	addi	a3,zero,32
 114:	00000513          	addi	a0,zero,0
 118:	00177793          	andi	a5,a4,1
 11c:	fff68693          	addi	a3,a3,-1
 120:	00078463          	beq	a5,zero,128 <multiply+0x1c>
 124:	00b50533          	add	a0,a0,a1
 128:	40175713          	srai	a4,a4,0x1
 12c:	00159593          	slli	a1,a1,0x1
 130:	fe0694e3          	bne	a3,zero,118 <multiply+0xc>
 134:	00008067          	jalr	zero,0(ra)
