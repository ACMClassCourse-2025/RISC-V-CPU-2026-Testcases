
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
  28:	124080e7          	jalr	ra,292(ra) # 148 <main>
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

00000070 <tak>:
  70:	fe010113          	addi	sp,sp,-32 # 3ffe0 <__bss_end+0x3fe60>
  74:	00912a23          	sw	s1,20(sp)
  78:	00112e23          	sw	ra,28(sp)
  7c:	00812c23          	sw	s0,24(sp)
  80:	01212823          	sw	s2,16(sp)
  84:	01312623          	sw	s3,12(sp)
  88:	01412423          	sw	s4,8(sp)
  8c:	00060493          	addi	s1,a2,0
  90:	08a5da63          	bge	a1,a0,124 <tak+0xb4>
  94:	00050913          	addi	s2,a0,0
  98:	00058413          	addi	s0,a1,0
  9c:	00100993          	addi	s3,zero,1
  a0:	00048613          	addi	a2,s1,0
  a4:	00040593          	addi	a1,s0,0
  a8:	fff90513          	addi	a0,s2,-1
  ac:	00000097          	auipc	ra,0x0
  b0:	fc4080e7          	jalr	ra,-60(ra) # 70 <tak>
  b4:	00050793          	addi	a5,a0,0
  b8:	00048593          	addi	a1,s1,0
  bc:	00090613          	addi	a2,s2,0
  c0:	fff40513          	addi	a0,s0,-1
  c4:	00090a13          	addi	s4,s2,0
  c8:	00078913          	addi	s2,a5,0
  cc:	00000097          	auipc	ra,0x0
  d0:	fa4080e7          	jalr	ra,-92(ra) # 70 <tak>
  d4:	00050793          	addi	a5,a0,0
  d8:	00040613          	addi	a2,s0,0
  dc:	fff48513          	addi	a0,s1,-1
  e0:	000a0593          	addi	a1,s4,0
  e4:	00078413          	addi	s0,a5,0
  e8:	00000097          	auipc	ra,0x0
  ec:	f88080e7          	jalr	ra,-120(ra) # 70 <tak>
  f0:	00098613          	addi	a2,s3,0
  f4:	00050493          	addi	s1,a0,0
  f8:	00198993          	addi	s3,s3,1
  fc:	fb2442e3          	blt	s0,s2,a0 <tak+0x30>
 100:	01c12083          	lw	ra,28(sp)
 104:	01812403          	lw	s0,24(sp)
 108:	01412483          	lw	s1,20(sp)
 10c:	01012903          	lw	s2,16(sp)
 110:	00c12983          	lw	s3,12(sp)
 114:	00812a03          	lw	s4,8(sp)
 118:	00c50533          	add	a0,a0,a2
 11c:	02010113          	addi	sp,sp,32
 120:	00008067          	jalr	zero,0(ra)
 124:	01c12083          	lw	ra,28(sp)
 128:	01812403          	lw	s0,24(sp)
 12c:	01412483          	lw	s1,20(sp)
 130:	01012903          	lw	s2,16(sp)
 134:	00c12983          	lw	s3,12(sp)
 138:	00812a03          	lw	s4,8(sp)
 13c:	00060513          	addi	a0,a2,0
 140:	02010113          	addi	sp,sp,32
 144:	00008067          	jalr	zero,0(ra)

00000148 <main>:
 148:	ff010113          	addi	sp,sp,-16
 14c:	00600613          	addi	a2,zero,6
 150:	00c00593          	addi	a1,zero,12
 154:	01200513          	addi	a0,zero,18
 158:	00112623          	sw	ra,12(sp)
 15c:	00000097          	auipc	ra,0x0
 160:	f14080e7          	jalr	ra,-236(ra) # 70 <tak>
 164:	00000097          	auipc	ra,0x0
 168:	edc080e7          	jalr	ra,-292(ra) # 40 <put>
 16c:	00c12083          	lw	ra,12(sp)
 170:	00000513          	addi	a0,zero,0
 174:	01010113          	addi	sp,sp,16
 178:	00008067          	jalr	zero,0(ra)
