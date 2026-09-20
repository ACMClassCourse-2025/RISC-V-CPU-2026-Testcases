
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	1c028293          	addi	t0,t0,448 # 1c4 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	21430313          	addi	t1,t1,532 # 220 <__bss_end>
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
  44:	1c478793          	addi	a5,a5,452 # 1c4 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1c47a503          	lw	a0,452(a5) # 1c4 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <main>:
  70:	f6010113          	addi	sp,sp,-160 # 3ff60 <__bss_end+0x3fd40>
  74:	08912a23          	sw	s1,148(sp)
  78:	000004b7          	lui	s1,0x0
  7c:	1c848493          	addi	s1,s1,456 # 1c8 <M>
  80:	00a00793          	addi	a5,zero,10
  84:	00f4a223          	sw	a5,4(s1)
  88:	08112e23          	sw	ra,156(sp)
  8c:	08812c23          	sw	s0,152(sp)
  90:	09212823          	sw	s2,144(sp)
  94:	09312623          	sw	s3,140(sp)
  98:	0004a023          	sw	zero,0(s1)
  9c:	00848793          	addi	a5,s1,8
  a0:	03448693          	addi	a3,s1,52
  a4:	00100713          	addi	a4,zero,1
  a8:	00e7a023          	sw	a4,0(a5)
  ac:	00478793          	addi	a5,a5,4
  b0:	fed79ce3          	bne	a5,a3,a8 <main+0x38>
  b4:	0104a783          	lw	a5,16(s1)
  b8:	01048993          	addi	s3,s1,16
  bc:	01010913          	addi	s2,sp,16
  c0:	00000e13          	addi	t3,zero,0
  c4:	00200413          	addi	s0,zero,2
  c8:	00a00e93          	addi	t4,zero,10
  cc:	08079263          	bne	a5,zero,150 <main+0xe0>
  d0:	00092503          	lw	a0,0(s2)
  d4:	05c05a63          	bge	zero,t3,128 <main+0xb8>
  d8:	04810593          	addi	a1,sp,72
  dc:	00100813          	addi	a6,zero,1
  e0:	0200006f          	jal	zero,100 <main+0x90>
  e4:	02f46733          	rem	a4,s0,a5
  e8:	0008a423          	sw	zero,8(a7)
  ec:	08070463          	beq	a4,zero,174 <main+0x104>
  f0:	02a686b3          	mul	a3,a3,a0
  f4:	f8d32423          	sw	a3,-120(t1)
  f8:	00092503          	lw	a0,0(s2)
  fc:	030e4663          	blt	t3,a6,128 <main+0xb8>
 100:	0005a783          	lw	a5,0(a1)
 104:	08010313          	addi	t1,sp,128
 108:	00180813          	addi	a6,a6,1
 10c:	02878733          	mul	a4,a5,s0
 110:	00458593          	addi	a1,a1,4
 114:	fff78693          	addi	a3,a5,-1
 118:	00271613          	slli	a2,a4,0x2
 11c:	00c488b3          	add	a7,s1,a2
 120:	00c30333          	add	t1,t1,a2
 124:	fceed0e3          	bge	t4,a4,e4 <main+0x74>
 128:	00000097          	auipc	ra,0x0
 12c:	f18080e7          	jalr	ra,-232(ra) # 40 <put>
 130:	0044ae83          	lw	t4,4(s1)
 134:	00140413          	addi	s0,s0,1
 138:	00498993          	addi	s3,s3,4
 13c:	00490913          	addi	s2,s2,4
 140:	068ec263          	blt	t4,s0,1a4 <main+0x134>
 144:	0009a783          	lw	a5,0(s3)
 148:	0004ae03          	lw	t3,0(s1)
 14c:	f80782e3          	beq	a5,zero,d0 <main+0x60>
 150:	001e0e13          	addi	t3,t3,1
 154:	002e1793          	slli	a5,t3,0x2
 158:	08010713          	addi	a4,sp,128
 15c:	00f707b3          	add	a5,a4,a5
 160:	fff40513          	addi	a0,s0,-1
 164:	01c4a023          	sw	t3,0(s1)
 168:	fc87a223          	sw	s0,-60(a5)
 16c:	00a92023          	sw	a0,0(s2)
 170:	f65ff06f          	jal	zero,d4 <main+0x64>
 174:	02a787b3          	mul	a5,a5,a0
 178:	08010713          	addi	a4,sp,128
 17c:	00c70633          	add	a2,a4,a2
 180:	00140413          	addi	s0,s0,1
 184:	00498993          	addi	s3,s3,4
 188:	00490913          	addi	s2,s2,4
 18c:	f8f62423          	sw	a5,-120(a2)
 190:	ffc92503          	lw	a0,-4(s2)
 194:	00000097          	auipc	ra,0x0
 198:	eac080e7          	jalr	ra,-340(ra) # 40 <put>
 19c:	0044ae83          	lw	t4,4(s1)
 1a0:	fa8ed2e3          	bge	t4,s0,144 <main+0xd4>
 1a4:	09c12083          	lw	ra,156(sp)
 1a8:	09812403          	lw	s0,152(sp)
 1ac:	09412483          	lw	s1,148(sp)
 1b0:	09012903          	lw	s2,144(sp)
 1b4:	08c12983          	lw	s3,140(sp)
 1b8:	00000513          	addi	a0,zero,0
 1bc:	0a010113          	addi	sp,sp,160
 1c0:	00008067          	jalr	zero,0(ra)
