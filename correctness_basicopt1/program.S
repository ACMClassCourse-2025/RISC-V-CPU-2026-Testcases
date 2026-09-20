
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	17828293          	addi	t0,t0,376 # 17c <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	17430313          	addi	t1,t1,372 # 180 <__bss_end>
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
  44:	17c78793          	addi	a5,a5,380 # 17c <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	17c7a503          	lw	a0,380(a5) # 17c <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	ffff7337          	lui	t1,0xffff7
  74:	0000a737          	lui	a4,0xa
  78:	81010113          	addi	sp,sp,-2032 # 3f810 <__bss_end+0x3f690>
  7c:	ba030313          	addi	t1,t1,-1120 # ffff6ba0 <__stack_top+0xfffb6ba0>
  80:	c4070793          	addi	a5,a4,-960 # 9c40 <__bss_end+0x9ac0>
  84:	7e112623          	sw	ra,2028(sp)
  88:	00610133          	add	sp,sp,t1
  8c:	002787b3          	add	a5,a5,sp
  90:	ffff66b7          	lui	a3,0xffff6
  94:	00d786b3          	add	a3,a5,a3
  98:	55068693          	addi	a3,a3,1360 # ffff6550 <__stack_top+0xfffb6550>
  9c:	dd070793          	addi	a5,a4,-560
  a0:	00f105b3          	add	a1,sp,a5
  a4:	00068713          	addi	a4,a3,0
  a8:	e7070793          	addi	a5,a4,-400
  ac:	0007a023          	sw	zero,0(a5)
  b0:	00478793          	addi	a5,a5,4
  b4:	fee79ce3          	bne	a5,a4,ac <main+0x3c>
  b8:	19078713          	addi	a4,a5,400
  bc:	feb716e3          	bne	a4,a1,a8 <main+0x38>
  c0:	0000a7b7          	lui	a5,0xa
  c4:	c4078793          	addi	a5,a5,-960 # 9c40 <__bss_end+0x9ac0>
  c8:	ffff6337          	lui	t1,0xffff6
  cc:	002787b3          	add	a5,a5,sp
  d0:	00000713          	addi	a4,zero,0
  d4:	03a00813          	addi	a6,zero,58
  d8:	06400513          	addi	a0,zero,100
  dc:	00678333          	add	t1,a5,t1
  e0:	01900e93          	addi	t4,zero,25
  e4:	feb70793          	addi	a5,a4,-21
  e8:	00170613          	addi	a2,a4,1
  ec:	04f87a63          	bgeu	a6,a5,140 <main+0xd0>
  f0:	00a60663          	beq	a2,a0,fc <main+0x8c>
  f4:	00060713          	addi	a4,a2,0
  f8:	fedff06f          	jal	zero,e4 <main+0x74>
  fc:	00000513          	addi	a0,zero,0
 100:	e7068793          	addi	a5,a3,-400
 104:	0007a703          	lw	a4,0(a5)
 108:	00478793          	addi	a5,a5,4
 10c:	00e50533          	add	a0,a0,a4
 110:	fed79ae3          	bne	a5,a3,104 <main+0x94>
 114:	19078693          	addi	a3,a5,400
 118:	feb694e3          	bne	a3,a1,100 <main+0x90>
 11c:	00000097          	auipc	ra,0x0
 120:	f24080e7          	jalr	ra,-220(ra) # 40 <put>
 124:	00009337          	lui	t1,0x9
 128:	46030313          	addi	t1,t1,1120 # 9460 <__bss_end+0x92e0>
 12c:	00610133          	add	sp,sp,t1
 130:	7ec12083          	lw	ra,2028(sp)
 134:	00000513          	addi	a0,zero,0
 138:	7f010113          	addi	sp,sp,2032
 13c:	00008067          	jalr	zero,0(ra)
 140:	00000893          	addi	a7,zero,0
 144:	03d8c7b3          	div	a5,a7,t4
 148:	00289e13          	slli	t3,a7,0x2
 14c:	03288f13          	addi	t5,a7,50
 150:	00188893          	addi	a7,a7,1
 154:	02ae6e33          	rem	t3,t3,a0
 158:	00e787b3          	add	a5,a5,a4
 15c:	02a787b3          	mul	a5,a5,a0
 160:	01c787b3          	add	a5,a5,t3
 164:	00279793          	slli	a5,a5,0x2
 168:	00f307b3          	add	a5,t1,a5
 16c:	3de7a023          	sw	t5,960(a5)
 170:	fca89ae3          	bne	a7,a0,144 <main+0xd4>
 174:	00060713          	addi	a4,a2,0
 178:	f6dff06f          	jal	zero,e4 <main+0x74>
