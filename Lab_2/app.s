
app.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	e59f0008 	ldr	r0, [pc, #8]	; 18 <main+0x18>
   c:	ebfffffe 	bl	0 <Uart_Send_String>
  10:	e1a00000 	nop			; (mov r0, r0)
  14:	e8bd8800 	pop	{fp, pc}
  18:	00000000 	andeq	r0, r0, r0

Disassembly of section .data:

00000000 <string_buffer>:
   0:	7261656c 	rsbvc	r6, r1, #108, 10	; 0x1b000000
   4:	6e69206e 	cdpvs	0, 6, cr2, cr9, cr14, {3}
   8:	70656420 	rsbvc	r6, r5, r0, lsr #8
   c:	203a6874 	eorscs	r6, sl, r4, ror r8
  10:	7373453c 	cmnvc	r3, #60, 10	; 0xf000000
  14:	203e6d61 	eorscs	r6, lr, r1, ror #26
	...

Disassembly of section .rodata:

00000000 <x>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000080 	andeq	r0, r0, r0, lsl #1
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000001b 	andeq	r0, r0, fp, lsl r0
  10:	0000bb0c 	andeq	fp, r0, ip, lsl #22
  14:	00007800 	andeq	r7, r0, r0, lsl #16
  18:	00000000 	andeq	r0, r0, r0
  1c:	00001c00 	andeq	r1, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	00780200 	rsbseq	r0, r8, r0, lsl #4
  28:	3c0b0701 	stccc	7, cr0, [fp], {1}
  2c:	05000000 	streq	r0, [r0, #-0]
  30:	00000003 	andeq	r0, r0, r3
  34:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
  38:	00746e69 	rsbseq	r6, r4, r9, ror #28
  3c:	00003504 	andeq	r3, r0, r4, lsl #10
  40:	00580500 	subseq	r0, r8, r0, lsl #10
  44:	00510000 	subseq	r0, r1, r0
  48:	51060000 	mrspl	r0, (UNDEF: 6)
  4c:	63000000 	movwvs	r0, #0
  50:	07040700 	streq	r0, [r4, -r0, lsl #14]
  54:	0000000e 	andeq	r0, r0, lr
  58:	00080107 	andeq	r0, r8, r7, lsl #2
  5c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
  60:	000000c1 	andeq	r0, r0, r1, asr #1
  64:	410f0801 	tstmi	pc, r1, lsl #16
  68:	05000000 	streq	r0, [r0, #-0]
  6c:	00000003 	andeq	r0, r0, r3
  70:	00cf0900 	sbceq	r0, pc, r0, lsl #18
  74:	0a010000 	beq	4007c <main+0x4007c>
  78:	00000006 	andeq	r0, r0, r6
  7c:	00001c00 	andeq	r1, r0, r0, lsl #24
  80:	009c0100 	addseq	r0, ip, r0, lsl #2

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	08030034 	stmdaeq	r3, {r2, r4, r5}
  18:	0b3b0b3a 	bleq	ec2d08 <main+0xec2d08>
  1c:	13490b39 	movtne	r0, #39737	; 0x9b39
  20:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
  24:	24030000 	strcs	r0, [r3], #-0
  28:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  2c:	0008030b 	andeq	r0, r8, fp, lsl #6
  30:	00260400 	eoreq	r0, r6, r0, lsl #8
  34:	00001349 	andeq	r1, r0, r9, asr #6
  38:	49010105 	stmdbmi	r1, {r0, r2, r8}
  3c:	00130113 	andseq	r0, r3, r3, lsl r1
  40:	00210600 	eoreq	r0, r1, r0, lsl #12
  44:	0b2f1349 	bleq	bc4d70 <main+0xbc4d70>
  48:	24070000 	strcs	r0, [r7], #-0
  4c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  50:	000e030b 	andeq	r0, lr, fp, lsl #6
  54:	00340800 	eorseq	r0, r4, r0, lsl #16
  58:	0b3a0e03 	bleq	e8386c <main+0xe8386c>
  5c:	0b390b3b 	bleq	e42d50 <main+0xe42d50>
  60:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
  64:	00001802 	andeq	r1, r0, r2, lsl #16
  68:	3f002e09 	svccc	0x00002e09
  6c:	3a0e0319 	bcc	380cd8 <main+0x380cd8>
  70:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  74:	1119270b 	tstne	r9, fp, lsl #14
  78:	40061201 	andmi	r1, r6, r1, lsl #4
  7c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
  80:	Address 0x00000080 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	0000001c 	andeq	r0, r0, ip, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000039 	andeq	r0, r0, r9, lsr r0
   4:	001c0003 	andseq	r0, ip, r3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	01050000 	mrseq	r0, (UNDEF: 5)
  28:	00020500 	andeq	r0, r2, r0, lsl #10
  2c:	03000000 	movweq	r0, #0
  30:	0205010a 	andeq	r0, r5, #-2147483646	; 0x80000002
  34:	4b01054b 	blmi	41568 <main+0x41568>
  38:	01000602 	tsteq	r0, r2, lsl #12
  3c:	Address 0x0000003c is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
   4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
   8:	61686320 	cmnvs	r8, r0, lsr #6
   c:	6e750072 	mrcvs	0, 3, r0, cr5, cr2, {3}
  10:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  14:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  18:	4700746e 	strmi	r7, [r0, -lr, ror #8]
  1c:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
  20:	31203731 			; <UNDEFINED> instruction: 0x31203731
  24:	2e322e30 	mrccs	14, 1, r2, cr2, cr0, {1}
  28:	30322031 	eorscc	r2, r2, r1, lsr r0
  2c:	31313032 	teqcc	r1, r2, lsr r0
  30:	28203330 	stmdacs	r0!, {r4, r5, r8, r9, ip, sp}
  34:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  38:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  3c:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  40:	613d7570 	teqvs	sp, r0, ror r5
  44:	32396d72 	eorscc	r6, r9, #7296	; 0x1c80
  48:	2d6a6536 	cfstr64cs	mvdx6, [sl, #-216]!	; 0xffffff28
  4c:	6d2d2073 	stcvs	0, cr2, [sp, #-460]!	; 0xfffffe34
  50:	616f6c66 	cmnvs	pc, r6, ror #24
  54:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
  58:	6f733d69 	svcvs	0x00733d69
  5c:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
  60:	6d72616d 	ldfvse	f6, [r2, #-436]!	; 0xfffffe4c
  64:	616d2d20 	cmnvs	sp, r0, lsr #26
  68:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
  6c:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
  70:	6a657435 	bvs	195d14c <main+0x195d14c>
  74:	00672d20 	rsbeq	r2, r7, r0, lsr #26
  78:	555c3a43 	ldrbpl	r3, [ip, #-2627]	; 0xfffff5bd
  7c:	73726573 	cmnvc	r2, #482344960	; 0x1cc00000
  80:	7474615c 	ldrbtvc	r6, [r4], #-348	; 0xfffffea4
  84:	73652d61 	cmnvc	r5, #6208	; 0x1840
  88:	7365445c 	cmnvc	r5, #92, 8	; 0x5c000000
  8c:	706f746b 	rsbvc	r7, pc, fp, ror #8
  90:	626d455c 	rsbvs	r4, sp, #92, 10	; 0x17000000
  94:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  98:	6d455c64 	stclvs	12, cr5, [r5, #-400]	; 0xfffffe70
  9c:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  a0:	475f6465 	ldrbmi	r6, [pc, -r5, ror #8]
  a4:	75687469 	strbvc	r7, [r8, #-1129]!	; 0xfffffb97
  a8:	6d455c62 	stclvs	12, cr5, [r5, #-392]	; 0xfffffe78
  ac:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  b0:	435f6465 	cmpmi	pc, #1694498816	; 0x65000000
  b4:	62614c5c 	rsbvs	r4, r1, #92, 24	; 0x5c00
  b8:	6100325f 	tstvs	r0, pc, asr r2
  bc:	632e7070 			; <UNDEFINED> instruction: 0x632e7070
  c0:	72747300 	rsbsvc	r7, r4, #0, 6
  c4:	5f676e69 	svcpl	0x00676e69
  c8:	66667562 	strbtvs	r7, [r6], -r2, ror #10
  cc:	6d007265 	sfmvs	f7, 4, [r0, #-404]	; 0xfffffe6c
  d0:	006e6961 	rsbeq	r6, lr, r1, ror #18

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
   c:	45206d72 	strmi	r6, [r0, #-3442]!	; 0xfffff28e
  10:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  14:	20646564 	rsbcs	r6, r4, r4, ror #10
  18:	6c6f6f54 	stclvs	15, cr6, [pc], #-336	; fffffed0 <main+0xfffffed0>
  1c:	69616863 	stmdbvs	r1!, {r0, r1, r5, r6, fp, sp, lr}^
  20:	3031206e 	eorscc	r2, r1, lr, rrx
  24:	3230322d 	eorscc	r3, r0, #-805306366	; 0xd0000002
  28:	34712d30 	ldrbtcc	r2, [r1], #-3376	; 0xfffff2d0
  2c:	6a616d2d 	bvs	185b4e8 <main+0x185b4e8>
  30:	2029726f 	eorcs	r7, r9, pc, ror #4
  34:	322e3031 	eorcc	r3, lr, #49	; 0x31
  38:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  3c:	31303230 	teqcc	r0, r0, lsr r2
  40:	20333031 	eorscs	r3, r3, r1, lsr r0
  44:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  48:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  4c:	Address 0x0000004c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  1c:	0000001c 	andeq	r0, r0, ip, lsl r0
  20:	8b080e42 	blhi	203930 <main+0x203930>
  24:	42018e02 	andmi	r8, r1, #2, 28
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002b41 	andeq	r2, r0, r1, asr #22
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000021 	andeq	r0, r0, r1, lsr #32
  10:	45543505 	ldrbmi	r3, [r4, #-1285]	; 0xfffffafb
  14:	0506004a 	streq	r0, [r6, #-74]	; 0xffffffb6
  18:	01090108 	tsteq	r9, r8, lsl #2
  1c:	01140412 	tsteq	r4, r2, lsl r4
  20:	03170115 	tsteq	r7, #1073741829	; 0x40000005
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	061e011a 			; <UNDEFINED> instruction: 0x061e011a
