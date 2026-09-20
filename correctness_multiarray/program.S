
program.elf:     file format elf32-littleriscv


Disassembly of section .text.init:

00000000 <_start>:
   0:	00040137          	lui	sp,0x40
   4:	00000297          	auipc	t0,0x0
   8:	1e028293          	addi	t0,t0,480 # 1e4 <course_put_hash>
   c:	00000317          	auipc	t1,0x0
  10:	2bc30313          	addi	t1,t1,700 # 2c8 <__bss_end>
  14:	0062f863          	bgeu	t0,t1,24 <_start+0x24>
  18:	0002a023          	sw	zero,0(t0)
  1c:	00428293          	addi	t0,t0,4
  20:	ff5ff06f          	jal	zero,14 <_start+0x14>
  24:	00000097          	auipc	ra,0x0
  28:	054080e7          	jalr	ra,84(ra) # 78 <main>
  2c:	00000097          	auipc	ra,0x0
  30:	030080e7          	jalr	ra,48(ra) # 5c <course_put_result>
  34:	800002b7          	lui	t0,0x80000
  38:	00a2a023          	sw	a0,0(t0) # 80000000 <__stack_top+0x7ffc0000>
  3c:	0000006f          	jal	zero,3c <_start+0x3c>

Disassembly of section .text:

00000040 <put>:
  40:	000007b7          	lui	a5,0x0
  44:	1e478793          	addi	a5,a5,484 # 1e4 <course_put_hash>
  48:	0007a703          	lw	a4,0(a5)
  4c:	00e54533          	xor	a0,a0,a4
  50:	0ad50513          	addi	a0,a0,173
  54:	00a7a023          	sw	a0,0(a5)
  58:	00008067          	jalr	zero,0(ra)

0000005c <course_put_result>:
  5c:	000007b7          	lui	a5,0x0
  60:	1e47a503          	lw	a0,484(a5) # 1e4 <course_put_hash>
  64:	0fd00793          	addi	a5,zero,253
  68:	02f57533          	remu	a0,a0,a5
  6c:	00008067          	jalr	zero,0(ra)

00000070 <printNum>:
  70:	00000317          	auipc	t1,0x0
  74:	fd030067          	jalr	zero,-48(t1) # 40 <put>

00000078 <main>:
  78:	ff010113          	addi	sp,sp,-16 # 3fff0 <__bss_end+0x3fd28>
  7c:	00912223          	sw	s1,4(sp)
  80:	000004b7          	lui	s1,0x0
  84:	00812423          	sw	s0,8(sp)
  88:	1e848413          	addi	s0,s1,488 # 1e8 <a>
  8c:	00112623          	sw	ra,12(sp)
  90:	01212023          	sw	s2,0(sp)
  94:	1e848493          	addi	s1,s1,488
  98:	02840713          	addi	a4,s0,40
  9c:	0d840613          	addi	a2,s0,216
  a0:	37800693          	addi	a3,zero,888
  a4:	fd870793          	addi	a5,a4,-40
  a8:	00d7a023          	sw	a3,0(a5)
  ac:	00478793          	addi	a5,a5,4
  b0:	fee79ce3          	bne	a5,a4,a8 <main+0x30>
  b4:	02c78713          	addi	a4,a5,44
  b8:	fec716e3          	bne	a4,a2,a4 <main+0x2c>
  bc:	0a842503          	lw	a0,168(s0)
  c0:	fff00793          	addi	a5,zero,-1
  c4:	00a00713          	addi	a4,zero,10
  c8:	0af42a23          	sw	a5,180(s0)
  cc:	0af42e23          	sw	a5,188(s0)
  d0:	0cf42223          	sw	a5,196(s0)
  d4:	0cf42623          	sw	a5,204(s0)
  d8:	0cf42a23          	sw	a5,212(s0)
  dc:	00500793          	addi	a5,zero,5
  e0:	0ae42823          	sw	a4,176(s0)
  e4:	0cf42e23          	sw	a5,220(s0)
  e8:	00000097          	auipc	ra,0x0
  ec:	f58080e7          	jalr	ra,-168(ra) # 40 <put>
  f0:	00a00693          	addi	a3,zero,10
  f4:	03200613          	addi	a2,zero,50
  f8:	ff668793          	addi	a5,a3,-10
  fc:	00048713          	addi	a4,s1,0
 100:	00f72023          	sw	a5,0(a4)
 104:	00178793          	addi	a5,a5,1
 108:	00470713          	addi	a4,a4,4
 10c:	fed79ae3          	bne	a5,a3,100 <main+0x88>
 110:	00a78693          	addi	a3,a5,10
 114:	02c48493          	addi	s1,s1,44
 118:	fec690e3          	bne	a3,a2,f8 <main+0x80>
 11c:	0c042e23          	sw	zero,220(s0)
 120:	00000693          	addi	a3,zero,0
 124:	00900493          	addi	s1,zero,9
 128:	00300913          	addi	s2,zero,3
 12c:	0a042823          	sw	zero,176(s0)
 130:	00000713          	addi	a4,zero,0
 134:	0080006f          	jal	zero,13c <main+0xc4>
 138:	0dc42683          	lw	a3,220(s0)
 13c:	00169793          	slli	a5,a3,0x1
 140:	00d787b3          	add	a5,a5,a3
 144:	00279793          	slli	a5,a5,0x2
 148:	40d787b3          	sub	a5,a5,a3
 14c:	00e787b3          	add	a5,a5,a4
 150:	00279793          	slli	a5,a5,0x2
 154:	00f407b3          	add	a5,s0,a5
 158:	0007a503          	lw	a0,0(a5)
 15c:	00000097          	auipc	ra,0x0
 160:	ee4080e7          	jalr	ra,-284(ra) # 40 <put>
 164:	0b042783          	lw	a5,176(s0)
 168:	00178713          	addi	a4,a5,1
 16c:	0ae42823          	sw	a4,176(s0)
 170:	fce4d4e3          	bge	s1,a4,138 <main+0xc0>
 174:	0dc42783          	lw	a5,220(s0)
 178:	00178693          	addi	a3,a5,1
 17c:	0cd42e23          	sw	a3,220(s0)
 180:	fad956e3          	bge	s2,a3,12c <main+0xb4>
 184:	00000513          	addi	a0,zero,0
 188:	08042023          	sw	zero,128(s0)
 18c:	00000097          	auipc	ra,0x0
 190:	eb4080e7          	jalr	ra,-332(ra) # 40 <put>
 194:	08042783          	lw	a5,128(s0)
 198:	ffe00713          	addi	a4,zero,-2
 19c:	0ae42a23          	sw	a4,180(s0)
 1a0:	00379793          	slli	a5,a5,0x3
 1a4:	00f407b3          	add	a5,s0,a5
 1a8:	ff600713          	addi	a4,zero,-10
 1ac:	0ae7aa23          	sw	a4,180(a5)
 1b0:	0b442503          	lw	a0,180(s0)
 1b4:	00000097          	auipc	ra,0x0
 1b8:	e8c080e7          	jalr	ra,-372(ra) # 40 <put>
 1bc:	0bc42503          	lw	a0,188(s0)
 1c0:	00000097          	auipc	ra,0x0
 1c4:	e80080e7          	jalr	ra,-384(ra) # 40 <put>
 1c8:	00c12083          	lw	ra,12(sp)
 1cc:	00812403          	lw	s0,8(sp)
 1d0:	00412483          	lw	s1,4(sp)
 1d4:	00012903          	lw	s2,0(sp)
 1d8:	00000513          	addi	a0,zero,0
 1dc:	01010113          	addi	sp,sp,16
 1e0:	00008067          	jalr	zero,0(ra)
