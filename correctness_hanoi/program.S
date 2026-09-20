
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	3f028293          	addi	t0,t0,1008 # 3f4 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	3ec30313          	addi	t1,t1,1004 # 3f8 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	370080e7          	jalr	ra,880(ra) # 394 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	3f478793          	addi	a5,a5,1012 # 3f4 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	3f47a503          	lw	a0,1012(a5) # 3f4 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <cd>:
  70:	f6010113          	addi	sp,sp,-160 # 3ff60 <__bss_end+0x3fb68>
  74:	08112e23          	sw	ra,156(sp)
  78:	08812c23          	sw	s0,152(sp)
  7c:	08912a23          	sw	s1,148(sp)
  80:	09212823          	sw	s2,144(sp)
  84:	09312623          	sw	s3,140(sp)
  88:	09412423          	sw	s4,136(sp)
  8c:	09512223          	sw	s5,132(sp)
  90:	09612023          	sw	s6,128(sp)
  94:	07712e23          	sw	s7,124(sp)
  98:	07812c23          	sw	s8,120(sp)
  9c:	07912a23          	sw	s9,116(sp)
  a0:	07a12823          	sw	s10,112(sp)
  a4:	07b12623          	sw	s11,108(sp)
  a8:	02a12623          	sw	a0,44(sp)
  ac:	00100793          	addi	a5,zero,1
  b0:	00b12c23          	sw	a1,24(sp)
  b4:	00c12e23          	sw	a2,28(sp)
  b8:	02d12823          	sw	a3,48(sp)
  bc:	00a12023          	sw	a0,0(sp)
  c0:	00100e13          	addi	t3,zero,1
  c4:	2cf50463          	beq	a0,a5,38c <cd+0x31c>
  c8:	00012783          	lw	a5,0(sp)
  cc:	fff78793          	addi	a5,a5,-1
  d0:	02f12223          	sw	a5,36(sp)
  d4:	27c78463          	beq	a5,t3,33c <cd+0x2cc>
  d8:	03012683          	lw	a3,48(sp)
  dc:	00f12223          	sw	a5,4(sp)
  e0:	00412783          	lw	a5,4(sp)
  e4:	00d12623          	sw	a3,12(sp)
  e8:	01812683          	lw	a3,24(sp)
  ec:	fff78793          	addi	a5,a5,-1
  f0:	02f12423          	sw	a5,40(sp)
  f4:	00d12423          	sw	a3,8(sp)
  f8:	21c78a63          	beq	a5,t3,30c <cd+0x29c>
  fc:	00f12823          	sw	a5,16(sp)
 100:	00812683          	lw	a3,8(sp)
 104:	01012783          	lw	a5,16(sp)
 108:	01c12383          	lw	t2,28(sp)
 10c:	00d12a23          	sw	a3,20(sp)
 110:	fff78293          	addi	t0,a5,-1
 114:	1dc28463          	beq	t0,t3,2dc <cd+0x26c>
 118:	00028f93          	addi	t6,t0,0
 11c:	ffff8f13          	addi	t5,t6,-1
 120:	00c12883          	lw	a7,12(sp)
 124:	01412e83          	lw	t4,20(sp)
 128:	19cf0863          	beq	t5,t3,2b8 <cd+0x248>
 12c:	000f0a93          	addi	s5,t5,0
 130:	fffa8493          	addi	s1,s5,-1
 134:	00038c93          	addi	s9,t2,0
 138:	000e8c13          	addi	s8,t4,0
 13c:	17c48063          	beq	s1,t3,29c <cd+0x22c>
 140:	00048913          	addi	s2,s1,0
 144:	fff90313          	addi	t1,s2,-1
 148:	00088b13          	addi	s6,a7,0
 14c:	000c0993          	addi	s3,s8,0
 150:	13c30863          	beq	t1,t3,280 <cd+0x210>
 154:	ffd90b93          	addi	s7,s2,-3
 158:	000c8d13          	addi	s10,s9,0
 15c:	00098813          	addi	a6,s3,0
 160:	001b8a13          	addi	s4,s7,1
 164:	100b8063          	beq	s7,zero,264 <cd+0x1f4>
 168:	03612023          	sw	s6,32(sp)
 16c:	fffa0413          	addi	s0,s4,-1
 170:	000b0613          	addi	a2,s6,0
 174:	00080d93          	addi	s11,a6,0
 178:	00098b13          	addi	s6,s3,0
 17c:	00090993          	addi	s3,s2,0
 180:	00048913          	addi	s2,s1,0
 184:	0bc40863          	beq	s0,t3,234 <cd+0x1c4>
 188:	000d0693          	addi	a3,s10,0
 18c:	000d8593          	addi	a1,s11,0
 190:	00040793          	addi	a5,s0,0
 194:	fff78793          	addi	a5,a5,-1
 198:	00078513          	addi	a0,a5,0
 19c:	00058493          	addi	s1,a1,0
 1a0:	05012e23          	sw	a6,92(sp)
 1a4:	05112c23          	sw	a7,88(sp)
 1a8:	05d12a23          	sw	t4,84(sp)
 1ac:	05f12823          	sw	t6,80(sp)
 1b0:	04712623          	sw	t2,76(sp)
 1b4:	04612423          	sw	t1,72(sp)
 1b8:	05e12223          	sw	t5,68(sp)
 1bc:	04512023          	sw	t0,64(sp)
 1c0:	02d12e23          	sw	a3,60(sp)
 1c4:	02c12c23          	sw	a2,56(sp)
 1c8:	02f12a23          	sw	a5,52(sp)
 1cc:	00000097          	auipc	ra,0x0
 1d0:	ea4080e7          	jalr	ra,-348(ra) # 70 <cd>
 1d4:	03c12683          	lw	a3,60(sp)
 1d8:	03412783          	lw	a5,52(sp)
 1dc:	00100e13          	addi	t3,zero,1
 1e0:	00068593          	addi	a1,a3,0
 1e4:	03812603          	lw	a2,56(sp)
 1e8:	04012283          	lw	t0,64(sp)
 1ec:	04412f03          	lw	t5,68(sp)
 1f0:	04812303          	lw	t1,72(sp)
 1f4:	04c12383          	lw	t2,76(sp)
 1f8:	05012f83          	lw	t6,80(sp)
 1fc:	05412e83          	lw	t4,84(sp)
 200:	05812883          	lw	a7,88(sp)
 204:	05c12803          	lw	a6,92(sp)
 208:	00050713          	addi	a4,a0,0
 20c:	00048693          	addi	a3,s1,0
 210:	f9c792e3          	bne	a5,t3,194 <cd+0x124>
 214:	00aa0733          	add	a4,s4,a0
 218:	00040a13          	addi	s4,s0,0
 21c:	000d8693          	addi	a3,s11,0
 220:	fffa0413          	addi	s0,s4,-1
 224:	00060d93          	addi	s11,a2,0
 228:	fff70713          	addi	a4,a4,-1
 22c:	00068613          	addi	a2,a3,0
 230:	f5c41ce3          	bne	s0,t3,188 <cd+0x118>
 234:	00270713          	addi	a4,a4,2
 238:	00080793          	addi	a5,a6,0
 23c:	01770733          	add	a4,a4,s7
 240:	fffb8b93          	addi	s7,s7,-1
 244:	00090493          	addi	s1,s2,0
 248:	000d0813          	addi	a6,s10,0
 24c:	00098913          	addi	s2,s3,0
 250:	00078d13          	addi	s10,a5,0
 254:	000b0993          	addi	s3,s6,0
 258:	001b8a13          	addi	s4,s7,1
 25c:	02012b03          	lw	s6,32(sp)
 260:	f00b94e3          	bne	s7,zero,168 <cd+0xf8>
 264:	00e90733          	add	a4,s2,a4
 268:	00030913          	addi	s2,t1,0
 26c:	00098793          	addi	a5,s3,0
 270:	fff90313          	addi	t1,s2,-1
 274:	000b0993          	addi	s3,s6,0
 278:	00078b13          	addi	s6,a5,0
 27c:	edc31ce3          	bne	t1,t3,154 <cd+0xe4>
 280:	00ea8733          	add	a4,s5,a4
 284:	00048a93          	addi	s5,s1,0
 288:	000c0793          	addi	a5,s8,0
 28c:	fffa8493          	addi	s1,s5,-1
 290:	000c8c13          	addi	s8,s9,0
 294:	00078c93          	addi	s9,a5,0
 298:	ebc494e3          	bne	s1,t3,140 <cd+0xd0>
 29c:	00ef8733          	add	a4,t6,a4
 2a0:	000f0f93          	addi	t6,t5,0
 2a4:	000e8793          	addi	a5,t4,0
 2a8:	ffff8f13          	addi	t5,t6,-1
 2ac:	00088e93          	addi	t4,a7,0
 2b0:	00078893          	addi	a7,a5,0
 2b4:	e7cf1ce3          	bne	t5,t3,12c <cd+0xbc>
 2b8:	01412783          	lw	a5,20(sp)
 2bc:	01012683          	lw	a3,16(sp)
 2c0:	00512823          	sw	t0,16(sp)
 2c4:	00712a23          	sw	t2,20(sp)
 2c8:	00078393          	addi	t2,a5,0
 2cc:	01012783          	lw	a5,16(sp)
 2d0:	00e68733          	add	a4,a3,a4
 2d4:	fff78293          	addi	t0,a5,-1
 2d8:	e5c290e3          	bne	t0,t3,118 <cd+0xa8>
 2dc:	00412683          	lw	a3,4(sp)
 2e0:	00812783          	lw	a5,8(sp)
 2e4:	00e68733          	add	a4,a3,a4
 2e8:	00c12683          	lw	a3,12(sp)
 2ec:	00f12623          	sw	a5,12(sp)
 2f0:	00d12423          	sw	a3,8(sp)
 2f4:	02812683          	lw	a3,40(sp)
 2f8:	00d12223          	sw	a3,4(sp)
 2fc:	00412783          	lw	a5,4(sp)
 300:	fff78793          	addi	a5,a5,-1
 304:	02f12423          	sw	a5,40(sp)
 308:	dfc79ae3          	bne	a5,t3,fc <cd+0x8c>
 30c:	00012683          	lw	a3,0(sp)
 310:	01812783          	lw	a5,24(sp)
 314:	00e68733          	add	a4,a3,a4
 318:	01c12683          	lw	a3,28(sp)
 31c:	00f12e23          	sw	a5,28(sp)
 320:	00d12c23          	sw	a3,24(sp)
 324:	02412683          	lw	a3,36(sp)
 328:	00d12023          	sw	a3,0(sp)
 32c:	00012783          	lw	a5,0(sp)
 330:	fff78793          	addi	a5,a5,-1
 334:	02f12223          	sw	a5,36(sp)
 338:	dbc790e3          	bne	a5,t3,d8 <cd+0x68>
 33c:	02c12783          	lw	a5,44(sp)
 340:	00170713          	addi	a4,a4,1
 344:	fff78793          	addi	a5,a5,-1
 348:	09c12083          	lw	ra,156(sp)
 34c:	09812403          	lw	s0,152(sp)
 350:	00170713          	addi	a4,a4,1
 354:	09412483          	lw	s1,148(sp)
 358:	09012903          	lw	s2,144(sp)
 35c:	08c12983          	lw	s3,140(sp)
 360:	08812a03          	lw	s4,136(sp)
 364:	08412a83          	lw	s5,132(sp)
 368:	08012b03          	lw	s6,128(sp)
 36c:	07c12b83          	lw	s7,124(sp)
 370:	07812c03          	lw	s8,120(sp)
 374:	07412c83          	lw	s9,116(sp)
 378:	07012d03          	lw	s10,112(sp)
 37c:	06c12d83          	lw	s11,108(sp)
 380:	00f70533          	add	a0,a4,a5
 384:	0a010113          	addi	sp,sp,160
 388:	00008067          	jalr	zero,0(ra)
 38c:	00000793          	addi	a5,zero,0
 390:	fb9ff06f          	jal	zero,348 <cd+0x2d8>

00000394 <main>:
 394:	fd010113          	addi	sp,sp,-48
 398:	04100793          	addi	a5,zero,65
 39c:	00f12423          	sw	a5,8(sp)
 3a0:	04200793          	addi	a5,zero,66
 3a4:	01810693          	addi	a3,sp,24
 3a8:	01010613          	addi	a2,sp,16
 3ac:	00810593          	addi	a1,sp,8
 3b0:	00f12823          	sw	a5,16(sp)
 3b4:	00000713          	addi	a4,zero,0
 3b8:	04300793          	addi	a5,zero,67
 3bc:	00a00513          	addi	a0,zero,10
 3c0:	02112623          	sw	ra,44(sp)
 3c4:	00f12c23          	sw	a5,24(sp)
 3c8:	00010623          	sb	zero,12(sp)
 3cc:	00010a23          	sb	zero,20(sp)
 3d0:	00010e23          	sb	zero,28(sp)
 3d4:	00000097          	auipc	ra,0x0
 3d8:	c9c080e7          	jalr	ra,-868(ra) # 70 <cd>
 3dc:	00000097          	auipc	ra,0x0
 3e0:	c64080e7          	jalr	ra,-924(ra) # 40 <put>
 3e4:	02c12083          	lw	ra,44(sp)
 3e8:	00000513          	addi	a0,zero,0
 3ec:	03010113          	addi	sp,sp,48
 3f0:	00008067          	jalr	zero,0(ra)
