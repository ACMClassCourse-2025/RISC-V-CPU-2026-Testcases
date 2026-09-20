
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	50828293          	addi	t0,t0,1288 # 50c <g_nodeFreeList>
   c:	00000317          	auipc	t1,0x0
  10:	54030313          	addi	t1,t1,1344 # 54c <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	45c080e7          	jalr	ra,1116(ra) # 480 <main>
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

0000005c <list_getSize>:
  5c:	00052503          	lw	a0,0(a0)
  60:	00008067          	jalr	zero,0(ra)

00000064 <list_init>:
  64:	00052023          	sw	zero,0(a0)
  68:	00052223          	sw	zero,4(a0)
  6c:	00008067          	jalr	zero,0(ra)

00000070 <list_push>:
  70:	00000737          	lui	a4,0x0
  74:	50c70713          	addi	a4,a4,1292 # 50c <g_nodeFreeList>
  78:	00472783          	lw	a5,4(a4)
  7c:	00052683          	lw	a3,0(a0)
  80:	0047a603          	lw	a2,4(a5)
  84:	00168693          	addi	a3,a3,1
  88:	00c72223          	sw	a2,4(a4)
  8c:	00452703          	lw	a4,4(a0)
  90:	00e7a223          	sw	a4,4(a5)
  94:	00f52223          	sw	a5,4(a0)
  98:	00b7a023          	sw	a1,0(a5)
  9c:	00d52023          	sw	a3,0(a0)
  a0:	00008067          	jalr	zero,0(ra)

000000a4 <list_pop>:
  a4:	00452683          	lw	a3,4(a0)
  a8:	00050793          	addi	a5,a0,0
  ac:	00000737          	lui	a4,0x0
  b0:	0046a583          	lw	a1,4(a3)
  b4:	0006a503          	lw	a0,0(a3)
  b8:	50c70713          	addi	a4,a4,1292 # 50c <g_nodeFreeList>
  bc:	00b7a223          	sw	a1,4(a5)
  c0:	00472583          	lw	a1,4(a4)
  c4:	0007a603          	lw	a2,0(a5)
  c8:	00b6a223          	sw	a1,4(a3)
  cc:	fff60613          	addi	a2,a2,-1
  d0:	00d72223          	sw	a3,4(a4)
  d4:	00c7a023          	sw	a2,0(a5)
  d8:	00008067          	jalr	zero,0(ra)

000000dc <list_clear>:
  dc:	00052703          	lw	a4,0(a0)
  e0:	02e05863          	bge	zero,a4,110 <list_clear+0x34>
  e4:	000006b7          	lui	a3,0x0
  e8:	50c68693          	addi	a3,a3,1292 # 50c <g_nodeFreeList>
  ec:	00452783          	lw	a5,4(a0)
  f0:	fff70713          	addi	a4,a4,-1
  f4:	0047a603          	lw	a2,4(a5)
  f8:	00c52223          	sw	a2,4(a0)
  fc:	0046a603          	lw	a2,4(a3)
 100:	00c7a223          	sw	a2,4(a5)
 104:	00f6a223          	sw	a5,4(a3)
 108:	fe0712e3          	bne	a4,zero,ec <list_clear+0x10>
 10c:	00052023          	sw	zero,0(a0)
 110:	00008067          	jalr	zero,0(ra)

00000114 <towers_init>:
 114:	00b52023          	sw	a1,0(a0)
 118:	00052223          	sw	zero,4(a0)
 11c:	00052423          	sw	zero,8(a0)
 120:	00052623          	sw	zero,12(a0)
 124:	00052823          	sw	zero,16(a0)
 128:	00052a23          	sw	zero,20(a0)
 12c:	00052c23          	sw	zero,24(a0)
 130:	00052e23          	sw	zero,28(a0)
 134:	04b05263          	bge	zero,a1,178 <towers_init+0x64>
 138:	00000837          	lui	a6,0x0
 13c:	50c80813          	addi	a6,a6,1292 # 50c <g_nodeFreeList>
 140:	00482783          	lw	a5,4(a6)
 144:	00058713          	addi	a4,a1,0
 148:	00000693          	addi	a3,zero,0
 14c:	0080006f          	jal	zero,154 <towers_init+0x40>
 150:	00060793          	addi	a5,a2,0
 154:	0047a603          	lw	a2,4(a5)
 158:	00e7a023          	sw	a4,0(a5)
 15c:	00d7a223          	sw	a3,4(a5)
 160:	fff70713          	addi	a4,a4,-1
 164:	00078693          	addi	a3,a5,0
 168:	fe0714e3          	bne	a4,zero,150 <towers_init+0x3c>
 16c:	00c82223          	sw	a2,4(a6)
 170:	00f52623          	sw	a5,12(a0)
 174:	00b52423          	sw	a1,8(a0)
 178:	00008067          	jalr	zero,0(ra)

0000017c <towers_clear>:
 17c:	00852703          	lw	a4,8(a0)
 180:	02e05e63          	bge	zero,a4,1bc <towers_clear+0x40>
 184:	000006b7          	lui	a3,0x0
 188:	50c68693          	addi	a3,a3,1292 # 50c <g_nodeFreeList>
 18c:	00c52783          	lw	a5,12(a0)
 190:	0046a603          	lw	a2,4(a3)
 194:	0080006f          	jal	zero,19c <towers_clear+0x20>
 198:	00058793          	addi	a5,a1,0
 19c:	0047a583          	lw	a1,4(a5)
 1a0:	fff70713          	addi	a4,a4,-1
 1a4:	00c7a223          	sw	a2,4(a5)
 1a8:	00078613          	addi	a2,a5,0
 1ac:	fe0716e3          	bne	a4,zero,198 <towers_clear+0x1c>
 1b0:	00f6a223          	sw	a5,4(a3)
 1b4:	00b52623          	sw	a1,12(a0)
 1b8:	00052423          	sw	zero,8(a0)
 1bc:	01052703          	lw	a4,16(a0)
 1c0:	02e05e63          	bge	zero,a4,1fc <towers_clear+0x80>
 1c4:	000006b7          	lui	a3,0x0
 1c8:	50c68693          	addi	a3,a3,1292 # 50c <g_nodeFreeList>
 1cc:	01452783          	lw	a5,20(a0)
 1d0:	0046a603          	lw	a2,4(a3)
 1d4:	0080006f          	jal	zero,1dc <towers_clear+0x60>
 1d8:	00058793          	addi	a5,a1,0
 1dc:	0047a583          	lw	a1,4(a5)
 1e0:	fff70713          	addi	a4,a4,-1
 1e4:	00c7a223          	sw	a2,4(a5)
 1e8:	00078613          	addi	a2,a5,0
 1ec:	fe0716e3          	bne	a4,zero,1d8 <towers_clear+0x5c>
 1f0:	00f6a223          	sw	a5,4(a3)
 1f4:	00b52a23          	sw	a1,20(a0)
 1f8:	00052823          	sw	zero,16(a0)
 1fc:	01852703          	lw	a4,24(a0)
 200:	02e05a63          	bge	zero,a4,234 <towers_clear+0xb8>
 204:	000006b7          	lui	a3,0x0
 208:	50c68693          	addi	a3,a3,1292 # 50c <g_nodeFreeList>
 20c:	01c52783          	lw	a5,28(a0)
 210:	0046a603          	lw	a2,4(a3)
 214:	0080006f          	jal	zero,21c <towers_clear+0xa0>
 218:	00058793          	addi	a5,a1,0
 21c:	0047a583          	lw	a1,4(a5)
 220:	fff70713          	addi	a4,a4,-1
 224:	00c7a223          	sw	a2,4(a5)
 228:	00078613          	addi	a2,a5,0
 22c:	fe0716e3          	bne	a4,zero,218 <towers_clear+0x9c>
 230:	00f6a223          	sw	a5,4(a3)
 234:	00052803          	lw	a6,0(a0)
 238:	00052223          	sw	zero,4(a0)
 23c:	00052423          	sw	zero,8(a0)
 240:	00052623          	sw	zero,12(a0)
 244:	00052823          	sw	zero,16(a0)
 248:	00052a23          	sw	zero,20(a0)
 24c:	00052c23          	sw	zero,24(a0)
 250:	00052e23          	sw	zero,28(a0)
 254:	05005263          	bge	zero,a6,298 <towers_clear+0x11c>
 258:	000006b7          	lui	a3,0x0
 25c:	50c68693          	addi	a3,a3,1292 # 50c <g_nodeFreeList>
 260:	0046a783          	lw	a5,4(a3)
 264:	00080713          	addi	a4,a6,0
 268:	00000613          	addi	a2,zero,0
 26c:	0080006f          	jal	zero,274 <towers_clear+0xf8>
 270:	00058793          	addi	a5,a1,0
 274:	0047a583          	lw	a1,4(a5)
 278:	00e7a023          	sw	a4,0(a5)
 27c:	00c7a223          	sw	a2,4(a5)
 280:	fff70713          	addi	a4,a4,-1
 284:	00078613          	addi	a2,a5,0
 288:	fe0714e3          	bne	a4,zero,270 <towers_clear+0xf4>
 28c:	00b6a223          	sw	a1,4(a3)
 290:	00f52623          	sw	a5,12(a0)
 294:	01052423          	sw	a6,8(a0)
 298:	00008067          	jalr	zero,0(ra)

0000029c <towers_solve_h>:
 29c:	fe010113          	addi	sp,sp,-32 # 3ffe0 <__bss_end+0x3fa94>
 2a0:	00812c23          	sw	s0,24(sp)
 2a4:	01412423          	sw	s4,8(sp)
 2a8:	01612023          	sw	s6,0(sp)
 2ac:	00112e23          	sw	ra,28(sp)
 2b0:	00912a23          	sw	s1,20(sp)
 2b4:	01212823          	sw	s2,16(sp)
 2b8:	01312623          	sw	s3,12(sp)
 2bc:	01512223          	sw	s5,4(sp)
 2c0:	00100813          	addi	a6,zero,1
 2c4:	00050a13          	addi	s4,a0,0
 2c8:	00060413          	addi	s0,a2,0
 2cc:	00070b13          	addi	s6,a4,0
 2d0:	09058e63          	beq	a1,a6,36c <towers_solve_h+0xd0>
 2d4:	000004b7          	lui	s1,0x0
 2d8:	00058a93          	addi	s5,a1,0
 2dc:	00060993          	addi	s3,a2,0
 2e0:	50c48493          	addi	s1,s1,1292 # 50c <g_nodeFreeList>
 2e4:	00068413          	addi	s0,a3,0
 2e8:	00100913          	addi	s2,zero,1
 2ec:	fffa8a93          	addi	s5,s5,-1
 2f0:	00040713          	addi	a4,s0,0
 2f4:	00098613          	addi	a2,s3,0
 2f8:	000b0693          	addi	a3,s6,0
 2fc:	000a8593          	addi	a1,s5,0
 300:	000a0513          	addi	a0,s4,0
 304:	00000097          	auipc	ra,0x0
 308:	f98080e7          	jalr	ra,-104(ra) # 29c <towers_solve_h>
 30c:	0049a703          	lw	a4,4(s3)
 310:	0009a803          	lw	a6,0(s3)
 314:	004a2783          	lw	a5,4(s4)
 318:	00472303          	lw	t1,4(a4)
 31c:	00072883          	lw	a7,0(a4)
 320:	fff80813          	addi	a6,a6,-1
 324:	0069a223          	sw	t1,4(s3)
 328:	0044a303          	lw	t1,4(s1)
 32c:	0109a023          	sw	a6,0(s3)
 330:	000b2803          	lw	a6,0(s6)
 334:	0064a223          	sw	t1,4(s1)
 338:	004b2303          	lw	t1,4(s6)
 33c:	00180813          	addi	a6,a6,1
 340:	00178793          	addi	a5,a5,1
 344:	00672223          	sw	t1,4(a4)
 348:	00eb2223          	sw	a4,4(s6)
 34c:	01172023          	sw	a7,0(a4)
 350:	010b2023          	sw	a6,0(s6)
 354:	00fa2223          	sw	a5,4(s4)
 358:	00098713          	addi	a4,s3,0
 35c:	012a8e63          	beq	s5,s2,378 <towers_solve_h+0xdc>
 360:	00040993          	addi	s3,s0,0
 364:	00070413          	addi	s0,a4,0
 368:	f85ff06f          	jal	zero,2ec <towers_solve_h+0x50>
 36c:	00452783          	lw	a5,4(a0)
 370:	000004b7          	lui	s1,0x0
 374:	50c48493          	addi	s1,s1,1292 # 50c <g_nodeFreeList>
 378:	00442703          	lw	a4,4(s0)
 37c:	00042603          	lw	a2,0(s0)
 380:	01c12083          	lw	ra,28(sp)
 384:	00472803          	lw	a6,4(a4)
 388:	00072583          	lw	a1,0(a4)
 38c:	fff60613          	addi	a2,a2,-1
 390:	01042223          	sw	a6,4(s0)
 394:	0044a803          	lw	a6,4(s1)
 398:	00c42023          	sw	a2,0(s0)
 39c:	000b2603          	lw	a2,0(s6)
 3a0:	0104a223          	sw	a6,4(s1)
 3a4:	004b2803          	lw	a6,4(s6)
 3a8:	01812403          	lw	s0,24(sp)
 3ac:	00160613          	addi	a2,a2,1
 3b0:	01072223          	sw	a6,4(a4)
 3b4:	00eb2223          	sw	a4,4(s6)
 3b8:	00b72023          	sw	a1,0(a4)
 3bc:	00cb2023          	sw	a2,0(s6)
 3c0:	00178793          	addi	a5,a5,1
 3c4:	00fa2223          	sw	a5,4(s4)
 3c8:	01412483          	lw	s1,20(sp)
 3cc:	01012903          	lw	s2,16(sp)
 3d0:	00c12983          	lw	s3,12(sp)
 3d4:	00812a03          	lw	s4,8(sp)
 3d8:	00412a83          	lw	s5,4(sp)
 3dc:	00012b03          	lw	s6,0(sp)
 3e0:	02010113          	addi	sp,sp,32
 3e4:	00008067          	jalr	zero,0(ra)

000003e8 <towers_solve>:
 3e8:	00052583          	lw	a1,0(a0)
 3ec:	01850713          	addi	a4,a0,24
 3f0:	01050693          	addi	a3,a0,16
 3f4:	00850613          	addi	a2,a0,8
 3f8:	00000317          	auipc	t1,0x0
 3fc:	ea430067          	jalr	zero,-348(t1) # 29c <towers_solve_h>

00000400 <towers_verify>:
 400:	00852783          	lw	a5,8(a0)
 404:	00050613          	addi	a2,a0,0
 408:	04079663          	bne	a5,zero,454 <towers_verify+0x54>
 40c:	01052503          	lw	a0,16(a0)
 410:	06051463          	bne	a0,zero,478 <towers_verify+0x78>
 414:	00062583          	lw	a1,0(a2)
 418:	01862783          	lw	a5,24(a2)
 41c:	02b79863          	bne	a5,a1,44c <towers_verify+0x4c>
 420:	01c62783          	lw	a5,28(a2)
 424:	02078c63          	beq	a5,zero,45c <towers_verify+0x5c>
 428:	00000713          	addi	a4,zero,0
 42c:	00c0006f          	jal	zero,438 <towers_verify+0x38>
 430:	0047a783          	lw	a5,4(a5)
 434:	02078463          	beq	a5,zero,45c <towers_verify+0x5c>
 438:	0007a683          	lw	a3,0(a5)
 43c:	00170713          	addi	a4,a4,1
 440:	fed708e3          	beq	a4,a3,430 <towers_verify+0x30>
 444:	00500513          	addi	a0,zero,5
 448:	00008067          	jalr	zero,0(ra)
 44c:	00400513          	addi	a0,zero,4
 450:	00008067          	jalr	zero,0(ra)
 454:	00200513          	addi	a0,zero,2
 458:	00008067          	jalr	zero,0(ra)
 45c:	00100793          	addi	a5,zero,1
 460:	00462703          	lw	a4,4(a2)
 464:	00b795b3          	sll	a1,a5,a1
 468:	fff58593          	addi	a1,a1,-1
 46c:	fcb70ee3          	beq	a4,a1,448 <towers_verify+0x48>
 470:	00600513          	addi	a0,zero,6
 474:	00008067          	jalr	zero,0(ra)
 478:	00300513          	addi	a0,zero,3
 47c:	00008067          	jalr	zero,0(ra)

00000480 <main>:
 480:	000007b7          	lui	a5,0x0
 484:	50c78793          	addi	a5,a5,1292 # 50c <g_nodeFreeList>
 488:	fd010113          	addi	sp,sp,-48
 48c:	02112623          	sw	ra,44(sp)
 490:	00878713          	addi	a4,a5,8
 494:	00e7a223          	sw	a4,4(a5)
 498:	00700713          	addi	a4,zero,7
 49c:	00e7a023          	sw	a4,0(a5)
 4a0:	06300713          	addi	a4,zero,99
 4a4:	02e7ac23          	sw	a4,56(a5)
 4a8:	0207ae23          	sw	zero,60(a5)
 4ac:	00000713          	addi	a4,zero,0
 4b0:	01078793          	addi	a5,a5,16
 4b4:	00600613          	addi	a2,zero,6
 4b8:	fee7ac23          	sw	a4,-8(a5)
 4bc:	fef7ae23          	sw	a5,-4(a5)
 4c0:	00170713          	addi	a4,a4,1
 4c4:	00878793          	addi	a5,a5,8
 4c8:	fec718e3          	bne	a4,a2,4b8 <main+0x38>
 4cc:	00700593          	addi	a1,zero,7
 4d0:	00010513          	addi	a0,sp,0
 4d4:	00000097          	auipc	ra,0x0
 4d8:	c40080e7          	jalr	ra,-960(ra) # 114 <towers_init>
 4dc:	00010513          	addi	a0,sp,0
 4e0:	00000097          	auipc	ra,0x0
 4e4:	c9c080e7          	jalr	ra,-868(ra) # 17c <towers_clear>
 4e8:	00010513          	addi	a0,sp,0
 4ec:	00000097          	auipc	ra,0x0
 4f0:	efc080e7          	jalr	ra,-260(ra) # 3e8 <towers_solve>
 4f4:	00010513          	addi	a0,sp,0
 4f8:	00000097          	auipc	ra,0x0
 4fc:	f08080e7          	jalr	ra,-248(ra) # 400 <towers_verify>
 500:	02c12083          	lw	ra,44(sp)
 504:	03010113          	addi	sp,sp,48
 508:	00008067          	jalr	zero,0(ra)
