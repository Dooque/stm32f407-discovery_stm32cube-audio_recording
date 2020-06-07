En el fichero libPDMFilter_CM4_GCC_wc32_softfp.a:

pdm_filter.o:     formato del fichero elf32-littlearm


Desensamblado de la sección .text.D16_GENERIC:

00000000 <D16_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b089      	sub	sp, #36	; 0x24
   6:	68d4      	ldr	r4, [r2, #12]
   8:	8cd5      	ldrh	r5, [r2, #38]	; 0x26
   a:	6993      	ldr	r3, [r2, #24]
   c:	9407      	str	r4, [sp, #28]
   e:	6b14      	ldr	r4, [r2, #48]	; 0x30
  10:	9306      	str	r3, [sp, #24]
  12:	9402      	str	r4, [sp, #8]
  14:	f8d2 a010 	ldr.w	sl, [r2, #16]
  18:	f8d2 b014 	ldr.w	fp, [r2, #20]
  1c:	69d3      	ldr	r3, [r2, #28]
  1e:	6896      	ldr	r6, [r2, #8]
  20:	6b54      	ldr	r4, [r2, #52]	; 0x34
  22:	9103      	str	r1, [sp, #12]
  24:	2d00      	cmp	r5, #0
  26:	d066      	beq.n	f6 <D16_GENERIC+0xf6>
  28:	f004 0510 	and.w	r5, r4, #16
  2c:	f004 0420 	and.w	r4, r4, #32
  30:	9504      	str	r5, [sp, #16]
  32:	4938      	ldr	r1, [pc, #224]	; (114 <D16_GENERIC+0x114>)
  34:	9405      	str	r4, [sp, #20]
  36:	f04f 0e00 	mov.w	lr, #0
  3a:	4635      	mov	r5, r6
  3c:	e04f      	b.n	de <D16_GENERIC+0xde>
  3e:	5d87      	ldrb	r7, [r0, r6]
  40:	7804      	ldrb	r4, [r0, #0]
  42:	eb00 0046 	add.w	r0, r0, r6, lsl #1
  46:	eb04 2407 	add.w	r4, r4, r7, lsl #8
  4a:	b2e6      	uxtb	r6, r4
  4c:	f3c4 2407 	ubfx	r4, r4, #8, #8
  50:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
  54:	f851 4024 	ldr.w	r4, [r1, r4, lsl #2]
  58:	4433      	add	r3, r6
  5a:	eb04 2493 	add.w	r4, r4, r3, lsr #10
  5e:	f3c4 0609 	ubfx	r6, r4, #0, #10
  62:	f3c3 0309 	ubfx	r3, r3, #0, #10
  66:	ea46 4603 	orr.w	r6, r6, r3, lsl #16
  6a:	0aa3      	lsrs	r3, r4, #10
  6c:	4c2a      	ldr	r4, [pc, #168]	; (118 <D16_GENERIC+0x118>)
  6e:	fb26 5404 	smlad	r4, r6, r4, r5
  72:	4d2a      	ldr	r5, [pc, #168]	; (11c <D16_GENERIC+0x11c>)
  74:	fb26 f505 	smuad	r5, r6, r5
  78:	f5a4 6400 	sub.w	r4, r4, #2048	; 0x800
  7c:	eb04 080a 	add.w	r8, r4, sl
  80:	eba8 080b 	sub.w	r8, r8, fp
  84:	4646      	mov	r6, r8
  86:	17f7      	asrs	r7, r6, #31
  88:	e9cd 6700 	strd	r6, r7, [sp]
  8c:	9e04      	ldr	r6, [sp, #16]
  8e:	f10e 0c01 	add.w	ip, lr, #1
  92:	b16e      	cbz	r6, b0 <D16_GENERIC+0xb0>
  94:	6a16      	ldr	r6, [r2, #32]
  96:	9f01      	ldr	r7, [sp, #4]
  98:	fba8 8906 	umull	r8, r9, r8, r6
  9c:	fb06 9907 	mla	r9, r6, r7, r9
  a0:	f118 4800 	adds.w	r8, r8, #2147483648	; 0x80000000
  a4:	f149 0900 	adc.w	r9, r9, #0
  a8:	ea4f 0a49 	mov.w	sl, r9, lsl #1
  ac:	46a3      	mov	fp, r4
  ae:	4654      	mov	r4, sl
  b0:	8d16      	ldrh	r6, [r2, #40]	; 0x28
  b2:	9f02      	ldr	r7, [sp, #8]
  b4:	0424      	lsls	r4, r4, #16
  b6:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
  ba:	f04f 0900 	mov.w	r9, #0
  be:	fb0e fe06 	mul.w	lr, lr, r6
  c2:	fbc7 8904 	smlal	r8, r9, r7, r4
  c6:	9e03      	ldr	r6, [sp, #12]
  c8:	464f      	mov	r7, r9
  ca:	10bc      	asrs	r4, r7, #2
  cc:	f304 040f 	ssat	r4, #16, r4
  d0:	f826 401e 	strh.w	r4, [r6, lr, lsl #1]
  d4:	8cd4      	ldrh	r4, [r2, #38]	; 0x26
  d6:	fa1f fe8c 	uxth.w	lr, ip
  da:	4574      	cmp	r4, lr
  dc:	d90a      	bls.n	f4 <D16_GENERIC+0xf4>
  de:	8d54      	ldrh	r4, [r2, #42]	; 0x2a
  e0:	2c01      	cmp	r4, #1
  e2:	b2e6      	uxtb	r6, r4
  e4:	d1ab      	bne.n	3e <D16_GENERIC+0x3e>
  e6:	9e05      	ldr	r6, [sp, #20]
  e8:	f850 4b02 	ldr.w	r4, [r0], #2
  ec:	2e00      	cmp	r6, #0
  ee:	d0ac      	beq.n	4a <D16_GENERIC+0x4a>
  f0:	ba64      	rev16	r4, r4
  f2:	e7aa      	b.n	4a <D16_GENERIC+0x4a>
  f4:	462e      	mov	r6, r5
  f6:	9907      	ldr	r1, [sp, #28]
  f8:	61d3      	str	r3, [r2, #28]
  fa:	9b06      	ldr	r3, [sp, #24]
  fc:	6096      	str	r6, [r2, #8]
  fe:	2000      	movs	r0, #0
 100:	60d1      	str	r1, [r2, #12]
 102:	f8c2 a010 	str.w	sl, [r2, #16]
 106:	f8c2 b014 	str.w	fp, [r2, #20]
 10a:	6193      	str	r3, [r2, #24]
 10c:	b009      	add	sp, #36	; 0x24
 10e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 112:	bf00      	nop
 114:	00000000 	.word	0x00000000
 118:	00030001 	.word	0x00030001
 11c:	00010003 	.word	0x00010003

Desensamblado de la sección .text.D24_GENERIC:

00000000 <D24_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	8cd6      	ldrh	r6, [r2, #38]	; 0x26
   6:	6993      	ldr	r3, [r2, #24]
   8:	6b15      	ldr	r5, [r2, #48]	; 0x30
   a:	f8d2 a010 	ldr.w	sl, [r2, #16]
   e:	f8d2 9014 	ldr.w	r9, [r2, #20]
  12:	6894      	ldr	r4, [r2, #8]
  14:	f8d2 b00c 	ldr.w	fp, [r2, #12]
  18:	b089      	sub	sp, #36	; 0x24
  1a:	9307      	str	r3, [sp, #28]
  1c:	9503      	str	r5, [sp, #12]
  1e:	69d3      	ldr	r3, [r2, #28]
  20:	6b55      	ldr	r5, [r2, #52]	; 0x34
  22:	9104      	str	r1, [sp, #16]
  24:	2e00      	cmp	r6, #0
  26:	f000 8096 	beq.w	156 <D24_GENERIC+0x156>
  2a:	f005 0610 	and.w	r6, r5, #16
  2e:	f005 0520 	and.w	r5, r5, #32
  32:	4954      	ldr	r1, [pc, #336]	; (184 <D24_GENERIC+0x184>)
  34:	9605      	str	r6, [sp, #20]
  36:	9506      	str	r5, [sp, #24]
  38:	f04f 0e00 	mov.w	lr, #0
  3c:	f8cd 9008 	str.w	r9, [sp, #8]
  40:	e06a      	b.n	118 <D24_GENERIC+0x118>
  42:	f810 5016 	ldrb.w	r5, [r0, r6, lsl #1]
  46:	f810 8007 	ldrb.w	r8, [r0, r7]
  4a:	f890 c000 	ldrb.w	ip, [r0]
  4e:	042d      	lsls	r5, r5, #16
  50:	eb00 0046 	add.w	r0, r0, r6, lsl #1
  54:	eb05 2508 	add.w	r5, r5, r8, lsl #8
  58:	44ac      	add	ip, r5
  5a:	4438      	add	r0, r7
  5c:	fa5f f68c 	uxtb.w	r6, ip
  60:	f3cc 2507 	ubfx	r5, ip, #8, #8
  64:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
  68:	f851 7025 	ldr.w	r7, [r1, r5, lsl #2]
  6c:	ea4f 4c1c 	mov.w	ip, ip, lsr #16
  70:	eb06 2693 	add.w	r6, r6, r3, lsr #10
  74:	eb07 2796 	add.w	r7, r7, r6, lsr #10
  78:	f851 302c 	ldr.w	r3, [r1, ip, lsl #2]
  7c:	f3c7 0509 	ubfx	r5, r7, #0, #10
  80:	f3c6 0609 	ubfx	r6, r6, #0, #10
  84:	ea45 4606 	orr.w	r6, r5, r6, lsl #16
  88:	eb03 2397 	add.w	r3, r3, r7, lsr #10
  8c:	4d3e      	ldr	r5, [pc, #248]	; (188 <D24_GENERIC+0x188>)
  8e:	fb26 b705 	smlad	r7, r6, r5, fp
  92:	4d3e      	ldr	r5, [pc, #248]	; (18c <D24_GENERIC+0x18c>)
  94:	fb26 4b05 	smlad	fp, r6, r5, r4
  98:	f3c3 0409 	ubfx	r4, r3, #0, #10
  9c:	eb04 0844 	add.w	r8, r4, r4, lsl #1
  a0:	eb0b 0b48 	add.w	fp, fp, r8, lsl #1
  a4:	2401      	movs	r4, #1
  a6:	fb26 f604 	smuad	r6, r6, r4
  aa:	f5a7 55d8 	sub.w	r5, r7, #6912	; 0x1b00
  ae:	9f02      	ldr	r7, [sp, #8]
  b0:	eb0e 0c04 	add.w	ip, lr, r4
  b4:	eb08 0406 	add.w	r4, r8, r6
  b8:	eb05 060a 	add.w	r6, r5, sl
  bc:	1bf6      	subs	r6, r6, r7
  be:	4637      	mov	r7, r6
  c0:	ea4f 78e6 	mov.w	r8, r6, asr #31
  c4:	e9cd 7800 	strd	r7, r8, [sp]
  c8:	9f05      	ldr	r7, [sp, #20]
  ca:	b177      	cbz	r7, ea <D24_GENERIC+0xea>
  cc:	f8d2 8020 	ldr.w	r8, [r2, #32]
  d0:	9502      	str	r5, [sp, #8]
  d2:	fba6 9a08 	umull	r9, sl, r6, r8
  d6:	9e01      	ldr	r6, [sp, #4]
  d8:	fb08 aa06 	mla	sl, r8, r6, sl
  dc:	f119 4600 	adds.w	r6, r9, #2147483648	; 0x80000000
  e0:	f14a 0700 	adc.w	r7, sl, #0
  e4:	ea4f 0a47 	mov.w	sl, r7, lsl #1
  e8:	4655      	mov	r5, sl
  ea:	8d16      	ldrh	r6, [r2, #40]	; 0x28
  ec:	9f03      	ldr	r7, [sp, #12]
  ee:	03ad      	lsls	r5, r5, #14
  f0:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
  f4:	f04f 0900 	mov.w	r9, #0
  f8:	fb0e fe06 	mul.w	lr, lr, r6
  fc:	fbc7 8905 	smlal	r8, r9, r7, r5
 100:	9e04      	ldr	r6, [sp, #16]
 102:	464f      	mov	r7, r9
 104:	10bd      	asrs	r5, r7, #2
 106:	f305 050f 	ssat	r5, #16, r5
 10a:	f826 501e 	strh.w	r5, [r6, lr, lsl #1]
 10e:	8cd5      	ldrh	r5, [r2, #38]	; 0x26
 110:	fa1f fe8c 	uxth.w	lr, ip
 114:	4575      	cmp	r5, lr
 116:	d91c      	bls.n	152 <D24_GENERIC+0x152>
 118:	8d55      	ldrh	r5, [r2, #42]	; 0x2a
 11a:	b2ef      	uxtb	r7, r5
 11c:	2d01      	cmp	r5, #1
 11e:	b23e      	sxth	r6, r7
 120:	d18f      	bne.n	42 <D24_GENERIC+0x42>
 122:	9d06      	ldr	r5, [sp, #24]
 124:	b15d      	cbz	r5, 13e <D24_GENERIC+0x13e>
 126:	f01e 0f01 	tst.w	lr, #1
 12a:	d122      	bne.n	172 <D24_GENERIC+0x172>
 12c:	7805      	ldrb	r5, [r0, #0]
 12e:	78c7      	ldrb	r7, [r0, #3]
 130:	7846      	ldrb	r6, [r0, #1]
 132:	022d      	lsls	r5, r5, #8
 134:	eb05 4c07 	add.w	ip, r5, r7, lsl #16
 138:	44b4      	add	ip, r6
 13a:	3002      	adds	r0, #2
 13c:	e78e      	b.n	5c <D24_GENERIC+0x5c>
 13e:	7846      	ldrb	r6, [r0, #1]
 140:	f890 c002 	ldrb.w	ip, [r0, #2]
 144:	f810 5b03 	ldrb.w	r5, [r0], #3
 148:	0236      	lsls	r6, r6, #8
 14a:	eb06 4c0c 	add.w	ip, r6, ip, lsl #16
 14e:	44ac      	add	ip, r5
 150:	e784      	b.n	5c <D24_GENERIC+0x5c>
 152:	f8dd 9008 	ldr.w	r9, [sp, #8]
 156:	61d3      	str	r3, [r2, #28]
 158:	9b07      	ldr	r3, [sp, #28]
 15a:	6094      	str	r4, [r2, #8]
 15c:	2000      	movs	r0, #0
 15e:	f8c2 b00c 	str.w	fp, [r2, #12]
 162:	f8c2 a010 	str.w	sl, [r2, #16]
 166:	f8c2 9014 	str.w	r9, [r2, #20]
 16a:	6193      	str	r3, [r2, #24]
 16c:	b009      	add	sp, #36	; 0x24
 16e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 172:	78c5      	ldrb	r5, [r0, #3]
 174:	7887      	ldrb	r7, [r0, #2]
 176:	f810 6b04 	ldrb.w	r6, [r0], #4
 17a:	022d      	lsls	r5, r5, #8
 17c:	eb05 4c07 	add.w	ip, r5, r7, lsl #16
 180:	44b4      	add	ip, r6
 182:	e76b      	b.n	5c <D24_GENERIC+0x5c>
 184:	00000000 	.word	0x00000000
 188:	00030001 	.word	0x00030001
 18c:	00060007 	.word	0x00060007

Desensamblado de la sección .text.D32_GENERIC:

00000000 <D32_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	8cd5      	ldrh	r5, [r2, #38]	; 0x26
   6:	6993      	ldr	r3, [r2, #24]
   8:	6b14      	ldr	r4, [r2, #48]	; 0x30
   a:	f8d2 a010 	ldr.w	sl, [r2, #16]
   e:	f8d2 9014 	ldr.w	r9, [r2, #20]
  12:	69d6      	ldr	r6, [r2, #28]
  14:	f8d2 b00c 	ldr.w	fp, [r2, #12]
  18:	b089      	sub	sp, #36	; 0x24
  1a:	9307      	str	r3, [sp, #28]
  1c:	9403      	str	r4, [sp, #12]
  1e:	6893      	ldr	r3, [r2, #8]
  20:	6b54      	ldr	r4, [r2, #52]	; 0x34
  22:	9104      	str	r1, [sp, #16]
  24:	2d00      	cmp	r5, #0
  26:	f000 809f 	beq.w	168 <D32_GENERIC+0x168>
  2a:	f004 0510 	and.w	r5, r4, #16
  2e:	f004 0420 	and.w	r4, r4, #32
  32:	9505      	str	r5, [sp, #20]
  34:	4953      	ldr	r1, [pc, #332]	; (184 <D32_GENERIC+0x184>)
  36:	9406      	str	r4, [sp, #24]
  38:	f04f 0c00 	mov.w	ip, #0
  3c:	f8cd 9008 	str.w	r9, [sp, #8]
  40:	461d      	mov	r5, r3
  42:	4617      	mov	r7, r2
  44:	e077      	b.n	136 <D32_GENERIC+0x136>
  46:	f818 3003 	ldrb.w	r3, [r8, r3]
  4a:	f810 800e 	ldrb.w	r8, [r0, lr]
  4e:	f810 e002 	ldrb.w	lr, [r0, r2]
  52:	7800      	ldrb	r0, [r0, #0]
  54:	041b      	lsls	r3, r3, #16
  56:	eb03 6308 	add.w	r3, r3, r8, lsl #24
  5a:	eb03 230e 	add.w	r3, r3, lr, lsl #8
  5e:	4403      	add	r3, r0
  60:	eb04 0042 	add.w	r0, r4, r2, lsl #1
  64:	b2dc      	uxtb	r4, r3
  66:	f3c3 2207 	ubfx	r2, r3, #8, #8
  6a:	f3c3 4807 	ubfx	r8, r3, #16, #8
  6e:	f851 4024 	ldr.w	r4, [r1, r4, lsl #2]
  72:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
  76:	0e1b      	lsrs	r3, r3, #24
  78:	eb04 2496 	add.w	r4, r4, r6, lsr #10
  7c:	f851 6028 	ldr.w	r6, [r1, r8, lsl #2]
  80:	f851 3023 	ldr.w	r3, [r1, r3, lsl #2]
  84:	eb02 2294 	add.w	r2, r2, r4, lsr #10
  88:	eb06 2e92 	add.w	lr, r6, r2, lsr #10
  8c:	eb03 269e 	add.w	r6, r3, lr, lsr #10
  90:	f3c6 0309 	ubfx	r3, r6, #0, #10
  94:	f3c4 0409 	ubfx	r4, r4, #0, #10
  98:	f3c2 0209 	ubfx	r2, r2, #0, #10
  9c:	f3ce 0e09 	ubfx	lr, lr, #0, #10
  a0:	ea43 4e0e 	orr.w	lr, r3, lr, lsl #16
  a4:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
  a8:	4b37      	ldr	r3, [pc, #220]	; (188 <D32_GENERIC+0x188>)
  aa:	fb22 b403 	smlad	r4, r2, r3, fp
  ae:	f44f 3380 	mov.w	r3, #65536	; 0x10000
  b2:	fb2e 4803 	smlad	r8, lr, r3, r4
  b6:	4b35      	ldr	r3, [pc, #212]	; (18c <D32_GENERIC+0x18c>)
  b8:	fb22 5503 	smlad	r5, r2, r3, r5
  bc:	4b34      	ldr	r3, [pc, #208]	; (190 <D32_GENERIC+0x190>)
  be:	fb2e 5b03 	smlad	fp, lr, r3, r5
  c2:	2301      	movs	r3, #1
  c4:	fb22 f203 	smuad	r2, r2, r3
  c8:	4b32      	ldr	r3, [pc, #200]	; (194 <D32_GENERIC+0x194>)
  ca:	fb2e 2503 	smlad	r5, lr, r3, r2
  ce:	9b02      	ldr	r3, [sp, #8]
  d0:	f5a8 4480 	sub.w	r4, r8, #16384	; 0x4000
  d4:	eb04 080a 	add.w	r8, r4, sl
  d8:	eba8 0803 	sub.w	r8, r8, r3
  dc:	4642      	mov	r2, r8
  de:	17d3      	asrs	r3, r2, #31
  e0:	e9cd 2300 	strd	r2, r3, [sp]
  e4:	9b05      	ldr	r3, [sp, #20]
  e6:	f10c 0e01 	add.w	lr, ip, #1
  ea:	b16b      	cbz	r3, 108 <D32_GENERIC+0x108>
  ec:	6a3a      	ldr	r2, [r7, #32]
  ee:	9b01      	ldr	r3, [sp, #4]
  f0:	9402      	str	r4, [sp, #8]
  f2:	fba8 8902 	umull	r8, r9, r8, r2
  f6:	fb02 9903 	mla	r9, r2, r3, r9
  fa:	f118 4800 	adds.w	r8, r8, #2147483648	; 0x80000000
  fe:	f149 0900 	adc.w	r9, r9, #0
 102:	ea4f 0a49 	mov.w	sl, r9, lsl #1
 106:	4654      	mov	r4, sl
 108:	8d3b      	ldrh	r3, [r7, #40]	; 0x28
 10a:	9a04      	ldr	r2, [sp, #16]
 10c:	fb0c fc03 	mul.w	ip, ip, r3
 110:	9b03      	ldr	r3, [sp, #12]
 112:	0364      	lsls	r4, r4, #13
 114:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
 118:	f04f 0900 	mov.w	r9, #0
 11c:	fbc3 8904 	smlal	r8, r9, r3, r4
 120:	464b      	mov	r3, r9
 122:	109b      	asrs	r3, r3, #2
 124:	f303 030f 	ssat	r3, #16, r3
 128:	f822 301c 	strh.w	r3, [r2, ip, lsl #1]
 12c:	8cfb      	ldrh	r3, [r7, #38]	; 0x26
 12e:	fa1f fc8e 	uxth.w	ip, lr
 132:	4563      	cmp	r3, ip
 134:	d914      	bls.n	160 <D32_GENERIC+0x160>
 136:	8d7c      	ldrh	r4, [r7, #42]	; 0x2a
 138:	b2e2      	uxtb	r2, r4
 13a:	eb02 0e42 	add.w	lr, r2, r2, lsl #1
 13e:	eb00 080e 	add.w	r8, r0, lr
 142:	4253      	negs	r3, r2
 144:	2c01      	cmp	r4, #1
 146:	eb08 0403 	add.w	r4, r8, r3
 14a:	f47f af7c 	bne.w	46 <D32_GENERIC+0x46>
 14e:	1d02      	adds	r2, r0, #4
 150:	6803      	ldr	r3, [r0, #0]
 152:	9806      	ldr	r0, [sp, #24]
 154:	b110      	cbz	r0, 15c <D32_GENERIC+0x15c>
 156:	ba5b      	rev16	r3, r3
 158:	4610      	mov	r0, r2
 15a:	e783      	b.n	64 <D32_GENERIC+0x64>
 15c:	4610      	mov	r0, r2
 15e:	e781      	b.n	64 <D32_GENERIC+0x64>
 160:	f8dd 9008 	ldr.w	r9, [sp, #8]
 164:	462b      	mov	r3, r5
 166:	463a      	mov	r2, r7
 168:	6093      	str	r3, [r2, #8]
 16a:	9b07      	ldr	r3, [sp, #28]
 16c:	f8c2 b00c 	str.w	fp, [r2, #12]
 170:	2000      	movs	r0, #0
 172:	61d6      	str	r6, [r2, #28]
 174:	f8c2 a010 	str.w	sl, [r2, #16]
 178:	f8c2 9014 	str.w	r9, [r2, #20]
 17c:	6193      	str	r3, [r2, #24]
 17e:	b009      	add	sp, #36	; 0x24
 180:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 184:	00000000 	.word	0x00000000
 188:	00060003 	.word	0x00060003
 18c:	000a000c 	.word	0x000a000c
 190:	000c000a 	.word	0x000c000a
 194:	00030006 	.word	0x00030006

Desensamblado de la sección .text.D48_GENERIC:

00000000 <D48_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b089      	sub	sp, #36	; 0x24
   6:	6953      	ldr	r3, [r2, #20]
   8:	68d4      	ldr	r4, [r2, #12]
   a:	8cd5      	ldrh	r5, [r2, #38]	; 0x26
   c:	9302      	str	r3, [sp, #8]
   e:	9400      	str	r4, [sp, #0]
  10:	6993      	ldr	r3, [r2, #24]
  12:	6b14      	ldr	r4, [r2, #48]	; 0x30
  14:	9307      	str	r3, [sp, #28]
  16:	9403      	str	r4, [sp, #12]
  18:	f8d2 a010 	ldr.w	sl, [r2, #16]
  1c:	69d6      	ldr	r6, [r2, #28]
  1e:	6893      	ldr	r3, [r2, #8]
  20:	6b54      	ldr	r4, [r2, #52]	; 0x34
  22:	9104      	str	r1, [sp, #16]
  24:	2d00      	cmp	r5, #0
  26:	f000 80c5 	beq.w	1b4 <D48_GENERIC+0x1b4>
  2a:	f004 0510 	and.w	r5, r4, #16
  2e:	f004 0420 	and.w	r4, r4, #32
  32:	4967      	ldr	r1, [pc, #412]	; (1d0 <D48_GENERIC+0x1d0>)
  34:	9505      	str	r5, [sp, #20]
  36:	9406      	str	r4, [sp, #24]
  38:	f04f 0c00 	mov.w	ip, #0
  3c:	4657      	mov	r7, sl
  3e:	9301      	str	r3, [sp, #4]
  40:	e09c      	b.n	17c <D48_GENERIC+0x17c>
  42:	f81b 4005 	ldrb.w	r4, [fp, r5]
  46:	f810 b009 	ldrb.w	fp, [r0, r9]
  4a:	f81a 9009 	ldrb.w	r9, [sl, r9]
  4e:	f810 a00e 	ldrb.w	sl, [r0, lr]
  52:	7800      	ldrb	r0, [r0, #0]
  54:	0424      	lsls	r4, r4, #16
  56:	eb04 6b0b 	add.w	fp, r4, fp, lsl #24
  5a:	f818 4005 	ldrb.w	r4, [r8, r5]
  5e:	eb0b 2b0a 	add.w	fp, fp, sl, lsl #8
  62:	44a8      	add	r8, r5
  64:	eb04 2409 	add.w	r4, r4, r9, lsl #8
  68:	eb0b 0500 	add.w	r5, fp, r0
  6c:	eb08 004e 	add.w	r0, r8, lr, lsl #1
  70:	fa5f f885 	uxtb.w	r8, r5
  74:	f3c5 2e07 	ubfx	lr, r5, #8, #8
  78:	f851 a028 	ldr.w	sl, [r1, r8, lsl #2]
  7c:	f851 902e 	ldr.w	r9, [r1, lr, lsl #2]
  80:	f3c5 4e07 	ubfx	lr, r5, #16, #8
  84:	0e2d      	lsrs	r5, r5, #24
  86:	eb0a 2a96 	add.w	sl, sl, r6, lsr #10
  8a:	f851 802e 	ldr.w	r8, [r1, lr, lsl #2]
  8e:	f851 e025 	ldr.w	lr, [r1, r5, lsl #2]
  92:	b2e6      	uxtb	r6, r4
  94:	eb09 259a 	add.w	r5, r9, sl, lsr #10
  98:	f3c4 2407 	ubfx	r4, r4, #8, #8
  9c:	eb08 2895 	add.w	r8, r8, r5, lsr #10
  a0:	f851 6026 	ldr.w	r6, [r1, r6, lsl #2]
  a4:	f851 9024 	ldr.w	r9, [r1, r4, lsl #2]
  a8:	eb0e 2498 	add.w	r4, lr, r8, lsr #10
  ac:	eb06 2e94 	add.w	lr, r6, r4, lsr #10
  b0:	eb09 269e 	add.w	r6, r9, lr, lsr #10
  b4:	f3c5 0509 	ubfx	r5, r5, #0, #10
  b8:	f3c4 0409 	ubfx	r4, r4, #0, #10
  bc:	f3c6 0909 	ubfx	r9, r6, #0, #10
  c0:	f3ca 0a09 	ubfx	sl, sl, #0, #10
  c4:	f3c8 0809 	ubfx	r8, r8, #0, #10
  c8:	f3ce 0e09 	ubfx	lr, lr, #0, #10
  cc:	ea45 4a0a 	orr.w	sl, r5, sl, lsl #16
  d0:	ea44 4808 	orr.w	r8, r4, r8, lsl #16
  d4:	ea49 4e0e 	orr.w	lr, r9, lr, lsl #16
  d8:	4c3e      	ldr	r4, [pc, #248]	; (1d4 <D48_GENERIC+0x1d4>)
  da:	9d00      	ldr	r5, [sp, #0]
  dc:	fb2a 5404 	smlad	r4, sl, r4, r5
  e0:	4d3d      	ldr	r5, [pc, #244]	; (1d8 <D48_GENERIC+0x1d8>)
  e2:	fb28 4405 	smlad	r4, r8, r5, r4
  e6:	f44f 3380 	mov.w	r3, #65536	; 0x10000
  ea:	fb2e 4b03 	smlad	fp, lr, r3, r4
  ee:	4c3b      	ldr	r4, [pc, #236]	; (1dc <D48_GENERIC+0x1dc>)
  f0:	9b01      	ldr	r3, [sp, #4]
  f2:	fb2a 3304 	smlad	r3, sl, r4, r3
  f6:	f04f 141b 	mov.w	r4, #1769499	; 0x1b001b
  fa:	fb28 3304 	smlad	r3, r8, r4, r3
  fe:	4c38      	ldr	r4, [pc, #224]	; (1e0 <D48_GENERIC+0x1e0>)
 100:	fb2e 3304 	smlad	r3, lr, r4, r3
 104:	2501      	movs	r5, #1
 106:	9300      	str	r3, [sp, #0]
 108:	fb2a fa05 	smuad	sl, sl, r5
 10c:	4b35      	ldr	r3, [pc, #212]	; (1e4 <D48_GENERIC+0x1e4>)
 10e:	fb28 a803 	smlad	r8, r8, r3, sl
 112:	4b35      	ldr	r3, [pc, #212]	; (1e8 <D48_GENERIC+0x1e8>)
 114:	fb2e 8303 	smlad	r3, lr, r3, r8
 118:	f5ab 4458 	sub.w	r4, fp, #55296	; 0xd800
 11c:	9301      	str	r3, [sp, #4]
 11e:	9b02      	ldr	r3, [sp, #8]
 120:	eb04 0807 	add.w	r8, r4, r7
 124:	eba8 0803 	sub.w	r8, r8, r3
 128:	9b05      	ldr	r3, [sp, #20]
 12a:	4465      	add	r5, ip
 12c:	ea4f 7be8 	mov.w	fp, r8, asr #31
 130:	b163      	cbz	r3, 14c <D48_GENERIC+0x14c>
 132:	6a17      	ldr	r7, [r2, #32]
 134:	9402      	str	r4, [sp, #8]
 136:	fba8 8907 	umull	r8, r9, r8, r7
 13a:	fb07 990b 	mla	r9, r7, fp, r9
 13e:	f118 4800 	adds.w	r8, r8, #2147483648	; 0x80000000
 142:	f149 0900 	adc.w	r9, r9, #0
 146:	ea4f 0749 	mov.w	r7, r9, lsl #1
 14a:	463c      	mov	r4, r7
 14c:	f8b2 e028 	ldrh.w	lr, [r2, #40]	; 0x28
 150:	9b03      	ldr	r3, [sp, #12]
 152:	02e4      	lsls	r4, r4, #11
 154:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
 158:	f04f 0900 	mov.w	r9, #0
 15c:	fb0c fc0e 	mul.w	ip, ip, lr
 160:	fbc3 8904 	smlal	r8, r9, r3, r4
 164:	9b04      	ldr	r3, [sp, #16]
 166:	ea4f 04a9 	mov.w	r4, r9, asr #2
 16a:	f304 040f 	ssat	r4, #16, r4
 16e:	f823 401c 	strh.w	r4, [r3, ip, lsl #1]
 172:	8cd4      	ldrh	r4, [r2, #38]	; 0x26
 174:	fa1f fc85 	uxth.w	ip, r5
 178:	4564      	cmp	r4, ip
 17a:	d919      	bls.n	1b0 <D48_GENERIC+0x1b0>
 17c:	8d54      	ldrh	r4, [r2, #42]	; 0x2a
 17e:	fa5f fe84 	uxtb.w	lr, r4
 182:	eb0e 094e 	add.w	r9, lr, lr, lsl #1
 186:	f1ce 0500 	rsb	r5, lr, #0
 18a:	eb00 0b09 	add.w	fp, r0, r9
 18e:	eb0b 0a05 	add.w	sl, fp, r5
 192:	2c01      	cmp	r4, #1
 194:	eb0a 0809 	add.w	r8, sl, r9
 198:	f47f af53 	bne.w	42 <D48_GENERIC+0x42>
 19c:	9b06      	ldr	r3, [sp, #24]
 19e:	6805      	ldr	r5, [r0, #0]
 1a0:	6844      	ldr	r4, [r0, #4]
 1a2:	3006      	adds	r0, #6
 1a4:	2b00      	cmp	r3, #0
 1a6:	f43f af63 	beq.w	70 <D48_GENERIC+0x70>
 1aa:	ba6d      	rev16	r5, r5
 1ac:	ba64      	rev16	r4, r4
 1ae:	e75f      	b.n	70 <D48_GENERIC+0x70>
 1b0:	9b01      	ldr	r3, [sp, #4]
 1b2:	46ba      	mov	sl, r7
 1b4:	6093      	str	r3, [r2, #8]
 1b6:	9b00      	ldr	r3, [sp, #0]
 1b8:	60d3      	str	r3, [r2, #12]
 1ba:	9b02      	ldr	r3, [sp, #8]
 1bc:	6153      	str	r3, [r2, #20]
 1be:	9b07      	ldr	r3, [sp, #28]
 1c0:	61d6      	str	r6, [r2, #28]
 1c2:	2000      	movs	r0, #0
 1c4:	f8c2 a010 	str.w	sl, [r2, #16]
 1c8:	6193      	str	r3, [r2, #24]
 1ca:	b009      	add	sp, #36	; 0x24
 1cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 1d0:	00000000 	.word	0x00000000
 1d4:	000f000a 	.word	0x000f000a
 1d8:	00060003 	.word	0x00060003
 1dc:	00150019 	.word	0x00150019
 1e0:	00190015 	.word	0x00190015
 1e4:	00030006 	.word	0x00030006
 1e8:	000a000f 	.word	0x000a000f

Desensamblado de la sección .text.D64_GENERIC:

00000000 <D64_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b089      	sub	sp, #36	; 0x24
   6:	6913      	ldr	r3, [r2, #16]
   8:	6895      	ldr	r5, [r2, #8]
   a:	9303      	str	r3, [sp, #12]
   c:	9501      	str	r5, [sp, #4]
   e:	6953      	ldr	r3, [r2, #20]
  10:	68d5      	ldr	r5, [r2, #12]
  12:	8cd4      	ldrh	r4, [r2, #38]	; 0x26
  14:	9304      	str	r3, [sp, #16]
  16:	9500      	str	r5, [sp, #0]
  18:	6993      	ldr	r3, [r2, #24]
  1a:	6b15      	ldr	r5, [r2, #48]	; 0x30
  1c:	9307      	str	r3, [sp, #28]
  1e:	9505      	str	r5, [sp, #20]
  20:	69d3      	ldr	r3, [r2, #28]
  22:	9106      	str	r1, [sp, #24]
  24:	2c00      	cmp	r4, #0
  26:	f000 80d9 	beq.w	1dc <D64_GENERIC+0x1dc>
  2a:	6a11      	ldr	r1, [r2, #32]
  2c:	9102      	str	r1, [sp, #8]
  2e:	f8df e1ec 	ldr.w	lr, [pc, #492]	; 21c <D64_GENERIC+0x21c>
  32:	f04f 0c00 	mov.w	ip, #0
  36:	4681      	mov	r9, r0
  38:	e0c1      	b.n	1be <D64_GENERIC+0x1be>
  3a:	eb06 0846 	add.w	r8, r6, r6, lsl #1
  3e:	4274      	negs	r4, r6
  40:	eb09 0708 	add.w	r7, r9, r8
  44:	eb07 0a44 	add.w	sl, r7, r4, lsl #1
  48:	eb0a 0548 	add.w	r5, sl, r8, lsl #1
  4c:	5d38      	ldrb	r0, [r7, r4]
  4e:	5d29      	ldrb	r1, [r5, r4]
  50:	f81a b018 	ldrb.w	fp, [sl, r8, lsl #1]
  54:	f819 a008 	ldrb.w	sl, [r9, r8]
  58:	f817 8014 	ldrb.w	r8, [r7, r4, lsl #1]
  5c:	f899 7000 	ldrb.w	r7, [r9]
  60:	f815 9014 	ldrb.w	r9, [r5, r4, lsl #1]
  64:	4425      	add	r5, r4
  66:	0409      	lsls	r1, r1, #16
  68:	0400      	lsls	r0, r0, #16
  6a:	eb01 610b 	add.w	r1, r1, fp, lsl #24
  6e:	eb00 600a 	add.w	r0, r0, sl, lsl #24
  72:	f815 b014 	ldrb.w	fp, [r5, r4, lsl #1]
  76:	eb01 2109 	add.w	r1, r1, r9, lsl #8
  7a:	eb05 0444 	add.w	r4, r5, r4, lsl #1
  7e:	eb00 2008 	add.w	r0, r0, r8, lsl #8
  82:	4459      	add	r1, fp
  84:	eb04 0986 	add.w	r9, r4, r6, lsl #2
  88:	4438      	add	r0, r7
  8a:	b2c5      	uxtb	r5, r0
  8c:	f3c0 2407 	ubfx	r4, r0, #8, #8
  90:	f85e 6025 	ldr.w	r6, [lr, r5, lsl #2]
  94:	f85e 5024 	ldr.w	r5, [lr, r4, lsl #2]
  98:	f3c0 4407 	ubfx	r4, r0, #16, #8
  9c:	0e00      	lsrs	r0, r0, #24
  9e:	eb03 0806 	add.w	r8, r3, r6
  a2:	f85e 7024 	ldr.w	r7, [lr, r4, lsl #2]
  a6:	f85e 4020 	ldr.w	r4, [lr, r0, lsl #2]
  aa:	f3c1 2307 	ubfx	r3, r1, #8, #8
  ae:	b2c8      	uxtb	r0, r1
  b0:	eb05 2598 	add.w	r5, r5, r8, lsr #10
  b4:	eb07 2795 	add.w	r7, r7, r5, lsr #10
  b8:	f85e 6020 	ldr.w	r6, [lr, r0, lsl #2]
  bc:	f85e 0023 	ldr.w	r0, [lr, r3, lsl #2]
  c0:	f3c1 4307 	ubfx	r3, r1, #16, #8
  c4:	eb04 2497 	add.w	r4, r4, r7, lsr #10
  c8:	0e09      	lsrs	r1, r1, #24
  ca:	eb06 2694 	add.w	r6, r6, r4, lsr #10
  ce:	f85e 3023 	ldr.w	r3, [lr, r3, lsl #2]
  d2:	f85e 1021 	ldr.w	r1, [lr, r1, lsl #2]
  d6:	eb00 2096 	add.w	r0, r0, r6, lsr #10
  da:	eb03 2a90 	add.w	sl, r3, r0, lsr #10
  de:	eb01 219a 	add.w	r1, r1, sl, lsr #10
  e2:	f3ca 0309 	ubfx	r3, sl, #0, #10
  e6:	f3c5 0509 	ubfx	r5, r5, #0, #10
  ea:	f3c4 0409 	ubfx	r4, r4, #0, #10
  ee:	f3c6 0609 	ubfx	r6, r6, #0, #10
  f2:	f3c1 0a09 	ubfx	sl, r1, #0, #10
  f6:	f3c8 0809 	ubfx	r8, r8, #0, #10
  fa:	f3c7 0709 	ubfx	r7, r7, #0, #10
  fe:	f3c0 0009 	ubfx	r0, r0, #0, #10
 102:	ea44 4707 	orr.w	r7, r4, r7, lsl #16
 106:	ea4a 4a03 	orr.w	sl, sl, r3, lsl #16
 10a:	ea45 4808 	orr.w	r8, r5, r8, lsl #16
 10e:	0a8b      	lsrs	r3, r1, #10
 110:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 114:	4939      	ldr	r1, [pc, #228]	; (1fc <D64_GENERIC+0x1fc>)
 116:	9c00      	ldr	r4, [sp, #0]
 118:	fb28 4101 	smlad	r1, r8, r1, r4
 11c:	4c38      	ldr	r4, [pc, #224]	; (200 <D64_GENERIC+0x200>)
 11e:	fb27 1104 	smlad	r1, r7, r4, r1
 122:	4c38      	ldr	r4, [pc, #224]	; (204 <D64_GENERIC+0x204>)
 124:	fb20 1104 	smlad	r1, r0, r4, r1
 128:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 12c:	fb2a 1106 	smlad	r1, sl, r6, r1
 130:	4c35      	ldr	r4, [pc, #212]	; (208 <D64_GENERIC+0x208>)
 132:	9d01      	ldr	r5, [sp, #4]
 134:	fb28 5404 	smlad	r4, r8, r4, r5
 138:	4d33      	ldr	r5, [pc, #204]	; (208 <D64_GENERIC+0x208>)
 13a:	fb2a 4415 	smladx	r4, sl, r5, r4
 13e:	4d33      	ldr	r5, [pc, #204]	; (20c <D64_GENERIC+0x20c>)
 140:	fb27 4405 	smlad	r4, r7, r5, r4
 144:	fb20 4415 	smladx	r4, r0, r5, r4
 148:	2501      	movs	r5, #1
 14a:	9400      	str	r4, [sp, #0]
 14c:	fb28 f805 	smuad	r8, r8, r5
 150:	4c2f      	ldr	r4, [pc, #188]	; (210 <D64_GENERIC+0x210>)
 152:	fb27 8704 	smlad	r7, r7, r4, r8
 156:	4c2f      	ldr	r4, [pc, #188]	; (214 <D64_GENERIC+0x214>)
 158:	fb20 7004 	smlad	r0, r0, r4, r7
 15c:	4c2e      	ldr	r4, [pc, #184]	; (218 <D64_GENERIC+0x218>)
 15e:	fb2a 0004 	smlad	r0, sl, r4, r0
 162:	f5a1 3600 	sub.w	r6, r1, #131072	; 0x20000
 166:	9902      	ldr	r1, [sp, #8]
 168:	9001      	str	r0, [sp, #4]
 16a:	b189      	cbz	r1, 190 <D64_GENERIC+0x190>
 16c:	9803      	ldr	r0, [sp, #12]
 16e:	9c04      	ldr	r4, [sp, #16]
 170:	9604      	str	r6, [sp, #16]
 172:	4430      	add	r0, r6
 174:	1b00      	subs	r0, r0, r4
 176:	17c5      	asrs	r5, r0, #31
 178:	460f      	mov	r7, r1
 17a:	fba0 0101 	umull	r0, r1, r0, r1
 17e:	fb07 1105 	mla	r1, r7, r5, r1
 182:	f110 4000 	adds.w	r0, r0, #2147483648	; 0x80000000
 186:	f141 0100 	adc.w	r1, r1, #0
 18a:	0049      	lsls	r1, r1, #1
 18c:	9103      	str	r1, [sp, #12]
 18e:	460e      	mov	r6, r1
 190:	8d14      	ldrh	r4, [r2, #40]	; 0x28
 192:	9905      	ldr	r1, [sp, #20]
 194:	9806      	ldr	r0, [sp, #24]
 196:	02b6      	lsls	r6, r6, #10
 198:	f04f 4700 	mov.w	r7, #2147483648	; 0x80000000
 19c:	f04f 0800 	mov.w	r8, #0
 1a0:	fb0c f404 	mul.w	r4, ip, r4
 1a4:	fbc1 7806 	smlal	r7, r8, r1, r6
 1a8:	4641      	mov	r1, r8
 1aa:	1089      	asrs	r1, r1, #2
 1ac:	f301 010f 	ssat	r1, #16, r1
 1b0:	f820 1014 	strh.w	r1, [r0, r4, lsl #1]
 1b4:	8cd1      	ldrh	r1, [r2, #38]	; 0x26
 1b6:	f10c 0c01 	add.w	ip, ip, #1
 1ba:	4561      	cmp	r1, ip
 1bc:	dd0e      	ble.n	1dc <D64_GENERIC+0x1dc>
 1be:	8d56      	ldrh	r6, [r2, #42]	; 0x2a
 1c0:	2e01      	cmp	r6, #1
 1c2:	f47f af3a 	bne.w	3a <D64_GENERIC+0x3a>
 1c6:	6b56      	ldr	r6, [r2, #52]	; 0x34
 1c8:	06b4      	lsls	r4, r6, #26
 1ca:	e899 0003 	ldmia.w	r9, {r0, r1}
 1ce:	f109 0908 	add.w	r9, r9, #8
 1d2:	f57f af5a 	bpl.w	8a <D64_GENERIC+0x8a>
 1d6:	ba40      	rev16	r0, r0
 1d8:	ba49      	rev16	r1, r1
 1da:	e756      	b.n	8a <D64_GENERIC+0x8a>
 1dc:	61d3      	str	r3, [r2, #28]
 1de:	9b03      	ldr	r3, [sp, #12]
 1e0:	9901      	ldr	r1, [sp, #4]
 1e2:	6113      	str	r3, [r2, #16]
 1e4:	9b04      	ldr	r3, [sp, #16]
 1e6:	6091      	str	r1, [r2, #8]
 1e8:	6153      	str	r3, [r2, #20]
 1ea:	9900      	ldr	r1, [sp, #0]
 1ec:	9b07      	ldr	r3, [sp, #28]
 1ee:	60d1      	str	r1, [r2, #12]
 1f0:	2000      	movs	r0, #0
 1f2:	6193      	str	r3, [r2, #24]
 1f4:	b009      	add	sp, #36	; 0x24
 1f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 1fa:	bf00      	nop
 1fc:	001c0015 	.word	0x001c0015
 200:	000f000a 	.word	0x000f000a
 204:	00060003 	.word	0x00060003
 208:	0024002a 	.word	0x0024002a
 20c:	002e0030 	.word	0x002e0030
 210:	00030006 	.word	0x00030006
 214:	000a000f 	.word	0x000a000f
 218:	0015001c 	.word	0x0015001c
 21c:	00000000 	.word	0x00000000

Desensamblado de la sección .text.D80_GENERIC:

00000000 <D80_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b08b      	sub	sp, #44	; 0x2c
   6:	6914      	ldr	r4, [r2, #16]
   8:	9404      	str	r4, [sp, #16]
   a:	6954      	ldr	r4, [r2, #20]
   c:	9405      	str	r4, [sp, #20]
   e:	6994      	ldr	r4, [r2, #24]
  10:	9409      	str	r4, [sp, #36]	; 0x24
  12:	6894      	ldr	r4, [r2, #8]
  14:	9402      	str	r4, [sp, #8]
  16:	8cd3      	ldrh	r3, [r2, #38]	; 0x26
  18:	68d4      	ldr	r4, [r2, #12]
  1a:	9401      	str	r4, [sp, #4]
  1c:	6b14      	ldr	r4, [r2, #48]	; 0x30
  1e:	f8d2 b01c 	ldr.w	fp, [r2, #28]
  22:	9406      	str	r4, [sp, #24]
  24:	9107      	str	r1, [sp, #28]
  26:	2b00      	cmp	r3, #0
  28:	f000 810f 	beq.w	24a <D80_GENERIC+0x24a>
  2c:	6a13      	ldr	r3, [r2, #32]
  2e:	9308      	str	r3, [sp, #32]
  30:	2300      	movs	r3, #0
  32:	9200      	str	r2, [sp, #0]
  34:	f8df 9264 	ldr.w	r9, [pc, #612]	; 29c <D80_GENERIC+0x29c>
  38:	f8cd b00c 	str.w	fp, [sp, #12]
  3c:	461a      	mov	r2, r3
  3e:	e0ed      	b.n	21c <D80_GENERIC+0x21c>
  40:	fa5f fc8c 	uxtb.w	ip, ip
  44:	fa0f f48c 	sxth.w	r4, ip
  48:	0066      	lsls	r6, r4, #1
  4a:	eb06 0804 	add.w	r8, r6, r4
  4e:	f1cc 0500 	rsb	r5, ip, #0
  52:	eb00 0108 	add.w	r1, r0, r8
  56:	eb04 0484 	add.w	r4, r4, r4, lsl #2
  5a:	194b      	adds	r3, r1, r5
  5c:	5d49      	ldrb	r1, [r1, r5]
  5e:	f810 a008 	ldrb.w	sl, [r0, r8]
  62:	f813 b004 	ldrb.w	fp, [r3, r4]
  66:	f810 c00c 	ldrb.w	ip, [r0, ip]
  6a:	f890 8000 	ldrb.w	r8, [r0]
  6e:	eb03 0e04 	add.w	lr, r3, r4
  72:	eb0e 0705 	add.w	r7, lr, r5
  76:	0409      	lsls	r1, r1, #16
  78:	f81e 3005 	ldrb.w	r3, [lr, r5]
  7c:	f81e e015 	ldrb.w	lr, [lr, r5, lsl #1]
  80:	eb01 610a 	add.w	r1, r1, sl, lsl #24
  84:	eb07 0a45 	add.w	sl, r7, r5, lsl #1
  88:	eb0a 0004 	add.w	r0, sl, r4
  8c:	041b      	lsls	r3, r3, #16
  8e:	f81a a004 	ldrb.w	sl, [sl, r4]
  92:	f817 7015 	ldrb.w	r7, [r7, r5, lsl #1]
  96:	5d44      	ldrb	r4, [r0, r5]
  98:	eb03 630b 	add.w	r3, r3, fp, lsl #24
  9c:	eb01 210c 	add.w	r1, r1, ip, lsl #8
  a0:	4428      	add	r0, r5
  a2:	eb03 230e 	add.w	r3, r3, lr, lsl #8
  a6:	4441      	add	r1, r8
  a8:	4430      	add	r0, r6
  aa:	eb04 240a 	add.w	r4, r4, sl, lsl #8
  ae:	441f      	add	r7, r3
  b0:	b2cd      	uxtb	r5, r1
  b2:	f3c1 2307 	ubfx	r3, r1, #8, #8
  b6:	f859 6025 	ldr.w	r6, [r9, r5, lsl #2]
  ba:	f859 e023 	ldr.w	lr, [r9, r3, lsl #2]
  be:	9b03      	ldr	r3, [sp, #12]
  c0:	f3c1 4507 	ubfx	r5, r1, #16, #8
  c4:	0e09      	lsrs	r1, r1, #24
  c6:	4433      	add	r3, r6
  c8:	f859 8025 	ldr.w	r8, [r9, r5, lsl #2]
  cc:	f859 6021 	ldr.w	r6, [r9, r1, lsl #2]
  d0:	b2fd      	uxtb	r5, r7
  d2:	eb0e 2193 	add.w	r1, lr, r3, lsr #10
  d6:	469b      	mov	fp, r3
  d8:	f3c7 2307 	ubfx	r3, r7, #8, #8
  dc:	eb08 2891 	add.w	r8, r8, r1, lsr #10
  e0:	f859 c025 	ldr.w	ip, [r9, r5, lsl #2]
  e4:	f859 5023 	ldr.w	r5, [r9, r3, lsl #2]
  e8:	f3c7 4e07 	ubfx	lr, r7, #16, #8
  ec:	eb06 2698 	add.w	r6, r6, r8, lsr #10
  f0:	0e3b      	lsrs	r3, r7, #24
  f2:	eb0c 2c96 	add.w	ip, ip, r6, lsr #10
  f6:	f859 702e 	ldr.w	r7, [r9, lr, lsl #2]
  fa:	f859 3023 	ldr.w	r3, [r9, r3, lsl #2]
  fe:	fa5f fe84 	uxtb.w	lr, r4
 102:	eb05 259c 	add.w	r5, r5, ip, lsr #10
 106:	f3c4 2407 	ubfx	r4, r4, #8, #8
 10a:	eb07 2795 	add.w	r7, r7, r5, lsr #10
 10e:	f859 e02e 	ldr.w	lr, [r9, lr, lsl #2]
 112:	f859 4024 	ldr.w	r4, [r9, r4, lsl #2]
 116:	eb03 2397 	add.w	r3, r3, r7, lsr #10
 11a:	eb0e 2e93 	add.w	lr, lr, r3, lsr #10
 11e:	eb04 249e 	add.w	r4, r4, lr, lsr #10
 122:	f3c1 0109 	ubfx	r1, r1, #0, #10
 126:	f3c3 0309 	ubfx	r3, r3, #0, #10
 12a:	f3cb 0b09 	ubfx	fp, fp, #0, #10
 12e:	f3c7 0709 	ubfx	r7, r7, #0, #10
 132:	f3c6 0609 	ubfx	r6, r6, #0, #10
 136:	f3c5 0509 	ubfx	r5, r5, #0, #10
 13a:	ea41 4b0b 	orr.w	fp, r1, fp, lsl #16
 13e:	ea43 4707 	orr.w	r7, r3, r7, lsl #16
 142:	f3c4 0109 	ubfx	r1, r4, #0, #10
 146:	0aa3      	lsrs	r3, r4, #10
 148:	f3c8 0809 	ubfx	r8, r8, #0, #10
 14c:	f3cc 0c09 	ubfx	ip, ip, #0, #10
 150:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 154:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
 158:	9303      	str	r3, [sp, #12]
 15a:	ea46 4808 	orr.w	r8, r6, r8, lsl #16
 15e:	ea45 4c0c 	orr.w	ip, r5, ip, lsl #16
 162:	4b42      	ldr	r3, [pc, #264]	; (26c <D80_GENERIC+0x26c>)
 164:	9901      	ldr	r1, [sp, #4]
 166:	fb2b 1303 	smlad	r3, fp, r3, r1
 16a:	4941      	ldr	r1, [pc, #260]	; (270 <D80_GENERIC+0x270>)
 16c:	fb28 3301 	smlad	r3, r8, r1, r3
 170:	4940      	ldr	r1, [pc, #256]	; (274 <D80_GENERIC+0x274>)
 172:	fb2c 3301 	smlad	r3, ip, r1, r3
 176:	4940      	ldr	r1, [pc, #256]	; (278 <D80_GENERIC+0x278>)
 178:	fb27 3301 	smlad	r3, r7, r1, r3
 17c:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 180:	fb2e 3301 	smlad	r3, lr, r1, r3
 184:	493d      	ldr	r1, [pc, #244]	; (27c <D80_GENERIC+0x27c>)
 186:	9c02      	ldr	r4, [sp, #8]
 188:	fb2b 4401 	smlad	r4, fp, r1, r4
 18c:	493c      	ldr	r1, [pc, #240]	; (280 <D80_GENERIC+0x280>)
 18e:	fb28 4401 	smlad	r4, r8, r1, r4
 192:	f04f 114b 	mov.w	r1, #4915275	; 0x4b004b
 196:	fb2c 4101 	smlad	r1, ip, r1, r4
 19a:	4c3a      	ldr	r4, [pc, #232]	; (284 <D80_GENERIC+0x284>)
 19c:	fb27 1104 	smlad	r1, r7, r4, r1
 1a0:	4c39      	ldr	r4, [pc, #228]	; (288 <D80_GENERIC+0x288>)
 1a2:	fb2e 1104 	smlad	r1, lr, r4, r1
 1a6:	9101      	str	r1, [sp, #4]
 1a8:	2101      	movs	r1, #1
 1aa:	fb2b fb01 	smuad	fp, fp, r1
 1ae:	4937      	ldr	r1, [pc, #220]	; (28c <D80_GENERIC+0x28c>)
 1b0:	fb28 b801 	smlad	r8, r8, r1, fp
 1b4:	4d36      	ldr	r5, [pc, #216]	; (290 <D80_GENERIC+0x290>)
 1b6:	fb2c 8c05 	smlad	ip, ip, r5, r8
 1ba:	4d36      	ldr	r5, [pc, #216]	; (294 <D80_GENERIC+0x294>)
 1bc:	fb27 c705 	smlad	r7, r7, r5, ip
 1c0:	4d35      	ldr	r5, [pc, #212]	; (298 <D80_GENERIC+0x298>)
 1c2:	fb2e 7105 	smlad	r1, lr, r5, r7
 1c6:	9102      	str	r1, [sp, #8]
 1c8:	9908      	ldr	r1, [sp, #32]
 1ca:	f5a3 337a 	sub.w	r3, r3, #256000	; 0x3e800
 1ce:	b181      	cbz	r1, 1f2 <D80_GENERIC+0x1f2>
 1d0:	9c04      	ldr	r4, [sp, #16]
 1d2:	9d05      	ldr	r5, [sp, #20]
 1d4:	9305      	str	r3, [sp, #20]
 1d6:	441c      	add	r4, r3
 1d8:	1b64      	subs	r4, r4, r5
 1da:	17e7      	asrs	r7, r4, #31
 1dc:	fba4 4501 	umull	r4, r5, r4, r1
 1e0:	fb01 5507 	mla	r5, r1, r7, r5
 1e4:	f114 4400 	adds.w	r4, r4, #2147483648	; 0x80000000
 1e8:	f145 0500 	adc.w	r5, r5, #0
 1ec:	0069      	lsls	r1, r5, #1
 1ee:	9104      	str	r1, [sp, #16]
 1f0:	460b      	mov	r3, r1
 1f2:	9e00      	ldr	r6, [sp, #0]
 1f4:	9f06      	ldr	r7, [sp, #24]
 1f6:	8d31      	ldrh	r1, [r6, #40]	; 0x28
 1f8:	025b      	lsls	r3, r3, #9
 1fa:	f04f 4400 	mov.w	r4, #2147483648	; 0x80000000
 1fe:	2500      	movs	r5, #0
 200:	fb02 f101 	mul.w	r1, r2, r1
 204:	fbc7 4503 	smlal	r4, r5, r7, r3
 208:	9c07      	ldr	r4, [sp, #28]
 20a:	10ab      	asrs	r3, r5, #2
 20c:	f303 030f 	ssat	r3, #16, r3
 210:	f824 3011 	strh.w	r3, [r4, r1, lsl #1]
 214:	8cf3      	ldrh	r3, [r6, #38]	; 0x26
 216:	3201      	adds	r2, #1
 218:	4293      	cmp	r3, r2
 21a:	dd13      	ble.n	244 <D80_GENERIC+0x244>
 21c:	9b00      	ldr	r3, [sp, #0]
 21e:	f8b3 c02a 	ldrh.w	ip, [r3, #42]	; 0x2a
 222:	f1bc 0f01 	cmp.w	ip, #1
 226:	f47f af0b 	bne.w	40 <D80_GENERIC+0x40>
 22a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 22c:	6884      	ldr	r4, [r0, #8]
 22e:	069b      	lsls	r3, r3, #26
 230:	e890 0082 	ldmia.w	r0, {r1, r7}
 234:	f100 000a 	add.w	r0, r0, #10
 238:	f57f af3a 	bpl.w	b0 <D80_GENERIC+0xb0>
 23c:	ba49      	rev16	r1, r1
 23e:	ba7f      	rev16	r7, r7
 240:	ba64      	rev16	r4, r4
 242:	e735      	b.n	b0 <D80_GENERIC+0xb0>
 244:	f8dd b00c 	ldr.w	fp, [sp, #12]
 248:	4632      	mov	r2, r6
 24a:	9b02      	ldr	r3, [sp, #8]
 24c:	6093      	str	r3, [r2, #8]
 24e:	9b01      	ldr	r3, [sp, #4]
 250:	60d3      	str	r3, [r2, #12]
 252:	9b04      	ldr	r3, [sp, #16]
 254:	6113      	str	r3, [r2, #16]
 256:	9b05      	ldr	r3, [sp, #20]
 258:	6153      	str	r3, [r2, #20]
 25a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 25c:	f8c2 b01c 	str.w	fp, [r2, #28]
 260:	2000      	movs	r0, #0
 262:	6193      	str	r3, [r2, #24]
 264:	b00b      	add	sp, #44	; 0x2c
 266:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 26a:	bf00      	nop
 26c:	002d0024 	.word	0x002d0024
 270:	001c0015 	.word	0x001c0015
 274:	000f000a 	.word	0x000f000a
 278:	00060003 	.word	0x00060003
 27c:	0037003f 	.word	0x0037003f
 280:	00450049 	.word	0x00450049
 284:	00490045 	.word	0x00490045
 288:	003f0037 	.word	0x003f0037
 28c:	00030006 	.word	0x00030006
 290:	000a000f 	.word	0x000a000f
 294:	0015001c 	.word	0x0015001c
 298:	0024002d 	.word	0x0024002d
 29c:	00000000 	.word	0x00000000

Desensamblado de la sección .text.D128_GENERIC:

00000000 <D128_GENERIC>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b093      	sub	sp, #76	; 0x4c
   6:	8cd3      	ldrh	r3, [r2, #38]	; 0x26
   8:	9005      	str	r0, [sp, #20]
   a:	4610      	mov	r0, r2
   c:	9201      	str	r2, [sp, #4]
   e:	6912      	ldr	r2, [r2, #16]
  10:	920c      	str	r2, [sp, #48]	; 0x30
  12:	4602      	mov	r2, r0
  14:	6940      	ldr	r0, [r0, #20]
  16:	900d      	str	r0, [sp, #52]	; 0x34
  18:	4610      	mov	r0, r2
  1a:	4614      	mov	r4, r2
  1c:	6992      	ldr	r2, [r2, #24]
  1e:	9211      	str	r2, [sp, #68]	; 0x44
  20:	69c2      	ldr	r2, [r0, #28]
  22:	9202      	str	r2, [sp, #8]
  24:	68e2      	ldr	r2, [r4, #12]
  26:	6880      	ldr	r0, [r0, #8]
  28:	9203      	str	r2, [sp, #12]
  2a:	6b22      	ldr	r2, [r4, #48]	; 0x30
  2c:	9004      	str	r0, [sp, #16]
  2e:	920e      	str	r2, [sp, #56]	; 0x38
  30:	910f      	str	r1, [sp, #60]	; 0x3c
  32:	2b00      	cmp	r3, #0
  34:	f000 819b 	beq.w	36e <D128_GENERIC+0x36e>
  38:	6a23      	ldr	r3, [r4, #32]
  3a:	9310      	str	r3, [sp, #64]	; 0x40
  3c:	2300      	movs	r3, #0
  3e:	f8df 93a8 	ldr.w	r9, [pc, #936]	; 3e8 <D128_GENERIC+0x3e8>
  42:	9306      	str	r3, [sp, #24]
  44:	e17a      	b.n	33c <D128_GENERIC+0x33c>
  46:	b2d2      	uxtb	r2, r2
  48:	9d05      	ldr	r5, [sp, #20]
  4a:	b214      	sxth	r4, r2
  4c:	eb04 0a44 	add.w	sl, r4, r4, lsl #1
  50:	4250      	negs	r0, r2
  52:	eb05 010a 	add.w	r1, r5, sl
  56:	ea4f 0b84 	mov.w	fp, r4, lsl #2
  5a:	eb01 0800 	add.w	r8, r1, r0
  5e:	eb0b 0c04 	add.w	ip, fp, r4
  62:	eb08 070c 	add.w	r7, r8, ip
  66:	183b      	adds	r3, r7, r0
  68:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
  6c:	eb03 0e40 	add.w	lr, r3, r0, lsl #1
  70:	eb0e 0604 	add.w	r6, lr, r4
  74:	9307      	str	r3, [sp, #28]
  76:	1833      	adds	r3, r6, r0
  78:	9305      	str	r3, [sp, #20]
  7a:	462b      	mov	r3, r5
  7c:	f815 a00a 	ldrb.w	sl, [r5, sl]
  80:	f8cd a020 	str.w	sl, [sp, #32]
  84:	f818 a00c 	ldrb.w	sl, [r8, ip]
  88:	f813 c002 	ldrb.w	ip, [r3, r2]
  8c:	f81e 8004 	ldrb.w	r8, [lr, r4]
  90:	5c3a      	ldrb	r2, [r7, r0]
  92:	f817 e010 	ldrb.w	lr, [r7, r0, lsl #1]
  96:	781f      	ldrb	r7, [r3, #0]
  98:	9b07      	ldr	r3, [sp, #28]
  9a:	9d05      	ldr	r5, [sp, #20]
  9c:	f813 3010 	ldrb.w	r3, [r3, r0, lsl #1]
  a0:	5c09      	ldrb	r1, [r1, r0]
  a2:	9709      	str	r7, [sp, #36]	; 0x24
  a4:	9307      	str	r3, [sp, #28]
  a6:	f816 7010 	ldrb.w	r7, [r6, r0, lsl #1]
  aa:	5c33      	ldrb	r3, [r6, r0]
  ac:	0412      	lsls	r2, r2, #16
  ae:	eb05 0640 	add.w	r6, r5, r0, lsl #1
  b2:	eb02 620a 	add.w	r2, r2, sl, lsl #24
  b6:	9d08      	ldr	r5, [sp, #32]
  b8:	eb06 0a04 	add.w	sl, r6, r4
  bc:	0409      	lsls	r1, r1, #16
  be:	eb01 6105 	add.w	r1, r1, r5, lsl #24
  c2:	f81a 5000 	ldrb.w	r5, [sl, r0]
  c6:	5d36      	ldrb	r6, [r6, r4]
  c8:	9c05      	ldr	r4, [sp, #20]
  ca:	042d      	lsls	r5, r5, #16
  cc:	eb05 6606 	add.w	r6, r5, r6, lsl #24
  d0:	eb01 210c 	add.w	r1, r1, ip, lsl #8
  d4:	f81a 5010 	ldrb.w	r5, [sl, r0, lsl #1]
  d8:	f814 4010 	ldrb.w	r4, [r4, r0, lsl #1]
  dc:	eb0a 0c00 	add.w	ip, sl, r0
  e0:	041b      	lsls	r3, r3, #16
  e2:	eb03 6308 	add.w	r3, r3, r8, lsl #24
  e6:	eb06 2605 	add.w	r6, r6, r5, lsl #8
  ea:	f81c a010 	ldrb.w	sl, [ip, r0, lsl #1]
  ee:	9d07      	ldr	r5, [sp, #28]
  f0:	eb03 2307 	add.w	r3, r3, r7, lsl #8
  f4:	eb0c 0040 	add.w	r0, ip, r0, lsl #1
  f8:	9f09      	ldr	r7, [sp, #36]	; 0x24
  fa:	4458      	add	r0, fp
  fc:	eb02 220e 	add.w	r2, r2, lr, lsl #8
 100:	9005      	str	r0, [sp, #20]
 102:	4439      	add	r1, r7
 104:	442a      	add	r2, r5
 106:	44b2      	add	sl, r6
 108:	1918      	adds	r0, r3, r4
 10a:	b2cb      	uxtb	r3, r1
 10c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 110:	9e02      	ldr	r6, [sp, #8]
 112:	f859 3023 	ldr.w	r3, [r9, r3, lsl #2]
 116:	f859 5024 	ldr.w	r5, [r9, r4, lsl #2]
 11a:	f3c1 4407 	ubfx	r4, r1, #16, #8
 11e:	441e      	add	r6, r3
 120:	0e09      	lsrs	r1, r1, #24
 122:	4633      	mov	r3, r6
 124:	f859 6024 	ldr.w	r6, [r9, r4, lsl #2]
 128:	f859 7021 	ldr.w	r7, [r9, r1, lsl #2]
 12c:	b2d4      	uxtb	r4, r2
 12e:	eb05 2593 	add.w	r5, r5, r3, lsr #10
 132:	f3c2 2107 	ubfx	r1, r2, #8, #8
 136:	eb06 2b95 	add.w	fp, r6, r5, lsr #10
 13a:	f859 6024 	ldr.w	r6, [r9, r4, lsl #2]
 13e:	f859 1021 	ldr.w	r1, [r9, r1, lsl #2]
 142:	f3c2 4407 	ubfx	r4, r2, #16, #8
 146:	0e12      	lsrs	r2, r2, #24
 148:	eb07 279b 	add.w	r7, r7, fp, lsr #10
 14c:	eb06 2897 	add.w	r8, r6, r7, lsr #10
 150:	f859 6024 	ldr.w	r6, [r9, r4, lsl #2]
 154:	f859 4022 	ldr.w	r4, [r9, r2, lsl #2]
 158:	9702      	str	r7, [sp, #8]
 15a:	b2c2      	uxtb	r2, r0
 15c:	eb01 2198 	add.w	r1, r1, r8, lsr #10
 160:	eb06 2c91 	add.w	ip, r6, r1, lsr #10
 164:	f859 6022 	ldr.w	r6, [r9, r2, lsl #2]
 168:	eb04 249c 	add.w	r4, r4, ip, lsr #10
 16c:	f3c0 2207 	ubfx	r2, r0, #8, #8
 170:	eb06 2e94 	add.w	lr, r6, r4, lsr #10
 174:	f3c0 4607 	ubfx	r6, r0, #16, #8
 178:	f859 2022 	ldr.w	r2, [r9, r2, lsl #2]
 17c:	f859 7026 	ldr.w	r7, [r9, r6, lsl #2]
 180:	0e00      	lsrs	r0, r0, #24
 182:	fa5f f68a 	uxtb.w	r6, sl
 186:	f3c3 0309 	ubfx	r3, r3, #0, #10
 18a:	9309      	str	r3, [sp, #36]	; 0x24
 18c:	f859 0020 	ldr.w	r0, [r9, r0, lsl #2]
 190:	f859 6026 	ldr.w	r6, [r9, r6, lsl #2]
 194:	eb02 229e 	add.w	r2, r2, lr, lsr #10
 198:	f3ca 2307 	ubfx	r3, sl, #8, #8
 19c:	f3c5 0509 	ubfx	r5, r5, #0, #10
 1a0:	950a      	str	r5, [sp, #40]	; 0x28
 1a2:	eb07 2792 	add.w	r7, r7, r2, lsr #10
 1a6:	f3ca 4507 	ubfx	r5, sl, #16, #8
 1aa:	eb00 2097 	add.w	r0, r0, r7, lsr #10
 1ae:	f859 3023 	ldr.w	r3, [r9, r3, lsl #2]
 1b2:	f859 5025 	ldr.w	r5, [r9, r5, lsl #2]
 1b6:	f3c2 0209 	ubfx	r2, r2, #0, #10
 1ba:	920b      	str	r2, [sp, #44]	; 0x2c
 1bc:	eb06 2690 	add.w	r6, r6, r0, lsr #10
 1c0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 1c2:	eb03 2396 	add.w	r3, r3, r6, lsr #10
 1c6:	f3cc 0c09 	ubfx	ip, ip, #0, #10
 1ca:	9307      	str	r3, [sp, #28]
 1cc:	eb05 2593 	add.w	r5, r5, r3, lsr #10
 1d0:	ea4f 6a1a 	mov.w	sl, sl, lsr #24
 1d4:	9b02      	ldr	r3, [sp, #8]
 1d6:	f8cd c008 	str.w	ip, [sp, #8]
 1da:	4694      	mov	ip, r2
 1dc:	9a09      	ldr	r2, [sp, #36]	; 0x24
 1de:	f859 a02a 	ldr.w	sl, [r9, sl, lsl #2]
 1e2:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
 1e6:	9a02      	ldr	r2, [sp, #8]
 1e8:	f3c4 0409 	ubfx	r4, r4, #0, #10
 1ec:	eb0a 2a95 	add.w	sl, sl, r5, lsr #10
 1f0:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
 1f4:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 1f6:	f8cd a020 	str.w	sl, [sp, #32]
 1fa:	f3c8 0809 	ubfx	r8, r8, #0, #10
 1fe:	f3c3 0a09 	ubfx	sl, r3, #0, #10
 202:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 206:	9b07      	ldr	r3, [sp, #28]
 208:	f3c1 0109 	ubfx	r1, r1, #0, #10
 20c:	ea41 4108 	orr.w	r1, r1, r8, lsl #16
 210:	ea42 480e 	orr.w	r8, r2, lr, lsl #16
 214:	9a08      	ldr	r2, [sp, #32]
 216:	f3c6 0609 	ubfx	r6, r6, #0, #10
 21a:	f3c3 0309 	ubfx	r3, r3, #0, #10
 21e:	f3cb 0b09 	ubfx	fp, fp, #0, #10
 222:	f3c7 0709 	ubfx	r7, r7, #0, #10
 226:	f3c2 0e09 	ubfx	lr, r2, #0, #10
 22a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 22e:	f3c0 0009 	ubfx	r0, r0, #0, #10
 232:	0a96      	lsrs	r6, r2, #10
 234:	f3c5 0509 	ubfx	r5, r5, #0, #10
 238:	9602      	str	r6, [sp, #8]
 23a:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 23e:	ea4a 4a0b 	orr.w	sl, sl, fp, lsl #16
 242:	ea4e 4505 	orr.w	r5, lr, r5, lsl #16
 246:	4e53      	ldr	r6, [pc, #332]	; (394 <D128_GENERIC+0x394>)
 248:	9f03      	ldr	r7, [sp, #12]
 24a:	fb2c 7606 	smlad	r6, ip, r6, r7
 24e:	4f52      	ldr	r7, [pc, #328]	; (398 <D128_GENERIC+0x398>)
 250:	fb2a 6607 	smlad	r6, sl, r7, r6
 254:	4f51      	ldr	r7, [pc, #324]	; (39c <D128_GENERIC+0x39c>)
 256:	fb21 6607 	smlad	r6, r1, r7, r6
 25a:	4f51      	ldr	r7, [pc, #324]	; (3a0 <D128_GENERIC+0x3a0>)
 25c:	fb24 6607 	smlad	r6, r4, r7, r6
 260:	4f50      	ldr	r7, [pc, #320]	; (3a4 <D128_GENERIC+0x3a4>)
 262:	fb28 6607 	smlad	r6, r8, r7, r6
 266:	4f50      	ldr	r7, [pc, #320]	; (3a8 <D128_GENERIC+0x3a8>)
 268:	fb20 6607 	smlad	r6, r0, r7, r6
 26c:	4f4f      	ldr	r7, [pc, #316]	; (3ac <D128_GENERIC+0x3ac>)
 26e:	fb23 6607 	smlad	r6, r3, r7, r6
 272:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 276:	fb25 6607 	smlad	r6, r5, r7, r6
 27a:	4f4d      	ldr	r7, [pc, #308]	; (3b0 <D128_GENERIC+0x3b0>)
 27c:	9a04      	ldr	r2, [sp, #16]
 27e:	fb2c 2e07 	smlad	lr, ip, r7, r2
 282:	4a4c      	ldr	r2, [pc, #304]	; (3b4 <D128_GENERIC+0x3b4>)
 284:	fb2a ee02 	smlad	lr, sl, r2, lr
 288:	4f4b      	ldr	r7, [pc, #300]	; (3b8 <D128_GENERIC+0x3b8>)
 28a:	fb21 ee07 	smlad	lr, r1, r7, lr
 28e:	4f4b      	ldr	r7, [pc, #300]	; (3bc <D128_GENERIC+0x3bc>)
 290:	fb24 ee07 	smlad	lr, r4, r7, lr
 294:	4f4a      	ldr	r7, [pc, #296]	; (3c0 <D128_GENERIC+0x3c0>)
 296:	fb28 ee07 	smlad	lr, r8, r7, lr
 29a:	4f4a      	ldr	r7, [pc, #296]	; (3c4 <D128_GENERIC+0x3c4>)
 29c:	fb20 ee07 	smlad	lr, r0, r7, lr
 2a0:	4f49      	ldr	r7, [pc, #292]	; (3c8 <D128_GENERIC+0x3c8>)
 2a2:	fb23 e707 	smlad	r7, r3, r7, lr
 2a6:	f8df e144 	ldr.w	lr, [pc, #324]	; 3ec <D128_GENERIC+0x3ec>
 2aa:	fb25 720e 	smlad	r2, r5, lr, r7
 2ae:	f04f 0b01 	mov.w	fp, #1
 2b2:	9203      	str	r2, [sp, #12]
 2b4:	fb2c fb0b 	smuad	fp, ip, fp
 2b8:	4f44      	ldr	r7, [pc, #272]	; (3cc <D128_GENERIC+0x3cc>)
 2ba:	fb2a ba07 	smlad	sl, sl, r7, fp
 2be:	4f44      	ldr	r7, [pc, #272]	; (3d0 <D128_GENERIC+0x3d0>)
 2c0:	fb21 aa07 	smlad	sl, r1, r7, sl
 2c4:	4f43      	ldr	r7, [pc, #268]	; (3d4 <D128_GENERIC+0x3d4>)
 2c6:	fb24 aa07 	smlad	sl, r4, r7, sl
 2ca:	4f43      	ldr	r7, [pc, #268]	; (3d8 <D128_GENERIC+0x3d8>)
 2cc:	fb28 a707 	smlad	r7, r8, r7, sl
 2d0:	4a42      	ldr	r2, [pc, #264]	; (3dc <D128_GENERIC+0x3dc>)
 2d2:	fb20 7702 	smlad	r7, r0, r2, r7
 2d6:	4a42      	ldr	r2, [pc, #264]	; (3e0 <D128_GENERIC+0x3e0>)
 2d8:	fb23 7702 	smlad	r7, r3, r2, r7
 2dc:	4b41      	ldr	r3, [pc, #260]	; (3e4 <D128_GENERIC+0x3e4>)
 2de:	fb25 7303 	smlad	r3, r5, r3, r7
 2e2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 2e4:	9304      	str	r3, [sp, #16]
 2e6:	f5a6 1680 	sub.w	r6, r6, #1048576	; 0x100000
 2ea:	b185      	cbz	r5, 30e <D128_GENERIC+0x30e>
 2ec:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 2ee:	990d      	ldr	r1, [sp, #52]	; 0x34
 2f0:	960d      	str	r6, [sp, #52]	; 0x34
 2f2:	4432      	add	r2, r6
 2f4:	1a52      	subs	r2, r2, r1
 2f6:	17d1      	asrs	r1, r2, #31
 2f8:	fba2 2305 	umull	r2, r3, r2, r5
 2fc:	fb05 3301 	mla	r3, r5, r1, r3
 300:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
 304:	f143 0300 	adc.w	r3, r3, #0
 308:	005b      	lsls	r3, r3, #1
 30a:	930c      	str	r3, [sp, #48]	; 0x30
 30c:	461e      	mov	r6, r3
 30e:	9801      	ldr	r0, [sp, #4]
 310:	9c06      	ldr	r4, [sp, #24]
 312:	8d01      	ldrh	r1, [r0, #40]	; 0x28
 314:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 316:	01f6      	lsls	r6, r6, #7
 318:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 31c:	2300      	movs	r3, #0
 31e:	fbc5 2306 	smlal	r2, r3, r5, r6
 322:	fb04 f101 	mul.w	r1, r4, r1
 326:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 328:	109b      	asrs	r3, r3, #2
 32a:	f303 030f 	ssat	r3, #16, r3
 32e:	f822 3011 	strh.w	r3, [r2, r1, lsl #1]
 332:	8cc3      	ldrh	r3, [r0, #38]	; 0x26
 334:	1c62      	adds	r2, r4, #1
 336:	4293      	cmp	r3, r2
 338:	9206      	str	r2, [sp, #24]
 33a:	dd18      	ble.n	36e <D128_GENERIC+0x36e>
 33c:	9b01      	ldr	r3, [sp, #4]
 33e:	8d5a      	ldrh	r2, [r3, #42]	; 0x2a
 340:	2a01      	cmp	r2, #1
 342:	f47f ae80 	bne.w	46 <D128_GENERIC+0x46>
 346:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 348:	9d05      	ldr	r5, [sp, #20]
 34a:	069b      	lsls	r3, r3, #26
 34c:	6829      	ldr	r1, [r5, #0]
 34e:	686a      	ldr	r2, [r5, #4]
 350:	68a8      	ldr	r0, [r5, #8]
 352:	f8d5 a00c 	ldr.w	sl, [r5, #12]
 356:	f105 0410 	add.w	r4, r5, #16
 35a:	d506      	bpl.n	36a <D128_GENERIC+0x36a>
 35c:	ba49      	rev16	r1, r1
 35e:	ba52      	rev16	r2, r2
 360:	ba40      	rev16	r0, r0
 362:	fa9a fa9a 	rev16.w	sl, sl
 366:	9405      	str	r4, [sp, #20]
 368:	e6cf      	b.n	10a <D128_GENERIC+0x10a>
 36a:	9405      	str	r4, [sp, #20]
 36c:	e6cd      	b.n	10a <D128_GENERIC+0x10a>
 36e:	9a01      	ldr	r2, [sp, #4]
 370:	9904      	ldr	r1, [sp, #16]
 372:	6091      	str	r1, [r2, #8]
 374:	9903      	ldr	r1, [sp, #12]
 376:	60d1      	str	r1, [r2, #12]
 378:	9b02      	ldr	r3, [sp, #8]
 37a:	61d3      	str	r3, [r2, #28]
 37c:	4611      	mov	r1, r2
 37e:	4613      	mov	r3, r2
 380:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 382:	610a      	str	r2, [r1, #16]
 384:	990d      	ldr	r1, [sp, #52]	; 0x34
 386:	6159      	str	r1, [r3, #20]
 388:	9911      	ldr	r1, [sp, #68]	; 0x44
 38a:	6199      	str	r1, [r3, #24]
 38c:	2000      	movs	r0, #0
 38e:	b013      	add	sp, #76	; 0x4c
 390:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 394:	00780069 	.word	0x00780069
 398:	005b004e 	.word	0x005b004e
 39c:	00420037 	.word	0x00420037
 3a0:	002d0024 	.word	0x002d0024
 3a4:	001c0015 	.word	0x001c0015
 3a8:	000f000a 	.word	0x000f000a
 3ac:	00060003 	.word	0x00060003
 3b0:	00880096 	.word	0x00880096
 3b4:	00a200ac 	.word	0x00a200ac
 3b8:	00b400ba 	.word	0x00b400ba
 3bc:	00be00c0 	.word	0x00be00c0
 3c0:	00c000be 	.word	0x00c000be
 3c4:	00ba00b4 	.word	0x00ba00b4
 3c8:	00ac00a2 	.word	0x00ac00a2
 3cc:	00030006 	.word	0x00030006
 3d0:	000a000f 	.word	0x000a000f
 3d4:	0015001c 	.word	0x0015001c
 3d8:	0024002d 	.word	0x0024002d
 3dc:	00370042 	.word	0x00370042
 3e0:	004e005b 	.word	0x004e005b
 3e4:	00690078 	.word	0x00690078
 3e8:	00000000 	.word	0x00000000
 3ec:	00960088 	.word	0x00960088

Desensamblado de la sección .text.D16_1CH_HTONS_VOL_HP:

00000000 <D16_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	4691      	mov	r9, r2
   6:	b083      	sub	sp, #12
   8:	8cd2      	ldrh	r2, [r2, #38]	; 0x26
   a:	f8d9 3018 	ldr.w	r3, [r9, #24]
   e:	f8d9 400c 	ldr.w	r4, [r9, #12]
  12:	9300      	str	r3, [sp, #0]
  14:	4680      	mov	r8, r0
  16:	f8d9 7014 	ldr.w	r7, [r9, #20]
  1a:	f8d9 0010 	ldr.w	r0, [r9, #16]
  1e:	f8d9 301c 	ldr.w	r3, [r9, #28]
  22:	f8d9 5008 	ldr.w	r5, [r9, #8]
  26:	9401      	str	r4, [sp, #4]
  28:	f8d9 a030 	ldr.w	sl, [r9, #48]	; 0x30
  2c:	f8d9 e020 	ldr.w	lr, [r9, #32]
  30:	2a00      	cmp	r2, #0
  32:	d04e      	beq.n	d2 <D16_1CH_HTONS_VOL_HP+0xd2>
  34:	f8df c0a8 	ldr.w	ip, [pc, #168]	; e0 <D16_1CH_HTONS_VOL_HP+0xe0>
  38:	1e8c      	subs	r4, r1, #2
  3a:	eb08 0b42 	add.w	fp, r8, r2, lsl #1
  3e:	f858 2b02 	ldr.w	r2, [r8], #2
  42:	ba52      	rev16	r2, r2
  44:	b2d6      	uxtb	r6, r2
  46:	f3c2 2107 	ubfx	r1, r2, #8, #8
  4a:	f85c 2026 	ldr.w	r2, [ip, r6, lsl #2]
  4e:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
  52:	4413      	add	r3, r2
  54:	eb01 2293 	add.w	r2, r1, r3, lsr #10
  58:	f3c2 0109 	ubfx	r1, r2, #0, #10
  5c:	f3c3 0309 	ubfx	r3, r3, #0, #10
  60:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
  64:	0a93      	lsrs	r3, r2, #10
  66:	4a1c      	ldr	r2, [pc, #112]	; (d8 <D16_1CH_HTONS_VOL_HP+0xd8>)
  68:	fb21 5202 	smlad	r2, r1, r2, r5
  6c:	4d1b      	ldr	r5, [pc, #108]	; (dc <D16_1CH_HTONS_VOL_HP+0xdc>)
  6e:	fb21 f505 	smuad	r5, r1, r5
  72:	f5a2 6200 	sub.w	r2, r2, #2048	; 0x800
  76:	4410      	add	r0, r2
  78:	1bc0      	subs	r0, r0, r7
  7a:	17c7      	asrs	r7, r0, #31
  7c:	fba0 010e 	umull	r0, r1, r0, lr
  80:	f110 4000 	adds.w	r0, r0, #2147483648	; 0x80000000
  84:	fb0e 1107 	mla	r1, lr, r7, r1
  88:	f141 0100 	adc.w	r1, r1, #0
  8c:	0448      	lsls	r0, r1, #17
  8e:	f04f 4600 	mov.w	r6, #2147483648	; 0x80000000
  92:	2700      	movs	r7, #0
  94:	fbc0 670a 	smlal	r6, r7, r0, sl
  98:	45d8      	cmp	r8, fp
  9a:	ea4f 0041 	mov.w	r0, r1, lsl #1
  9e:	ea4f 01a7 	mov.w	r1, r7, asr #2
  a2:	4617      	mov	r7, r2
  a4:	f301 010f 	ssat	r1, #16, r1
  a8:	f824 1f02 	strh.w	r1, [r4, #2]!
  ac:	d1c7      	bne.n	3e <D16_1CH_HTONS_VOL_HP+0x3e>
  ae:	9901      	ldr	r1, [sp, #4]
  b0:	f8c9 301c 	str.w	r3, [r9, #28]
  b4:	9b00      	ldr	r3, [sp, #0]
  b6:	f8c9 0010 	str.w	r0, [r9, #16]
  ba:	2000      	movs	r0, #0
  bc:	f8c9 5008 	str.w	r5, [r9, #8]
  c0:	f8c9 100c 	str.w	r1, [r9, #12]
  c4:	f8c9 2014 	str.w	r2, [r9, #20]
  c8:	f8c9 3018 	str.w	r3, [r9, #24]
  cc:	b003      	add	sp, #12
  ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
  d2:	463a      	mov	r2, r7
  d4:	4621      	mov	r1, r4
  d6:	e7eb      	b.n	b0 <D16_1CH_HTONS_VOL_HP+0xb0>
  d8:	00030001 	.word	0x00030001
  dc:	00010003 	.word	0x00010003
  e0:	00000000 	.word	0x00000000

Desensamblado de la sección .text.D24_1CH_HTONS_VOL_HP:

00000000 <D24_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b089      	sub	sp, #36	; 0x24
   6:	8cd3      	ldrh	r3, [r2, #38]	; 0x26
   8:	6996      	ldr	r6, [r2, #24]
   a:	9304      	str	r3, [sp, #16]
   c:	6b17      	ldr	r7, [r2, #48]	; 0x30
   e:	9207      	str	r2, [sp, #28]
  10:	6915      	ldr	r5, [r2, #16]
  12:	6954      	ldr	r4, [r2, #20]
  14:	9606      	str	r6, [sp, #24]
  16:	6893      	ldr	r3, [r2, #8]
  18:	69d6      	ldr	r6, [r2, #28]
  1a:	f8d2 c00c 	ldr.w	ip, [r2, #12]
  1e:	f8d2 a020 	ldr.w	sl, [r2, #32]
  22:	9a04      	ldr	r2, [sp, #16]
  24:	9705      	str	r7, [sp, #20]
  26:	2a00      	cmp	r2, #0
  28:	d07e      	beq.n	128 <D24_1CH_HTONS_VOL_HP+0x128>
  2a:	f1a1 0b02 	sub.w	fp, r1, #2
  2e:	2700      	movs	r7, #0
  30:	46a8      	mov	r8, r5
  32:	f8cd b004 	str.w	fp, [sp, #4]
  36:	4655      	mov	r5, sl
  38:	46e3      	mov	fp, ip
  3a:	f8df e0f8 	ldr.w	lr, [pc, #248]	; 134 <D24_1CH_HTONS_VOL_HP+0x134>
  3e:	46ba      	mov	sl, r7
  40:	469c      	mov	ip, r3
  42:	e055      	b.n	f0 <D24_1CH_HTONS_VOL_HP+0xf0>
  44:	7802      	ldrb	r2, [r0, #0]
  46:	78c3      	ldrb	r3, [r0, #3]
  48:	7841      	ldrb	r1, [r0, #1]
  4a:	0212      	lsls	r2, r2, #8
  4c:	eb02 4303 	add.w	r3, r2, r3, lsl #16
  50:	440b      	add	r3, r1
  52:	3002      	adds	r0, #2
  54:	b2d9      	uxtb	r1, r3
  56:	f3c3 2207 	ubfx	r2, r3, #8, #8
  5a:	f85e 7021 	ldr.w	r7, [lr, r1, lsl #2]
  5e:	f85e 2022 	ldr.w	r2, [lr, r2, lsl #2]
  62:	0c1b      	lsrs	r3, r3, #16
  64:	eb07 2796 	add.w	r7, r7, r6, lsr #10
  68:	eb02 2297 	add.w	r2, r2, r7, lsr #10
  6c:	f85e 6023 	ldr.w	r6, [lr, r3, lsl #2]
  70:	f3c7 0309 	ubfx	r3, r7, #0, #10
  74:	f3c2 0709 	ubfx	r7, r2, #0, #10
  78:	eb06 2692 	add.w	r6, r6, r2, lsr #10
  7c:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
  80:	4a2a      	ldr	r2, [pc, #168]	; (12c <D24_1CH_HTONS_VOL_HP+0x12c>)
  82:	fb23 b102 	smlad	r1, r3, r2, fp
  86:	4a2a      	ldr	r2, [pc, #168]	; (130 <D24_1CH_HTONS_VOL_HP+0x130>)
  88:	fb23 cb02 	smlad	fp, r3, r2, ip
  8c:	f3c6 0c09 	ubfx	ip, r6, #0, #10
  90:	eb0c 0c4c 	add.w	ip, ip, ip, lsl #1
  94:	eb0b 0b4c 	add.w	fp, fp, ip, lsl #1
  98:	2201      	movs	r2, #1
  9a:	fb23 f702 	smuad	r7, r3, r2
  9e:	f5a1 51d8 	sub.w	r1, r1, #6912	; 0x1b00
  a2:	eb01 0208 	add.w	r2, r1, r8
  a6:	1b12      	subs	r2, r2, r4
  a8:	17d4      	asrs	r4, r2, #31
  aa:	fba2 2305 	umull	r2, r3, r2, r5
  ae:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
  b2:	fb05 3304 	mla	r3, r5, r4, r3
  b6:	f143 0300 	adc.w	r3, r3, #0
  ba:	9c05      	ldr	r4, [sp, #20]
  bc:	03da      	lsls	r2, r3, #15
  be:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
  c2:	f04f 0900 	mov.w	r9, #0
  c6:	fbc4 8902 	smlal	r8, r9, r4, r2
  ca:	e9cd 8902 	strd	r8, r9, [sp, #8]
  ce:	9a01      	ldr	r2, [sp, #4]
  d0:	ea4f 0843 	mov.w	r8, r3, lsl #1
  d4:	9b03      	ldr	r3, [sp, #12]
  d6:	109b      	asrs	r3, r3, #2
  d8:	f303 030f 	ssat	r3, #16, r3
  dc:	f822 3f02 	strh.w	r3, [r2, #2]!
  e0:	9b04      	ldr	r3, [sp, #16]
  e2:	9201      	str	r2, [sp, #4]
  e4:	f10a 0a01 	add.w	sl, sl, #1
  e8:	459a      	cmp	sl, r3
  ea:	44bc      	add	ip, r7
  ec:	460c      	mov	r4, r1
  ee:	d00b      	beq.n	108 <D24_1CH_HTONS_VOL_HP+0x108>
  f0:	f01a 0f01 	tst.w	sl, #1
  f4:	d0a6      	beq.n	44 <D24_1CH_HTONS_VOL_HP+0x44>
  f6:	78c2      	ldrb	r2, [r0, #3]
  f8:	7883      	ldrb	r3, [r0, #2]
  fa:	f810 1b04 	ldrb.w	r1, [r0], #4
  fe:	0212      	lsls	r2, r2, #8
 100:	eb02 4303 	add.w	r3, r2, r3, lsl #16
 104:	440b      	add	r3, r1
 106:	e7a5      	b.n	54 <D24_1CH_HTONS_VOL_HP+0x54>
 108:	4663      	mov	r3, ip
 10a:	4645      	mov	r5, r8
 10c:	46dc      	mov	ip, fp
 10e:	9807      	ldr	r0, [sp, #28]
 110:	6141      	str	r1, [r0, #20]
 112:	9906      	ldr	r1, [sp, #24]
 114:	6083      	str	r3, [r0, #8]
 116:	f8c0 c00c 	str.w	ip, [r0, #12]
 11a:	61c6      	str	r6, [r0, #28]
 11c:	6105      	str	r5, [r0, #16]
 11e:	6181      	str	r1, [r0, #24]
 120:	2000      	movs	r0, #0
 122:	b009      	add	sp, #36	; 0x24
 124:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 128:	4621      	mov	r1, r4
 12a:	e7f0      	b.n	10e <D24_1CH_HTONS_VOL_HP+0x10e>
 12c:	00030001 	.word	0x00030001
 130:	00060007 	.word	0x00060007
 134:	00000000 	.word	0x00000000

Desensamblado de la sección .text.D32_1CH_HTONS_VOL_HP:

00000000 <D32_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	4692      	mov	sl, r2
   6:	b087      	sub	sp, #28
   8:	8cd2      	ldrh	r2, [r2, #38]	; 0x26
   a:	f8da 3018 	ldr.w	r3, [sl, #24]
   e:	f8da 5030 	ldr.w	r5, [sl, #48]	; 0x30
  12:	9304      	str	r3, [sp, #16]
  14:	f8da 4010 	ldr.w	r4, [sl, #16]
  18:	f8da 8014 	ldr.w	r8, [sl, #20]
  1c:	f8da 601c 	ldr.w	r6, [sl, #28]
  20:	f8da 3008 	ldr.w	r3, [sl, #8]
  24:	f8da e00c 	ldr.w	lr, [sl, #12]
  28:	9501      	str	r5, [sp, #4]
  2a:	f8da c020 	ldr.w	ip, [sl, #32]
  2e:	2a00      	cmp	r2, #0
  30:	d07b      	beq.n	12a <D32_1CH_HTONS_VOL_HP+0x12a>
  32:	eb01 0242 	add.w	r2, r1, r2, lsl #1
  36:	4f3e      	ldr	r7, [pc, #248]	; (130 <D32_1CH_HTONS_VOL_HP+0x130>)
  38:	f8cd c00c 	str.w	ip, [sp, #12]
  3c:	9202      	str	r2, [sp, #8]
  3e:	460d      	mov	r5, r1
  40:	46a1      	mov	r9, r4
  42:	4684      	mov	ip, r0
  44:	f8cd a014 	str.w	sl, [sp, #20]
  48:	f85c 1b04 	ldr.w	r1, [ip], #4
  4c:	ba49      	rev16	r1, r1
  4e:	b2c8      	uxtb	r0, r1
  50:	f3c1 2207 	ubfx	r2, r1, #8, #8
  54:	f3c1 4a07 	ubfx	sl, r1, #16, #8
  58:	f857 0020 	ldr.w	r0, [r7, r0, lsl #2]
  5c:	f857 2022 	ldr.w	r2, [r7, r2, lsl #2]
  60:	0e09      	lsrs	r1, r1, #24
  62:	eb00 2096 	add.w	r0, r0, r6, lsr #10
  66:	f857 602a 	ldr.w	r6, [r7, sl, lsl #2]
  6a:	f857 1021 	ldr.w	r1, [r7, r1, lsl #2]
  6e:	eb02 2290 	add.w	r2, r2, r0, lsr #10
  72:	eb06 2a92 	add.w	sl, r6, r2, lsr #10
  76:	eb01 269a 	add.w	r6, r1, sl, lsr #10
  7a:	f3c2 0209 	ubfx	r2, r2, #0, #10
  7e:	f3c6 0109 	ubfx	r1, r6, #0, #10
  82:	f3c0 0009 	ubfx	r0, r0, #0, #10
  86:	f3ca 0a09 	ubfx	sl, sl, #0, #10
  8a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
  8e:	ea41 4a0a 	orr.w	sl, r1, sl, lsl #16
  92:	4a28      	ldr	r2, [pc, #160]	; (134 <D32_1CH_HTONS_VOL_HP+0x134>)
  94:	fb20 e202 	smlad	r2, r0, r2, lr
  98:	f44f 3180 	mov.w	r1, #65536	; 0x10000
  9c:	fb2a 2101 	smlad	r1, sl, r1, r2
  a0:	4a25      	ldr	r2, [pc, #148]	; (138 <D32_1CH_HTONS_VOL_HP+0x138>)
  a2:	fb20 3302 	smlad	r3, r0, r2, r3
  a6:	4a25      	ldr	r2, [pc, #148]	; (13c <D32_1CH_HTONS_VOL_HP+0x13c>)
  a8:	fb2a 3e02 	smlad	lr, sl, r2, r3
  ac:	2301      	movs	r3, #1
  ae:	fb20 f003 	smuad	r0, r0, r3
  b2:	4b23      	ldr	r3, [pc, #140]	; (140 <D32_1CH_HTONS_VOL_HP+0x140>)
  b4:	fb2a 0303 	smlad	r3, sl, r3, r0
  b8:	f5a1 4280 	sub.w	r2, r1, #16384	; 0x4000
  bc:	9c03      	ldr	r4, [sp, #12]
  be:	eb02 0009 	add.w	r0, r2, r9
  c2:	eba0 0008 	sub.w	r0, r0, r8
  c6:	ea4f 7be0 	mov.w	fp, r0, asr #31
  ca:	fba0 0104 	umull	r0, r1, r0, r4
  ce:	f110 4000 	adds.w	r0, r0, #2147483648	; 0x80000000
  d2:	fb04 110b 	mla	r1, r4, fp, r1
  d6:	f141 0100 	adc.w	r1, r1, #0
  da:	9c01      	ldr	r4, [sp, #4]
  dc:	0388      	lsls	r0, r1, #14
  de:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
  e2:	f04f 0900 	mov.w	r9, #0
  e6:	fbc0 8904 	smlal	r8, r9, r0, r4
  ea:	ea4f 00a9 	mov.w	r0, r9, asr #2
  ee:	ea4f 0941 	mov.w	r9, r1, lsl #1
  f2:	f300 000f 	ssat	r0, #16, r0
  f6:	9902      	ldr	r1, [sp, #8]
  f8:	f825 0b02 	strh.w	r0, [r5], #2
  fc:	428d      	cmp	r5, r1
  fe:	4690      	mov	r8, r2
 100:	d1a2      	bne.n	48 <D32_1CH_HTONS_VOL_HP+0x48>
 102:	f8dd a014 	ldr.w	sl, [sp, #20]
 106:	464c      	mov	r4, r9
 108:	f8ca 3008 	str.w	r3, [sl, #8]
 10c:	9b04      	ldr	r3, [sp, #16]
 10e:	f8ca e00c 	str.w	lr, [sl, #12]
 112:	2000      	movs	r0, #0
 114:	f8ca 601c 	str.w	r6, [sl, #28]
 118:	f8ca 4010 	str.w	r4, [sl, #16]
 11c:	f8ca 2014 	str.w	r2, [sl, #20]
 120:	f8ca 3018 	str.w	r3, [sl, #24]
 124:	b007      	add	sp, #28
 126:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 12a:	4642      	mov	r2, r8
 12c:	e7ec      	b.n	108 <D32_1CH_HTONS_VOL_HP+0x108>
 12e:	bf00      	nop
 130:	00000000 	.word	0x00000000
 134:	00060003 	.word	0x00060003
 138:	000a000c 	.word	0x000a000c
 13c:	000c000a 	.word	0x000c000a
 140:	00030006 	.word	0x00030006

Desensamblado de la sección .text.D48_1CH_HTONS_VOL_HP:

00000000 <D48_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	4613      	mov	r3, r2
   6:	461c      	mov	r4, r3
   8:	b087      	sub	sp, #28
   a:	4625      	mov	r5, r4
   c:	4626      	mov	r6, r4
   e:	6b2d      	ldr	r5, [r5, #48]	; 0x30
  10:	9205      	str	r2, [sp, #20]
  12:	8cd2      	ldrh	r2, [r2, #38]	; 0x26
  14:	f8d3 9014 	ldr.w	r9, [r3, #20]
  18:	9501      	str	r5, [sp, #4]
  1a:	4680      	mov	r8, r0
  1c:	6a35      	ldr	r5, [r6, #32]
  1e:	6918      	ldr	r0, [r3, #16]
  20:	699b      	ldr	r3, [r3, #24]
  22:	9304      	str	r3, [sp, #16]
  24:	f8d4 e01c 	ldr.w	lr, [r4, #28]
  28:	68a3      	ldr	r3, [r4, #8]
  2a:	9502      	str	r5, [sp, #8]
  2c:	68e4      	ldr	r4, [r4, #12]
  2e:	2a00      	cmp	r2, #0
  30:	f000 808c 	beq.w	14c <D48_1CH_HTONS_VOL_HP+0x14c>
  34:	eb01 0242 	add.w	r2, r1, r2, lsl #1
  38:	4d45      	ldr	r5, [pc, #276]	; (150 <D48_1CH_HTONS_VOL_HP+0x150>)
  3a:	9203      	str	r2, [sp, #12]
  3c:	468c      	mov	ip, r1
  3e:	e898 0044 	ldmia.w	r8, {r2, r6}
  42:	f108 0806 	add.w	r8, r8, #6
  46:	ba52      	rev16	r2, r2
  48:	ba76      	rev16	r6, r6
  4a:	b2d7      	uxtb	r7, r2
  4c:	f3c2 2107 	ubfx	r1, r2, #8, #8
  50:	f855 a027 	ldr.w	sl, [r5, r7, lsl #2]
  54:	f855 1021 	ldr.w	r1, [r5, r1, lsl #2]
  58:	f3c2 4707 	ubfx	r7, r2, #16, #8
  5c:	0e12      	lsrs	r2, r2, #24
  5e:	eb0a 2a9e 	add.w	sl, sl, lr, lsr #10
  62:	f855 7027 	ldr.w	r7, [r5, r7, lsl #2]
  66:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
  6a:	fa5f fb86 	uxtb.w	fp, r6
  6e:	eb01 219a 	add.w	r1, r1, sl, lsr #10
  72:	f3c6 2e07 	ubfx	lr, r6, #8, #8
  76:	eb07 2791 	add.w	r7, r7, r1, lsr #10
  7a:	f855 602b 	ldr.w	r6, [r5, fp, lsl #2]
  7e:	f855 e02e 	ldr.w	lr, [r5, lr, lsl #2]
  82:	eb02 2297 	add.w	r2, r2, r7, lsr #10
  86:	eb06 2692 	add.w	r6, r6, r2, lsr #10
  8a:	eb0e 2e96 	add.w	lr, lr, r6, lsr #10
  8e:	f3c1 0109 	ubfx	r1, r1, #0, #10
  92:	f3c2 0209 	ubfx	r2, r2, #0, #10
  96:	f3ce 0b09 	ubfx	fp, lr, #0, #10
  9a:	f3ca 0a09 	ubfx	sl, sl, #0, #10
  9e:	f3c7 0709 	ubfx	r7, r7, #0, #10
  a2:	f3c6 0609 	ubfx	r6, r6, #0, #10
  a6:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
  aa:	ea41 4a0a 	orr.w	sl, r1, sl, lsl #16
  ae:	ea4b 4606 	orr.w	r6, fp, r6, lsl #16
  b2:	4a28      	ldr	r2, [pc, #160]	; (154 <D48_1CH_HTONS_VOL_HP+0x154>)
  b4:	fb2a 4202 	smlad	r2, sl, r2, r4
  b8:	4927      	ldr	r1, [pc, #156]	; (158 <D48_1CH_HTONS_VOL_HP+0x158>)
  ba:	fb27 2201 	smlad	r2, r7, r1, r2
  be:	f44f 3180 	mov.w	r1, #65536	; 0x10000
  c2:	fb26 2201 	smlad	r2, r6, r1, r2
  c6:	4925      	ldr	r1, [pc, #148]	; (15c <D48_1CH_HTONS_VOL_HP+0x15c>)
  c8:	fb2a 3401 	smlad	r4, sl, r1, r3
  cc:	f04f 131b 	mov.w	r3, #1769499	; 0x1b001b
  d0:	fb27 4403 	smlad	r4, r7, r3, r4
  d4:	4b22      	ldr	r3, [pc, #136]	; (160 <D48_1CH_HTONS_VOL_HP+0x160>)
  d6:	fb26 4403 	smlad	r4, r6, r3, r4
  da:	2101      	movs	r1, #1
  dc:	fb2a fa01 	smuad	sl, sl, r1
  e0:	4b20      	ldr	r3, [pc, #128]	; (164 <D48_1CH_HTONS_VOL_HP+0x164>)
  e2:	fb27 a703 	smlad	r7, r7, r3, sl
  e6:	4b20      	ldr	r3, [pc, #128]	; (168 <D48_1CH_HTONS_VOL_HP+0x168>)
  e8:	fb26 7303 	smlad	r3, r6, r3, r7
  ec:	f5a2 4258 	sub.w	r2, r2, #55296	; 0xd800
  f0:	9e02      	ldr	r6, [sp, #8]
  f2:	9f01      	ldr	r7, [sp, #4]
  f4:	4410      	add	r0, r2
  f6:	eba0 0009 	sub.w	r0, r0, r9
  fa:	ea4f 7ae0 	mov.w	sl, r0, asr #31
  fe:	fba0 0106 	umull	r0, r1, r0, r6
 102:	f110 4000 	adds.w	r0, r0, #2147483648	; 0x80000000
 106:	fb06 110a 	mla	r1, r6, sl, r1
 10a:	f141 0100 	adc.w	r1, r1, #0
 10e:	0308      	lsls	r0, r1, #12
 110:	f04f 4900 	mov.w	r9, #2147483648	; 0x80000000
 114:	f04f 0a00 	mov.w	sl, #0
 118:	fbc0 9a07 	smlal	r9, sl, r0, r7
 11c:	4657      	mov	r7, sl
 11e:	10b8      	asrs	r0, r7, #2
 120:	f300 000f 	ssat	r0, #16, r0
 124:	f82c 0b02 	strh.w	r0, [ip], #2
 128:	0048      	lsls	r0, r1, #1
 12a:	9903      	ldr	r1, [sp, #12]
 12c:	458c      	cmp	ip, r1
 12e:	4691      	mov	r9, r2
 130:	d185      	bne.n	3e <D48_1CH_HTONS_VOL_HP+0x3e>
 132:	9d05      	ldr	r5, [sp, #20]
 134:	616a      	str	r2, [r5, #20]
 136:	9a04      	ldr	r2, [sp, #16]
 138:	6128      	str	r0, [r5, #16]
 13a:	2000      	movs	r0, #0
 13c:	60ab      	str	r3, [r5, #8]
 13e:	60ec      	str	r4, [r5, #12]
 140:	f8c5 e01c 	str.w	lr, [r5, #28]
 144:	61aa      	str	r2, [r5, #24]
 146:	b007      	add	sp, #28
 148:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 14c:	464a      	mov	r2, r9
 14e:	e7f0      	b.n	132 <D48_1CH_HTONS_VOL_HP+0x132>
 150:	00000000 	.word	0x00000000
 154:	000f000a 	.word	0x000f000a
 158:	00060003 	.word	0x00060003
 15c:	00150019 	.word	0x00150019
 160:	00190015 	.word	0x00190015
 164:	00030006 	.word	0x00030006
 168:	000a000f 	.word	0x000a000f

Desensamblado de la sección .text.D64_1CH_HTONS_VOL_HP:

00000000 <D64_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b089      	sub	sp, #36	; 0x24
   6:	4614      	mov	r4, r2
   8:	9207      	str	r2, [sp, #28]
   a:	8cd3      	ldrh	r3, [r2, #38]	; 0x26
   c:	f8d2 c010 	ldr.w	ip, [r2, #16]
  10:	f8d2 8014 	ldr.w	r8, [r2, #20]
  14:	6992      	ldr	r2, [r2, #24]
  16:	9206      	str	r2, [sp, #24]
  18:	68e2      	ldr	r2, [r4, #12]
  1a:	9201      	str	r2, [sp, #4]
  1c:	6b22      	ldr	r2, [r4, #48]	; 0x30
  1e:	9203      	str	r2, [sp, #12]
  20:	6a22      	ldr	r2, [r4, #32]
  22:	69e5      	ldr	r5, [r4, #28]
  24:	68a6      	ldr	r6, [r4, #8]
  26:	9204      	str	r2, [sp, #16]
  28:	2b00      	cmp	r3, #0
  2a:	f000 80b0 	beq.w	18e <D64_1CH_HTONS_VOL_HP+0x18e>
  2e:	eb01 0343 	add.w	r3, r1, r3, lsl #1
  32:	4f58      	ldr	r7, [pc, #352]	; (194 <D64_1CH_HTONS_VOL_HP+0x194>)
  34:	9305      	str	r3, [sp, #20]
  36:	9102      	str	r1, [sp, #8]
  38:	f850 2b08 	ldr.w	r2, [r0], #8
  3c:	f850 3c04 	ldr.w	r3, [r0, #-4]
  40:	ba52      	rev16	r2, r2
  42:	fa93 f993 	rev16.w	r9, r3
  46:	b2d4      	uxtb	r4, r2
  48:	f3c2 2307 	ubfx	r3, r2, #8, #8
  4c:	f857 b024 	ldr.w	fp, [r7, r4, lsl #2]
  50:	f857 3023 	ldr.w	r3, [r7, r3, lsl #2]
  54:	9901      	ldr	r1, [sp, #4]
  56:	f3c2 4407 	ubfx	r4, r2, #16, #8
  5a:	0e12      	lsrs	r2, r2, #24
  5c:	44ab      	add	fp, r5
  5e:	f857 5024 	ldr.w	r5, [r7, r4, lsl #2]
  62:	f857 4022 	ldr.w	r4, [r7, r2, lsl #2]
  66:	fa5f f289 	uxtb.w	r2, r9
  6a:	eb03 2e9b 	add.w	lr, r3, fp, lsr #10
  6e:	f3c9 2307 	ubfx	r3, r9, #8, #8
  72:	eb05 2a9e 	add.w	sl, r5, lr, lsr #10
  76:	f857 2022 	ldr.w	r2, [r7, r2, lsl #2]
  7a:	f857 3023 	ldr.w	r3, [r7, r3, lsl #2]
  7e:	f3c9 4507 	ubfx	r5, r9, #16, #8
  82:	eb04 249a 	add.w	r4, r4, sl, lsr #10
  86:	ea4f 6919 	mov.w	r9, r9, lsr #24
  8a:	eb02 2294 	add.w	r2, r2, r4, lsr #10
  8e:	f857 5025 	ldr.w	r5, [r7, r5, lsl #2]
  92:	f857 9029 	ldr.w	r9, [r7, r9, lsl #2]
  96:	eb03 2392 	add.w	r3, r3, r2, lsr #10
  9a:	eb05 2593 	add.w	r5, r5, r3, lsr #10
  9e:	eb09 2995 	add.w	r9, r9, r5, lsr #10
  a2:	f3ce 0e09 	ubfx	lr, lr, #0, #10
  a6:	f3cb 0b09 	ubfx	fp, fp, #0, #10
  aa:	f3ca 0a09 	ubfx	sl, sl, #0, #10
  ae:	f3c3 0309 	ubfx	r3, r3, #0, #10
  b2:	f3c5 0509 	ubfx	r5, r5, #0, #10
  b6:	ea4e 4b0b 	orr.w	fp, lr, fp, lsl #16
  ba:	f3c4 0409 	ubfx	r4, r4, #0, #10
  be:	f3c9 0e09 	ubfx	lr, r9, #0, #10
  c2:	f3c2 0209 	ubfx	r2, r2, #0, #10
  c6:	ea43 4202 	orr.w	r2, r3, r2, lsl #16
  ca:	ea4e 4e05 	orr.w	lr, lr, r5, lsl #16
  ce:	ea44 440a 	orr.w	r4, r4, sl, lsl #16
  d2:	ea4f 2599 	mov.w	r5, r9, lsr #10
  d6:	4b30      	ldr	r3, [pc, #192]	; (198 <D64_1CH_HTONS_VOL_HP+0x198>)
  d8:	fb2b 1303 	smlad	r3, fp, r3, r1
  dc:	492f      	ldr	r1, [pc, #188]	; (19c <D64_1CH_HTONS_VOL_HP+0x19c>)
  de:	fb24 3301 	smlad	r3, r4, r1, r3
  e2:	492f      	ldr	r1, [pc, #188]	; (1a0 <D64_1CH_HTONS_VOL_HP+0x1a0>)
  e4:	fb22 3301 	smlad	r3, r2, r1, r3
  e8:	f44f 3a80 	mov.w	sl, #65536	; 0x10000
  ec:	fb2e 390a 	smlad	r9, lr, sl, r3
  f0:	4b2c      	ldr	r3, [pc, #176]	; (1a4 <D64_1CH_HTONS_VOL_HP+0x1a4>)
  f2:	fb2b 6603 	smlad	r6, fp, r3, r6
  f6:	fb2e 6613 	smladx	r6, lr, r3, r6
  fa:	4b2b      	ldr	r3, [pc, #172]	; (1a8 <D64_1CH_HTONS_VOL_HP+0x1a8>)
  fc:	fb24 6603 	smlad	r6, r4, r3, r6
 100:	fb22 6313 	smladx	r3, r2, r3, r6
 104:	f04f 0a01 	mov.w	sl, #1
 108:	9301      	str	r3, [sp, #4]
 10a:	fb2b fb0a 	smuad	fp, fp, sl
 10e:	4b27      	ldr	r3, [pc, #156]	; (1ac <D64_1CH_HTONS_VOL_HP+0x1ac>)
 110:	fb24 ba03 	smlad	sl, r4, r3, fp
 114:	4b26      	ldr	r3, [pc, #152]	; (1b0 <D64_1CH_HTONS_VOL_HP+0x1b0>)
 116:	fb22 a203 	smlad	r2, r2, r3, sl
 11a:	4b26      	ldr	r3, [pc, #152]	; (1b4 <D64_1CH_HTONS_VOL_HP+0x1b4>)
 11c:	fb2e 2603 	smlad	r6, lr, r3, r2
 120:	f5a9 3a00 	sub.w	sl, r9, #131072	; 0x20000
 124:	eb0a 020c 	add.w	r2, sl, ip
 128:	9c04      	ldr	r4, [sp, #16]
 12a:	9903      	ldr	r1, [sp, #12]
 12c:	eba2 0208 	sub.w	r2, r2, r8
 130:	ea4f 79e2 	mov.w	r9, r2, asr #31
 134:	fba2 2304 	umull	r2, r3, r2, r4
 138:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
 13c:	fb04 3309 	mla	r3, r4, r9, r3
 140:	f143 0300 	adc.w	r3, r3, #0
 144:	02da      	lsls	r2, r3, #11
 146:	f04f 4800 	mov.w	r8, #2147483648	; 0x80000000
 14a:	f04f 0900 	mov.w	r9, #0
 14e:	fbc1 8902 	smlal	r8, r9, r1, r2
 152:	9902      	ldr	r1, [sp, #8]
 154:	ea4f 02a9 	mov.w	r2, r9, asr #2
 158:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 15c:	f302 020f 	ssat	r2, #16, r2
 160:	9b05      	ldr	r3, [sp, #20]
 162:	f821 2b02 	strh.w	r2, [r1], #2
 166:	4299      	cmp	r1, r3
 168:	9102      	str	r1, [sp, #8]
 16a:	46d0      	mov	r8, sl
 16c:	f47f af64 	bne.w	38 <D64_1CH_HTONS_VOL_HP+0x38>
 170:	9a07      	ldr	r2, [sp, #28]
 172:	9901      	ldr	r1, [sp, #4]
 174:	60d1      	str	r1, [r2, #12]
 176:	9906      	ldr	r1, [sp, #24]
 178:	6096      	str	r6, [r2, #8]
 17a:	2000      	movs	r0, #0
 17c:	61d5      	str	r5, [r2, #28]
 17e:	f8c2 c010 	str.w	ip, [r2, #16]
 182:	f8c2 a014 	str.w	sl, [r2, #20]
 186:	6191      	str	r1, [r2, #24]
 188:	b009      	add	sp, #36	; 0x24
 18a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 18e:	46c2      	mov	sl, r8
 190:	4622      	mov	r2, r4
 192:	e7ee      	b.n	172 <D64_1CH_HTONS_VOL_HP+0x172>
 194:	00000000 	.word	0x00000000
 198:	001c0015 	.word	0x001c0015
 19c:	000f000a 	.word	0x000f000a
 1a0:	00060003 	.word	0x00060003
 1a4:	0024002a 	.word	0x0024002a
 1a8:	002e0030 	.word	0x002e0030
 1ac:	00030006 	.word	0x00030006
 1b0:	000a000f 	.word	0x000a000f
 1b4:	0015001c 	.word	0x0015001c

Desensamblado de la sección .text.D80_1CH_HTONS_VOL_HP:

00000000 <D80_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	4613      	mov	r3, r2
   6:	b089      	sub	sp, #36	; 0x24
   8:	4686      	mov	lr, r0
   a:	6918      	ldr	r0, [r3, #16]
   c:	9000      	str	r0, [sp, #0]
   e:	4618      	mov	r0, r3
  10:	461c      	mov	r4, r3
  12:	695b      	ldr	r3, [r3, #20]
  14:	9302      	str	r3, [sp, #8]
  16:	6983      	ldr	r3, [r0, #24]
  18:	9306      	str	r3, [sp, #24]
  1a:	f8d0 c008 	ldr.w	ip, [r0, #8]
  1e:	69c3      	ldr	r3, [r0, #28]
  20:	68c0      	ldr	r0, [r0, #12]
  22:	9207      	str	r2, [sp, #28]
  24:	9001      	str	r0, [sp, #4]
  26:	8cd2      	ldrh	r2, [r2, #38]	; 0x26
  28:	6b20      	ldr	r0, [r4, #48]	; 0x30
  2a:	9003      	str	r0, [sp, #12]
  2c:	6a20      	ldr	r0, [r4, #32]
  2e:	9004      	str	r0, [sp, #16]
  30:	2a00      	cmp	r2, #0
  32:	f000 80d2 	beq.w	1da <D80_1CH_HTONS_VOL_HP+0x1da>
  36:	eb01 0242 	add.w	r2, r1, r2, lsl #1
  3a:	4869      	ldr	r0, [pc, #420]	; (1e0 <D80_1CH_HTONS_VOL_HP+0x1e0>)
  3c:	9205      	str	r2, [sp, #20]
  3e:	461c      	mov	r4, r3
  40:	f8de 5000 	ldr.w	r5, [lr]
  44:	f8de 2004 	ldr.w	r2, [lr, #4]
  48:	f8de 3008 	ldr.w	r3, [lr, #8]
  4c:	f10e 0e0a 	add.w	lr, lr, #10
  50:	ba6d      	rev16	r5, r5
  52:	ba52      	rev16	r2, r2
  54:	fa93 fb93 	rev16.w	fp, r3
  58:	b2ee      	uxtb	r6, r5
  5a:	f3c5 2307 	ubfx	r3, r5, #8, #8
  5e:	f850 7026 	ldr.w	r7, [r0, r6, lsl #2]
  62:	f850 3023 	ldr.w	r3, [r0, r3, lsl #2]
  66:	f3c5 4607 	ubfx	r6, r5, #16, #8
  6a:	eb04 0a07 	add.w	sl, r4, r7
  6e:	0e2d      	lsrs	r5, r5, #24
  70:	f850 4026 	ldr.w	r4, [r0, r6, lsl #2]
  74:	f850 6025 	ldr.w	r6, [r0, r5, lsl #2]
  78:	eb03 239a 	add.w	r3, r3, sl, lsr #10
  7c:	eb04 2993 	add.w	r9, r4, r3, lsr #10
  80:	b2d5      	uxtb	r5, r2
  82:	f3c2 2407 	ubfx	r4, r2, #8, #8
  86:	f850 7025 	ldr.w	r7, [r0, r5, lsl #2]
  8a:	f850 5024 	ldr.w	r5, [r0, r4, lsl #2]
  8e:	f3c2 4407 	ubfx	r4, r2, #16, #8
  92:	eb06 2699 	add.w	r6, r6, r9, lsr #10
  96:	0e12      	lsrs	r2, r2, #24
  98:	eb07 2896 	add.w	r8, r7, r6, lsr #10
  9c:	f850 7024 	ldr.w	r7, [r0, r4, lsl #2]
  a0:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
  a4:	fa5f f48b 	uxtb.w	r4, fp
  a8:	eb05 2598 	add.w	r5, r5, r8, lsr #10
  ac:	f3cb 2b07 	ubfx	fp, fp, #8, #8
  b0:	eb07 2795 	add.w	r7, r7, r5, lsr #10
  b4:	f850 4024 	ldr.w	r4, [r0, r4, lsl #2]
  b8:	f850 b02b 	ldr.w	fp, [r0, fp, lsl #2]
  bc:	eb02 2297 	add.w	r2, r2, r7, lsr #10
  c0:	eb04 2492 	add.w	r4, r4, r2, lsr #10
  c4:	eb0b 2b94 	add.w	fp, fp, r4, lsr #10
  c8:	f3c6 0609 	ubfx	r6, r6, #0, #10
  cc:	f3c9 0909 	ubfx	r9, r9, #0, #10
  d0:	f3ca 0a09 	ubfx	sl, sl, #0, #10
  d4:	f3c5 0509 	ubfx	r5, r5, #0, #10
  d8:	f3c7 0709 	ubfx	r7, r7, #0, #10
  dc:	f3c4 0409 	ubfx	r4, r4, #0, #10
  e0:	ea46 4909 	orr.w	r9, r6, r9, lsl #16
  e4:	f3c3 0309 	ubfx	r3, r3, #0, #10
  e8:	f3cb 0609 	ubfx	r6, fp, #0, #10
  ec:	f3c8 0809 	ubfx	r8, r8, #0, #10
  f0:	f3c2 0209 	ubfx	r2, r2, #0, #10
  f4:	ea45 4808 	orr.w	r8, r5, r8, lsl #16
  f8:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
  fc:	ea46 4604 	orr.w	r6, r6, r4, lsl #16
 100:	ea43 430a 	orr.w	r3, r3, sl, lsl #16
 104:	ea4f 249b 	mov.w	r4, fp, lsr #10
 108:	4d36      	ldr	r5, [pc, #216]	; (1e4 <D80_1CH_HTONS_VOL_HP+0x1e4>)
 10a:	9f01      	ldr	r7, [sp, #4]
 10c:	fb23 7505 	smlad	r5, r3, r5, r7
 110:	4f35      	ldr	r7, [pc, #212]	; (1e8 <D80_1CH_HTONS_VOL_HP+0x1e8>)
 112:	fb29 5507 	smlad	r5, r9, r7, r5
 116:	4f35      	ldr	r7, [pc, #212]	; (1ec <D80_1CH_HTONS_VOL_HP+0x1ec>)
 118:	fb28 5507 	smlad	r5, r8, r7, r5
 11c:	4f34      	ldr	r7, [pc, #208]	; (1f0 <D80_1CH_HTONS_VOL_HP+0x1f0>)
 11e:	fb22 5507 	smlad	r5, r2, r7, r5
 122:	f44f 3a80 	mov.w	sl, #65536	; 0x10000
 126:	fb26 5b0a 	smlad	fp, r6, sl, r5
 12a:	4d32      	ldr	r5, [pc, #200]	; (1f4 <D80_1CH_HTONS_VOL_HP+0x1f4>)
 12c:	fb23 cc05 	smlad	ip, r3, r5, ip
 130:	4d31      	ldr	r5, [pc, #196]	; (1f8 <D80_1CH_HTONS_VOL_HP+0x1f8>)
 132:	fb29 cc05 	smlad	ip, r9, r5, ip
 136:	f04f 154b 	mov.w	r5, #4915275	; 0x4b004b
 13a:	fb28 c505 	smlad	r5, r8, r5, ip
 13e:	4f2f      	ldr	r7, [pc, #188]	; (1fc <D80_1CH_HTONS_VOL_HP+0x1fc>)
 140:	fb22 5507 	smlad	r5, r2, r7, r5
 144:	4f2e      	ldr	r7, [pc, #184]	; (200 <D80_1CH_HTONS_VOL_HP+0x200>)
 146:	fb26 5507 	smlad	r5, r6, r7, r5
 14a:	f04f 0a01 	mov.w	sl, #1
 14e:	9501      	str	r5, [sp, #4]
 150:	fb23 fa0a 	smuad	sl, r3, sl
 154:	4b2b      	ldr	r3, [pc, #172]	; (204 <D80_1CH_HTONS_VOL_HP+0x204>)
 156:	fb29 a903 	smlad	r9, r9, r3, sl
 15a:	4d2b      	ldr	r5, [pc, #172]	; (208 <D80_1CH_HTONS_VOL_HP+0x208>)
 15c:	fb28 9805 	smlad	r8, r8, r5, r9
 160:	4d2a      	ldr	r5, [pc, #168]	; (20c <D80_1CH_HTONS_VOL_HP+0x20c>)
 162:	fb22 8205 	smlad	r2, r2, r5, r8
 166:	4b2a      	ldr	r3, [pc, #168]	; (210 <D80_1CH_HTONS_VOL_HP+0x210>)
 168:	fb26 2c03 	smlad	ip, r6, r3, r2
 16c:	9b00      	ldr	r3, [sp, #0]
 16e:	9d04      	ldr	r5, [sp, #16]
 170:	f5ab 3a7a 	sub.w	sl, fp, #256000	; 0x3e800
 174:	4453      	add	r3, sl
 176:	461a      	mov	r2, r3
 178:	9b02      	ldr	r3, [sp, #8]
 17a:	f8cd a008 	str.w	sl, [sp, #8]
 17e:	1ad2      	subs	r2, r2, r3
 180:	17d7      	asrs	r7, r2, #31
 182:	fba2 2305 	umull	r2, r3, r2, r5
 186:	fb05 3307 	mla	r3, r5, r7, r3
 18a:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
 18e:	f143 0300 	adc.w	r3, r3, #0
 192:	9d03      	ldr	r5, [sp, #12]
 194:	029a      	lsls	r2, r3, #10
 196:	f04f 4600 	mov.w	r6, #2147483648	; 0x80000000
 19a:	2700      	movs	r7, #0
 19c:	005b      	lsls	r3, r3, #1
 19e:	fbc5 6702 	smlal	r6, r7, r5, r2
 1a2:	10ba      	asrs	r2, r7, #2
 1a4:	9300      	str	r3, [sp, #0]
 1a6:	f302 020f 	ssat	r2, #16, r2
 1aa:	9b05      	ldr	r3, [sp, #20]
 1ac:	f821 2b02 	strh.w	r2, [r1], #2
 1b0:	4299      	cmp	r1, r3
 1b2:	f47f af45 	bne.w	40 <D80_1CH_HTONS_VOL_HP+0x40>
 1b6:	4623      	mov	r3, r4
 1b8:	9907      	ldr	r1, [sp, #28]
 1ba:	9801      	ldr	r0, [sp, #4]
 1bc:	60c8      	str	r0, [r1, #12]
 1be:	9a00      	ldr	r2, [sp, #0]
 1c0:	f8c1 c008 	str.w	ip, [r1, #8]
 1c4:	4608      	mov	r0, r1
 1c6:	61cb      	str	r3, [r1, #28]
 1c8:	610a      	str	r2, [r1, #16]
 1ca:	f8c1 a014 	str.w	sl, [r1, #20]
 1ce:	9906      	ldr	r1, [sp, #24]
 1d0:	6181      	str	r1, [r0, #24]
 1d2:	2000      	movs	r0, #0
 1d4:	b009      	add	sp, #36	; 0x24
 1d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 1da:	f8dd a008 	ldr.w	sl, [sp, #8]
 1de:	e7eb      	b.n	ffffffda <CSWTCH.318+0xffffffbe>
 1e0:	00000000 	.word	0x00000000
 1e4:	002d0024 	.word	0x002d0024
 1e8:	001c0015 	.word	0x001c0015
 1ec:	000f000a 	.word	0x000f000a
 1f0:	00060003 	.word	0x00060003
 1f4:	0037003f 	.word	0x0037003f
 1f8:	00450049 	.word	0x00450049
 1fc:	00490045 	.word	0x00490045
 200:	003f0037 	.word	0x003f0037
 204:	00030006 	.word	0x00030006
 208:	000a000f 	.word	0x000a000f
 20c:	0015001c 	.word	0x0015001c
 210:	0024002d 	.word	0x0024002d

Desensamblado de la sección .text.D128_1CH_HTONS_VOL_HP:

00000000 <D128_1CH_HTONS_VOL_HP>:
   0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	b093      	sub	sp, #76	; 0x4c
   6:	4614      	mov	r4, r2
   8:	9211      	str	r2, [sp, #68]	; 0x44
   a:	8cd3      	ldrh	r3, [r2, #38]	; 0x26
   c:	6912      	ldr	r2, [r2, #16]
   e:	9203      	str	r2, [sp, #12]
  10:	4622      	mov	r2, r4
  12:	4615      	mov	r5, r2
  14:	6964      	ldr	r4, [r4, #20]
  16:	9406      	str	r4, [sp, #24]
  18:	4614      	mov	r4, r2
  1a:	6992      	ldr	r2, [r2, #24]
  1c:	9210      	str	r2, [sp, #64]	; 0x40
  1e:	68ea      	ldr	r2, [r5, #12]
  20:	9204      	str	r2, [sp, #16]
  22:	6b2a      	ldr	r2, [r5, #48]	; 0x30
  24:	69e6      	ldr	r6, [r4, #28]
  26:	920d      	str	r2, [sp, #52]	; 0x34
  28:	68a4      	ldr	r4, [r4, #8]
  2a:	6a2a      	ldr	r2, [r5, #32]
  2c:	9405      	str	r4, [sp, #20]
  2e:	920e      	str	r2, [sp, #56]	; 0x38
  30:	2b00      	cmp	r3, #0
  32:	f000 8145 	beq.w	2c0 <D128_1CH_HTONS_VOL_HP+0x2c0>
  36:	eb01 0343 	add.w	r3, r1, r3, lsl #1
  3a:	930f      	str	r3, [sp, #60]	; 0x3c
  3c:	f8df 82dc 	ldr.w	r8, [pc, #732]	; 31c <D128_1CH_HTONS_VOL_HP+0x31c>
  40:	9107      	str	r1, [sp, #28]
  42:	f100 0310 	add.w	r3, r0, #16
  46:	4699      	mov	r9, r3
  48:	f1a9 0110 	sub.w	r1, r9, #16
  4c:	c90e      	ldmia	r1, {r1, r2, r3}
  4e:	f859 0c04 	ldr.w	r0, [r9, #-4]
  52:	ba49      	rev16	r1, r1
  54:	ba52      	rev16	r2, r2
  56:	ba5b      	rev16	r3, r3
  58:	fa90 fa90 	rev16.w	sl, r0
  5c:	f3c1 2007 	ubfx	r0, r1, #8, #8
  60:	b2cc      	uxtb	r4, r1
  62:	f858 5020 	ldr.w	r5, [r8, r0, lsl #2]
  66:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
  6a:	f3c1 4007 	ubfx	r0, r1, #16, #8
  6e:	0e09      	lsrs	r1, r1, #24
  70:	4426      	add	r6, r4
  72:	f858 4020 	ldr.w	r4, [r8, r0, lsl #2]
  76:	f858 7021 	ldr.w	r7, [r8, r1, lsl #2]
  7a:	b2d0      	uxtb	r0, r2
  7c:	eb05 2596 	add.w	r5, r5, r6, lsr #10
  80:	eb04 2b95 	add.w	fp, r4, r5, lsr #10
  84:	f3c2 2107 	ubfx	r1, r2, #8, #8
  88:	f858 4020 	ldr.w	r4, [r8, r0, lsl #2]
  8c:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
  90:	eb07 279b 	add.w	r7, r7, fp, lsr #10
  94:	f3c2 4007 	ubfx	r0, r2, #16, #8
  98:	0e12      	lsrs	r2, r2, #24
  9a:	eb04 2497 	add.w	r4, r4, r7, lsr #10
  9e:	9701      	str	r7, [sp, #4]
  a0:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
  a4:	4627      	mov	r7, r4
  a6:	f858 4022 	ldr.w	r4, [r8, r2, lsl #2]
  aa:	9702      	str	r7, [sp, #8]
  ac:	b2da      	uxtb	r2, r3
  ae:	eb01 2197 	add.w	r1, r1, r7, lsr #10
  b2:	eb00 2c91 	add.w	ip, r0, r1, lsr #10
  b6:	f858 0022 	ldr.w	r0, [r8, r2, lsl #2]
  ba:	eb04 249c 	add.w	r4, r4, ip, lsr #10
  be:	eb00 2e94 	add.w	lr, r0, r4, lsr #10
  c2:	f3c3 2207 	ubfx	r2, r3, #8, #8
  c6:	f3c3 4007 	ubfx	r0, r3, #16, #8
  ca:	0e1b      	lsrs	r3, r3, #24
  cc:	f858 7020 	ldr.w	r7, [r8, r0, lsl #2]
  d0:	f858 2022 	ldr.w	r2, [r8, r2, lsl #2]
  d4:	f858 0023 	ldr.w	r0, [r8, r3, lsl #2]
  d8:	fa5f f38a 	uxtb.w	r3, sl
  dc:	f3c6 0609 	ubfx	r6, r6, #0, #10
  e0:	960a      	str	r6, [sp, #40]	; 0x28
  e2:	eb02 229e 	add.w	r2, r2, lr, lsr #10
  e6:	f858 6023 	ldr.w	r6, [r8, r3, lsl #2]
  ea:	f3c5 0509 	ubfx	r5, r5, #0, #10
  ee:	f3ca 2307 	ubfx	r3, sl, #8, #8
  f2:	950b      	str	r5, [sp, #44]	; 0x2c
  f4:	eb07 2792 	add.w	r7, r7, r2, lsr #10
  f8:	f3ca 4507 	ubfx	r5, sl, #16, #8
  fc:	eb00 2097 	add.w	r0, r0, r7, lsr #10
 100:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 104:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 108:	ea4f 6a1a 	mov.w	sl, sl, lsr #24
 10c:	eb06 2690 	add.w	r6, r6, r0, lsr #10
 110:	eb03 2396 	add.w	r3, r3, r6, lsr #10
 114:	f858 a02a 	ldr.w	sl, [r8, sl, lsl #2]
 118:	9308      	str	r3, [sp, #32]
 11a:	eb05 2593 	add.w	r5, r5, r3, lsr #10
 11e:	9b01      	ldr	r3, [sp, #4]
 120:	eb0a 2a95 	add.w	sl, sl, r5, lsr #10
 124:	f8cd a024 	str.w	sl, [sp, #36]	; 0x24
 128:	f3c3 0a09 	ubfx	sl, r3, #0, #10
 12c:	9b02      	ldr	r3, [sp, #8]
 12e:	f3c3 0309 	ubfx	r3, r3, #0, #10
 132:	9302      	str	r3, [sp, #8]
 134:	9b08      	ldr	r3, [sp, #32]
 136:	f3c3 0309 	ubfx	r3, r3, #0, #10
 13a:	9308      	str	r3, [sp, #32]
 13c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 13e:	f3c5 0509 	ubfx	r5, r5, #0, #10
 142:	950c      	str	r5, [sp, #48]	; 0x30
 144:	461d      	mov	r5, r3
 146:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 148:	f3ce 0e09 	ubfx	lr, lr, #0, #10
 14c:	f3c2 0209 	ubfx	r2, r2, #0, #10
 150:	ea45 4303 	orr.w	r3, r5, r3, lsl #16
 154:	ea42 420e 	orr.w	r2, r2, lr, lsl #16
 158:	9301      	str	r3, [sp, #4]
 15a:	9b02      	ldr	r3, [sp, #8]
 15c:	9202      	str	r2, [sp, #8]
 15e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 160:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 162:	f3c7 0709 	ubfx	r7, r7, #0, #10
 166:	f3c0 0009 	ubfx	r0, r0, #0, #10
 16a:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 16e:	f3c1 0109 	ubfx	r1, r1, #0, #10
 172:	f3c2 0709 	ubfx	r7, r2, #0, #10
 176:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 17a:	ea47 4505 	orr.w	r5, r7, r5, lsl #16
 17e:	9b08      	ldr	r3, [sp, #32]
 180:	9f01      	ldr	r7, [sp, #4]
 182:	f3cb 0b09 	ubfx	fp, fp, #0, #10
 186:	f3cc 0c09 	ubfx	ip, ip, #0, #10
 18a:	f3c6 0609 	ubfx	r6, r6, #0, #10
 18e:	f3c4 0409 	ubfx	r4, r4, #0, #10
 192:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 196:	46be      	mov	lr, r7
 198:	0a96      	lsrs	r6, r2, #10
 19a:	ea4a 4a0b 	orr.w	sl, sl, fp, lsl #16
 19e:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
 1a2:	4f49      	ldr	r7, [pc, #292]	; (2c8 <D128_1CH_HTONS_VOL_HP+0x2c8>)
 1a4:	9a04      	ldr	r2, [sp, #16]
 1a6:	fb2e 2e07 	smlad	lr, lr, r7, r2
 1aa:	4a48      	ldr	r2, [pc, #288]	; (2cc <D128_1CH_HTONS_VOL_HP+0x2cc>)
 1ac:	fb2a ee02 	smlad	lr, sl, r2, lr
 1b0:	4a47      	ldr	r2, [pc, #284]	; (2d0 <D128_1CH_HTONS_VOL_HP+0x2d0>)
 1b2:	fb21 ee02 	smlad	lr, r1, r2, lr
 1b6:	4a47      	ldr	r2, [pc, #284]	; (2d4 <D128_1CH_HTONS_VOL_HP+0x2d4>)
 1b8:	fb24 ee02 	smlad	lr, r4, r2, lr
 1bc:	4a46      	ldr	r2, [pc, #280]	; (2d8 <D128_1CH_HTONS_VOL_HP+0x2d8>)
 1be:	9f02      	ldr	r7, [sp, #8]
 1c0:	fb27 ee02 	smlad	lr, r7, r2, lr
 1c4:	4a45      	ldr	r2, [pc, #276]	; (2dc <D128_1CH_HTONS_VOL_HP+0x2dc>)
 1c6:	fb20 ee02 	smlad	lr, r0, r2, lr
 1ca:	4a45      	ldr	r2, [pc, #276]	; (2e0 <D128_1CH_HTONS_VOL_HP+0x2e0>)
 1cc:	fb23 e702 	smlad	r7, r3, r2, lr
 1d0:	f44f 3e80 	mov.w	lr, #65536	; 0x10000
 1d4:	fb25 7e0e 	smlad	lr, r5, lr, r7
 1d8:	9f01      	ldr	r7, [sp, #4]
 1da:	4a42      	ldr	r2, [pc, #264]	; (2e4 <D128_1CH_HTONS_VOL_HP+0x2e4>)
 1dc:	46bc      	mov	ip, r7
 1de:	9f05      	ldr	r7, [sp, #20]
 1e0:	fb2c 7c02 	smlad	ip, ip, r2, r7
 1e4:	4a40      	ldr	r2, [pc, #256]	; (2e8 <D128_1CH_HTONS_VOL_HP+0x2e8>)
 1e6:	fb2a cc02 	smlad	ip, sl, r2, ip
 1ea:	4f40      	ldr	r7, [pc, #256]	; (2ec <D128_1CH_HTONS_VOL_HP+0x2ec>)
 1ec:	fb21 cc07 	smlad	ip, r1, r7, ip
 1f0:	4f3f      	ldr	r7, [pc, #252]	; (2f0 <D128_1CH_HTONS_VOL_HP+0x2f0>)
 1f2:	fb24 cc07 	smlad	ip, r4, r7, ip
 1f6:	4f3f      	ldr	r7, [pc, #252]	; (2f4 <D128_1CH_HTONS_VOL_HP+0x2f4>)
 1f8:	9a02      	ldr	r2, [sp, #8]
 1fa:	fb22 cc07 	smlad	ip, r2, r7, ip
 1fe:	4f3e      	ldr	r7, [pc, #248]	; (2f8 <D128_1CH_HTONS_VOL_HP+0x2f8>)
 200:	fb20 cc07 	smlad	ip, r0, r7, ip
 204:	4f3d      	ldr	r7, [pc, #244]	; (2fc <D128_1CH_HTONS_VOL_HP+0x2fc>)
 206:	fb23 c707 	smlad	r7, r3, r7, ip
 20a:	f8df c114 	ldr.w	ip, [pc, #276]	; 320 <D128_1CH_HTONS_VOL_HP+0x320>
 20e:	fb25 720c 	smlad	r2, r5, ip, r7
 212:	f04f 0b01 	mov.w	fp, #1
 216:	9204      	str	r2, [sp, #16]
 218:	9f01      	ldr	r7, [sp, #4]
 21a:	fb27 fb0b 	smuad	fp, r7, fp
 21e:	4f38      	ldr	r7, [pc, #224]	; (300 <D128_1CH_HTONS_VOL_HP+0x300>)
 220:	fb2a ba07 	smlad	sl, sl, r7, fp
 224:	4f37      	ldr	r7, [pc, #220]	; (304 <D128_1CH_HTONS_VOL_HP+0x304>)
 226:	fb21 aa07 	smlad	sl, r1, r7, sl
 22a:	4f37      	ldr	r7, [pc, #220]	; (308 <D128_1CH_HTONS_VOL_HP+0x308>)
 22c:	fb24 aa07 	smlad	sl, r4, r7, sl
 230:	4f36      	ldr	r7, [pc, #216]	; (30c <D128_1CH_HTONS_VOL_HP+0x30c>)
 232:	9a02      	ldr	r2, [sp, #8]
 234:	fb22 a707 	smlad	r7, r2, r7, sl
 238:	4a35      	ldr	r2, [pc, #212]	; (310 <D128_1CH_HTONS_VOL_HP+0x310>)
 23a:	fb20 7702 	smlad	r7, r0, r2, r7
 23e:	4a35      	ldr	r2, [pc, #212]	; (314 <D128_1CH_HTONS_VOL_HP+0x314>)
 240:	fb23 7702 	smlad	r7, r3, r2, r7
 244:	4b34      	ldr	r3, [pc, #208]	; (318 <D128_1CH_HTONS_VOL_HP+0x318>)
 246:	fb25 7303 	smlad	r3, r5, r3, r7
 24a:	9305      	str	r3, [sp, #20]
 24c:	9b03      	ldr	r3, [sp, #12]
 24e:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 250:	f5ae 1e80 	sub.w	lr, lr, #1048576	; 0x100000
 254:	4473      	add	r3, lr
 256:	461a      	mov	r2, r3
 258:	9b06      	ldr	r3, [sp, #24]
 25a:	f8cd e018 	str.w	lr, [sp, #24]
 25e:	1ad2      	subs	r2, r2, r3
 260:	17d1      	asrs	r1, r2, #31
 262:	fba2 2304 	umull	r2, r3, r2, r4
 266:	fb04 3301 	mla	r3, r4, r1, r3
 26a:	f112 4200 	adds.w	r2, r2, #2147483648	; 0x80000000
 26e:	f143 0300 	adc.w	r3, r3, #0
 272:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 274:	021a      	lsls	r2, r3, #8
 276:	f04f 4000 	mov.w	r0, #2147483648	; 0x80000000
 27a:	2100      	movs	r1, #0
 27c:	fbc4 0102 	smlal	r0, r1, r4, r2
 280:	108a      	asrs	r2, r1, #2
 282:	9907      	ldr	r1, [sp, #28]
 284:	f302 020f 	ssat	r2, #16, r2
 288:	005b      	lsls	r3, r3, #1
 28a:	f821 2b02 	strh.w	r2, [r1], #2
 28e:	9303      	str	r3, [sp, #12]
 290:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 292:	9107      	str	r1, [sp, #28]
 294:	4299      	cmp	r1, r3
 296:	f109 0910 	add.w	r9, r9, #16
 29a:	f47f aed5 	bne.w	48 <D128_1CH_HTONS_VOL_HP+0x48>
 29e:	9a11      	ldr	r2, [sp, #68]	; 0x44
 2a0:	9905      	ldr	r1, [sp, #20]
 2a2:	6091      	str	r1, [r2, #8]
 2a4:	9904      	ldr	r1, [sp, #16]
 2a6:	60d1      	str	r1, [r2, #12]
 2a8:	4613      	mov	r3, r2
 2aa:	61d6      	str	r6, [r2, #28]
 2ac:	9910      	ldr	r1, [sp, #64]	; 0x40
 2ae:	9a03      	ldr	r2, [sp, #12]
 2b0:	611a      	str	r2, [r3, #16]
 2b2:	2000      	movs	r0, #0
 2b4:	f8c3 e014 	str.w	lr, [r3, #20]
 2b8:	6199      	str	r1, [r3, #24]
 2ba:	b013      	add	sp, #76	; 0x4c
 2bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 2c0:	f8dd e018 	ldr.w	lr, [sp, #24]
 2c4:	e7eb      	b.n	29e <D128_1CH_HTONS_VOL_HP+0x29e>
 2c6:	bf00      	nop
 2c8:	00780069 	.word	0x00780069
 2cc:	005b004e 	.word	0x005b004e
 2d0:	00420037 	.word	0x00420037
 2d4:	002d0024 	.word	0x002d0024
 2d8:	001c0015 	.word	0x001c0015
 2dc:	000f000a 	.word	0x000f000a
 2e0:	00060003 	.word	0x00060003
 2e4:	00880096 	.word	0x00880096
 2e8:	00a200ac 	.word	0x00a200ac
 2ec:	00b400ba 	.word	0x00b400ba
 2f0:	00be00c0 	.word	0x00be00c0
 2f4:	00c000be 	.word	0x00c000be
 2f8:	00ba00b4 	.word	0x00ba00b4
 2fc:	00ac00a2 	.word	0x00ac00a2
 300:	00030006 	.word	0x00030006
 304:	000a000f 	.word	0x000a000f
 308:	0015001c 	.word	0x0015001c
 30c:	0024002d 	.word	0x0024002d
 310:	00370042 	.word	0x00370042
 314:	004e005b 	.word	0x004e005b
 318:	00690078 	.word	0x00690078
 31c:	00000000 	.word	0x00000000
 320:	00960088 	.word	0x00960088

Desensamblado de la sección .text.PDM_Filter_Init:

00000000 <PDM_Filter_Init>:
   0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   2:	2240      	movs	r2, #64	; 0x40
   4:	2100      	movs	r1, #0
   6:	4604      	mov	r4, r0
   8:	300c      	adds	r0, #12
   a:	f7ff fffe 	bl	0 <memset>
   e:	4a49      	ldr	r2, [pc, #292]	; (134 <PDM_Filter_Init+0x134>)
  10:	4949      	ldr	r1, [pc, #292]	; (138 <PDM_Filter_Init+0x138>)
  12:	6813      	ldr	r3, [r2, #0]
  14:	f023 0301 	bic.w	r3, r3, #1
  18:	6013      	str	r3, [r2, #0]
  1a:	680b      	ldr	r3, [r1, #0]
  1c:	b933      	cbnz	r3, 2c <PDM_Filter_Init+0x2c>
  1e:	4b47      	ldr	r3, [pc, #284]	; (13c <PDM_Filter_Init+0x13c>)
  20:	681b      	ldr	r3, [r3, #0]
  22:	f3c3 030b 	ubfx	r3, r3, #0, #12
  26:	f5b3 6f8a 	cmp.w	r3, #1104	; 0x450
  2a:	d039      	beq.n	a0 <PDM_Filter_Init+0xa0>
  2c:	4a44      	ldr	r2, [pc, #272]	; (140 <PDM_Filter_Init+0x140>)
  2e:	2301      	movs	r3, #1
  30:	6013      	str	r3, [r2, #0]
  32:	6813      	ldr	r3, [r2, #0]
  34:	2b00      	cmp	r3, #0
  36:	d1fc      	bne.n	32 <PDM_Filter_Init+0x32>
  38:	4b42      	ldr	r3, [pc, #264]	; (144 <PDM_Filter_Init+0x144>)
  3a:	4a43      	ldr	r2, [pc, #268]	; (148 <PDM_Filter_Init+0x148>)
  3c:	601a      	str	r2, [r3, #0]
  3e:	681a      	ldr	r2, [r3, #0]
  40:	4b42      	ldr	r3, [pc, #264]	; (14c <PDM_Filter_Init+0x14c>)
  42:	429a      	cmp	r2, r3
  44:	d034      	beq.n	b0 <PDM_Filter_Init+0xb0>
  46:	2300      	movs	r3, #0
  48:	8820      	ldrh	r0, [r4, #0]
  4a:	8961      	ldrh	r1, [r4, #10]
  4c:	8922      	ldrh	r2, [r4, #8]
  4e:	6463      	str	r3, [r4, #68]	; 0x44
  50:	2801      	cmp	r0, #1
  52:	f04f 0300 	mov.w	r3, #0
  56:	61a3      	str	r3, [r4, #24]
  58:	6123      	str	r3, [r4, #16]
  5a:	6163      	str	r3, [r4, #20]
  5c:	60e3      	str	r3, [r4, #12]
  5e:	6263      	str	r3, [r4, #36]	; 0x24
  60:	61e3      	str	r3, [r4, #28]
  62:	6223      	str	r3, [r4, #32]
  64:	6423      	str	r3, [r4, #64]	; 0x40
  66:	86a1      	strh	r1, [r4, #52]	; 0x34
  68:	86e2      	strh	r2, [r4, #54]	; 0x36
  6a:	d926      	bls.n	ba <PDM_Filter_Init+0xba>
  6c:	2003      	movs	r0, #3
  6e:	2302      	movs	r3, #2
  70:	8862      	ldrh	r2, [r4, #2]
  72:	2a01      	cmp	r2, #1
  74:	d91e      	bls.n	b4 <PDM_Filter_Init+0xb4>
  76:	2140      	movs	r1, #64	; 0x40
  78:	2300      	movs	r3, #0
  7a:	6b62      	ldr	r2, [r4, #52]	; 0x34
  7c:	f1b2 1f01 	cmp.w	r2, #65537	; 0x10001
  80:	6862      	ldr	r2, [r4, #4]
  82:	bf04      	itt	eq
  84:	6421      	streq	r1, [r4, #64]	; 0x40
  86:	460b      	moveq	r3, r1
  88:	b11a      	cbz	r2, 92 <PDM_Filter_Init+0x92>
  8a:	f043 0310 	orr.w	r3, r3, #16
  8e:	6423      	str	r3, [r4, #64]	; 0x40
  90:	62e2      	str	r2, [r4, #44]	; 0x2c
  92:	2200      	movs	r2, #0
  94:	8722      	strh	r2, [r4, #56]	; 0x38
  96:	b910      	cbnz	r0, 9e <PDM_Filter_Init+0x9e>
  98:	3380      	adds	r3, #128	; 0x80
  9a:	6423      	str	r3, [r4, #64]	; 0x40
  9c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  9e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
  a0:	4a2b      	ldr	r2, [pc, #172]	; (150 <PDM_Filter_Init+0x150>)
  a2:	2301      	movs	r3, #1
  a4:	6013      	str	r3, [r2, #0]
  a6:	6813      	ldr	r3, [r2, #0]
  a8:	2b00      	cmp	r3, #0
  aa:	d1fc      	bne.n	a6 <PDM_Filter_Init+0xa6>
  ac:	4b29      	ldr	r3, [pc, #164]	; (154 <PDM_Filter_Init+0x154>)
  ae:	e7c4      	b.n	3a <PDM_Filter_Init+0x3a>
  b0:	4b26      	ldr	r3, [pc, #152]	; (14c <PDM_Filter_Init+0x14c>)
  b2:	e7c9      	b.n	48 <PDM_Filter_Init+0x48>
  b4:	d008      	beq.n	c8 <PDM_Filter_Init+0xc8>
  b6:	4618      	mov	r0, r3
  b8:	e7dd      	b.n	76 <PDM_Filter_Init+0x76>
  ba:	4d27      	ldr	r5, [pc, #156]	; (158 <PDM_Filter_Init+0x158>)
  bc:	782a      	ldrb	r2, [r5, #0]
  be:	d009      	beq.n	d4 <PDM_Filter_Init+0xd4>
  c0:	2a01      	cmp	r2, #1
  c2:	d020      	beq.n	106 <PDM_Filter_Init+0x106>
  c4:	2001      	movs	r0, #1
  c6:	e7d3      	b.n	70 <PDM_Filter_Init+0x70>
  c8:	2220      	movs	r2, #32
  ca:	4618      	mov	r0, r3
  cc:	6422      	str	r2, [r4, #64]	; 0x40
  ce:	4613      	mov	r3, r2
  d0:	2160      	movs	r1, #96	; 0x60
  d2:	e7d2      	b.n	7a <PDM_Filter_Init+0x7a>
  d4:	2a00      	cmp	r2, #0
  d6:	d1cb      	bne.n	70 <PDM_Filter_Init+0x70>
  d8:	4920      	ldr	r1, [pc, #128]	; (15c <PDM_Filter_Init+0x15c>)
  da:	f8df e088 	ldr.w	lr, [pc, #136]	; 164 <PDM_Filter_Init+0x164>
  de:	4f20      	ldr	r7, [pc, #128]	; (160 <PDM_Filter_Init+0x160>)
  e0:	f501 6680 	add.w	r6, r1, #1024	; 0x400
  e4:	684a      	ldr	r2, [r1, #4]
  e6:	ea0e 5302 	and.w	r3, lr, r2, lsl #20
  ea:	ea02 0007 	and.w	r0, r2, r7
  ee:	4303      	orrs	r3, r0
  f0:	f3c2 5209 	ubfx	r2, r2, #20, #10
  f4:	4413      	add	r3, r2
  f6:	f841 3f04 	str.w	r3, [r1, #4]!
  fa:	428e      	cmp	r6, r1
  fc:	d1f2      	bne.n	e4 <PDM_Filter_Init+0xe4>
  fe:	2001      	movs	r0, #1
 100:	7028      	strb	r0, [r5, #0]
 102:	2300      	movs	r3, #0
 104:	e7b4      	b.n	70 <PDM_Filter_Init+0x70>
 106:	4915      	ldr	r1, [pc, #84]	; (15c <PDM_Filter_Init+0x15c>)
 108:	f8df e058 	ldr.w	lr, [pc, #88]	; 164 <PDM_Filter_Init+0x164>
 10c:	4f14      	ldr	r7, [pc, #80]	; (160 <PDM_Filter_Init+0x160>)
 10e:	f501 6680 	add.w	r6, r1, #1024	; 0x400
 112:	684a      	ldr	r2, [r1, #4]
 114:	ea0e 5302 	and.w	r3, lr, r2, lsl #20
 118:	ea02 0007 	and.w	r0, r2, r7
 11c:	4303      	orrs	r3, r0
 11e:	f3c2 5209 	ubfx	r2, r2, #20, #10
 122:	4413      	add	r3, r2
 124:	f841 3f04 	str.w	r3, [r1, #4]!
 128:	428e      	cmp	r6, r1
 12a:	d1f2      	bne.n	112 <PDM_Filter_Init+0x112>
 12c:	2300      	movs	r3, #0
 12e:	702b      	strb	r3, [r5, #0]
 130:	2001      	movs	r0, #1
 132:	e79d      	b.n	70 <PDM_Filter_Init+0x70>
 134:	e0002000 	.word	0xe0002000
 138:	e0042000 	.word	0xe0042000
 13c:	5c001000 	.word	0x5c001000
 140:	40023008 	.word	0x40023008
 144:	40023000 	.word	0x40023000
 148:	f407a5c2 	.word	0xf407a5c2
 14c:	b5e8b5cd 	.word	0xb5e8b5cd
 150:	58024c08 	.word	0x58024c08
 154:	58024c00 	.word	0x58024c00
 158:	00000000 	.word	0x00000000
 15c:	fffffffc 	.word	0xfffffffc
 160:	000ffc00 	.word	0x000ffc00
 164:	3ff00000 	.word	0x3ff00000

Desensamblado de la sección .text.PDM_Filter_setConfig:

00000000 <PDM_Filter_setConfig>:
   0:	b570      	push	{r4, r5, r6, lr}
   2:	880a      	ldrh	r2, [r1, #0]
   4:	6c03      	ldr	r3, [r0, #64]	; 0x40
   6:	4604      	mov	r4, r0
   8:	460e      	mov	r6, r1
   a:	1e51      	subs	r1, r2, #1
   c:	f423 7080 	bic.w	r0, r3, #256	; 0x100
  10:	2906      	cmp	r1, #6
  12:	ed2d 8b04 	vpush	{d8-d9}
  16:	6420      	str	r0, [r4, #64]	; 0x40
  18:	d91c      	bls.n	54 <PDM_Filter_setConfig+0x54>
  1a:	2508      	movs	r5, #8
  1c:	f9b4 1038 	ldrsh.w	r1, [r4, #56]	; 0x38
  20:	f9b6 3004 	ldrsh.w	r3, [r6, #4]
  24:	4299      	cmp	r1, r3
  26:	f000 80a7 	beq.w	178 <PDM_Filter_setConfig+0x178>
  2a:	f113 0f0c 	cmn.w	r3, #12
  2e:	db2b      	blt.n	88 <PDM_Filter_setConfig+0x88>
  30:	2b33      	cmp	r3, #51	; 0x33
  32:	dd3a      	ble.n	aa <PDM_Filter_setConfig+0xaa>
  34:	2333      	movs	r3, #51	; 0x33
  36:	3540      	adds	r5, #64	; 0x40
  38:	80b3      	strh	r3, [r6, #4]
  3a:	8622      	strh	r2, [r4, #48]	; 0x30
  3c:	8873      	ldrh	r3, [r6, #2]
  3e:	8663      	strh	r3, [r4, #50]	; 0x32
  40:	b925      	cbnz	r5, 4c <PDM_Filter_setConfig+0x4c>
  42:	6c23      	ldr	r3, [r4, #64]	; 0x40
  44:	f443 7380 	orr.w	r3, r3, #256	; 0x100
  48:	6423      	str	r3, [r4, #64]	; 0x40
  4a:	2500      	movs	r5, #0
  4c:	ecbd 8b04 	vpop	{d8-d9}
  50:	4628      	mov	r0, r5
  52:	bd70      	pop	{r4, r5, r6, pc}
  54:	8e21      	ldrh	r1, [r4, #48]	; 0x30
  56:	4291      	cmp	r1, r2
  58:	d01b      	beq.n	92 <PDM_Filter_setConfig+0x92>
  5a:	f423 7387 	bic.w	r3, r3, #270	; 0x10e
  5e:	f023 0301 	bic.w	r3, r3, #1
  62:	4313      	orrs	r3, r2
  64:	f003 0170 	and.w	r1, r3, #112	; 0x70
  68:	6423      	str	r3, [r4, #64]	; 0x40
  6a:	2970      	cmp	r1, #112	; 0x70
  6c:	f003 030f 	and.w	r3, r3, #15
  70:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
  74:	d053      	beq.n	11e <PDM_Filter_setConfig+0x11e>
  76:	2b06      	cmp	r3, #6
  78:	f200 8098 	bhi.w	1ac <PDM_Filter_setConfig+0x1ac>
  7c:	e8df f003 	tbb	[pc, r3]
  80:	70737679 	.word	0x70737679
  84:	6a6d      	.short	0x6a6d
  86:	5f          	.byte	0x5f
  87:	00          	.byte	0x00
  88:	f64f 73f4 	movw	r3, #65524	; 0xfff4
  8c:	3540      	adds	r5, #64	; 0x40
  8e:	80b3      	strh	r3, [r6, #4]
  90:	e7d3      	b.n	3a <PDM_Filter_setConfig+0x3a>
  92:	f9b6 3004 	ldrsh.w	r3, [r6, #4]
  96:	f9b4 1038 	ldrsh.w	r1, [r4, #56]	; 0x38
  9a:	4299      	cmp	r1, r3
  9c:	d04c      	beq.n	138 <PDM_Filter_setConfig+0x138>
  9e:	f113 0f0c 	cmn.w	r3, #12
  a2:	f04f 0500 	mov.w	r5, #0
  a6:	dac3      	bge.n	30 <PDM_Filter_setConfig+0x30>
  a8:	e7ee      	b.n	88 <PDM_Filter_setConfig+0x88>
  aa:	6c22      	ldr	r2, [r4, #64]	; 0x40
  ac:	f002 020f 	and.w	r2, r2, #15
  b0:	3a01      	subs	r2, #1
  b2:	2a06      	cmp	r2, #6
  b4:	d83b      	bhi.n	12e <PDM_Filter_setConfig+0x12e>
  b6:	493e      	ldr	r1, [pc, #248]	; (1b0 <PDM_Filter_setConfig+0x1b0>)
  b8:	eb01 0282 	add.w	r2, r1, r2, lsl #2
  bc:	ed92 9a00 	vldr	s18, [r2]
  c0:	ed92 8a07 	vldr	s16, [r2, #28]
  c4:	483b      	ldr	r0, [pc, #236]	; (1b4 <PDM_Filter_setConfig+0x1b4>)
  c6:	ee07 3a90 	vmov	s15, r3
  ca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
  ce:	eeb3 7a04 	vmov.f32	s14, #52	; 0x41a00000  20.0
  d2:	eec7 6a87 	vdiv.f32	s13, s15, s14
  d6:	ee16 1a90 	vmov	r1, s13
  da:	f7ff fffe 	bl	0 <powf>
  de:	eddf 7a36 	vldr	s15, [pc, #216]	; 1b8 <PDM_Filter_setConfig+0x1b8>
  e2:	ee77 7ac9 	vsub.f32	s15, s15, s18
  e6:	ee08 0a90 	vmov	s17, r0
  ea:	ee17 1a90 	vmov	r1, s15
  ee:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
  f2:	f7ff fffe 	bl	0 <powf>
  f6:	ee28 8a28 	vmul.f32	s16, s16, s17
  fa:	ee07 0a90 	vmov	s15, r0
  fe:	ee68 7a27 	vmul.f32	s15, s16, s15
 102:	ee17 0a90 	vmov	r0, s15
 106:	f7ff fffe 	bl	0 <roundf>
 10a:	ee07 0a90 	vmov	s15, r0
 10e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 112:	88b3      	ldrh	r3, [r6, #4]
 114:	8832      	ldrh	r2, [r6, #0]
 116:	edc4 7a0f 	vstr	s15, [r4, #60]	; 0x3c
 11a:	8723      	strh	r3, [r4, #56]	; 0x38
 11c:	e78d      	b.n	3a <PDM_Filter_setConfig+0x3a>
 11e:	2b06      	cmp	r3, #6
 120:	d844      	bhi.n	1ac <PDM_Filter_setConfig+0x1ac>
 122:	e8df f003 	tbb	[pc, r3]
 126:	3d40      	.short	0x3d40
 128:	3134373a 	.word	0x3134373a
 12c:	2e          	.byte	0x2e
 12d:	00          	.byte	0x00
 12e:	ed9f 8a23 	vldr	s16, [pc, #140]	; 1bc <PDM_Filter_setConfig+0x1bc>
 132:	eeb0 9a48 	vmov.f32	s18, s16
 136:	e7c5      	b.n	c4 <PDM_Filter_setConfig+0xc4>
 138:	8873      	ldrh	r3, [r6, #2]
 13a:	8663      	strh	r3, [r4, #50]	; 0x32
 13c:	e781      	b.n	42 <PDM_Filter_setConfig+0x42>
 13e:	4b20      	ldr	r3, [pc, #128]	; (1c0 <PDM_Filter_setConfig+0x1c0>)
 140:	64a3      	str	r3, [r4, #72]	; 0x48
 142:	f9b6 3004 	ldrsh.w	r3, [r6, #4]
 146:	f113 0f0c 	cmn.w	r3, #12
 14a:	f04f 0500 	mov.w	r5, #0
 14e:	f6bf af6f 	bge.w	30 <PDM_Filter_setConfig+0x30>
 152:	e799      	b.n	88 <PDM_Filter_setConfig+0x88>
 154:	4b1b      	ldr	r3, [pc, #108]	; (1c4 <PDM_Filter_setConfig+0x1c4>)
 156:	64a3      	str	r3, [r4, #72]	; 0x48
 158:	e7f3      	b.n	142 <PDM_Filter_setConfig+0x142>
 15a:	4b1b      	ldr	r3, [pc, #108]	; (1c8 <PDM_Filter_setConfig+0x1c8>)
 15c:	64a3      	str	r3, [r4, #72]	; 0x48
 15e:	e7f0      	b.n	142 <PDM_Filter_setConfig+0x142>
 160:	4b1a      	ldr	r3, [pc, #104]	; (1cc <PDM_Filter_setConfig+0x1cc>)
 162:	64a3      	str	r3, [r4, #72]	; 0x48
 164:	e7ed      	b.n	142 <PDM_Filter_setConfig+0x142>
 166:	4b1a      	ldr	r3, [pc, #104]	; (1d0 <PDM_Filter_setConfig+0x1d0>)
 168:	64a3      	str	r3, [r4, #72]	; 0x48
 16a:	e7ea      	b.n	142 <PDM_Filter_setConfig+0x142>
 16c:	4b19      	ldr	r3, [pc, #100]	; (1d4 <PDM_Filter_setConfig+0x1d4>)
 16e:	64a3      	str	r3, [r4, #72]	; 0x48
 170:	e7e7      	b.n	142 <PDM_Filter_setConfig+0x142>
 172:	4b19      	ldr	r3, [pc, #100]	; (1d8 <PDM_Filter_setConfig+0x1d8>)
 174:	64a3      	str	r3, [r4, #72]	; 0x48
 176:	e7e4      	b.n	142 <PDM_Filter_setConfig+0x142>
 178:	8e21      	ldrh	r1, [r4, #48]	; 0x30
 17a:	4291      	cmp	r1, r2
 17c:	f47f af55 	bne.w	2a <PDM_Filter_setConfig+0x2a>
 180:	e75c      	b.n	3c <PDM_Filter_setConfig+0x3c>
 182:	4b16      	ldr	r3, [pc, #88]	; (1dc <PDM_Filter_setConfig+0x1dc>)
 184:	64a3      	str	r3, [r4, #72]	; 0x48
 186:	e7dc      	b.n	142 <PDM_Filter_setConfig+0x142>
 188:	4b15      	ldr	r3, [pc, #84]	; (1e0 <PDM_Filter_setConfig+0x1e0>)
 18a:	64a3      	str	r3, [r4, #72]	; 0x48
 18c:	e7d9      	b.n	142 <PDM_Filter_setConfig+0x142>
 18e:	4b15      	ldr	r3, [pc, #84]	; (1e4 <PDM_Filter_setConfig+0x1e4>)
 190:	64a3      	str	r3, [r4, #72]	; 0x48
 192:	e7d6      	b.n	142 <PDM_Filter_setConfig+0x142>
 194:	4b14      	ldr	r3, [pc, #80]	; (1e8 <PDM_Filter_setConfig+0x1e8>)
 196:	64a3      	str	r3, [r4, #72]	; 0x48
 198:	e7d3      	b.n	142 <PDM_Filter_setConfig+0x142>
 19a:	4b14      	ldr	r3, [pc, #80]	; (1ec <PDM_Filter_setConfig+0x1ec>)
 19c:	64a3      	str	r3, [r4, #72]	; 0x48
 19e:	e7d0      	b.n	142 <PDM_Filter_setConfig+0x142>
 1a0:	4b13      	ldr	r3, [pc, #76]	; (1f0 <PDM_Filter_setConfig+0x1f0>)
 1a2:	64a3      	str	r3, [r4, #72]	; 0x48
 1a4:	e7cd      	b.n	142 <PDM_Filter_setConfig+0x142>
 1a6:	4b13      	ldr	r3, [pc, #76]	; (1f4 <PDM_Filter_setConfig+0x1f4>)
 1a8:	64a3      	str	r3, [r4, #72]	; 0x48
 1aa:	e7ca      	b.n	142 <PDM_Filter_setConfig+0x142>
 1ac:	2500      	movs	r5, #0
 1ae:	e735      	b.n	1c <PDM_Filter_setConfig+0x1c>
 1b0:	00000000 	.word	0x00000000
 1b4:	41200000 	.word	0x41200000
 1b8:	42000000 	.word	0x42000000
	...

Desensamblado de la sección .text.PDM_Filter_getConfig:

00000000 <PDM_Filter_getConfig>:
   0:	6b03      	ldr	r3, [r0, #48]	; 0x30
   2:	600b      	str	r3, [r1, #0]
   4:	8f03      	ldrh	r3, [r0, #56]	; 0x38
   6:	808b      	strh	r3, [r1, #4]
   8:	2000      	movs	r0, #0
   a:	4770      	bx	lr

Desensamblado de la sección .text.PDM_Filter:

00000000 <PDM_Filter>:
   0:	6c13      	ldr	r3, [r2, #64]	; 0x40
   2:	f413 7f80 	tst.w	r3, #256	; 0x100
   6:	d105      	bne.n	14 <PDM_Filter+0x14>
   8:	f013 0f80 	tst.w	r3, #128	; 0x80
   c:	bf14      	ite	ne
   e:	2020      	movne	r0, #32
  10:	2030      	moveq	r0, #48	; 0x30
  12:	4770      	bx	lr
  14:	6c93      	ldr	r3, [r2, #72]	; 0x48
  16:	320c      	adds	r2, #12
  18:	4718      	bx	r3
  1a:	bf00      	nop
