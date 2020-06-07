En el fichero libPDMFilter_CM4_GCC_wc32.a:

pdm_filter.o:     formato del fichero elf32-littlearm


Desensamblado de la sección .text:

00000000 <PDM_Filter_Init>:
   0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   4:	4b54      	ldr	r3, [pc, #336]	; (158 <PDM_Filter_Init+0x158>)
   6:	4680      	mov	r8, r0
   8:	681a      	ldr	r2, [r3, #0]
   a:	4854      	ldr	r0, [pc, #336]	; (15c <PDM_Filter_Init+0x15c>)
   c:	4282      	cmp	r2, r0
   e:	ed2d 8b02 	vpush	{d8}
  12:	d01b      	beq.n	4c <PDM_Filter_Init+0x4c>
  14:	4952      	ldr	r1, [pc, #328]	; (160 <PDM_Filter_Init+0x160>)
  16:	680b      	ldr	r3, [r1, #0]
  18:	04da      	lsls	r2, r3, #19
  1a:	d405      	bmi.n	28 <PDM_Filter_Init+0x28>
  1c:	680a      	ldr	r2, [r1, #0]
  1e:	f442 5380 	orr.w	r3, r2, #4096	; 0x1000
  22:	600b      	str	r3, [r1, #0]
  24:	2001      	movs	r0, #1
  26:	e000      	b.n	2a <PDM_Filter_Init+0x2a>
  28:	2000      	movs	r0, #0
  2a:	4a4e      	ldr	r2, [pc, #312]	; (164 <PDM_Filter_Init+0x164>)
  2c:	494e      	ldr	r1, [pc, #312]	; (168 <PDM_Filter_Init+0x168>)
  2e:	6011      	str	r1, [r2, #0]
  30:	6813      	ldr	r3, [r2, #0]
  32:	4a4a      	ldr	r2, [pc, #296]	; (15c <PDM_Filter_Init+0x15c>)
  34:	4293      	cmp	r3, r2
  36:	d108      	bne.n	4a <PDM_Filter_Init+0x4a>
  38:	4947      	ldr	r1, [pc, #284]	; (158 <PDM_Filter_Init+0x158>)
  3a:	600b      	str	r3, [r1, #0]
  3c:	b130      	cbz	r0, 4c <PDM_Filter_Init+0x4c>
  3e:	4848      	ldr	r0, [pc, #288]	; (160 <PDM_Filter_Init+0x160>)
  40:	6803      	ldr	r3, [r0, #0]
  42:	f423 5280 	bic.w	r2, r3, #4096	; 0x1000
  46:	6002      	str	r2, [r0, #0]
  48:	e000      	b.n	4c <PDM_Filter_Init+0x4c>
  4a:	e7fe      	b.n	4a <PDM_Filter_Init+0x4a>
  4c:	ed98 8a01 	vldr	s16, [r8, #4]
  50:	eeb5 8a40 	vcmp.f32	s16, #0.0
  54:	2100      	movs	r1, #0
  56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
  5a:	f8c8 101c 	str.w	r1, [r8, #28]
  5e:	f8c8 1018 	str.w	r1, [r8, #24]
  62:	f8c8 1014 	str.w	r1, [r8, #20]
  66:	f8c8 1010 	str.w	r1, [r8, #16]
  6a:	f8c8 1028 	str.w	r1, [r8, #40]	; 0x28
  6e:	f8c8 1024 	str.w	r1, [r8, #36]	; 0x24
  72:	f8c8 1020 	str.w	r1, [r8, #32]
  76:	d029      	beq.n	cc <PDM_Filter_Init+0xcc>
  78:	eddf 7a3c 	vldr	s15, [pc, #240]	; 16c <PDM_Filter_Init+0x16c>
  7c:	ee28 0a27 	vmul.f32	s0, s16, s15
  80:	ee10 0a10 	vmov	r0, s0
  84:	f7ff fffe 	bl	0 <__aeabi_f2d>
  88:	4604      	mov	r4, r0
  8a:	ee18 0a10 	vmov	r0, s16
  8e:	460d      	mov	r5, r1
  90:	f7ff fffe 	bl	0 <__aeabi_f2d>
  94:	4606      	mov	r6, r0
  96:	f8b8 0000 	ldrh.w	r0, [r8]
  9a:	460f      	mov	r7, r1
  9c:	f7ff fffe 	bl	0 <__aeabi_i2d>
  a0:	a32b      	add	r3, pc, #172	; (adr r3, 150 <PDM_Filter_Init+0x150>)
  a2:	e9d3 2300 	ldrd	r2, r3, [r3]
  a6:	f7ff fffe 	bl	0 <__aeabi_ddiv>
  aa:	4602      	mov	r2, r0
  ac:	460b      	mov	r3, r1
  ae:	4630      	mov	r0, r6
  b0:	4639      	mov	r1, r7
  b2:	f7ff fffe 	bl	0 <__aeabi_dadd>
  b6:	4602      	mov	r2, r0
  b8:	460b      	mov	r3, r1
  ba:	4620      	mov	r0, r4
  bc:	4629      	mov	r1, r5
  be:	f7ff fffe 	bl	0 <__aeabi_ddiv>
  c2:	f7ff fffe 	bl	0 <__aeabi_d2uiz>
  c6:	f8a8 002c 	strh.w	r0, [r8, #44]	; 0x2c
  ca:	e001      	b.n	d0 <PDM_Filter_Init+0xd0>
  cc:	f8a8 102c 	strh.w	r1, [r8, #44]	; 0x2c
  d0:	ed98 8a02 	vldr	s16, [r8, #8]
  d4:	eeb5 8a40 	vcmp.f32	s16, #0.0
  d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
  dc:	d026      	beq.n	12c <PDM_Filter_Init+0x12c>
  de:	f8b8 9000 	ldrh.w	r9, [r8]
  e2:	ea4f 2009 	mov.w	r0, r9, lsl #8
  e6:	f7ff fffe 	bl	0 <__aeabi_i2d>
  ea:	4604      	mov	r4, r0
  ec:	ee18 0a10 	vmov	r0, s16
  f0:	460d      	mov	r5, r1
  f2:	f7ff fffe 	bl	0 <__aeabi_f2d>
  f6:	a316      	add	r3, pc, #88	; (adr r3, 150 <PDM_Filter_Init+0x150>)
  f8:	e9d3 2300 	ldrd	r2, r3, [r3]
  fc:	f7ff fffe 	bl	0 <__aeabi_dmul>
 100:	4606      	mov	r6, r0
 102:	4648      	mov	r0, r9
 104:	460f      	mov	r7, r1
 106:	f7ff fffe 	bl	0 <__aeabi_i2d>
 10a:	4602      	mov	r2, r0
 10c:	460b      	mov	r3, r1
 10e:	4630      	mov	r0, r6
 110:	4639      	mov	r1, r7
 112:	f7ff fffe 	bl	0 <__aeabi_dadd>
 116:	4602      	mov	r2, r0
 118:	460b      	mov	r3, r1
 11a:	4620      	mov	r0, r4
 11c:	4629      	mov	r1, r5
 11e:	f7ff fffe 	bl	0 <__aeabi_ddiv>
 122:	f7ff fffe 	bl	0 <__aeabi_d2uiz>
 126:	f8a8 002e 	strh.w	r0, [r8, #46]	; 0x2e
 12a:	e002      	b.n	132 <PDM_Filter_Init+0x132>
 12c:	2000      	movs	r0, #0
 12e:	f8a8 002e 	strh.w	r0, [r8, #46]	; 0x2e
 132:	f8b8 2000 	ldrh.w	r2, [r8]
 136:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 13a:	fbb2 f1f3 	udiv	r1, r2, r3
 13e:	f8a8 1030 	strh.w	r1, [r8, #48]	; 0x30
 142:	ecbd 8b02 	vpop	{d8}
 146:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 14a:	bf00      	nop
 14c:	f3af 8000 	nop.w
 150:	51eb851f 	.word	0x51eb851f
 154:	40191eb8 	.word	0x40191eb8
 158:	00000000 	.word	0x00000000
 15c:	b5e8b5cd 	.word	0xb5e8b5cd
 160:	40023830 	.word	0x40023830
 164:	40023000 	.word	0x40023000
 168:	f407a5c2 	.word	0xf407a5c2
 16c:	43800000 	.word	0x43800000

00000170 <PDM_Filter_64_LSB>:
 170:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 174:	b09b      	sub	sp, #108	; 0x6c
 176:	4683      	mov	fp, r0
 178:	9219      	str	r2, [sp, #100]	; 0x64
 17a:	4aa9      	ldr	r2, [pc, #676]	; (420 <PDM_Filter_64_LSB+0x2b0>)
 17c:	9118      	str	r1, [sp, #96]	; 0x60
 17e:	48a9      	ldr	r0, [pc, #676]	; (424 <PDM_Filter_64_LSB+0x2b4>)
 180:	6811      	ldr	r1, [r2, #0]
 182:	4281      	cmp	r1, r0
 184:	d000      	beq.n	188 <PDM_Filter_64_LSB+0x18>
 186:	e7fe      	b.n	186 <PDM_Filter_64_LSB+0x16>
 188:	6a9e      	ldr	r6, [r3, #40]	; 0x28
 18a:	f8b3 c00c 	ldrh.w	ip, [r3, #12]
 18e:	699f      	ldr	r7, [r3, #24]
 190:	8d9a      	ldrh	r2, [r3, #44]	; 0x2c
 192:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 194:	9603      	str	r6, [sp, #12]
 196:	2603      	movs	r6, #3
 198:	6a1c      	ldr	r4, [r3, #32]
 19a:	6a5d      	ldr	r5, [r3, #36]	; 0x24
 19c:	9705      	str	r7, [sp, #20]
 19e:	9206      	str	r2, [sp, #24]
 1a0:	fb06 f70c 	mul.w	r7, r6, ip
 1a4:	ea4f 028c 	mov.w	r2, ip, lsl #2
 1a8:	2606      	movs	r6, #6
 1aa:	ea4f 004c 	mov.w	r0, ip, lsl #1
 1ae:	910b      	str	r1, [sp, #44]	; 0x2c
 1b0:	970e      	str	r7, [sp, #56]	; 0x38
 1b2:	2105      	movs	r1, #5
 1b4:	fb06 f70c 	mul.w	r7, r6, ip
 1b8:	920f      	str	r2, [sp, #60]	; 0x3c
 1ba:	2207      	movs	r2, #7
 1bc:	9402      	str	r4, [sp, #8]
 1be:	9504      	str	r5, [sp, #16]
 1c0:	900d      	str	r0, [sp, #52]	; 0x34
 1c2:	9711      	str	r7, [sp, #68]	; 0x44
 1c4:	fb01 f00c 	mul.w	r0, r1, ip
 1c8:	ea4f 06cc 	mov.w	r6, ip, lsl #3
 1cc:	fb02 f10c 	mul.w	r1, r2, ip
 1d0:	2700      	movs	r7, #0
 1d2:	691d      	ldr	r5, [r3, #16]
 1d4:	695c      	ldr	r4, [r3, #20]
 1d6:	f8d3 a01c 	ldr.w	sl, [r3, #28]
 1da:	9010      	str	r0, [sp, #64]	; 0x40
 1dc:	9112      	str	r1, [sp, #72]	; 0x48
 1de:	9617      	str	r6, [sp, #92]	; 0x5c
 1e0:	9701      	str	r7, [sp, #4]
 1e2:	8e18      	ldrh	r0, [r3, #48]	; 0x30
 1e4:	f8dd 9004 	ldr.w	r9, [sp, #4]
 1e8:	4581      	cmp	r9, r0
 1ea:	f280 810a 	bge.w	402 <PDM_Filter_64_LSB+0x292>
 1ee:	488e      	ldr	r0, [pc, #568]	; (428 <PDM_Filter_64_LSB+0x2b8>)
 1f0:	f89b 6000 	ldrb.w	r6, [fp]
 1f4:	f81b 700c 	ldrb.w	r7, [fp, ip]
 1f8:	f810 9006 	ldrb.w	r9, [r0, r6]
 1fc:	5dc2      	ldrb	r2, [r0, r7]
 1fe:	44a1      	add	r9, r4
 200:	1984      	adds	r4, r0, r6
 202:	1951      	adds	r1, r2, r5
 204:	f894 8100 	ldrb.w	r8, [r4, #256]	; 0x100
 208:	f894 2200 	ldrb.w	r2, [r4, #512]	; 0x200
 20c:	eb01 0848 	add.w	r8, r1, r8, lsl #1
 210:	f8cd 801c 	str.w	r8, [sp, #28]
 214:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 218:	f81b 6008 	ldrb.w	r6, [fp, r8]
 21c:	5d85      	ldrb	r5, [r0, r6]
 21e:	19c7      	adds	r7, r0, r7
 220:	18a9      	adds	r1, r5, r2
 222:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 224:	f897 4100 	ldrb.w	r4, [r7, #256]	; 0x100
 228:	f81b 2002 	ldrb.w	r2, [fp, r2]
 22c:	f897 7200 	ldrb.w	r7, [r7, #512]	; 0x200
 230:	eb01 0544 	add.w	r5, r1, r4, lsl #1
 234:	5c81      	ldrb	r1, [r0, r2]
 236:	9508      	str	r5, [sp, #32]
 238:	19cc      	adds	r4, r1, r7
 23a:	1981      	adds	r1, r0, r6
 23c:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
 23e:	f891 8100 	ldrb.w	r8, [r1, #256]	; 0x100
 242:	f891 7200 	ldrb.w	r7, [r1, #512]	; 0x200
 246:	eb04 0848 	add.w	r8, r4, r8, lsl #1
 24a:	f81b 4006 	ldrb.w	r4, [fp, r6]
 24e:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
 252:	1882      	adds	r2, r0, r2
 254:	5d05      	ldrb	r5, [r0, r4]
 256:	f892 6100 	ldrb.w	r6, [r2, #256]	; 0x100
 25a:	f892 2200 	ldrb.w	r2, [r2, #512]	; 0x200
 25e:	19e9      	adds	r1, r5, r7
 260:	eb01 0546 	add.w	r5, r1, r6, lsl #1
 264:	eb05 0708 	add.w	r7, r5, r8
 268:	f8dd 8040 	ldr.w	r8, [sp, #64]	; 0x40
 26c:	9715      	str	r7, [sp, #84]	; 0x54
 26e:	f81b 7008 	ldrb.w	r7, [fp, r8]
 272:	950a      	str	r5, [sp, #40]	; 0x28
 274:	1904      	adds	r4, r0, r4
 276:	5dc1      	ldrb	r1, [r0, r7]
 278:	f894 5100 	ldrb.w	r5, [r4, #256]	; 0x100
 27c:	f894 4200 	ldrb.w	r4, [r4, #512]	; 0x200
 280:	f8dd 801c 	ldr.w	r8, [sp, #28]
 284:	188e      	adds	r6, r1, r2
 286:	eb06 0145 	add.w	r1, r6, r5, lsl #1
 28a:	9d11      	ldr	r5, [sp, #68]	; 0x44
 28c:	9a08      	ldr	r2, [sp, #32]
 28e:	f81b 5005 	ldrb.w	r5, [fp, r5]
 292:	188e      	adds	r6, r1, r2
 294:	19c7      	adds	r7, r0, r7
 296:	5d42      	ldrb	r2, [r0, r5]
 298:	9616      	str	r6, [sp, #88]	; 0x58
 29a:	1916      	adds	r6, r2, r4
 29c:	f897 2100 	ldrb.w	r2, [r7, #256]	; 0x100
 2a0:	eb06 0242 	add.w	r2, r6, r2, lsl #1
 2a4:	4490      	add	r8, r2
 2a6:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 2aa:	9c12      	ldr	r4, [sp, #72]	; 0x48
 2ac:	f897 7200 	ldrb.w	r7, [r7, #512]	; 0x200
 2b0:	f81b 6004 	ldrb.w	r6, [fp, r4]
 2b4:	1945      	adds	r5, r0, r5
 2b6:	5d84      	ldrb	r4, [r0, r6]
 2b8:	19e4      	adds	r4, r4, r7
 2ba:	f895 7100 	ldrb.w	r7, [r5, #256]	; 0x100
 2be:	f895 5200 	ldrb.w	r5, [r5, #512]	; 0x200
 2c2:	1980      	adds	r0, r0, r6
 2c4:	eb04 0447 	add.w	r4, r4, r7, lsl #1
 2c8:	f04f 081c 	mov.w	r8, #28
 2cc:	eb04 0709 	add.w	r7, r4, r9
 2d0:	f890 6100 	ldrb.w	r6, [r0, #256]	; 0x100
 2d4:	9713      	str	r7, [sp, #76]	; 0x4c
 2d6:	fb08 aa09 	mla	sl, r8, r9, sl
 2da:	f8dd 801c 	ldr.w	r8, [sp, #28]
 2de:	940c      	str	r4, [sp, #48]	; 0x30
 2e0:	eb0a 0902 	add.w	r9, sl, r2
 2e4:	2715      	movs	r7, #21
 2e6:	eb05 0446 	add.w	r4, r5, r6, lsl #1
 2ea:	f890 5200 	ldrb.w	r5, [r0, #512]	; 0x200
 2ee:	fb07 9008 	mla	r0, r7, r8, r9
 2f2:	9f09      	ldr	r7, [sp, #36]	; 0x24
 2f4:	f8dd 9020 	ldr.w	r9, [sp, #32]
 2f8:	260a      	movs	r6, #10
 2fa:	fb06 0a07 	mla	sl, r6, r7, r0
 2fe:	270f      	movs	r7, #15
 300:	fb07 a009 	mla	r0, r7, r9, sl
 304:	f04f 0803 	mov.w	r8, #3
 308:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
 30c:	fb08 0001 	mla	r0, r8, r1, r0
 310:	f04f 0a06 	mov.w	sl, #6
 314:	fb0a 0009 	mla	r0, sl, r9, r0
 318:	9000      	str	r0, [sp, #0]
 31a:	9815      	ldr	r0, [sp, #84]	; 0x54
 31c:	f04f 0930 	mov.w	r9, #48	; 0x30
 320:	fb09 fa00 	mul.w	sl, r9, r0
 324:	f8dd 9058 	ldr.w	r9, [sp, #88]	; 0x58
 328:	202e      	movs	r0, #46	; 0x2e
 32a:	fb00 a009 	mla	r0, r0, r9, sl
 32e:	4682      	mov	sl, r0
 330:	9805      	ldr	r0, [sp, #20]
 332:	4482      	add	sl, r0
 334:	9813      	ldr	r0, [sp, #76]	; 0x4c
 336:	f04f 0924 	mov.w	r9, #36	; 0x24
 33a:	fb09 aa00 	mla	sl, r9, r0, sl
 33e:	9814      	ldr	r0, [sp, #80]	; 0x50
 340:	f04f 092a 	mov.w	r9, #42	; 0x2a
 344:	fb09 aa00 	mla	sl, r9, r0, sl
 348:	9808      	ldr	r0, [sp, #32]
 34a:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
 34e:	fb08 f800 	mul.w	r8, r8, r0
 352:	2006      	movs	r0, #6
 354:	fb00 8809 	mla	r8, r0, r9, r8
 358:	f8dd 901c 	ldr.w	r9, [sp, #28]
 35c:	eb08 0009 	add.w	r0, r8, r9
 360:	fb07 0101 	mla	r1, r7, r1, r0
 364:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 366:	980c      	ldr	r0, [sp, #48]	; 0x30
 368:	f8dd 9000 	ldr.w	r9, [sp]
 36c:	fb06 1807 	mla	r8, r6, r7, r1
 370:	261c      	movs	r6, #28
 372:	fb06 8100 	mla	r1, r6, r0, r8
 376:	2715      	movs	r7, #21
 378:	980b      	ldr	r0, [sp, #44]	; 0x2c
 37a:	fb07 1202 	mla	r2, r7, r2, r1
 37e:	9205      	str	r2, [sp, #20]
 380:	f5a9 3800 	sub.w	r8, r9, #131072	; 0x20000
 384:	b168      	cbz	r0, 3a2 <PDM_Filter_64_LSB+0x232>
 386:	9e02      	ldr	r6, [sp, #8]
 388:	9f04      	ldr	r7, [sp, #16]
 38a:	f8cd 8010 	str.w	r8, [sp, #16]
 38e:	eb06 0108 	add.w	r1, r6, r8
 392:	1bce      	subs	r6, r1, r7
 394:	4346      	muls	r6, r0
 396:	f44f 7280 	mov.w	r2, #256	; 0x100
 39a:	fb96 f0f2 	sdiv	r0, r6, r2
 39e:	9002      	str	r0, [sp, #8]
 3a0:	4680      	mov	r8, r0
 3a2:	9906      	ldr	r1, [sp, #24]
 3a4:	b161      	cbz	r1, 3c0 <PDM_Filter_64_LSB+0x250>
 3a6:	9e03      	ldr	r6, [sp, #12]
 3a8:	fb08 f801 	mul.w	r8, r8, r1
 3ac:	f5c1 7780 	rsb	r7, r1, #256	; 0x100
 3b0:	fb06 8907 	mla	r9, r6, r7, r8
 3b4:	f44f 7280 	mov.w	r2, #256	; 0x100
 3b8:	fb99 f0f2 	sdiv	r0, r9, r2
 3bc:	9003      	str	r0, [sp, #12]
 3be:	4680      	mov	r8, r0
 3c0:	9919      	ldr	r1, [sp, #100]	; 0x64
 3c2:	fb01 f708 	mul.w	r7, r1, r8
 3c6:	2f00      	cmp	r7, #0
 3c8:	dd02      	ble.n	3d0 <PDM_Filter_64_LSB+0x260>
 3ca:	3708      	adds	r7, #8
 3cc:	1138      	asrs	r0, r7, #4
 3ce:	e003      	b.n	3d8 <PDM_Filter_64_LSB+0x268>
 3d0:	3f08      	subs	r7, #8
 3d2:	2610      	movs	r6, #16
 3d4:	fb97 f0f6 	sdiv	r0, r7, r6
 3d8:	f647 72bc 	movw	r2, #32700	; 0x7fbc
 3dc:	9e01      	ldr	r6, [sp, #4]
 3de:	4913      	ldr	r1, [pc, #76]	; (42c <PDM_Filter_64_LSB+0x2bc>)
 3e0:	9f18      	ldr	r7, [sp, #96]	; 0x60
 3e2:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 3e6:	4290      	cmp	r0, r2
 3e8:	bfa8      	it	ge
 3ea:	4610      	movge	r0, r2
 3ec:	89da      	ldrh	r2, [r3, #14]
 3ee:	4372      	muls	r2, r6
 3f0:	4288      	cmp	r0, r1
 3f2:	bfa8      	it	ge
 3f4:	4601      	movge	r1, r0
 3f6:	3601      	adds	r6, #1
 3f8:	f827 1012 	strh.w	r1, [r7, r2, lsl #1]
 3fc:	44c3      	add	fp, r8
 3fe:	9601      	str	r6, [sp, #4]
 400:	e6ef      	b.n	1e2 <PDM_Filter_64_LSB+0x72>
 402:	611d      	str	r5, [r3, #16]
 404:	615c      	str	r4, [r3, #20]
 406:	9d02      	ldr	r5, [sp, #8]
 408:	9c05      	ldr	r4, [sp, #20]
 40a:	621d      	str	r5, [r3, #32]
 40c:	619c      	str	r4, [r3, #24]
 40e:	9d03      	ldr	r5, [sp, #12]
 410:	9c04      	ldr	r4, [sp, #16]
 412:	f8c3 a01c 	str.w	sl, [r3, #28]
 416:	625c      	str	r4, [r3, #36]	; 0x24
 418:	629d      	str	r5, [r3, #40]	; 0x28
 41a:	b01b      	add	sp, #108	; 0x6c
 41c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 420:	00000000 	.word	0x00000000
 424:	b5e8b5cd 	.word	0xb5e8b5cd
 428:	00000000 	.word	0x00000000
 42c:	ffff8044 	.word	0xffff8044

00000430 <PDM_Filter_80_LSB>:
 430:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 434:	b0a1      	sub	sp, #132	; 0x84
 436:	4cc7      	ldr	r4, [pc, #796]	; (754 <PDM_Filter_80_LSB+0x324>)
 438:	921f      	str	r2, [sp, #124]	; 0x7c
 43a:	4ac7      	ldr	r2, [pc, #796]	; (758 <PDM_Filter_80_LSB+0x328>)
 43c:	911e      	str	r1, [sp, #120]	; 0x78
 43e:	6811      	ldr	r1, [r2, #0]
 440:	42a1      	cmp	r1, r4
 442:	d000      	beq.n	446 <PDM_Filter_80_LSB+0x16>
 444:	e7fe      	b.n	444 <PDM_Filter_80_LSB+0x14>
 446:	6a9f      	ldr	r7, [r3, #40]	; 0x28
 448:	699a      	ldr	r2, [r3, #24]
 44a:	8d99      	ldrh	r1, [r3, #44]	; 0x2c
 44c:	8ddc      	ldrh	r4, [r3, #46]	; 0x2e
 44e:	9704      	str	r7, [sp, #16]
 450:	899f      	ldrh	r7, [r3, #12]
 452:	9206      	str	r2, [sp, #24]
 454:	9107      	str	r1, [sp, #28]
 456:	940f      	str	r4, [sp, #60]	; 0x3c
 458:	2203      	movs	r2, #3
 45a:	2105      	movs	r1, #5
 45c:	2406      	movs	r4, #6
 45e:	6a1d      	ldr	r5, [r3, #32]
 460:	6a5e      	ldr	r6, [r3, #36]	; 0x24
 462:	9503      	str	r5, [sp, #12]
 464:	437a      	muls	r2, r7
 466:	4379      	muls	r1, r7
 468:	437c      	muls	r4, r7
 46a:	9212      	str	r2, [sp, #72]	; 0x48
 46c:	9114      	str	r1, [sp, #80]	; 0x50
 46e:	9415      	str	r4, [sp, #84]	; 0x54
 470:	2207      	movs	r2, #7
 472:	2109      	movs	r1, #9
 474:	240a      	movs	r4, #10
 476:	4379      	muls	r1, r7
 478:	9605      	str	r6, [sp, #20]
 47a:	ea4f 0847 	mov.w	r8, r7, lsl #1
 47e:	ea4f 0987 	mov.w	r9, r7, lsl #2
 482:	437a      	muls	r2, r7
 484:	ea4f 0ac7 	mov.w	sl, r7, lsl #3
 488:	437c      	muls	r4, r7
 48a:	691e      	ldr	r6, [r3, #16]
 48c:	695d      	ldr	r5, [r3, #20]
 48e:	f8d3 b01c 	ldr.w	fp, [r3, #28]
 492:	9118      	str	r1, [sp, #96]	; 0x60
 494:	f8cd 8044 	str.w	r8, [sp, #68]	; 0x44
 498:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
 49c:	9216      	str	r2, [sp, #88]	; 0x58
 49e:	f8cd a05c 	str.w	sl, [sp, #92]	; 0x5c
 4a2:	941d      	str	r4, [sp, #116]	; 0x74
 4a4:	2100      	movs	r1, #0
 4a6:	9102      	str	r1, [sp, #8]
 4a8:	8e1a      	ldrh	r2, [r3, #48]	; 0x30
 4aa:	9902      	ldr	r1, [sp, #8]
 4ac:	4291      	cmp	r1, r2
 4ae:	f280 8159 	bge.w	764 <PDM_Filter_80_LSB+0x334>
 4b2:	4aaa      	ldr	r2, [pc, #680]	; (75c <PDM_Filter_80_LSB+0x32c>)
 4b4:	7804      	ldrb	r4, [r0, #0]
 4b6:	f812 9004 	ldrb.w	r9, [r2, r4]
 4ba:	44a9      	add	r9, r5
 4bc:	5dc5      	ldrb	r5, [r0, r7]
 4be:	1911      	adds	r1, r2, r4
 4c0:	f812 8005 	ldrb.w	r8, [r2, r5]
 4c4:	f891 4100 	ldrb.w	r4, [r1, #256]	; 0x100
 4c8:	f891 a200 	ldrb.w	sl, [r1, #512]	; 0x200
 4cc:	4446      	add	r6, r8
 4ce:	eb06 0644 	add.w	r6, r6, r4, lsl #1
 4d2:	9c11      	ldr	r4, [sp, #68]	; 0x44
 4d4:	9608      	str	r6, [sp, #32]
 4d6:	5d04      	ldrb	r4, [r0, r4]
 4d8:	1955      	adds	r5, r2, r5
 4da:	5d16      	ldrb	r6, [r2, r4]
 4dc:	f895 c100 	ldrb.w	ip, [r5, #256]	; 0x100
 4e0:	f895 5200 	ldrb.w	r5, [r5, #512]	; 0x200
 4e4:	eb06 080a 	add.w	r8, r6, sl
 4e8:	eb08 0a4c 	add.w	sl, r8, ip, lsl #1
 4ec:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 4f0:	f8cd a024 	str.w	sl, [sp, #36]	; 0x24
 4f4:	f810 1008 	ldrb.w	r1, [r0, r8]
 4f8:	f8dd 804c 	ldr.w	r8, [sp, #76]	; 0x4c
 4fc:	5c56      	ldrb	r6, [r2, r1]
 4fe:	1914      	adds	r4, r2, r4
 500:	eb06 0a05 	add.w	sl, r6, r5
 504:	f810 5008 	ldrb.w	r5, [r0, r8]
 508:	f894 c100 	ldrb.w	ip, [r4, #256]	; 0x100
 50c:	5d56      	ldrb	r6, [r2, r5]
 50e:	f894 4200 	ldrb.w	r4, [r4, #512]	; 0x200
 512:	1851      	adds	r1, r2, r1
 514:	eb0a 0c4c 	add.w	ip, sl, ip, lsl #1
 518:	1936      	adds	r6, r6, r4
 51a:	f891 a100 	ldrb.w	sl, [r1, #256]	; 0x100
 51e:	9c14      	ldr	r4, [sp, #80]	; 0x50
 520:	f891 1200 	ldrb.w	r1, [r1, #512]	; 0x200
 524:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
 528:	eb06 084a 	add.w	r8, r6, sl, lsl #1
 52c:	5d06      	ldrb	r6, [r0, r4]
 52e:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 532:	5d94      	ldrb	r4, [r2, r6]
 534:	f8dd 8054 	ldr.w	r8, [sp, #84]	; 0x54
 538:	1955      	adds	r5, r2, r5
 53a:	eb04 0a01 	add.w	sl, r4, r1
 53e:	f895 4100 	ldrb.w	r4, [r5, #256]	; 0x100
 542:	f895 5200 	ldrb.w	r5, [r5, #512]	; 0x200
 546:	eb0a 0144 	add.w	r1, sl, r4, lsl #1
 54a:	910c      	str	r1, [sp, #48]	; 0x30
 54c:	f810 1008 	ldrb.w	r1, [r0, r8]
 550:	1996      	adds	r6, r2, r6
 552:	5c54      	ldrb	r4, [r2, r1]
 554:	1964      	adds	r4, r4, r5
 556:	f896 5100 	ldrb.w	r5, [r6, #256]	; 0x100
 55a:	eb04 0445 	add.w	r4, r4, r5, lsl #1
 55e:	940d      	str	r4, [sp, #52]	; 0x34
 560:	9d16      	ldr	r5, [sp, #88]	; 0x58
 562:	f896 6200 	ldrb.w	r6, [r6, #512]	; 0x200
 566:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 56a:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 56e:	44a4      	add	ip, r4
 570:	5d44      	ldrb	r4, [r0, r5]
 572:	f8cd c06c 	str.w	ip, [sp, #108]	; 0x6c
 576:	5d15      	ldrb	r5, [r2, r4]
 578:	1851      	adds	r1, r2, r1
 57a:	19ad      	adds	r5, r5, r6
 57c:	f891 6100 	ldrb.w	r6, [r1, #256]	; 0x100
 580:	f891 1200 	ldrb.w	r1, [r1, #512]	; 0x200
 584:	eb05 0546 	add.w	r5, r5, r6, lsl #1
 588:	eb05 060a 	add.w	r6, r5, sl
 58c:	950e      	str	r5, [sp, #56]	; 0x38
 58e:	f810 5008 	ldrb.w	r5, [r0, r8]
 592:	961c      	str	r6, [sp, #112]	; 0x70
 594:	1914      	adds	r4, r2, r4
 596:	5d56      	ldrb	r6, [r2, r5]
 598:	f8dd a060 	ldr.w	sl, [sp, #96]	; 0x60
 59c:	1871      	adds	r1, r6, r1
 59e:	f894 6100 	ldrb.w	r6, [r4, #256]	; 0x100
 5a2:	f894 4200 	ldrb.w	r4, [r4, #512]	; 0x200
 5a6:	eb01 0c46 	add.w	ip, r1, r6, lsl #1
 5aa:	9908      	ldr	r1, [sp, #32]
 5ac:	eb0c 0601 	add.w	r6, ip, r1
 5b0:	961a      	str	r6, [sp, #104]	; 0x68
 5b2:	f810 600a 	ldrb.w	r6, [r0, sl]
 5b6:	1955      	adds	r5, r2, r5
 5b8:	5d91      	ldrb	r1, [r2, r6]
 5ba:	1992      	adds	r2, r2, r6
 5bc:	1909      	adds	r1, r1, r4
 5be:	f895 4100 	ldrb.w	r4, [r5, #256]	; 0x100
 5c2:	f892 6100 	ldrb.w	r6, [r2, #256]	; 0x100
 5c6:	f895 5200 	ldrb.w	r5, [r5, #512]	; 0x200
 5ca:	eb01 0144 	add.w	r1, r1, r4, lsl #1
 5ce:	242d      	movs	r4, #45	; 0x2d
 5d0:	eb01 0809 	add.w	r8, r1, r9
 5d4:	fb04 bb09 	mla	fp, r4, r9, fp
 5d8:	9110      	str	r1, [sp, #64]	; 0x40
 5da:	9908      	ldr	r1, [sp, #32]
 5dc:	f8cd 8064 	str.w	r8, [sp, #100]	; 0x64
 5e0:	eb0b 090c 	add.w	r9, fp, ip
 5e4:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 5e8:	eb05 0546 	add.w	r5, r5, r6, lsl #1
 5ec:	f892 6200 	ldrb.w	r6, [r2, #512]	; 0x200
 5f0:	2224      	movs	r2, #36	; 0x24
 5f2:	fb02 9a01 	mla	sl, r2, r1, r9
 5f6:	2415      	movs	r4, #21
 5f8:	fb04 a908 	mla	r9, r4, r8, sl
 5fc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 600:	990c      	ldr	r1, [sp, #48]	; 0x30
 602:	f04f 0b1c 	mov.w	fp, #28
 606:	fb0b 990a 	mla	r9, fp, sl, r9
 60a:	f04f 080a 	mov.w	r8, #10
 60e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 612:	fb08 9901 	mla	r9, r8, r1, r9
 616:	f04f 0b0f 	mov.w	fp, #15
 61a:	990e      	ldr	r1, [sp, #56]	; 0x38
 61c:	fb0b 990a 	mla	r9, fp, sl, r9
 620:	f04f 0803 	mov.w	r8, #3
 624:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 628:	fb08 9901 	mla	r9, r8, r1, r9
 62c:	f04f 0b06 	mov.w	fp, #6
 630:	fb0b 990a 	mla	r9, fp, sl, r9
 634:	f8cd 9004 	str.w	r9, [sp, #4]
 638:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 63c:	990c      	ldr	r1, [sp, #48]	; 0x30
 63e:	f04f 0b4b 	mov.w	fp, #75	; 0x4b
 642:	4451      	add	r1, sl
 644:	fb0b f901 	mul.w	r9, fp, r1
 648:	991b      	ldr	r1, [sp, #108]	; 0x6c
 64a:	f04f 0a49 	mov.w	sl, #73	; 0x49
 64e:	fb0a 9b01 	mla	fp, sl, r1, r9
 652:	9906      	ldr	r1, [sp, #24]
 654:	f8dd 9068 	ldr.w	r9, [sp, #104]	; 0x68
 658:	eb0b 0a01 	add.w	sl, fp, r1
 65c:	f04f 0b3f 	mov.w	fp, #63	; 0x3f
 660:	991c      	ldr	r1, [sp, #112]	; 0x70
 662:	fb0b aa09 	mla	sl, fp, r9, sl
 666:	f04f 0b45 	mov.w	fp, #69	; 0x45
 66a:	f8dd 9064 	ldr.w	r9, [sp, #100]	; 0x64
 66e:	fb0b aa01 	mla	sl, fp, r1, sl
 672:	f04f 0b37 	mov.w	fp, #55	; 0x37
 676:	fb0b ab09 	mla	fp, fp, r9, sl
 67a:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 67e:	990a      	ldr	r1, [sp, #40]	; 0x28
 680:	fb08 f80a 	mul.w	r8, r8, sl
 684:	f04f 0906 	mov.w	r9, #6
 688:	f8dd a020 	ldr.w	sl, [sp, #32]
 68c:	fb09 8801 	mla	r8, r9, r1, r8
 690:	990c      	ldr	r1, [sp, #48]	; 0x30
 692:	44d0      	add	r8, sl
 694:	f04f 090f 	mov.w	r9, #15
 698:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 69c:	fb09 8801 	mla	r8, r9, r1, r8
 6a0:	210a      	movs	r1, #10
 6a2:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
 6a6:	fb01 880a 	mla	r8, r1, sl, r8
 6aa:	f04f 0a1c 	mov.w	sl, #28
 6ae:	990d      	ldr	r1, [sp, #52]	; 0x34
 6b0:	fb0a 8809 	mla	r8, sl, r9, r8
 6b4:	fb04 8a01 	mla	sl, r4, r1, r8
 6b8:	9c10      	ldr	r4, [sp, #64]	; 0x40
 6ba:	990f      	ldr	r1, [sp, #60]	; 0x3c
 6bc:	f04f 092d 	mov.w	r9, #45	; 0x2d
 6c0:	fb09 a804 	mla	r8, r9, r4, sl
 6c4:	f8dd a004 	ldr.w	sl, [sp, #4]
 6c8:	fb02 820c 	mla	r2, r2, ip, r8
 6cc:	9206      	str	r2, [sp, #24]
 6ce:	f5aa 397a 	sub.w	r9, sl, #256000	; 0x3e800
 6d2:	b171      	cbz	r1, 6f2 <PDM_Filter_80_LSB+0x2c2>
 6d4:	9c03      	ldr	r4, [sp, #12]
 6d6:	9905      	ldr	r1, [sp, #20]
 6d8:	f8cd 9014 	str.w	r9, [sp, #20]
 6dc:	eb04 0209 	add.w	r2, r4, r9
 6e0:	1a54      	subs	r4, r2, r1
 6e2:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 6e4:	f44f 7180 	mov.w	r1, #256	; 0x100
 6e8:	4354      	muls	r4, r2
 6ea:	fb94 f4f1 	sdiv	r4, r4, r1
 6ee:	9403      	str	r4, [sp, #12]
 6f0:	46a1      	mov	r9, r4
 6f2:	9907      	ldr	r1, [sp, #28]
 6f4:	b161      	cbz	r1, 710 <PDM_Filter_80_LSB+0x2e0>
 6f6:	9c04      	ldr	r4, [sp, #16]
 6f8:	f5c1 7280 	rsb	r2, r1, #256	; 0x100
 6fc:	fb09 fc01 	mul.w	ip, r9, r1
 700:	fb04 c902 	mla	r9, r4, r2, ip
 704:	f44f 7180 	mov.w	r1, #256	; 0x100
 708:	fb99 f2f1 	sdiv	r2, r9, r1
 70c:	9204      	str	r2, [sp, #16]
 70e:	4691      	mov	r9, r2
 710:	9c1f      	ldr	r4, [sp, #124]	; 0x7c
 712:	fb04 f109 	mul.w	r1, r4, r9
 716:	2900      	cmp	r1, #0
 718:	dd02      	ble.n	720 <PDM_Filter_80_LSB+0x2f0>
 71a:	3110      	adds	r1, #16
 71c:	114c      	asrs	r4, r1, #5
 71e:	e003      	b.n	728 <PDM_Filter_80_LSB+0x2f8>
 720:	3910      	subs	r1, #16
 722:	2220      	movs	r2, #32
 724:	fb91 f4f2 	sdiv	r4, r1, r2
 728:	f647 71bc 	movw	r1, #32700	; 0x7fbc
 72c:	428c      	cmp	r4, r1
 72e:	bfa8      	it	ge
 730:	460c      	movge	r4, r1
 732:	89da      	ldrh	r2, [r3, #14]
 734:	9902      	ldr	r1, [sp, #8]
 736:	f8dd 8074 	ldr.w	r8, [sp, #116]	; 0x74
 73a:	434a      	muls	r2, r1
 73c:	4908      	ldr	r1, [pc, #32]	; (760 <PDM_Filter_80_LSB+0x330>)
 73e:	428c      	cmp	r4, r1
 740:	bfa8      	it	ge
 742:	4621      	movge	r1, r4
 744:	9c1e      	ldr	r4, [sp, #120]	; 0x78
 746:	f824 1012 	strh.w	r1, [r4, r2, lsl #1]
 74a:	9a02      	ldr	r2, [sp, #8]
 74c:	4440      	add	r0, r8
 74e:	1c51      	adds	r1, r2, #1
 750:	e6a9      	b.n	4a6 <PDM_Filter_80_LSB+0x76>
 752:	bf00      	nop
 754:	b5e8b5cd 	.word	0xb5e8b5cd
	...
 760:	ffff8044 	.word	0xffff8044
 764:	9805      	ldr	r0, [sp, #20]
 766:	611e      	str	r6, [r3, #16]
 768:	615d      	str	r5, [r3, #20]
 76a:	9e03      	ldr	r6, [sp, #12]
 76c:	9d06      	ldr	r5, [sp, #24]
 76e:	9c04      	ldr	r4, [sp, #16]
 770:	6258      	str	r0, [r3, #36]	; 0x24
 772:	619d      	str	r5, [r3, #24]
 774:	f8c3 b01c 	str.w	fp, [r3, #28]
 778:	621e      	str	r6, [r3, #32]
 77a:	629c      	str	r4, [r3, #40]	; 0x28
 77c:	4610      	mov	r0, r2
 77e:	b021      	add	sp, #132	; 0x84
 780:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00000784 <PDM_Filter_64_MSB>:
 784:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 788:	b095      	sub	sp, #84	; 0x54
 78a:	4c99      	ldr	r4, [pc, #612]	; (9f0 <PDM_Filter_64_MSB+0x26c>)
 78c:	9213      	str	r2, [sp, #76]	; 0x4c
 78e:	4a99      	ldr	r2, [pc, #612]	; (9f4 <PDM_Filter_64_MSB+0x270>)
 790:	9112      	str	r1, [sp, #72]	; 0x48
 792:	6811      	ldr	r1, [r2, #0]
 794:	42a1      	cmp	r1, r4
 796:	d000      	beq.n	79a <PDM_Filter_64_MSB+0x16>
 798:	e7fe      	b.n	798 <PDM_Filter_64_MSB+0x14>
 79a:	6a5e      	ldr	r6, [r3, #36]	; 0x24
 79c:	6a1d      	ldr	r5, [r3, #32]
 79e:	6a9f      	ldr	r7, [r3, #40]	; 0x28
 7a0:	699a      	ldr	r2, [r3, #24]
 7a2:	8d99      	ldrh	r1, [r3, #44]	; 0x2c
 7a4:	f8b3 802e 	ldrh.w	r8, [r3, #46]	; 0x2e
 7a8:	960c      	str	r6, [sp, #48]	; 0x30
 7aa:	f04f 0900 	mov.w	r9, #0
 7ae:	f8d3 c010 	ldr.w	ip, [r3, #16]
 7b2:	695e      	ldr	r6, [r3, #20]
 7b4:	f8d3 b01c 	ldr.w	fp, [r3, #28]
 7b8:	9501      	str	r5, [sp, #4]
 7ba:	9702      	str	r7, [sp, #8]
 7bc:	9209      	str	r2, [sp, #36]	; 0x24
 7be:	910a      	str	r1, [sp, #40]	; 0x28
 7c0:	f8cd 8034 	str.w	r8, [sp, #52]	; 0x34
 7c4:	f8cd 900c 	str.w	r9, [sp, #12]
 7c8:	498b      	ldr	r1, [pc, #556]	; (9f8 <PDM_Filter_64_MSB+0x274>)
 7ca:	7804      	ldrb	r4, [r0, #0]
 7cc:	190d      	adds	r5, r1, r4
 7ce:	5d0c      	ldrb	r4, [r1, r4]
 7d0:	f895 7200 	ldrb.w	r7, [r5, #512]	; 0x200
 7d4:	f895 8100 	ldrb.w	r8, [r5, #256]	; 0x100
 7d8:	eb06 0a07 	add.w	sl, r6, r7
 7dc:	7a06      	ldrb	r6, [r0, #8]
 7de:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 7e2:	198f      	adds	r7, r1, r6
 7e4:	5d8e      	ldrb	r6, [r1, r6]
 7e6:	f897 2200 	ldrb.w	r2, [r7, #512]	; 0x200
 7ea:	eb02 0548 	add.w	r5, r2, r8, lsl #1
 7ee:	44ac      	add	ip, r5
 7f0:	7c05      	ldrb	r5, [r0, #16]
 7f2:	f897 8100 	ldrb.w	r8, [r7, #256]	; 0x100
 7f6:	f8cd c010 	str.w	ip, [sp, #16]
 7fa:	194a      	adds	r2, r1, r5
 7fc:	5d4d      	ldrb	r5, [r1, r5]
 7fe:	f892 9200 	ldrb.w	r9, [r2, #512]	; 0x200
 802:	f892 2100 	ldrb.w	r2, [r2, #256]	; 0x100
 806:	eb09 0a04 	add.w	sl, r9, r4
 80a:	eb0a 0c48 	add.w	ip, sl, r8, lsl #1
 80e:	f890 a018 	ldrb.w	sl, [r0, #24]
 812:	f890 9020 	ldrb.w	r9, [r0, #32]
 816:	f8cd c014 	str.w	ip, [sp, #20]
 81a:	eb01 040a 	add.w	r4, r1, sl
 81e:	f894 7200 	ldrb.w	r7, [r4, #512]	; 0x200
 822:	f894 4100 	ldrb.w	r4, [r4, #256]	; 0x100
 826:	19bf      	adds	r7, r7, r6
 828:	eb07 0842 	add.w	r8, r7, r2, lsl #1
 82c:	eb01 0209 	add.w	r2, r1, r9
 830:	f8cd 8018 	str.w	r8, [sp, #24]
 834:	f892 6200 	ldrb.w	r6, [r2, #512]	; 0x200
 838:	f892 2100 	ldrb.w	r2, [r2, #256]	; 0x100
 83c:	1977      	adds	r7, r6, r5
 83e:	eb07 0644 	add.w	r6, r7, r4, lsl #1
 842:	eb06 0c08 	add.w	ip, r6, r8
 846:	f890 8028 	ldrb.w	r8, [r0, #40]	; 0x28
 84a:	f811 700a 	ldrb.w	r7, [r1, sl]
 84e:	9607      	str	r6, [sp, #28]
 850:	eb01 0508 	add.w	r5, r1, r8
 854:	f8cd c040 	str.w	ip, [sp, #64]	; 0x40
 858:	f895 4200 	ldrb.w	r4, [r5, #512]	; 0x200
 85c:	f895 5100 	ldrb.w	r5, [r5, #256]	; 0x100
 860:	19e6      	adds	r6, r4, r7
 862:	9f05      	ldr	r7, [sp, #20]
 864:	eb06 0442 	add.w	r4, r6, r2, lsl #1
 868:	19e6      	adds	r6, r4, r7
 86a:	9611      	str	r6, [sp, #68]	; 0x44
 86c:	f890 6030 	ldrb.w	r6, [r0, #48]	; 0x30
 870:	9408      	str	r4, [sp, #32]
 872:	198c      	adds	r4, r1, r6
 874:	f811 7009 	ldrb.w	r7, [r1, r9]
 878:	f894 2200 	ldrb.w	r2, [r4, #512]	; 0x200
 87c:	19d2      	adds	r2, r2, r7
 87e:	9f04      	ldr	r7, [sp, #16]
 880:	eb02 0245 	add.w	r2, r2, r5, lsl #1
 884:	18bd      	adds	r5, r7, r2
 886:	950f      	str	r5, [sp, #60]	; 0x3c
 888:	f890 5038 	ldrb.w	r5, [r0, #56]	; 0x38
 88c:	f811 9008 	ldrb.w	r9, [r1, r8]
 890:	f894 4100 	ldrb.w	r4, [r4, #256]	; 0x100
 894:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 898:	5d8e      	ldrb	r6, [r1, r6]
 89a:	194f      	adds	r7, r1, r5
 89c:	f897 a200 	ldrb.w	sl, [r7, #512]	; 0x200
 8a0:	f897 7100 	ldrb.w	r7, [r7, #256]	; 0x100
 8a4:	eb0a 0c09 	add.w	ip, sl, r9
 8a8:	eb0c 0444 	add.w	r4, ip, r4, lsl #1
 8ac:	f8dd a018 	ldr.w	sl, [sp, #24]
 8b0:	f811 c005 	ldrb.w	ip, [r1, r5]
 8b4:	9400      	str	r4, [sp, #0]
 8b6:	251c      	movs	r5, #28
 8b8:	fb05 2908 	mla	r9, r5, r8, r2
 8bc:	4444      	add	r4, r8
 8be:	210a      	movs	r1, #10
 8c0:	f8dd 8014 	ldr.w	r8, [sp, #20]
 8c4:	fb01 990a 	mla	r9, r1, sl, r9
 8c8:	eb06 0647 	add.w	r6, r6, r7, lsl #1
 8cc:	f8dd a020 	ldr.w	sl, [sp, #32]
 8d0:	270f      	movs	r7, #15
 8d2:	fb07 9908 	mla	r9, r7, r8, r9
 8d6:	2103      	movs	r1, #3
 8d8:	fb01 990a 	mla	r9, r1, sl, r9
 8dc:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8e0:	f04f 0806 	mov.w	r8, #6
 8e4:	fb08 990a 	mla	r9, r8, sl, r9
 8e8:	f8dd a010 	ldr.w	sl, [sp, #16]
 8ec:	2115      	movs	r1, #21
 8ee:	fb01 990a 	mla	r9, r1, sl, r9
 8f2:	44cb      	add	fp, r9
 8f4:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
 8f8:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8fc:	f04f 0a2e 	mov.w	sl, #46	; 0x2e
 900:	fb0a fa09 	mul.w	sl, sl, r9
 904:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
 908:	f04f 0b30 	mov.w	fp, #48	; 0x30
 90c:	fb0b aa09 	mla	sl, fp, r9, sl
 910:	f04f 0b24 	mov.w	fp, #36	; 0x24
 914:	fb0b a904 	mla	r9, fp, r4, sl
 918:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 91a:	f04f 0a2a 	mov.w	sl, #42	; 0x2a
 91e:	fb0a 9b04 	mla	fp, sl, r4, r9
 922:	9c09      	ldr	r4, [sp, #36]	; 0x24
 924:	f8dd 9018 	ldr.w	r9, [sp, #24]
 928:	f8dd a010 	ldr.w	sl, [sp, #16]
 92c:	44a3      	add	fp, r4
 92e:	9c05      	ldr	r4, [sp, #20]
 930:	fb08 a809 	mla	r8, r8, r9, sl
 934:	f8dd a020 	ldr.w	sl, [sp, #32]
 938:	f04f 0903 	mov.w	r9, #3
 93c:	fb09 8804 	mla	r8, r9, r4, r8
 940:	9c07      	ldr	r4, [sp, #28]
 942:	fb07 890a 	mla	r9, r7, sl, r8
 946:	270a      	movs	r7, #10
 948:	fb07 9804 	mla	r8, r7, r4, r9
 94c:	f8dd 9000 	ldr.w	r9, [sp]
 950:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 954:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 956:	fb05 8509 	mla	r5, r5, r9, r8
 95a:	fb01 5202 	mla	r2, r1, r2, r5
 95e:	9901      	ldr	r1, [sp, #4]
 960:	9209      	str	r2, [sp, #36]	; 0x24
 962:	f5aa 3200 	sub.w	r2, sl, #131072	; 0x20000
 966:	188c      	adds	r4, r1, r2
 968:	990d      	ldr	r1, [sp, #52]	; 0x34
 96a:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 96e:	1be5      	subs	r5, r4, r7
 970:	434d      	muls	r5, r1
 972:	f44f 7180 	mov.w	r1, #256	; 0x100
 976:	fb95 f4f1 	sdiv	r4, r5, r1
 97a:	9401      	str	r4, [sp, #4]
 97c:	9f01      	ldr	r7, [sp, #4]
 97e:	4644      	mov	r4, r8
 980:	437c      	muls	r4, r7
 982:	9f02      	ldr	r7, [sp, #8]
 984:	ebc8 0501 	rsb	r5, r8, r1
 988:	fb07 4505 	mla	r5, r7, r5, r4
 98c:	fb95 f1f1 	sdiv	r1, r5, r1
 990:	9102      	str	r1, [sp, #8]
 992:	9c13      	ldr	r4, [sp, #76]	; 0x4c
 994:	4361      	muls	r1, r4
 996:	2900      	cmp	r1, #0
 998:	dd02      	ble.n	9a0 <PDM_Filter_64_MSB+0x21c>
 99a:	3108      	adds	r1, #8
 99c:	1109      	asrs	r1, r1, #4
 99e:	e003      	b.n	9a8 <PDM_Filter_64_MSB+0x224>
 9a0:	3908      	subs	r1, #8
 9a2:	2710      	movs	r7, #16
 9a4:	fb91 f1f7 	sdiv	r1, r1, r7
 9a8:	f647 75bc 	movw	r5, #32700	; 0x7fbc
 9ac:	4c13      	ldr	r4, [pc, #76]	; (9fc <PDM_Filter_64_MSB+0x278>)
 9ae:	9f12      	ldr	r7, [sp, #72]	; 0x48
 9b0:	920c      	str	r2, [sp, #48]	; 0x30
 9b2:	42a9      	cmp	r1, r5
 9b4:	bfa8      	it	ge
 9b6:	4629      	movge	r1, r5
 9b8:	9d03      	ldr	r5, [sp, #12]
 9ba:	42a1      	cmp	r1, r4
 9bc:	bfb8      	it	lt
 9be:	4621      	movlt	r1, r4
 9c0:	5379      	strh	r1, [r7, r5]
 9c2:	350c      	adds	r5, #12
 9c4:	3040      	adds	r0, #64	; 0x40
 9c6:	2dc0      	cmp	r5, #192	; 0xc0
 9c8:	9503      	str	r5, [sp, #12]
 9ca:	f47f aefd 	bne.w	7c8 <PDM_Filter_64_MSB+0x44>
 9ce:	9809      	ldr	r0, [sp, #36]	; 0x24
 9d0:	9c01      	ldr	r4, [sp, #4]
 9d2:	9d02      	ldr	r5, [sp, #8]
 9d4:	6198      	str	r0, [r3, #24]
 9d6:	f8c3 c010 	str.w	ip, [r3, #16]
 9da:	615e      	str	r6, [r3, #20]
 9dc:	f8c3 b01c 	str.w	fp, [r3, #28]
 9e0:	621c      	str	r4, [r3, #32]
 9e2:	625a      	str	r2, [r3, #36]	; 0x24
 9e4:	629d      	str	r5, [r3, #40]	; 0x28
 9e6:	2010      	movs	r0, #16
 9e8:	b015      	add	sp, #84	; 0x54
 9ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 9ee:	bf00      	nop
 9f0:	b5e8b5cd 	.word	0xb5e8b5cd
	...
 9fc:	ffff8044 	.word	0xffff8044

00000a00 <PDM_Filter_80_MSB>:
 a00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 a04:	b0a1      	sub	sp, #132	; 0x84
 a06:	4684      	mov	ip, r0
 a08:	921f      	str	r2, [sp, #124]	; 0x7c
 a0a:	4abe      	ldr	r2, [pc, #760]	; (d04 <PDM_Filter_80_MSB+0x304>)
 a0c:	911e      	str	r1, [sp, #120]	; 0x78
 a0e:	48be      	ldr	r0, [pc, #760]	; (d08 <PDM_Filter_80_MSB+0x308>)
 a10:	6811      	ldr	r1, [r2, #0]
 a12:	4281      	cmp	r1, r0
 a14:	d000      	beq.n	a18 <PDM_Filter_80_MSB+0x18>
 a16:	e7fe      	b.n	a16 <PDM_Filter_80_MSB+0x16>
 a18:	6a9e      	ldr	r6, [r3, #40]	; 0x28
 a1a:	699f      	ldr	r7, [r3, #24]
 a1c:	9605      	str	r6, [sp, #20]
 a1e:	899e      	ldrh	r6, [r3, #12]
 a20:	8dd9      	ldrh	r1, [r3, #46]	; 0x2e
 a22:	9601      	str	r6, [sp, #4]
 a24:	0070      	lsls	r0, r6, #1
 a26:	9707      	str	r7, [sp, #28]
 a28:	2703      	movs	r7, #3
 a2a:	437e      	muls	r6, r7
 a2c:	9011      	str	r0, [sp, #68]	; 0x44
 a2e:	9801      	ldr	r0, [sp, #4]
 a30:	8d9a      	ldrh	r2, [r3, #44]	; 0x2c
 a32:	910f      	str	r1, [sp, #60]	; 0x3c
 a34:	9612      	str	r6, [sp, #72]	; 0x48
 a36:	2105      	movs	r1, #5
 a38:	9e01      	ldr	r6, [sp, #4]
 a3a:	9208      	str	r2, [sp, #32]
 a3c:	4348      	muls	r0, r1
 a3e:	00b2      	lsls	r2, r6, #2
 a40:	9014      	str	r0, [sp, #80]	; 0x50
 a42:	9e01      	ldr	r6, [sp, #4]
 a44:	9801      	ldr	r0, [sp, #4]
 a46:	9901      	ldr	r1, [sp, #4]
 a48:	9213      	str	r2, [sp, #76]	; 0x4c
 a4a:	2706      	movs	r7, #6
 a4c:	437e      	muls	r6, r7
 a4e:	2207      	movs	r2, #7
 a50:	00c7      	lsls	r7, r0, #3
 a52:	4351      	muls	r1, r2
 a54:	9615      	str	r6, [sp, #84]	; 0x54
 a56:	9717      	str	r7, [sp, #92]	; 0x5c
 a58:	9e01      	ldr	r6, [sp, #4]
 a5a:	9f01      	ldr	r7, [sp, #4]
 a5c:	6a1c      	ldr	r4, [r3, #32]
 a5e:	6a5d      	ldr	r5, [r3, #36]	; 0x24
 a60:	9116      	str	r1, [sp, #88]	; 0x58
 a62:	2209      	movs	r2, #9
 a64:	210a      	movs	r1, #10
 a66:	4356      	muls	r6, r2
 a68:	434f      	muls	r7, r1
 a6a:	f04f 0800 	mov.w	r8, #0
 a6e:	9404      	str	r4, [sp, #16]
 a70:	9506      	str	r5, [sp, #24]
 a72:	695c      	ldr	r4, [r3, #20]
 a74:	691d      	ldr	r5, [r3, #16]
 a76:	f8d3 b01c 	ldr.w	fp, [r3, #28]
 a7a:	9618      	str	r6, [sp, #96]	; 0x60
 a7c:	971d      	str	r7, [sp, #116]	; 0x74
 a7e:	f8cd 800c 	str.w	r8, [sp, #12]
 a82:	8e18      	ldrh	r0, [r3, #48]	; 0x30
 a84:	f8dd 900c 	ldr.w	r9, [sp, #12]
 a88:	4581      	cmp	r9, r0
 a8a:	f280 815a 	bge.w	d42 <PDM_Filter_80_MSB+0x342>
 a8e:	499f      	ldr	r1, [pc, #636]	; (d0c <PDM_Filter_80_MSB+0x30c>)
 a90:	f89c 0000 	ldrb.w	r0, [ip]
 a94:	f8dd 9004 	ldr.w	r9, [sp, #4]
 a98:	180f      	adds	r7, r1, r0
 a9a:	f81c 6009 	ldrb.w	r6, [ip, r9]
 a9e:	f897 a200 	ldrb.w	sl, [r7, #512]	; 0x200
 aa2:	f897 2100 	ldrb.w	r2, [r7, #256]	; 0x100
 aa6:	5c08      	ldrb	r0, [r1, r0]
 aa8:	44a2      	add	sl, r4
 aaa:	198c      	adds	r4, r1, r6
 aac:	5d8e      	ldrb	r6, [r1, r6]
 aae:	f894 8200 	ldrb.w	r8, [r4, #512]	; 0x200
 ab2:	f894 4100 	ldrb.w	r4, [r4, #256]	; 0x100
 ab6:	4445      	add	r5, r8
 ab8:	eb05 0742 	add.w	r7, r5, r2, lsl #1
 abc:	9d11      	ldr	r5, [sp, #68]	; 0x44
 abe:	9709      	str	r7, [sp, #36]	; 0x24
 ac0:	f81c 5005 	ldrb.w	r5, [ip, r5]
 ac4:	194a      	adds	r2, r1, r5
 ac6:	5d4d      	ldrb	r5, [r1, r5]
 ac8:	f892 7200 	ldrb.w	r7, [r2, #512]	; 0x200
 acc:	f892 8100 	ldrb.w	r8, [r2, #256]	; 0x100
 ad0:	183f      	adds	r7, r7, r0
 ad2:	9812      	ldr	r0, [sp, #72]	; 0x48
 ad4:	eb07 0944 	add.w	r9, r7, r4, lsl #1
 ad8:	f81c 4000 	ldrb.w	r4, [ip, r0]
 adc:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 ae0:	1908      	adds	r0, r1, r4
 ae2:	5d0c      	ldrb	r4, [r1, r4]
 ae4:	f890 7200 	ldrb.w	r7, [r0, #512]	; 0x200
 ae8:	f890 0100 	ldrb.w	r0, [r0, #256]	; 0x100
 aec:	19bf      	adds	r7, r7, r6
 aee:	eb07 0948 	add.w	r9, r7, r8, lsl #1
 af2:	f8dd 804c 	ldr.w	r8, [sp, #76]	; 0x4c
 af6:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
 afa:	f81c 9008 	ldrb.w	r9, [ip, r8]
 afe:	eb01 0209 	add.w	r2, r1, r9
 b02:	f8cd 9008 	str.w	r9, [sp, #8]
 b06:	f892 6200 	ldrb.w	r6, [r2, #512]	; 0x200
 b0a:	f892 2100 	ldrb.w	r2, [r2, #256]	; 0x100
 b0e:	1977      	adds	r7, r6, r5
 b10:	9e14      	ldr	r6, [sp, #80]	; 0x50
 b12:	f81c 9006 	ldrb.w	r9, [ip, r6]
 b16:	9e15      	ldr	r6, [sp, #84]	; 0x54
 b18:	eb07 0840 	add.w	r8, r7, r0, lsl #1
 b1c:	eb01 0009 	add.w	r0, r1, r9
 b20:	f8cd 8030 	str.w	r8, [sp, #48]	; 0x30
 b24:	f890 5200 	ldrb.w	r5, [r0, #512]	; 0x200
 b28:	f890 0100 	ldrb.w	r0, [r0, #256]	; 0x100
 b2c:	192f      	adds	r7, r5, r4
 b2e:	eb07 0842 	add.w	r8, r7, r2, lsl #1
 b32:	f81c 7006 	ldrb.w	r7, [ip, r6]
 b36:	9d02      	ldr	r5, [sp, #8]
 b38:	f8cd 8034 	str.w	r8, [sp, #52]	; 0x34
 b3c:	19ca      	adds	r2, r1, r7
 b3e:	5d4e      	ldrb	r6, [r1, r5]
 b40:	f892 4200 	ldrb.w	r4, [r2, #512]	; 0x200
 b44:	19a4      	adds	r4, r4, r6
 b46:	eb04 0540 	add.w	r5, r4, r0, lsl #1
 b4a:	9502      	str	r5, [sp, #8]
 b4c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 b50:	9e16      	ldr	r6, [sp, #88]	; 0x58
 b52:	f892 2100 	ldrb.w	r2, [r2, #256]	; 0x100
 b56:	5dcf      	ldrb	r7, [r1, r7]
 b58:	44a8      	add	r8, r5
 b5a:	f8cd 806c 	str.w	r8, [sp, #108]	; 0x6c
 b5e:	f81c 8006 	ldrb.w	r8, [ip, r6]
 b62:	f811 5009 	ldrb.w	r5, [r1, r9]
 b66:	f8dd 9060 	ldr.w	r9, [sp, #96]	; 0x60
 b6a:	eb01 0008 	add.w	r0, r1, r8
 b6e:	f811 8008 	ldrb.w	r8, [r1, r8]
 b72:	f890 4200 	ldrb.w	r4, [r0, #512]	; 0x200
 b76:	f890 0100 	ldrb.w	r0, [r0, #256]	; 0x100
 b7a:	1966      	adds	r6, r4, r5
 b7c:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 b7e:	eb06 0442 	add.w	r4, r6, r2, lsl #1
 b82:	9a17      	ldr	r2, [sp, #92]	; 0x5c
 b84:	940e      	str	r4, [sp, #56]	; 0x38
 b86:	1966      	adds	r6, r4, r5
 b88:	961c      	str	r6, [sp, #112]	; 0x70
 b8a:	f81c 6002 	ldrb.w	r6, [ip, r2]
 b8e:	198c      	adds	r4, r1, r6
 b90:	5d8e      	ldrb	r6, [r1, r6]
 b92:	f894 2200 	ldrb.w	r2, [r4, #512]	; 0x200
 b96:	f894 4100 	ldrb.w	r4, [r4, #256]	; 0x100
 b9a:	19d5      	adds	r5, r2, r7
 b9c:	9f09      	ldr	r7, [sp, #36]	; 0x24
 b9e:	eb05 0240 	add.w	r2, r5, r0, lsl #1
 ba2:	19d5      	adds	r5, r2, r7
 ba4:	951a      	str	r5, [sp, #104]	; 0x68
 ba6:	f81c 5009 	ldrb.w	r5, [ip, r9]
 baa:	194f      	adds	r7, r1, r5
 bac:	5d4d      	ldrb	r5, [r1, r5]
 bae:	f897 0200 	ldrb.w	r0, [r7, #512]	; 0x200
 bb2:	f897 7100 	ldrb.w	r7, [r7, #256]	; 0x100
 bb6:	4440      	add	r0, r8
 bb8:	eb00 0044 	add.w	r0, r0, r4, lsl #1
 bbc:	212d      	movs	r1, #45	; 0x2d
 bbe:	eb00 040a 	add.w	r4, r0, sl
 bc2:	fb01 bb0a 	mla	fp, r1, sl, fp
 bc6:	9010      	str	r0, [sp, #64]	; 0x40
 bc8:	9809      	ldr	r0, [sp, #36]	; 0x24
 bca:	9419      	str	r4, [sp, #100]	; 0x64
 bcc:	eb0b 0a02 	add.w	sl, fp, r2
 bd0:	eb06 0447 	add.w	r4, r6, r7, lsl #1
 bd4:	2124      	movs	r1, #36	; 0x24
 bd6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 bd8:	fb01 a900 	mla	r9, r1, r0, sl
 bdc:	f04f 0815 	mov.w	r8, #21
 be0:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
 be4:	980d      	ldr	r0, [sp, #52]	; 0x34
 be6:	fb08 9607 	mla	r6, r8, r7, r9
 bea:	f04f 0b1c 	mov.w	fp, #28
 bee:	fb0b 690a 	mla	r9, fp, sl, r6
 bf2:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 bf6:	260a      	movs	r6, #10
 bf8:	fb06 9a00 	mla	sl, r6, r0, r9
 bfc:	270f      	movs	r7, #15
 bfe:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
 c02:	fb07 ab08 	mla	fp, r7, r8, sl
 c06:	f04f 0803 	mov.w	r8, #3
 c0a:	fb08 ba09 	mla	sl, r8, r9, fp
 c0e:	f8dd b008 	ldr.w	fp, [sp, #8]
 c12:	2006      	movs	r0, #6
 c14:	fb00 a90b 	mla	r9, r0, fp, sl
 c18:	f8cd 9000 	str.w	r9, [sp]
 c1c:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 c20:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
 c24:	f04f 094b 	mov.w	r9, #75	; 0x4b
 c28:	eb0a 000b 	add.w	r0, sl, fp
 c2c:	fb09 fa00 	mul.w	sl, r9, r0
 c30:	981b      	ldr	r0, [sp, #108]	; 0x6c
 c32:	f04f 0b49 	mov.w	fp, #73	; 0x49
 c36:	fb0b a900 	mla	r9, fp, r0, sl
 c3a:	9807      	ldr	r0, [sp, #28]
 c3c:	eb09 0a00 	add.w	sl, r9, r0
 c40:	f8dd 9068 	ldr.w	r9, [sp, #104]	; 0x68
 c44:	981c      	ldr	r0, [sp, #112]	; 0x70
 c46:	f04f 0b3f 	mov.w	fp, #63	; 0x3f
 c4a:	fb0b aa09 	mla	sl, fp, r9, sl
 c4e:	f04f 0b45 	mov.w	fp, #69	; 0x45
 c52:	f8dd 9064 	ldr.w	r9, [sp, #100]	; 0x64
 c56:	fb0b aa00 	mla	sl, fp, r0, sl
 c5a:	f04f 0b37 	mov.w	fp, #55	; 0x37
 c5e:	fb0b ab09 	mla	fp, fp, r9, sl
 c62:	f8dd a028 	ldr.w	sl, [sp, #40]	; 0x28
 c66:	980b      	ldr	r0, [sp, #44]	; 0x2c
 c68:	fb08 f80a 	mul.w	r8, r8, sl
 c6c:	f04f 0906 	mov.w	r9, #6
 c70:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 c74:	fb09 8800 	mla	r8, r9, r0, r8
 c78:	980d      	ldr	r0, [sp, #52]	; 0x34
 c7a:	eb08 090a 	add.w	r9, r8, sl
 c7e:	fb07 9800 	mla	r8, r7, r0, r9
 c82:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 c84:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
 c88:	9802      	ldr	r0, [sp, #8]
 c8a:	fb06 8607 	mla	r6, r6, r7, r8
 c8e:	f04f 0a1c 	mov.w	sl, #28
 c92:	fb0a 6809 	mla	r8, sl, r9, r6
 c96:	2715      	movs	r7, #21
 c98:	fb07 8600 	mla	r6, r7, r0, r8
 c9c:	9810      	ldr	r0, [sp, #64]	; 0x40
 c9e:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
 ca0:	f04f 092d 	mov.w	r9, #45	; 0x2d
 ca4:	fb09 6a00 	mla	sl, r9, r0, r6
 ca8:	fb01 a202 	mla	r2, r1, r2, sl
 cac:	f8dd a000 	ldr.w	sl, [sp]
 cb0:	9207      	str	r2, [sp, #28]
 cb2:	f5aa 387a 	sub.w	r8, sl, #256000	; 0x3e800
 cb6:	b16f      	cbz	r7, cd4 <PDM_Filter_80_MSB+0x2d4>
 cb8:	9904      	ldr	r1, [sp, #16]
 cba:	9e06      	ldr	r6, [sp, #24]
 cbc:	f8cd 8018 	str.w	r8, [sp, #24]
 cc0:	eb01 0008 	add.w	r0, r1, r8
 cc4:	1b81      	subs	r1, r0, r6
 cc6:	4379      	muls	r1, r7
 cc8:	f44f 7280 	mov.w	r2, #256	; 0x100
 ccc:	fb91 f7f2 	sdiv	r7, r1, r2
 cd0:	9704      	str	r7, [sp, #16]
 cd2:	46b8      	mov	r8, r7
 cd4:	9808      	ldr	r0, [sp, #32]
 cd6:	b160      	cbz	r0, cf2 <PDM_Filter_80_MSB+0x2f2>
 cd8:	9905      	ldr	r1, [sp, #20]
 cda:	fb08 f800 	mul.w	r8, r8, r0
 cde:	f5c0 7680 	rsb	r6, r0, #256	; 0x100
 ce2:	fb01 8906 	mla	r9, r1, r6, r8
 ce6:	f44f 7280 	mov.w	r2, #256	; 0x100
 cea:	fb99 f7f2 	sdiv	r7, r9, r2
 cee:	9705      	str	r7, [sp, #20]
 cf0:	46b8      	mov	r8, r7
 cf2:	981f      	ldr	r0, [sp, #124]	; 0x7c
 cf4:	fb00 f608 	mul.w	r6, r0, r8
 cf8:	2e00      	cmp	r6, #0
 cfa:	dd09      	ble.n	d10 <PDM_Filter_80_MSB+0x310>
 cfc:	3610      	adds	r6, #16
 cfe:	1177      	asrs	r7, r6, #5
 d00:	e00a      	b.n	d18 <PDM_Filter_80_MSB+0x318>
 d02:	bf00      	nop
 d04:	00000000 	.word	0x00000000
 d08:	b5e8b5cd 	.word	0xb5e8b5cd
 d0c:	00000000 	.word	0x00000000
 d10:	3e10      	subs	r6, #16
 d12:	2120      	movs	r1, #32
 d14:	fb96 f7f1 	sdiv	r7, r6, r1
 d18:	9e03      	ldr	r6, [sp, #12]
 d1a:	89d8      	ldrh	r0, [r3, #14]
 d1c:	4910      	ldr	r1, [pc, #64]	; (d60 <PDM_Filter_80_MSB+0x360>)
 d1e:	f8dd 8074 	ldr.w	r8, [sp, #116]	; 0x74
 d22:	f647 72bc 	movw	r2, #32700	; 0x7fbc
 d26:	4297      	cmp	r7, r2
 d28:	bfa8      	it	ge
 d2a:	4617      	movge	r7, r2
 d2c:	428f      	cmp	r7, r1
 d2e:	bfa8      	it	ge
 d30:	4639      	movge	r1, r7
 d32:	4370      	muls	r0, r6
 d34:	9f1e      	ldr	r7, [sp, #120]	; 0x78
 d36:	1c72      	adds	r2, r6, #1
 d38:	f827 1010 	strh.w	r1, [r7, r0, lsl #1]
 d3c:	44c4      	add	ip, r8
 d3e:	9203      	str	r2, [sp, #12]
 d40:	e69f      	b.n	a82 <PDM_Filter_80_MSB+0x82>
 d42:	615c      	str	r4, [r3, #20]
 d44:	9c07      	ldr	r4, [sp, #28]
 d46:	9a04      	ldr	r2, [sp, #16]
 d48:	619c      	str	r4, [r3, #24]
 d4a:	9e05      	ldr	r6, [sp, #20]
 d4c:	9c06      	ldr	r4, [sp, #24]
 d4e:	611d      	str	r5, [r3, #16]
 d50:	f8c3 b01c 	str.w	fp, [r3, #28]
 d54:	621a      	str	r2, [r3, #32]
 d56:	625c      	str	r4, [r3, #36]	; 0x24
 d58:	629e      	str	r6, [r3, #40]	; 0x28
 d5a:	b021      	add	sp, #132	; 0x84
 d5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 d60:	ffff8044 	.word	0xffff8044
 d64:	f3af 8000 	nop.w
