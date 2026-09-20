
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	37c28293          	addi	t0,t0,892 # 380 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	3d030313          	addi	t1,t1,976 # 3dc <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	314080e7          	jalr	ra,788(ra) # 338 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	38078793          	addi	a5,a5,896 # 380 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	3807a503          	lw	a0,896(a5) # 380 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <origin>:
  70:	000005b7          	lui	a1,0x0
  74:	38458593          	addi	a1,a1,900 # 384 <i>
  78:	0005a023          	sw	zero,0(a1)
  7c:	04a05263          	bge	zero,a0,c0 <origin+0x50>
  80:	00151713          	slli	a4,a0,0x1
  84:	00a70733          	add	a4,a4,a0
  88:	00458793          	addi	a5,a1,4
  8c:	00271713          	slli	a4,a4,0x2
  90:	00f70733          	add	a4,a4,a5
  94:	00100693          	addi	a3,zero,1
  98:	00200613          	addi	a2,zero,2
  9c:	0007a023          	sw	zero,0(a5)
  a0:	00d50863          	beq	a0,a3,b0 <origin+0x40>
  a4:	0007a223          	sw	zero,4(a5)
  a8:	00c50463          	beq	a0,a2,b0 <origin+0x40>
  ac:	0007a423          	sw	zero,8(a5)
  b0:	00c78793          	addi	a5,a5,12
  b4:	fef714e3          	bne	a4,a5,9c <origin+0x2c>
  b8:	02a5a423          	sw	a0,40(a1)
  bc:	00a5a023          	sw	a0,0(a1)
  c0:	00008067          	jalr	zero,0(ra)

000000c4 <search>:
  c4:	fd010113          	addi	sp,sp,-48 # 3ffd0 <__bss_end+0x3fbf4>
  c8:	01412c23          	sw	s4,24(sp)
  cc:	01612823          	sw	s6,16(sp)
  d0:	02112623          	sw	ra,44(sp)
  d4:	02812423          	sw	s0,40(sp)
  d8:	02912223          	sw	s1,36(sp)
  dc:	03212023          	sw	s2,32(sp)
  e0:	01312e23          	sw	s3,28(sp)
  e4:	01512a23          	sw	s5,20(sp)
  e8:	01712623          	sw	s7,12(sp)
  ec:	00050a13          	addi	s4,a0,0
  f0:	00060b13          	addi	s6,a2,0
  f4:	0a059663          	bne	a1,zero,1a0 <search+0xdc>
  f8:	12051863          	bne	a0,zero,228 <search+0x164>
  fc:	000009b7          	lui	s3,0x0
 100:	38498993          	addi	s3,s3,900 # 384 <i>
 104:	001a1793          	slli	a5,s4,0x1
 108:	014787b3          	add	a5,a5,s4
 10c:	00b787b3          	add	a5,a5,a1
 110:	00279793          	slli	a5,a5,0x2
 114:	03098493          	addi	s1,s3,48
 118:	00100413          	addi	s0,zero,1
 11c:	00100b93          	addi	s7,zero,1
 120:	00f989b3          	add	s3,s3,a5
 124:	00158913          	addi	s2,a1,1
 128:	00a00a93          	addi	s5,zero,10
 12c:	0100006f          	jal	zero,13c <search+0x78>
 130:	00140413          	addi	s0,s0,1
 134:	00448493          	addi	s1,s1,4
 138:	03540e63          	beq	s0,s5,174 <search+0xb0>
 13c:	0044a783          	lw	a5,4(s1)
 140:	fe0798e3          	bne	a5,zero,130 <search+0x6c>
 144:	01640633          	add	a2,s0,s6
 148:	0174a223          	sw	s7,4(s1)
 14c:	0089a223          	sw	s0,4(s3)
 150:	00090593          	addi	a1,s2,0
 154:	000a0513          	addi	a0,s4,0
 158:	00000097          	auipc	ra,0x0
 15c:	f6c080e7          	jalr	ra,-148(ra) # c4 <search>
 160:	00140413          	addi	s0,s0,1
 164:	0004a223          	sw	zero,4(s1)
 168:	0009a223          	sw	zero,4(s3)
 16c:	00448493          	addi	s1,s1,4
 170:	fd5416e3          	bne	s0,s5,13c <search+0x78>
 174:	02c12083          	lw	ra,44(sp)
 178:	02812403          	lw	s0,40(sp)
 17c:	02412483          	lw	s1,36(sp)
 180:	02012903          	lw	s2,32(sp)
 184:	01c12983          	lw	s3,28(sp)
 188:	01812a03          	lw	s4,24(sp)
 18c:	01412a83          	lw	s5,20(sp)
 190:	01012b03          	lw	s6,16(sp)
 194:	00c12b83          	lw	s7,12(sp)
 198:	03010113          	addi	sp,sp,48
 19c:	00008067          	jalr	zero,0(ra)
 1a0:	00200793          	addi	a5,zero,2
 1a4:	0cf50063          	beq	a0,a5,264 <search+0x1a0>
 1a8:	f4f59ae3          	bne	a1,a5,fc <search+0x38>
 1ac:	00151413          	slli	s0,a0,0x1
 1b0:	00a40433          	add	s0,s0,a0
 1b4:	000004b7          	lui	s1,0x0
 1b8:	38448493          	addi	s1,s1,900 # 384 <i>
 1bc:	00241413          	slli	s0,s0,0x2
 1c0:	00848433          	add	s0,s1,s0
 1c4:	00442703          	lw	a4,4(s0)
 1c8:	00842783          	lw	a5,8(s0)
 1cc:	00f00613          	addi	a2,zero,15
 1d0:	40e60633          	sub	a2,a2,a4
 1d4:	40f60633          	sub	a2,a2,a5
 1d8:	00c42623          	sw	a2,12(s0)
 1dc:	fff60713          	addi	a4,a2,-1
 1e0:	00800793          	addi	a5,zero,8
 1e4:	f8e7e8e3          	bltu	a5,a4,174 <search+0xb0>
 1e8:	00261793          	slli	a5,a2,0x2
 1ec:	00f487b3          	add	a5,s1,a5
 1f0:	0307a703          	lw	a4,48(a5)
 1f4:	f80710e3          	bne	a4,zero,174 <search+0xb0>
 1f8:	00100713          	addi	a4,zero,1
 1fc:	02e7a823          	sw	a4,48(a5)
 200:	01660633          	add	a2,a2,s6
 204:	00000593          	addi	a1,zero,0
 208:	00150513          	addi	a0,a0,1
 20c:	00000097          	auipc	ra,0x0
 210:	eb8080e7          	jalr	ra,-328(ra) # c4 <search>
 214:	00c42783          	lw	a5,12(s0)
 218:	00279793          	slli	a5,a5,0x2
 21c:	00f484b3          	add	s1,s1,a5
 220:	0204a823          	sw	zero,48(s1)
 224:	f51ff06f          	jal	zero,174 <search+0xb0>
 228:	fff50713          	addi	a4,a0,-1
 22c:	00171793          	slli	a5,a4,0x1
 230:	00e787b3          	add	a5,a5,a4
 234:	000009b7          	lui	s3,0x0
 238:	38498993          	addi	s3,s3,900 # 384 <i>
 23c:	00279793          	slli	a5,a5,0x2
 240:	00f987b3          	add	a5,s3,a5
 244:	0047a703          	lw	a4,4(a5)
 248:	0087a503          	lw	a0,8(a5)
 24c:	00c7a603          	lw	a2,12(a5)
 250:	00f00693          	addi	a3,zero,15
 254:	00a707b3          	add	a5,a4,a0
 258:	00c787b3          	add	a5,a5,a2
 25c:	f0d79ce3          	bne	a5,a3,174 <search+0xb0>
 260:	ea5ff06f          	jal	zero,104 <search+0x40>
 264:	000009b7          	lui	s3,0x0
 268:	38498993          	addi	s3,s3,900 # 384 <i>
 26c:	e8a59ce3          	bne	a1,a0,104 <search+0x40>
 270:	0049a683          	lw	a3,4(s3)
 274:	0089a583          	lw	a1,8(s3)
 278:	0109a703          	lw	a4,16(s3)
 27c:	0149a503          	lw	a0,20(s3)
 280:	00c9a603          	lw	a2,12(s3)
 284:	0189a883          	lw	a7,24(s3)
 288:	02d00793          	addi	a5,zero,45
 28c:	41678b33          	sub	s6,a5,s6
 290:	00b68833          	add	a6,a3,a1
 294:	00a707b3          	add	a5,a4,a0
 298:	0369a223          	sw	s6,36(s3)
 29c:	00c80333          	add	t1,a6,a2
 2a0:	011787b3          	add	a5,a5,a7
 2a4:	ec6798e3          	bne	a5,t1,174 <search+0xb0>
 2a8:	01c9ae03          	lw	t3,28(s3)
 2ac:	0209ae83          	lw	t4,32(s3)
 2b0:	01de0333          	add	t1,t3,t4
 2b4:	01630333          	add	t1,t1,s6
 2b8:	eaf31ee3          	bne	t1,a5,174 <search+0xb0>
 2bc:	00e687b3          	add	a5,a3,a4
 2c0:	01c787b3          	add	a5,a5,t3
 2c4:	ea6798e3          	bne	a5,t1,174 <search+0xb0>
 2c8:	00a58733          	add	a4,a1,a0
 2cc:	01d70733          	add	a4,a4,t4
 2d0:	eaf712e3          	bne	a4,a5,174 <search+0xb0>
 2d4:	011607b3          	add	a5,a2,a7
 2d8:	016787b3          	add	a5,a5,s6
 2dc:	e8e79ce3          	bne	a5,a4,174 <search+0xb0>
 2e0:	00a686b3          	add	a3,a3,a0
 2e4:	01668b33          	add	s6,a3,s6
 2e8:	e8fb16e3          	bne	s6,a5,174 <search+0xb0>
 2ec:	01c50533          	add	a0,a0,t3
 2f0:	e8a812e3          	bne	a6,a0,174 <search+0xb0>
 2f4:	02c9a783          	lw	a5,44(s3)
 2f8:	00498413          	addi	s0,s3,4
 2fc:	02898493          	addi	s1,s3,40
 300:	00178793          	addi	a5,a5,1
 304:	02f9a623          	sw	a5,44(s3)
 308:	00042503          	lw	a0,0(s0)
 30c:	00c40413          	addi	s0,s0,12
 310:	00000097          	auipc	ra,0x0
 314:	d30080e7          	jalr	ra,-720(ra) # 40 <put>
 318:	ff842503          	lw	a0,-8(s0)
 31c:	00000097          	auipc	ra,0x0
 320:	d24080e7          	jalr	ra,-732(ra) # 40 <put>
 324:	ffc42503          	lw	a0,-4(s0)
 328:	00000097          	auipc	ra,0x0
 32c:	d18080e7          	jalr	ra,-744(ra) # 40 <put>
 330:	fc941ce3          	bne	s0,s1,308 <search+0x244>
 334:	e41ff06f          	jal	zero,174 <search+0xb0>

00000338 <main>:
 338:	ff010113          	addi	sp,sp,-16
 33c:	00300513          	addi	a0,zero,3
 340:	00112623          	sw	ra,12(sp)
 344:	00000097          	auipc	ra,0x0
 348:	d2c080e7          	jalr	ra,-724(ra) # 70 <origin>
 34c:	00000613          	addi	a2,zero,0
 350:	00000593          	addi	a1,zero,0
 354:	00000513          	addi	a0,zero,0
 358:	00000097          	auipc	ra,0x0
 35c:	d6c080e7          	jalr	ra,-660(ra) # c4 <search>
 360:	000007b7          	lui	a5,0x0
 364:	3b07a503          	lw	a0,944(a5) # 3b0 <count>
 368:	00000097          	auipc	ra,0x0
 36c:	cd8080e7          	jalr	ra,-808(ra) # 40 <put>
 370:	00c12083          	lw	ra,12(sp)
 374:	00000513          	addi	a0,zero,0
 378:	01010113          	addi	sp,sp,16
 37c:	00008067          	jalr	zero,0(ra)
