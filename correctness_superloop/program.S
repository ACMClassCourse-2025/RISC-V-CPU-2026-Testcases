
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	12028293          	addi	t0,t0,288 # 124 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	11c30313          	addi	t1,t1,284 # 128 <__bss_end>
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
  44:	12478793          	addi	a5,a5,292 # 124 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1247a503          	lw	a0,292(a5) # 124 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fec8>
  74:	00112623          	sw	ra,12(sp)
  78:	00100713          	addi	a4,zero,1
  7c:	00000513          	addi	a0,zero,0
  80:	00700893          	addi	a7,zero,7
  84:	00100693          	addi	a3,zero,1
  88:	00100593          	addi	a1,zero,1
  8c:	00100813          	addi	a6,zero,1
  90:	00100613          	addi	a2,zero,1
  94:	00100793          	addi	a5,zero,1
  98:	04d70263          	beq	a4,a3,dc <main+0x6c>
  9c:	04b70063          	beq	a4,a1,dc <main+0x6c>
  a0:	03070e63          	beq	a4,a6,dc <main+0x6c>
  a4:	02c70c63          	beq	a4,a2,dc <main+0x6c>
  a8:	02f70a63          	beq	a4,a5,dc <main+0x6c>
  ac:	02b68863          	beq	a3,a1,dc <main+0x6c>
  b0:	03068663          	beq	a3,a6,dc <main+0x6c>
  b4:	02c68463          	beq	a3,a2,dc <main+0x6c>
  b8:	02f68263          	beq	a3,a5,dc <main+0x6c>
  bc:	03058063          	beq	a1,a6,dc <main+0x6c>
  c0:	00c58e63          	beq	a1,a2,dc <main+0x6c>
  c4:	00f58c63          	beq	a1,a5,dc <main+0x6c>
  c8:	00c80a63          	beq	a6,a2,dc <main+0x6c>
  cc:	00f80863          	beq	a6,a5,dc <main+0x6c>
  d0:	40f60333          	sub	t1,a2,a5
  d4:	00603333          	sltu	t1,zero,t1
  d8:	00650533          	add	a0,a0,t1
  dc:	00178793          	addi	a5,a5,1
  e0:	fb179ce3          	bne	a5,a7,98 <main+0x28>
  e4:	00160613          	addi	a2,a2,1
  e8:	faf616e3          	bne	a2,a5,94 <main+0x24>
  ec:	00180813          	addi	a6,a6,1
  f0:	fac810e3          	bne	a6,a2,90 <main+0x20>
  f4:	00158593          	addi	a1,a1,1
  f8:	f9059ae3          	bne	a1,a6,8c <main+0x1c>
  fc:	00168693          	addi	a3,a3,1
 100:	f8b694e3          	bne	a3,a1,88 <main+0x18>
 104:	00170713          	addi	a4,a4,1
 108:	f6d71ee3          	bne	a4,a3,84 <main+0x14>
 10c:	00000097          	auipc	ra,0x0
 110:	f34080e7          	jalr	ra,-204(ra) # 40 <put>
 114:	00c12083          	lw	ra,12(sp)
 118:	00000513          	addi	a0,zero,0
 11c:	01010113          	addi	sp,sp,16
 120:	00008067          	jalr	zero,0(ra)
