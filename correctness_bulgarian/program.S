
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	5c428293          	addi	t0,t0,1476 # 5c8 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	76c30313          	addi	t1,t1,1900 # 778 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	338080e7          	jalr	ra,824(ra) # 35c <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	5c878793          	addi	a5,a5,1480 # 5c8 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	5c87a503          	lw	a0,1480(a5) # 5c8 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <random>:
  70:	00000737          	lui	a4,0x0
  74:	000006b7          	lui	a3,0x0
  78:	5cc70713          	addi	a4,a4,1484 # 5cc <Q>
  7c:	5c468693          	addi	a3,a3,1476 # 5c4 <seed>
  80:	0006a783          	lw	a5,0(a3)
  84:	00072603          	lw	a2,0(a4)
  88:	00472803          	lw	a6,4(a4)
  8c:	00872583          	lw	a1,8(a4)
  90:	02c7e533          	rem	a0,a5,a2
  94:	02c7c7b3          	div	a5,a5,a2
  98:	03050533          	mul	a0,a0,a6
  9c:	02b787b3          	mul	a5,a5,a1
  a0:	40f50533          	sub	a0,a0,a5
  a4:	00055663          	bge	a0,zero,b0 <random+0x40>
  a8:	00c72783          	lw	a5,12(a4)
  ac:	00f50533          	add	a0,a0,a5
  b0:	00a6a023          	sw	a0,0(a3)
  b4:	00008067          	jalr	zero,0(ra)

000000b8 <initialize>:
  b8:	000007b7          	lui	a5,0x0
  bc:	5ca7a223          	sw	a0,1476(a5) # 5c4 <seed>
  c0:	00008067          	jalr	zero,0(ra)

000000c4 <swap>:
  c4:	000007b7          	lui	a5,0x0
  c8:	5cc78793          	addi	a5,a5,1484 # 5cc <Q>
  cc:	00259593          	slli	a1,a1,0x2
  d0:	00b785b3          	add	a1,a5,a1
  d4:	00251513          	slli	a0,a0,0x2
  d8:	0105a683          	lw	a3,16(a1)
  dc:	00a787b3          	add	a5,a5,a0
  e0:	0107a703          	lw	a4,16(a5)
  e4:	00d7a823          	sw	a3,16(a5)
  e8:	00e5a823          	sw	a4,16(a1)
  ec:	00008067          	jalr	zero,0(ra)

000000f0 <pd>:
  f0:	00000837          	lui	a6,0x0
  f4:	5cc80813          	addi	a6,a6,1484 # 5cc <Q>
  f8:	1a082703          	lw	a4,416(a6)
  fc:	04e54663          	blt	a0,a4,148 <pd+0x58>
 100:	00000593          	addi	a1,zero,0
 104:	00c0006f          	jal	zero,110 <pd+0x20>
 108:	00100593          	addi	a1,zero,1
 10c:	02e54863          	blt	a0,a4,13c <pd+0x4c>
 110:	00070613          	addi	a2,a4,0
 114:	00170713          	addi	a4,a4,1
 118:	02c706b3          	mul	a3,a4,a2
 11c:	01f6d793          	srli	a5,a3,0x1f
 120:	00d787b3          	add	a5,a5,a3
 124:	4017d793          	srai	a5,a5,0x1
 128:	fea790e3          	bne	a5,a0,108 <pd+0x18>
 12c:	00058463          	beq	a1,zero,134 <pd+0x44>
 130:	1ac82023          	sw	a2,416(a6)
 134:	00100513          	addi	a0,zero,1
 138:	00008067          	jalr	zero,0(ra)
 13c:	1ae82023          	sw	a4,416(a6)
 140:	00000513          	addi	a0,zero,0
 144:	00008067          	jalr	zero,0(ra)
 148:	00000513          	addi	a0,zero,0
 14c:	00008067          	jalr	zero,0(ra)

00000150 <show>:
 150:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3f878>
 154:	01212023          	sw	s2,0(sp)
 158:	00000937          	lui	s2,0x0
 15c:	5cc90913          	addi	s2,s2,1484 # 5cc <Q>
 160:	1a492783          	lw	a5,420(s2)
 164:	00112623          	sw	ra,12(sp)
 168:	00812423          	sw	s0,8(sp)
 16c:	00912223          	sw	s1,4(sp)
 170:	02f05463          	bge	zero,a5,198 <show+0x48>
 174:	01090493          	addi	s1,s2,16
 178:	00000413          	addi	s0,zero,0
 17c:	0004a503          	lw	a0,0(s1)
 180:	00140413          	addi	s0,s0,1
 184:	00448493          	addi	s1,s1,4
 188:	00000097          	auipc	ra,0x0
 18c:	eb8080e7          	jalr	ra,-328(ra) # 40 <put>
 190:	1a492783          	lw	a5,420(s2)
 194:	fef444e3          	blt	s0,a5,17c <show+0x2c>
 198:	00c12083          	lw	ra,12(sp)
 19c:	00812403          	lw	s0,8(sp)
 1a0:	00412483          	lw	s1,4(sp)
 1a4:	00012903          	lw	s2,0(sp)
 1a8:	01010113          	addi	sp,sp,16
 1ac:	00008067          	jalr	zero,0(ra)

000001b0 <win>:
 1b0:	000007b7          	lui	a5,0x0
 1b4:	5cc78793          	addi	a5,a5,1484 # 5cc <Q>
 1b8:	1a47a883          	lw	a7,420(a5)
 1bc:	1a07a703          	lw	a4,416(a5)
 1c0:	00e88663          	beq	a7,a4,1cc <win+0x1c>
 1c4:	00000513          	addi	a0,zero,0
 1c8:	00008067          	jalr	zero,0(ra)
 1cc:	e7010113          	addi	sp,sp,-400
 1d0:	00010813          	addi	a6,sp,0
 1d4:	03105663          	bge	zero,a7,200 <win+0x50>
 1d8:	01078793          	addi	a5,a5,16
 1dc:	00010813          	addi	a6,sp,0
 1e0:	00289613          	slli	a2,a7,0x2
 1e4:	00080713          	addi	a4,a6,0
 1e8:	00f60633          	add	a2,a2,a5
 1ec:	0007a683          	lw	a3,0(a5)
 1f0:	00478793          	addi	a5,a5,4
 1f4:	00470713          	addi	a4,a4,4
 1f8:	fed72e23          	sw	a3,-4(a4)
 1fc:	fec798e3          	bne	a5,a2,1ec <win+0x3c>
 200:	fff88313          	addi	t1,a7,-1
 204:	04605263          	bge	zero,t1,248 <win+0x98>
 208:	00289593          	slli	a1,a7,0x2
 20c:	00410613          	addi	a2,sp,4
 210:	010585b3          	add	a1,a1,a6
 214:	00000513          	addi	a0,zero,0
 218:	00150513          	addi	a0,a0,1
 21c:	03155263          	bge	a0,a7,240 <win+0x90>
 220:	00060793          	addi	a5,a2,0
 224:	0007a683          	lw	a3,0(a5)
 228:	ffc62703          	lw	a4,-4(a2)
 22c:	00e6d663          	bge	a3,a4,238 <win+0x88>
 230:	fed62e23          	sw	a3,-4(a2)
 234:	00e7a023          	sw	a4,0(a5)
 238:	00478793          	addi	a5,a5,4
 23c:	feb794e3          	bne	a5,a1,224 <win+0x74>
 240:	00460613          	addi	a2,a2,4
 244:	fc651ae3          	bne	a0,t1,218 <win+0x68>
 248:	00080713          	addi	a4,a6,0
 24c:	00000793          	addi	a5,zero,0
 250:	0317d063          	bge	a5,a7,270 <win+0xc0>
 254:	00072683          	lw	a3,0(a4)
 258:	00178793          	addi	a5,a5,1
 25c:	00470713          	addi	a4,a4,4
 260:	fef688e3          	beq	a3,a5,250 <win+0xa0>
 264:	00000513          	addi	a0,zero,0
 268:	19010113          	addi	sp,sp,400
 26c:	00008067          	jalr	zero,0(ra)
 270:	00100513          	addi	a0,zero,1
 274:	19010113          	addi	sp,sp,400
 278:	00008067          	jalr	zero,0(ra)

0000027c <merge>:
 27c:	00000837          	lui	a6,0x0
 280:	5cc80813          	addi	a6,a6,1484 # 5cc <Q>
 284:	1a482603          	lw	a2,420(a6)
 288:	01480593          	addi	a1,a6,20
 28c:	00000513          	addi	a0,zero,0
 290:	06c05e63          	bge	zero,a2,30c <merge+0x90>
 294:	ffc5a783          	lw	a5,-4(a1)
 298:	00150513          	addi	a0,a0,1
 29c:	02078a63          	beq	a5,zero,2d0 <merge+0x54>
 2a0:	00458593          	addi	a1,a1,4
 2a4:	fea618e3          	bne	a2,a0,294 <merge+0x18>
 2a8:	01080793          	addi	a5,a6,16
 2ac:	00000713          	addi	a4,zero,0
 2b0:	00c0006f          	jal	zero,2bc <merge+0x40>
 2b4:	00170713          	addi	a4,a4,1
 2b8:	04e60c63          	beq	a2,a4,310 <merge+0x94>
 2bc:	0007a683          	lw	a3,0(a5)
 2c0:	00478793          	addi	a5,a5,4
 2c4:	fe0698e3          	bne	a3,zero,2b4 <merge+0x38>
 2c8:	1ae82223          	sw	a4,420(a6)
 2cc:	00008067          	jalr	zero,0(ra)
 2d0:	fcc558e3          	bge	a0,a2,2a0 <merge+0x24>
 2d4:	00058713          	addi	a4,a1,0
 2d8:	00050793          	addi	a5,a0,0
 2dc:	00c0006f          	jal	zero,2e8 <merge+0x6c>
 2e0:	00178793          	addi	a5,a5,1
 2e4:	02f60063          	beq	a2,a5,304 <merge+0x88>
 2e8:	00072683          	lw	a3,0(a4)
 2ec:	00470713          	addi	a4,a4,4
 2f0:	fe0688e3          	beq	a3,zero,2e0 <merge+0x64>
 2f4:	00279793          	slli	a5,a5,0x2
 2f8:	fed5ae23          	sw	a3,-4(a1)
 2fc:	00f807b3          	add	a5,a6,a5
 300:	0007a823          	sw	zero,16(a5)
 304:	00458593          	addi	a1,a1,4
 308:	f8dff06f          	jal	zero,294 <merge+0x18>
 30c:	00008067          	jalr	zero,0(ra)
 310:	00008067          	jalr	zero,0(ra)

00000314 <move>:
 314:	00000637          	lui	a2,0x0
 318:	5cc60613          	addi	a2,a2,1484 # 5cc <Q>
 31c:	1a462583          	lw	a1,420(a2)
 320:	00259513          	slli	a0,a1,0x2
 324:	02b05263          	bge	zero,a1,348 <move+0x34>
 328:	01060793          	addi	a5,a2,16
 32c:	00259513          	slli	a0,a1,0x2
 330:	00f506b3          	add	a3,a0,a5
 334:	0007a703          	lw	a4,0(a5)
 338:	00478793          	addi	a5,a5,4
 33c:	fff70713          	addi	a4,a4,-1
 340:	fee7ae23          	sw	a4,-4(a5)
 344:	fed798e3          	bne	a5,a3,334 <move+0x20>
 348:	00a60533          	add	a0,a2,a0
 34c:	00158793          	addi	a5,a1,1
 350:	00b52823          	sw	a1,16(a0)
 354:	1af62223          	sw	a5,420(a2)
 358:	00008067          	jalr	zero,0(ra)

0000035c <main>:
 35c:	fe010113          	addi	sp,sp,-32
 360:	01212823          	sw	s2,16(sp)
 364:	0000c7b7          	lui	a5,0xc
 368:	00000937          	lui	s2,0x0
 36c:	5cc90913          	addi	s2,s2,1484 # 5cc <Q>
 370:	c8f78793          	addi	a5,a5,-881 # bc8f <__bss_end+0xb517>
 374:	00f92223          	sw	a5,4(s2)
 378:	800007b7          	lui	a5,0x80000
 37c:	fff7c793          	xori	a5,a5,-1
 380:	00f92623          	sw	a5,12(s2)
 384:	0d200793          	addi	a5,zero,210
 388:	1af92423          	sw	a5,424(s2)
 38c:	0000b7b7          	lui	a5,0xb
 390:	dc878793          	addi	a5,a5,-568 # adc8 <__bss_end+0xa650>
 394:	00f92023          	sw	a5,0(s2)
 398:	000017b7          	lui	a5,0x1
 39c:	d4778793          	addi	a5,a5,-697 # d47 <__bss_end+0x5cf>
 3a0:	00f92423          	sw	a5,8(s2)
 3a4:	00112e23          	sw	ra,28(sp)
 3a8:	00812c23          	sw	s0,24(sp)
 3ac:	00912a23          	sw	s1,20(sp)
 3b0:	01312623          	sw	s3,12(sp)
 3b4:	00100793          	addi	a5,zero,1
 3b8:	00100613          	addi	a2,zero,1
 3bc:	0d300593          	addi	a1,zero,211
 3c0:	0080006f          	jal	zero,3c8 <main+0x6c>
 3c4:	1eb78663          	beq	a5,a1,5b0 <main+0x254>
 3c8:	00078693          	addi	a3,a5,0
 3cc:	00178793          	addi	a5,a5,1
 3d0:	02f68733          	mul	a4,a3,a5
 3d4:	e5c70713          	addi	a4,a4,-420
 3d8:	fee666e3          	bltu	a2,a4,3c4 <main+0x68>
 3dc:	00000437          	lui	s0,0x0
 3e0:	0037c7b7          	lui	a5,0x37c
 3e4:	4f278793          	addi	a5,a5,1266 # 37c4f2 <__stack_top+0x33c4f2>
 3e8:	5c440413          	addi	s0,s0,1476 # 5c4 <seed>
 3ec:	1ad92023          	sw	a3,416(s2)
 3f0:	00f42023          	sw	a5,0(s0)
 3f4:	00000097          	auipc	ra,0x0
 3f8:	c7c080e7          	jalr	ra,-900(ra) # 70 <random>
 3fc:	00a00793          	addi	a5,zero,10
 400:	02f56533          	rem	a0,a0,a5
 404:	00150513          	addi	a0,a0,1
 408:	1aa92223          	sw	a0,420(s2)
 40c:	00000097          	auipc	ra,0x0
 410:	c34080e7          	jalr	ra,-972(ra) # 40 <put>
 414:	1a492703          	lw	a4,420(s2)
 418:	00000593          	addi	a1,zero,0
 41c:	fff70f93          	addi	t6,a4,-1
 420:	0bf05263          	bge	zero,t6,4c4 <main+0x168>
 424:	00092683          	lw	a3,0(s2)
 428:	00492303          	lw	t1,4(s2)
 42c:	00892883          	lw	a7,8(s2)
 430:	00c92e83          	lw	t4,12(s2)
 434:	1a892803          	lw	a6,424(s2)
 438:	00042783          	lw	a5,0(s0)
 43c:	00c90f13          	addi	t5,s2,12
 440:	00271713          	slli	a4,a4,0x2
 444:	01090e13          	addi	t3,s2,16
 448:	00ef0f33          	add	t5,t5,a4
 44c:	00000593          	addi	a1,zero,0
 450:	00a00513          	addi	a0,zero,10
 454:	02d7e733          	rem	a4,a5,a3
 458:	02d7c7b3          	div	a5,a5,a3
 45c:	02670733          	mul	a4,a4,t1
 460:	031787b3          	mul	a5,a5,a7
 464:	40f707b3          	sub	a5,a4,a5
 468:	0007d463          	bge	a5,zero,470 <main+0x114>
 46c:	01d787b3          	add	a5,a5,t4
 470:	02a7e733          	rem	a4,a5,a0
 474:	00170713          	addi	a4,a4,1
 478:	00ee2023          	sw	a4,0(t3)
 47c:	00b70733          	add	a4,a4,a1
 480:	12e85e63          	bge	a6,a4,5bc <main+0x260>
 484:	02d7e733          	rem	a4,a5,a3
 488:	02d7c7b3          	div	a5,a5,a3
 48c:	02670733          	mul	a4,a4,t1
 490:	031787b3          	mul	a5,a5,a7
 494:	40f707b3          	sub	a5,a4,a5
 498:	0007d463          	bge	a5,zero,4a0 <main+0x144>
 49c:	01d787b3          	add	a5,a5,t4
 4a0:	02a7e733          	rem	a4,a5,a0
 4a4:	00170713          	addi	a4,a4,1
 4a8:	00b70633          	add	a2,a4,a1
 4ac:	fcc84ce3          	blt	a6,a2,484 <main+0x128>
 4b0:	00ee2023          	sw	a4,0(t3)
 4b4:	00060593          	addi	a1,a2,0
 4b8:	004e0e13          	addi	t3,t3,4
 4bc:	f9cf1ce3          	bne	t5,t3,454 <main+0xf8>
 4c0:	00f42023          	sw	a5,0(s0)
 4c4:	1a892703          	lw	a4,424(s2)
 4c8:	002f9793          	slli	a5,t6,0x2
 4cc:	00f907b3          	add	a5,s2,a5
 4d0:	40b705b3          	sub	a1,a4,a1
 4d4:	00b7a823          	sw	a1,16(a5)
 4d8:	00000993          	addi	s3,zero,0
 4dc:	00000097          	auipc	ra,0x0
 4e0:	c74080e7          	jalr	ra,-908(ra) # 150 <show>
 4e4:	00000097          	auipc	ra,0x0
 4e8:	d98080e7          	jalr	ra,-616(ra) # 27c <merge>
 4ec:	00000097          	auipc	ra,0x0
 4f0:	cc4080e7          	jalr	ra,-828(ra) # 1b0 <win>
 4f4:	00050413          	addi	s0,a0,0
 4f8:	08051663          	bne	a0,zero,584 <main+0x228>
 4fc:	00198993          	addi	s3,s3,1
 500:	00098513          	addi	a0,s3,0
 504:	00000097          	auipc	ra,0x0
 508:	b3c080e7          	jalr	ra,-1220(ra) # 40 <put>
 50c:	1a492603          	lw	a2,420(s2)
 510:	01090793          	addi	a5,s2,16
 514:	00261593          	slli	a1,a2,0x2
 518:	00f586b3          	add	a3,a1,a5
 51c:	00c05c63          	bge	zero,a2,534 <main+0x1d8>
 520:	0007a703          	lw	a4,0(a5)
 524:	00478793          	addi	a5,a5,4
 528:	fff70713          	addi	a4,a4,-1
 52c:	fee7ae23          	sw	a4,-4(a5)
 530:	fef698e3          	bne	a3,a5,520 <main+0x1c4>
 534:	00b905b3          	add	a1,s2,a1
 538:	00160793          	addi	a5,a2,1
 53c:	00c5a823          	sw	a2,16(a1)
 540:	1af92223          	sw	a5,420(s2)
 544:	00000097          	auipc	ra,0x0
 548:	d38080e7          	jalr	ra,-712(ra) # 27c <merge>
 54c:	1a492783          	lw	a5,420(s2)
 550:	01090493          	addi	s1,s2,16
 554:	f8f05ce3          	bge	zero,a5,4ec <main+0x190>
 558:	0004a503          	lw	a0,0(s1)
 55c:	00140413          	addi	s0,s0,1
 560:	00448493          	addi	s1,s1,4
 564:	00000097          	auipc	ra,0x0
 568:	adc080e7          	jalr	ra,-1316(ra) # 40 <put>
 56c:	1a492783          	lw	a5,420(s2)
 570:	fef444e3          	blt	s0,a5,558 <main+0x1fc>
 574:	00000097          	auipc	ra,0x0
 578:	c3c080e7          	jalr	ra,-964(ra) # 1b0 <win>
 57c:	00050413          	addi	s0,a0,0
 580:	f6050ee3          	beq	a0,zero,4fc <main+0x1a0>
 584:	00098513          	addi	a0,s3,0
 588:	00000097          	auipc	ra,0x0
 58c:	ab8080e7          	jalr	ra,-1352(ra) # 40 <put>
 590:	00000513          	addi	a0,zero,0
 594:	01c12083          	lw	ra,28(sp)
 598:	01812403          	lw	s0,24(sp)
 59c:	01412483          	lw	s1,20(sp)
 5a0:	01012903          	lw	s2,16(sp)
 5a4:	00c12983          	lw	s3,12(sp)
 5a8:	02010113          	addi	sp,sp,32
 5ac:	00008067          	jalr	zero,0(ra)
 5b0:	1af92023          	sw	a5,416(s2)
 5b4:	00100513          	addi	a0,zero,1
 5b8:	fddff06f          	jal	zero,594 <main+0x238>
 5bc:	00070593          	addi	a1,a4,0
 5c0:	ef9ff06f          	jal	zero,4b8 <main+0x15c>
