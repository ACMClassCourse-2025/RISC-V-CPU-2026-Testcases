
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00004297          	auipc	t0,0x4
   8:	3b828293          	addi	t0,t0,952 # 43bc <scratch.0>
   c:	00006317          	auipc	t1,0x6
  10:	3b030313          	addi	t1,t1,944 # 63bc <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	328080e7          	jalr	ra,808(ra) # 34c <main>
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

0000005c <sort>:
  5c:	00251313          	slli	t1,a0,0x2
  60:	ff330713          	addi	a4,t1,-13
  64:	ff030793          	addi	a5,t1,-16
  68:	bd010113          	addi	sp,sp,-1072 # 3fbd0 <__bss_end+0x39814>
  6c:	ff077e93          	andi	t4,a4,-16
  70:	fff7c793          	xori	a5,a5,-1
  74:	00060513          	addi	a0,a2,0
  78:	ff430393          	addi	t2,t1,-12
  7c:	00030613          	addi	a2,t1,0
  80:	00010813          	addi	a6,sp,0
  84:	42112623          	sw	ra,1068(sp)
  88:	42812423          	sw	s0,1064(sp)
  8c:	42912223          	sw	s1,1060(sp)
  90:	43212023          	sw	s2,1056(sp)
  94:	41312e23          	sw	s3,1052(sp)
  98:	41412c23          	sw	s4,1048(sp)
  9c:	41512a23          	sw	s5,1044(sp)
  a0:	41612823          	sw	s6,1040(sp)
  a4:	41712623          	sw	s7,1036(sp)
  a8:	41812423          	sw	s8,1032(sp)
  ac:	41912223          	sw	s9,1028(sp)
  b0:	41a12023          	sw	s10,1024(sp)
  b4:	00058293          	addi	t0,a1,0
  b8:	ffc30313          	addi	t1,t1,-4
  bc:	00880f93          	addi	t6,a6,8
  c0:	40080713          	addi	a4,a6,1024
  c4:	00000893          	addi	a7,zero,0
  c8:	010e8e93          	addi	t4,t4,16
  cc:	ff07fe13          	andi	t3,a5,-16
  d0:	02000f13          	addi	t5,zero,32
  d4:	00080793          	addi	a5,a6,0
  d8:	0007a023          	sw	zero,0(a5)
  dc:	00478793          	addi	a5,a5,4
  e0:	fee79ce3          	bne	a5,a4,d8 <sort+0x7c>
  e4:	00758933          	add	s2,a1,t2
  e8:	2525fe63          	bgeu	a1,s2,344 <sort+0x2e8>
  ec:	00058493          	addi	s1,a1,0
  f0:	0004a983          	lw	s3,0(s1)
  f4:	0044a403          	lw	s0,4(s1)
  f8:	0084a683          	lw	a3,8(s1)
  fc:	0119d9b3          	srl	s3,s3,a7
 100:	0ff9f993          	andi	s3,s3,255
 104:	00299993          	slli	s3,s3,0x2
 108:	013809b3          	add	s3,a6,s3
 10c:	0009aa03          	lw	s4,0(s3)
 110:	01145433          	srl	s0,s0,a7
 114:	0ff47413          	andi	s0,s0,255
 118:	001a0a13          	addi	s4,s4,1
 11c:	00241413          	slli	s0,s0,0x2
 120:	00c4a783          	lw	a5,12(s1)
 124:	00880433          	add	s0,a6,s0
 128:	0149a023          	sw	s4,0(s3)
 12c:	00042983          	lw	s3,0(s0)
 130:	0116d6b3          	srl	a3,a3,a7
 134:	0ff6f693          	andi	a3,a3,255
 138:	00198993          	addi	s3,s3,1
 13c:	00269693          	slli	a3,a3,0x2
 140:	01342023          	sw	s3,0(s0)
 144:	00d806b3          	add	a3,a6,a3
 148:	0006a403          	lw	s0,0(a3)
 14c:	0117d7b3          	srl	a5,a5,a7
 150:	0ff7f793          	andi	a5,a5,255
 154:	00140413          	addi	s0,s0,1
 158:	00279793          	slli	a5,a5,0x2
 15c:	0086a023          	sw	s0,0(a3)
 160:	00f807b3          	add	a5,a6,a5
 164:	0007a683          	lw	a3,0(a5)
 168:	01048493          	addi	s1,s1,16
 16c:	00168693          	addi	a3,a3,1
 170:	00d7a023          	sw	a3,0(a5)
 174:	f724eee3          	bltu	s1,s2,f0 <sort+0x94>
 178:	01d586b3          	add	a3,a1,t4
 17c:	00c584b3          	add	s1,a1,a2
 180:	0296f663          	bgeu	a3,s1,1ac <sort+0x150>
 184:	0006a783          	lw	a5,0(a3)
 188:	00468693          	addi	a3,a3,4
 18c:	0117d7b3          	srl	a5,a5,a7
 190:	0ff7f793          	andi	a5,a5,255
 194:	00279793          	slli	a5,a5,0x2
 198:	00f807b3          	add	a5,a6,a5
 19c:	0007a403          	lw	s0,0(a5)
 1a0:	00140413          	addi	s0,s0,1
 1a4:	0087a023          	sw	s0,0(a5)
 1a8:	fc96eee3          	bltu	a3,s1,184 <sort+0x128>
 1ac:	00482683          	lw	a3,4(a6)
 1b0:	00082403          	lw	s0,0(a6)
 1b4:	000f8793          	addi	a5,t6,0
 1b8:	00d40433          	add	s0,s0,a3
 1bc:	00882223          	sw	s0,4(a6)
 1c0:	0007a683          	lw	a3,0(a5)
 1c4:	0047a483          	lw	s1,4(a5)
 1c8:	00878793          	addi	a5,a5,8
 1cc:	00d406b3          	add	a3,s0,a3
 1d0:	00968433          	add	s0,a3,s1
 1d4:	fed7ac23          	sw	a3,-8(a5)
 1d8:	fe87ae23          	sw	s0,-4(a5)
 1dc:	fee792e3          	bne	a5,a4,1c0 <sort+0x164>
 1e0:	00658933          	add	s2,a1,t1
 1e4:	00c58993          	addi	s3,a1,12
 1e8:	0d396263          	bltu	s2,s3,2ac <sort+0x250>
 1ec:	00090413          	addi	s0,s2,0
 1f0:	00042a83          	lw	s5,0(s0)
 1f4:	ffc42a03          	lw	s4,-4(s0)
 1f8:	ff842483          	lw	s1,-8(s0)
 1fc:	011ad6b3          	srl	a3,s5,a7
 200:	0ff6f693          	andi	a3,a3,255
 204:	00269693          	slli	a3,a3,0x2
 208:	00d806b3          	add	a3,a6,a3
 20c:	0006ac03          	lw	s8,0(a3)
 210:	011a57b3          	srl	a5,s4,a7
 214:	0ff7f793          	andi	a5,a5,255
 218:	fffc0b93          	addi	s7,s8,-1
 21c:	00279793          	slli	a5,a5,0x2
 220:	ff442b03          	lw	s6,-12(s0)
 224:	00f807b3          	add	a5,a6,a5
 228:	0176a023          	sw	s7,0(a3)
 22c:	0007ac83          	lw	s9,0(a5)
 230:	0114d6b3          	srl	a3,s1,a7
 234:	0ff6f693          	andi	a3,a3,255
 238:	fffc8b93          	addi	s7,s9,-1
 23c:	00269693          	slli	a3,a3,0x2
 240:	0177a023          	sw	s7,0(a5)
 244:	00d806b3          	add	a3,a6,a3
 248:	0006ab83          	lw	s7,0(a3)
 24c:	011b57b3          	srl	a5,s6,a7
 250:	0ff7f793          	andi	a5,a5,255
 254:	fffb8d13          	addi	s10,s7,-1
 258:	00279793          	slli	a5,a5,0x2
 25c:	01a6a023          	sw	s10,0(a3)
 260:	00f807b3          	add	a5,a6,a5
 264:	0007a683          	lw	a3,0(a5)
 268:	002c1c13          	slli	s8,s8,0x2
 26c:	01850c33          	add	s8,a0,s8
 270:	fff68d13          	addi	s10,a3,-1
 274:	01a7a023          	sw	s10,0(a5)
 278:	002c9c93          	slli	s9,s9,0x2
 27c:	ff5c2e23          	sw	s5,-4(s8)
 280:	01950cb3          	add	s9,a0,s9
 284:	002b9b93          	slli	s7,s7,0x2
 288:	ff4cae23          	sw	s4,-4(s9)
 28c:	01750bb3          	add	s7,a0,s7
 290:	00269693          	slli	a3,a3,0x2
 294:	fe9bae23          	sw	s1,-4(s7)
 298:	00d506b3          	add	a3,a0,a3
 29c:	ff66ae23          	sw	s6,-4(a3)
 2a0:	ff040413          	addi	s0,s0,-16
 2a4:	f53476e3          	bgeu	s0,s3,1f0 <sort+0x194>
 2a8:	01c90933          	add	s2,s2,t3
 2ac:	02b96e63          	bltu	s2,a1,2e8 <sort+0x28c>
 2b0:	00092783          	lw	a5,0(s2)
 2b4:	ffc90913          	addi	s2,s2,-4
 2b8:	0117d7b3          	srl	a5,a5,a7
 2bc:	0ff7f793          	andi	a5,a5,255
 2c0:	00279793          	slli	a5,a5,0x2
 2c4:	00f807b3          	add	a5,a6,a5
 2c8:	0007a683          	lw	a3,0(a5)
 2cc:	fff68693          	addi	a3,a3,-1
 2d0:	00d7a023          	sw	a3,0(a5)
 2d4:	00492783          	lw	a5,4(s2)
 2d8:	00269693          	slli	a3,a3,0x2
 2dc:	00d506b3          	add	a3,a0,a3
 2e0:	00f6a023          	sw	a5,0(a3)
 2e4:	fcb976e3          	bgeu	s2,a1,2b0 <sort+0x254>
 2e8:	00888893          	addi	a7,a7,8
 2ec:	01e88a63          	beq	a7,t5,300 <sort+0x2a4>
 2f0:	00058793          	addi	a5,a1,0
 2f4:	00050593          	addi	a1,a0,0
 2f8:	00078513          	addi	a0,a5,0
 2fc:	dd9ff06f          	jal	zero,d4 <sort+0x78>
 300:	00a28663          	beq	t0,a0,30c <sort+0x2b0>
 304:	00000097          	auipc	ra,0x0
 308:	d34080e7          	jalr	ra,-716(ra) # 38 <memcpy>
 30c:	42c12083          	lw	ra,1068(sp)
 310:	42812403          	lw	s0,1064(sp)
 314:	42412483          	lw	s1,1060(sp)
 318:	42012903          	lw	s2,1056(sp)
 31c:	41c12983          	lw	s3,1052(sp)
 320:	41812a03          	lw	s4,1048(sp)
 324:	41412a83          	lw	s5,1044(sp)
 328:	41012b03          	lw	s6,1040(sp)
 32c:	40c12b83          	lw	s7,1036(sp)
 330:	40812c03          	lw	s8,1032(sp)
 334:	40412c83          	lw	s9,1028(sp)
 338:	40012d03          	lw	s10,1024(sp)
 33c:	43010113          	addi	sp,sp,1072
 340:	00008067          	jalr	zero,0(ra)
 344:	00058693          	addi	a3,a1,0
 348:	e35ff06f          	jal	zero,17c <sort+0x120>

0000034c <main>:
 34c:	ff010113          	addi	sp,sp,-16
 350:	00812423          	sw	s0,8(sp)
 354:	00004637          	lui	a2,0x4
 358:	00002437          	lui	s0,0x2
 35c:	00001537          	lui	a0,0x1
 360:	80050513          	addi	a0,a0,-2048 # 800 <verify_data+0x444>
 364:	3bc60613          	addi	a2,a2,956 # 43bc <scratch.0>
 368:	3bc40593          	addi	a1,s0,956 # 23bc <input_data>
 36c:	00112623          	sw	ra,12(sp)
 370:	00000097          	auipc	ra,0x0
 374:	cec080e7          	jalr	ra,-788(ra) # 5c <sort>
 378:	00000737          	lui	a4,0x0
 37c:	3bc40793          	addi	a5,s0,956
 380:	3bc70713          	addi	a4,a4,956 # 3bc <verify_data>
 384:	00000513          	addi	a0,zero,0
 388:	0007a603          	lw	a2,0(a5)
 38c:	00072683          	lw	a3,0(a4)
 390:	00150513          	addi	a0,a0,1
 394:	80050593          	addi	a1,a0,-2048
 398:	00d61a63          	bne	a2,a3,3ac <main+0x60>
 39c:	00478793          	addi	a5,a5,4
 3a0:	00470713          	addi	a4,a4,4
 3a4:	fe0592e3          	bne	a1,zero,388 <main+0x3c>
 3a8:	00000513          	addi	a0,zero,0
 3ac:	00c12083          	lw	ra,12(sp)
 3b0:	00812403          	lw	s0,8(sp)
 3b4:	01010113          	addi	sp,sp,16
 3b8:	00008067          	jalr	zero,0(ra)
