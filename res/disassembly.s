
.pio/build/pro16MHzatmega328/firmware.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1
  76:	a0 e0       	ldi	r26, 0x00	; 0
  78:	b1 e0       	ldi	r27, 0x01	; 1
  7a:	e0 e2       	ldi	r30, 0x20	; 32
  7c:	f8 e0       	ldi	r31, 0x08	; 8
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a2 32       	cpi	r26, 0x22	; 34
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1
  8c:	a2 e2       	ldi	r26, 0x22	; 34
  8e:	b1 e0       	ldi	r27, 0x01	; 1
  90:	01 c0       	rjmp	.+2      	; 0x94 <.do_clear_bss_start>

00000092 <.do_clear_bss_loop>:
  92:	1d 92       	st	X+, r1

00000094 <.do_clear_bss_start>:
  94:	a6 33       	cpi	r26, 0x36	; 54
  96:	b2 07       	cpc	r27, r18
  98:	e1 f7       	brne	.-8      	; 0x92 <.do_clear_bss_loop>
  9a:	0e 94 98 00 	call	0x130	; 0x130 <main>
  9e:	0c 94 0e 04 	jmp	0x81c	; 0x81c <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <_Z5alterP6data_t>:
  a6:	fc 01       	movw	r30, r24
  a8:	80 81       	ld	r24, Z
  aa:	91 81       	ldd	r25, Z+1	; 0x01
  ac:	a2 81       	ldd	r26, Z+2	; 0x02
  ae:	b3 81       	ldd	r27, Z+3	; 0x03
  b0:	01 96       	adiw	r24, 0x01	; 1
  b2:	a1 1d       	adc	r26, r1
  b4:	b1 1d       	adc	r27, r1
  b6:	80 83       	st	Z, r24
  b8:	91 83       	std	Z+1, r25	; 0x01
  ba:	a2 83       	std	Z+2, r26	; 0x02
  bc:	b3 83       	std	Z+3, r27	; 0x03
  be:	84 81       	ldd	r24, Z+4	; 0x04
  c0:	95 81       	ldd	r25, Z+5	; 0x05
  c2:	a6 81       	ldd	r26, Z+6	; 0x06
  c4:	b7 81       	ldd	r27, Z+7	; 0x07
  c6:	01 97       	sbiw	r24, 0x01	; 1
  c8:	a1 09       	sbc	r26, r1
  ca:	b1 09       	sbc	r27, r1
  cc:	84 83       	std	Z+4, r24	; 0x04
  ce:	95 83       	std	Z+5, r25	; 0x05
  d0:	a6 83       	std	Z+6, r26	; 0x06
  d2:	b7 83       	std	Z+7, r27	; 0x07
  d4:	08 95       	ret

000000d6 <tpl>:
  d6:	cf 93       	push	r28
  d8:	c4 2f       	mov	r28, r20
  da:	0e 94 88 00 	call	0x110	; 0x110 <dbl>
  de:	8c 0f       	add	r24, r28
  e0:	cf 91       	pop	r28
  e2:	08 95       	ret

000000e4 <_Z8call_cb2PFvP6data_tEPv>:
  e4:	fc 01       	movw	r30, r24
  e6:	cb 01       	movw	r24, r22
  e8:	09 94       	ijmp

000000ea <_Z10USART_Initv>:
  ea:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__DATA_REGION_ORIGIN__+0x65>
  ee:	87 e6       	ldi	r24, 0x67	; 103
  f0:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__DATA_REGION_ORIGIN__+0x64>
  f4:	88 e1       	ldi	r24, 0x18	; 24
  f6:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
  fa:	86 e0       	ldi	r24, 0x06	; 6
  fc:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
 100:	08 95       	ret

00000102 <_Z14USART_Transmith>:
 102:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
 106:	95 ff       	sbrs	r25, 5
 108:	fc cf       	rjmp	.-8      	; 0x102 <_Z14USART_Transmith>
 10a:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__DATA_REGION_ORIGIN__+0x66>
 10e:	08 95       	ret

00000110 <dbl>:
 110:	86 0f       	add	r24, r22
 112:	08 95       	ret

00000114 <qtr>:
 114:	0e 94 6b 00 	call	0xd6	; 0xd6 <tpl>
 118:	82 0f       	add	r24, r18
 11a:	08 95       	ret

0000011c <call_cb>:
 11c:	ef 93       	push	r30
 11e:	ff 93       	push	r31
 120:	e8 2f       	mov	r30, r24
 122:	f9 2f       	mov	r31, r25
 124:	86 2f       	mov	r24, r22
 126:	97 2f       	mov	r25, r23
 128:	09 95       	icall
 12a:	ff 91       	pop	r31
 12c:	ef 91       	pop	r30
 12e:	08 95       	ret

00000130 <main>:
 130:	80 e2       	ldi	r24, 0x20	; 32
 132:	84 b9       	out	0x04, r24	; 4
 134:	22 e0       	ldi	r18, 0x02	; 2
 136:	42 e0       	ldi	r20, 0x02	; 2
 138:	62 e0       	ldi	r22, 0x02	; 2
 13a:	82 e0       	ldi	r24, 0x02	; 2
 13c:	0e 94 8a 00 	call	0x114	; 0x114 <qtr>
 140:	18 2f       	mov	r17, r24
 142:	60 e0       	ldi	r22, 0x00	; 0
 144:	71 e0       	ldi	r23, 0x01	; 1
 146:	83 e5       	ldi	r24, 0x53	; 83
 148:	90 e0       	ldi	r25, 0x00	; 0
 14a:	0e 94 8e 00 	call	0x11c	; 0x11c <call_cb>
 14e:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__DATA_REGION_ORIGIN__+0x65>
 152:	87 e6       	ldi	r24, 0x67	; 103
 154:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__DATA_REGION_ORIGIN__+0x64>
 158:	88 e1       	ldi	r24, 0x18	; 24
 15a:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
 15e:	86 e0       	ldi	r24, 0x06	; 6
 160:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__DATA_REGION_ORIGIN__+0x62>
 164:	1f 92       	push	r1
 166:	1f 93       	push	r17
 168:	88 e0       	ldi	r24, 0x08	; 8
 16a:	91 e0       	ldi	r25, 0x01	; 1
 16c:	9f 93       	push	r25
 16e:	8f 93       	push	r24
 170:	c2 e2       	ldi	r28, 0x22	; 34
 172:	d1 e0       	ldi	r29, 0x01	; 1
 174:	df 93       	push	r29
 176:	cf 93       	push	r28
 178:	0e 94 24 01 	call	0x248	; 0x248 <sprintf>
 17c:	0f 90       	pop	r0
 17e:	0f 90       	pop	r0
 180:	0f 90       	pop	r0
 182:	0f 90       	pop	r0
 184:	0f 90       	pop	r0
 186:	0f 90       	pop	r0
 188:	20 e0       	ldi	r18, 0x00	; 0
 18a:	42 e2       	ldi	r20, 0x22	; 34
 18c:	51 e0       	ldi	r21, 0x01	; 1
 18e:	fe 01       	movw	r30, r28
 190:	01 90       	ld	r0, Z+
 192:	00 20       	and	r0, r0
 194:	e9 f7       	brne	.-6      	; 0x190 <main+0x60>
 196:	31 97       	sbiw	r30, 0x01	; 1
 198:	e2 52       	subi	r30, 0x22	; 34
 19a:	f1 40       	sbci	r31, 0x01	; 1
 19c:	82 2f       	mov	r24, r18
 19e:	90 e0       	ldi	r25, 0x00	; 0
 1a0:	8e 17       	cp	r24, r30
 1a2:	9f 07       	cpc	r25, r31
 1a4:	60 f4       	brcc	.+24     	; 0x1be <main+0x8e>
 1a6:	fc 01       	movw	r30, r24
 1a8:	ee 5d       	subi	r30, 0xDE	; 222
 1aa:	fe 4f       	sbci	r31, 0xFE	; 254
 1ac:	90 81       	ld	r25, Z
 1ae:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
 1b2:	85 ff       	sbrs	r24, 5
 1b4:	fc cf       	rjmp	.-8      	; 0x1ae <main+0x7e>
 1b6:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__DATA_REGION_ORIGIN__+0x66>
 1ba:	2f 5f       	subi	r18, 0xFF	; 255
 1bc:	e6 cf       	rjmp	.-52     	; 0x18a <main+0x5a>
 1be:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <__data_start+0x4>
 1c2:	1f 92       	push	r1
 1c4:	8f 93       	push	r24
 1c6:	80 91 00 01 	lds	r24, 0x0100	; 0x800100 <__data_start>
 1ca:	1f 92       	push	r1
 1cc:	8f 93       	push	r24
 1ce:	84 e1       	ldi	r24, 0x14	; 20
 1d0:	91 e0       	ldi	r25, 0x01	; 1
 1d2:	9f 93       	push	r25
 1d4:	8f 93       	push	r24
 1d6:	5f 93       	push	r21
 1d8:	4f 93       	push	r20
 1da:	0e 94 24 01 	call	0x248	; 0x248 <sprintf>
 1de:	8d b7       	in	r24, 0x3d	; 61
 1e0:	9e b7       	in	r25, 0x3e	; 62
 1e2:	08 96       	adiw	r24, 0x08	; 8
 1e4:	0f b6       	in	r0, 0x3f	; 63
 1e6:	f8 94       	cli
 1e8:	9e bf       	out	0x3e, r25	; 62
 1ea:	0f be       	out	0x3f, r0	; 63
 1ec:	8d bf       	out	0x3d, r24	; 61
 1ee:	20 e0       	ldi	r18, 0x00	; 0
 1f0:	fe 01       	movw	r30, r28
 1f2:	01 90       	ld	r0, Z+
 1f4:	00 20       	and	r0, r0
 1f6:	e9 f7       	brne	.-6      	; 0x1f2 <main+0xc2>
 1f8:	31 97       	sbiw	r30, 0x01	; 1
 1fa:	e2 52       	subi	r30, 0x22	; 34
 1fc:	f1 40       	sbci	r31, 0x01	; 1
 1fe:	82 2f       	mov	r24, r18
 200:	90 e0       	ldi	r25, 0x00	; 0
 202:	8e 17       	cp	r24, r30
 204:	9f 07       	cpc	r25, r31
 206:	60 f4       	brcc	.+24     	; 0x220 <main+0xf0>
 208:	fc 01       	movw	r30, r24
 20a:	ee 5d       	subi	r30, 0xDE	; 222
 20c:	fe 4f       	sbci	r31, 0xFE	; 254
 20e:	90 81       	ld	r25, Z
 210:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__DATA_REGION_ORIGIN__+0x60>
 214:	85 ff       	sbrs	r24, 5
 216:	fc cf       	rjmp	.-8      	; 0x210 <main+0xe0>
 218:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__DATA_REGION_ORIGIN__+0x66>
 21c:	2f 5f       	subi	r18, 0xFF	; 255
 21e:	e8 cf       	rjmp	.-48     	; 0x1f0 <main+0xc0>
 220:	11 23       	and	r17, r17
 222:	89 f0       	breq	.+34     	; 0x246 <main+0x116>
 224:	80 e0       	ldi	r24, 0x00	; 0
 226:	20 e2       	ldi	r18, 0x20	; 32
 228:	9f ef       	ldi	r25, 0xFF	; 255
 22a:	39 e6       	ldi	r19, 0x69	; 105
 22c:	48 e1       	ldi	r20, 0x18	; 24
 22e:	91 50       	subi	r25, 0x01	; 1
 230:	30 40       	sbci	r19, 0x00	; 0
 232:	40 40       	sbci	r20, 0x00	; 0
 234:	e1 f7       	brne	.-8      	; 0x22e <main+0xfe>
 236:	00 c0       	rjmp	.+0      	; 0x238 <main+0x108>
 238:	00 00       	nop
 23a:	95 b1       	in	r25, 0x05	; 5
 23c:	92 27       	eor	r25, r18
 23e:	95 b9       	out	0x05, r25	; 5
 240:	8f 5f       	subi	r24, 0xFF	; 255
 242:	18 13       	cpse	r17, r24
 244:	f1 cf       	rjmp	.-30     	; 0x228 <main+0xf8>
 246:	ff cf       	rjmp	.-2      	; 0x246 <main+0x116>

00000248 <sprintf>:
 248:	ae e0       	ldi	r26, 0x0E	; 14
 24a:	b0 e0       	ldi	r27, 0x00	; 0
 24c:	ea e2       	ldi	r30, 0x2A	; 42
 24e:	f1 e0       	ldi	r31, 0x01	; 1
 250:	0c 94 e5 03 	jmp	0x7ca	; 0x7ca <__prologue_saves__+0x1c>
 254:	0d 89       	ldd	r16, Y+21	; 0x15
 256:	1e 89       	ldd	r17, Y+22	; 0x16
 258:	86 e0       	ldi	r24, 0x06	; 6
 25a:	8c 83       	std	Y+4, r24	; 0x04
 25c:	1a 83       	std	Y+2, r17	; 0x02
 25e:	09 83       	std	Y+1, r16	; 0x01
 260:	8f ef       	ldi	r24, 0xFF	; 255
 262:	9f e7       	ldi	r25, 0x7F	; 127
 264:	9e 83       	std	Y+6, r25	; 0x06
 266:	8d 83       	std	Y+5, r24	; 0x05
 268:	ae 01       	movw	r20, r28
 26a:	47 5e       	subi	r20, 0xE7	; 231
 26c:	5f 4f       	sbci	r21, 0xFF	; 255
 26e:	6f 89       	ldd	r22, Y+23	; 0x17
 270:	78 8d       	ldd	r23, Y+24	; 0x18
 272:	ce 01       	movw	r24, r28
 274:	01 96       	adiw	r24, 0x01	; 1
 276:	0e 94 46 01 	call	0x28c	; 0x28c <vfprintf>
 27a:	ef 81       	ldd	r30, Y+7	; 0x07
 27c:	f8 85       	ldd	r31, Y+8	; 0x08
 27e:	e0 0f       	add	r30, r16
 280:	f1 1f       	adc	r31, r17
 282:	10 82       	st	Z, r1
 284:	2e 96       	adiw	r28, 0x0e	; 14
 286:	e4 e0       	ldi	r30, 0x04	; 4
 288:	0c 94 01 04 	jmp	0x802	; 0x802 <__epilogue_restores__+0x1c>

0000028c <vfprintf>:
 28c:	ab e0       	ldi	r26, 0x0B	; 11
 28e:	b0 e0       	ldi	r27, 0x00	; 0
 290:	ec e4       	ldi	r30, 0x4C	; 76
 292:	f1 e0       	ldi	r31, 0x01	; 1
 294:	0c 94 d7 03 	jmp	0x7ae	; 0x7ae <__prologue_saves__>
 298:	6c 01       	movw	r12, r24
 29a:	7b 01       	movw	r14, r22
 29c:	8a 01       	movw	r16, r20
 29e:	fc 01       	movw	r30, r24
 2a0:	17 82       	std	Z+7, r1	; 0x07
 2a2:	16 82       	std	Z+6, r1	; 0x06
 2a4:	83 81       	ldd	r24, Z+3	; 0x03
 2a6:	81 ff       	sbrs	r24, 1
 2a8:	cc c1       	rjmp	.+920    	; 0x642 <__LOCK_REGION_LENGTH__+0x242>
 2aa:	ce 01       	movw	r24, r28
 2ac:	01 96       	adiw	r24, 0x01	; 1
 2ae:	3c 01       	movw	r6, r24
 2b0:	f6 01       	movw	r30, r12
 2b2:	93 81       	ldd	r25, Z+3	; 0x03
 2b4:	f7 01       	movw	r30, r14
 2b6:	93 fd       	sbrc	r25, 3
 2b8:	85 91       	lpm	r24, Z+
 2ba:	93 ff       	sbrs	r25, 3
 2bc:	81 91       	ld	r24, Z+
 2be:	7f 01       	movw	r14, r30
 2c0:	88 23       	and	r24, r24
 2c2:	09 f4       	brne	.+2      	; 0x2c6 <vfprintf+0x3a>
 2c4:	ba c1       	rjmp	.+884    	; 0x63a <__LOCK_REGION_LENGTH__+0x23a>
 2c6:	85 32       	cpi	r24, 0x25	; 37
 2c8:	39 f4       	brne	.+14     	; 0x2d8 <vfprintf+0x4c>
 2ca:	93 fd       	sbrc	r25, 3
 2cc:	85 91       	lpm	r24, Z+
 2ce:	93 ff       	sbrs	r25, 3
 2d0:	81 91       	ld	r24, Z+
 2d2:	7f 01       	movw	r14, r30
 2d4:	85 32       	cpi	r24, 0x25	; 37
 2d6:	29 f4       	brne	.+10     	; 0x2e2 <vfprintf+0x56>
 2d8:	b6 01       	movw	r22, r12
 2da:	90 e0       	ldi	r25, 0x00	; 0
 2dc:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 2e0:	e7 cf       	rjmp	.-50     	; 0x2b0 <vfprintf+0x24>
 2e2:	91 2c       	mov	r9, r1
 2e4:	21 2c       	mov	r2, r1
 2e6:	31 2c       	mov	r3, r1
 2e8:	ff e1       	ldi	r31, 0x1F	; 31
 2ea:	f3 15       	cp	r31, r3
 2ec:	d8 f0       	brcs	.+54     	; 0x324 <vfprintf+0x98>
 2ee:	8b 32       	cpi	r24, 0x2B	; 43
 2f0:	79 f0       	breq	.+30     	; 0x310 <vfprintf+0x84>
 2f2:	38 f4       	brcc	.+14     	; 0x302 <vfprintf+0x76>
 2f4:	80 32       	cpi	r24, 0x20	; 32
 2f6:	79 f0       	breq	.+30     	; 0x316 <vfprintf+0x8a>
 2f8:	83 32       	cpi	r24, 0x23	; 35
 2fa:	a1 f4       	brne	.+40     	; 0x324 <vfprintf+0x98>
 2fc:	23 2d       	mov	r18, r3
 2fe:	20 61       	ori	r18, 0x10	; 16
 300:	1d c0       	rjmp	.+58     	; 0x33c <vfprintf+0xb0>
 302:	8d 32       	cpi	r24, 0x2D	; 45
 304:	61 f0       	breq	.+24     	; 0x31e <vfprintf+0x92>
 306:	80 33       	cpi	r24, 0x30	; 48
 308:	69 f4       	brne	.+26     	; 0x324 <vfprintf+0x98>
 30a:	23 2d       	mov	r18, r3
 30c:	21 60       	ori	r18, 0x01	; 1
 30e:	16 c0       	rjmp	.+44     	; 0x33c <vfprintf+0xb0>
 310:	83 2d       	mov	r24, r3
 312:	82 60       	ori	r24, 0x02	; 2
 314:	38 2e       	mov	r3, r24
 316:	e3 2d       	mov	r30, r3
 318:	e4 60       	ori	r30, 0x04	; 4
 31a:	3e 2e       	mov	r3, r30
 31c:	2a c0       	rjmp	.+84     	; 0x372 <vfprintf+0xe6>
 31e:	f3 2d       	mov	r31, r3
 320:	f8 60       	ori	r31, 0x08	; 8
 322:	1d c0       	rjmp	.+58     	; 0x35e <vfprintf+0xd2>
 324:	37 fc       	sbrc	r3, 7
 326:	2d c0       	rjmp	.+90     	; 0x382 <vfprintf+0xf6>
 328:	20 ed       	ldi	r18, 0xD0	; 208
 32a:	28 0f       	add	r18, r24
 32c:	2a 30       	cpi	r18, 0x0A	; 10
 32e:	40 f0       	brcs	.+16     	; 0x340 <vfprintf+0xb4>
 330:	8e 32       	cpi	r24, 0x2E	; 46
 332:	b9 f4       	brne	.+46     	; 0x362 <vfprintf+0xd6>
 334:	36 fc       	sbrc	r3, 6
 336:	81 c1       	rjmp	.+770    	; 0x63a <__LOCK_REGION_LENGTH__+0x23a>
 338:	23 2d       	mov	r18, r3
 33a:	20 64       	ori	r18, 0x40	; 64
 33c:	32 2e       	mov	r3, r18
 33e:	19 c0       	rjmp	.+50     	; 0x372 <vfprintf+0xe6>
 340:	36 fe       	sbrs	r3, 6
 342:	06 c0       	rjmp	.+12     	; 0x350 <vfprintf+0xc4>
 344:	8a e0       	ldi	r24, 0x0A	; 10
 346:	98 9e       	mul	r9, r24
 348:	20 0d       	add	r18, r0
 34a:	11 24       	eor	r1, r1
 34c:	92 2e       	mov	r9, r18
 34e:	11 c0       	rjmp	.+34     	; 0x372 <vfprintf+0xe6>
 350:	ea e0       	ldi	r30, 0x0A	; 10
 352:	2e 9e       	mul	r2, r30
 354:	20 0d       	add	r18, r0
 356:	11 24       	eor	r1, r1
 358:	22 2e       	mov	r2, r18
 35a:	f3 2d       	mov	r31, r3
 35c:	f0 62       	ori	r31, 0x20	; 32
 35e:	3f 2e       	mov	r3, r31
 360:	08 c0       	rjmp	.+16     	; 0x372 <vfprintf+0xe6>
 362:	8c 36       	cpi	r24, 0x6C	; 108
 364:	21 f4       	brne	.+8      	; 0x36e <vfprintf+0xe2>
 366:	83 2d       	mov	r24, r3
 368:	80 68       	ori	r24, 0x80	; 128
 36a:	38 2e       	mov	r3, r24
 36c:	02 c0       	rjmp	.+4      	; 0x372 <vfprintf+0xe6>
 36e:	88 36       	cpi	r24, 0x68	; 104
 370:	41 f4       	brne	.+16     	; 0x382 <vfprintf+0xf6>
 372:	f7 01       	movw	r30, r14
 374:	93 fd       	sbrc	r25, 3
 376:	85 91       	lpm	r24, Z+
 378:	93 ff       	sbrs	r25, 3
 37a:	81 91       	ld	r24, Z+
 37c:	7f 01       	movw	r14, r30
 37e:	81 11       	cpse	r24, r1
 380:	b3 cf       	rjmp	.-154    	; 0x2e8 <vfprintf+0x5c>
 382:	98 2f       	mov	r25, r24
 384:	9f 7d       	andi	r25, 0xDF	; 223
 386:	95 54       	subi	r25, 0x45	; 69
 388:	93 30       	cpi	r25, 0x03	; 3
 38a:	28 f4       	brcc	.+10     	; 0x396 <vfprintf+0x10a>
 38c:	0c 5f       	subi	r16, 0xFC	; 252
 38e:	1f 4f       	sbci	r17, 0xFF	; 255
 390:	9f e3       	ldi	r25, 0x3F	; 63
 392:	99 83       	std	Y+1, r25	; 0x01
 394:	0d c0       	rjmp	.+26     	; 0x3b0 <vfprintf+0x124>
 396:	83 36       	cpi	r24, 0x63	; 99
 398:	31 f0       	breq	.+12     	; 0x3a6 <vfprintf+0x11a>
 39a:	83 37       	cpi	r24, 0x73	; 115
 39c:	71 f0       	breq	.+28     	; 0x3ba <vfprintf+0x12e>
 39e:	83 35       	cpi	r24, 0x53	; 83
 3a0:	09 f0       	breq	.+2      	; 0x3a4 <vfprintf+0x118>
 3a2:	59 c0       	rjmp	.+178    	; 0x456 <__LOCK_REGION_LENGTH__+0x56>
 3a4:	21 c0       	rjmp	.+66     	; 0x3e8 <vfprintf+0x15c>
 3a6:	f8 01       	movw	r30, r16
 3a8:	80 81       	ld	r24, Z
 3aa:	89 83       	std	Y+1, r24	; 0x01
 3ac:	0e 5f       	subi	r16, 0xFE	; 254
 3ae:	1f 4f       	sbci	r17, 0xFF	; 255
 3b0:	88 24       	eor	r8, r8
 3b2:	83 94       	inc	r8
 3b4:	91 2c       	mov	r9, r1
 3b6:	53 01       	movw	r10, r6
 3b8:	13 c0       	rjmp	.+38     	; 0x3e0 <vfprintf+0x154>
 3ba:	28 01       	movw	r4, r16
 3bc:	f2 e0       	ldi	r31, 0x02	; 2
 3be:	4f 0e       	add	r4, r31
 3c0:	51 1c       	adc	r5, r1
 3c2:	f8 01       	movw	r30, r16
 3c4:	a0 80       	ld	r10, Z
 3c6:	b1 80       	ldd	r11, Z+1	; 0x01
 3c8:	36 fe       	sbrs	r3, 6
 3ca:	03 c0       	rjmp	.+6      	; 0x3d2 <vfprintf+0x146>
 3cc:	69 2d       	mov	r22, r9
 3ce:	70 e0       	ldi	r23, 0x00	; 0
 3d0:	02 c0       	rjmp	.+4      	; 0x3d6 <vfprintf+0x14a>
 3d2:	6f ef       	ldi	r22, 0xFF	; 255
 3d4:	7f ef       	ldi	r23, 0xFF	; 255
 3d6:	c5 01       	movw	r24, r10
 3d8:	0e 94 32 03 	call	0x664	; 0x664 <strnlen>
 3dc:	4c 01       	movw	r8, r24
 3de:	82 01       	movw	r16, r4
 3e0:	f3 2d       	mov	r31, r3
 3e2:	ff 77       	andi	r31, 0x7F	; 127
 3e4:	3f 2e       	mov	r3, r31
 3e6:	16 c0       	rjmp	.+44     	; 0x414 <__LOCK_REGION_LENGTH__+0x14>
 3e8:	28 01       	movw	r4, r16
 3ea:	22 e0       	ldi	r18, 0x02	; 2
 3ec:	42 0e       	add	r4, r18
 3ee:	51 1c       	adc	r5, r1
 3f0:	f8 01       	movw	r30, r16
 3f2:	a0 80       	ld	r10, Z
 3f4:	b1 80       	ldd	r11, Z+1	; 0x01
 3f6:	36 fe       	sbrs	r3, 6
 3f8:	03 c0       	rjmp	.+6      	; 0x400 <__LOCK_REGION_LENGTH__>
 3fa:	69 2d       	mov	r22, r9
 3fc:	70 e0       	ldi	r23, 0x00	; 0
 3fe:	02 c0       	rjmp	.+4      	; 0x404 <__LOCK_REGION_LENGTH__+0x4>
 400:	6f ef       	ldi	r22, 0xFF	; 255
 402:	7f ef       	ldi	r23, 0xFF	; 255
 404:	c5 01       	movw	r24, r10
 406:	0e 94 27 03 	call	0x64e	; 0x64e <strnlen_P>
 40a:	4c 01       	movw	r8, r24
 40c:	f3 2d       	mov	r31, r3
 40e:	f0 68       	ori	r31, 0x80	; 128
 410:	3f 2e       	mov	r3, r31
 412:	82 01       	movw	r16, r4
 414:	33 fc       	sbrc	r3, 3
 416:	1b c0       	rjmp	.+54     	; 0x44e <__LOCK_REGION_LENGTH__+0x4e>
 418:	82 2d       	mov	r24, r2
 41a:	90 e0       	ldi	r25, 0x00	; 0
 41c:	88 16       	cp	r8, r24
 41e:	99 06       	cpc	r9, r25
 420:	b0 f4       	brcc	.+44     	; 0x44e <__LOCK_REGION_LENGTH__+0x4e>
 422:	b6 01       	movw	r22, r12
 424:	80 e2       	ldi	r24, 0x20	; 32
 426:	90 e0       	ldi	r25, 0x00	; 0
 428:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 42c:	2a 94       	dec	r2
 42e:	f4 cf       	rjmp	.-24     	; 0x418 <__LOCK_REGION_LENGTH__+0x18>
 430:	f5 01       	movw	r30, r10
 432:	37 fc       	sbrc	r3, 7
 434:	85 91       	lpm	r24, Z+
 436:	37 fe       	sbrs	r3, 7
 438:	81 91       	ld	r24, Z+
 43a:	5f 01       	movw	r10, r30
 43c:	b6 01       	movw	r22, r12
 43e:	90 e0       	ldi	r25, 0x00	; 0
 440:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 444:	21 10       	cpse	r2, r1
 446:	2a 94       	dec	r2
 448:	21 e0       	ldi	r18, 0x01	; 1
 44a:	82 1a       	sub	r8, r18
 44c:	91 08       	sbc	r9, r1
 44e:	81 14       	cp	r8, r1
 450:	91 04       	cpc	r9, r1
 452:	71 f7       	brne	.-36     	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
 454:	e8 c0       	rjmp	.+464    	; 0x626 <__LOCK_REGION_LENGTH__+0x226>
 456:	84 36       	cpi	r24, 0x64	; 100
 458:	11 f0       	breq	.+4      	; 0x45e <__LOCK_REGION_LENGTH__+0x5e>
 45a:	89 36       	cpi	r24, 0x69	; 105
 45c:	41 f5       	brne	.+80     	; 0x4ae <__LOCK_REGION_LENGTH__+0xae>
 45e:	f8 01       	movw	r30, r16
 460:	37 fe       	sbrs	r3, 7
 462:	07 c0       	rjmp	.+14     	; 0x472 <__LOCK_REGION_LENGTH__+0x72>
 464:	60 81       	ld	r22, Z
 466:	71 81       	ldd	r23, Z+1	; 0x01
 468:	82 81       	ldd	r24, Z+2	; 0x02
 46a:	93 81       	ldd	r25, Z+3	; 0x03
 46c:	0c 5f       	subi	r16, 0xFC	; 252
 46e:	1f 4f       	sbci	r17, 0xFF	; 255
 470:	08 c0       	rjmp	.+16     	; 0x482 <__LOCK_REGION_LENGTH__+0x82>
 472:	60 81       	ld	r22, Z
 474:	71 81       	ldd	r23, Z+1	; 0x01
 476:	07 2e       	mov	r0, r23
 478:	00 0c       	add	r0, r0
 47a:	88 0b       	sbc	r24, r24
 47c:	99 0b       	sbc	r25, r25
 47e:	0e 5f       	subi	r16, 0xFE	; 254
 480:	1f 4f       	sbci	r17, 0xFF	; 255
 482:	f3 2d       	mov	r31, r3
 484:	ff 76       	andi	r31, 0x6F	; 111
 486:	3f 2e       	mov	r3, r31
 488:	97 ff       	sbrs	r25, 7
 48a:	09 c0       	rjmp	.+18     	; 0x49e <__LOCK_REGION_LENGTH__+0x9e>
 48c:	90 95       	com	r25
 48e:	80 95       	com	r24
 490:	70 95       	com	r23
 492:	61 95       	neg	r22
 494:	7f 4f       	sbci	r23, 0xFF	; 255
 496:	8f 4f       	sbci	r24, 0xFF	; 255
 498:	9f 4f       	sbci	r25, 0xFF	; 255
 49a:	f0 68       	ori	r31, 0x80	; 128
 49c:	3f 2e       	mov	r3, r31
 49e:	2a e0       	ldi	r18, 0x0A	; 10
 4a0:	30 e0       	ldi	r19, 0x00	; 0
 4a2:	a3 01       	movw	r20, r6
 4a4:	0e 94 79 03 	call	0x6f2	; 0x6f2 <__ultoa_invert>
 4a8:	88 2e       	mov	r8, r24
 4aa:	86 18       	sub	r8, r6
 4ac:	45 c0       	rjmp	.+138    	; 0x538 <__LOCK_REGION_LENGTH__+0x138>
 4ae:	85 37       	cpi	r24, 0x75	; 117
 4b0:	31 f4       	brne	.+12     	; 0x4be <__LOCK_REGION_LENGTH__+0xbe>
 4b2:	23 2d       	mov	r18, r3
 4b4:	2f 7e       	andi	r18, 0xEF	; 239
 4b6:	b2 2e       	mov	r11, r18
 4b8:	2a e0       	ldi	r18, 0x0A	; 10
 4ba:	30 e0       	ldi	r19, 0x00	; 0
 4bc:	25 c0       	rjmp	.+74     	; 0x508 <__LOCK_REGION_LENGTH__+0x108>
 4be:	93 2d       	mov	r25, r3
 4c0:	99 7f       	andi	r25, 0xF9	; 249
 4c2:	b9 2e       	mov	r11, r25
 4c4:	8f 36       	cpi	r24, 0x6F	; 111
 4c6:	c1 f0       	breq	.+48     	; 0x4f8 <__LOCK_REGION_LENGTH__+0xf8>
 4c8:	18 f4       	brcc	.+6      	; 0x4d0 <__LOCK_REGION_LENGTH__+0xd0>
 4ca:	88 35       	cpi	r24, 0x58	; 88
 4cc:	79 f0       	breq	.+30     	; 0x4ec <__LOCK_REGION_LENGTH__+0xec>
 4ce:	b5 c0       	rjmp	.+362    	; 0x63a <__LOCK_REGION_LENGTH__+0x23a>
 4d0:	80 37       	cpi	r24, 0x70	; 112
 4d2:	19 f0       	breq	.+6      	; 0x4da <__LOCK_REGION_LENGTH__+0xda>
 4d4:	88 37       	cpi	r24, 0x78	; 120
 4d6:	21 f0       	breq	.+8      	; 0x4e0 <__LOCK_REGION_LENGTH__+0xe0>
 4d8:	b0 c0       	rjmp	.+352    	; 0x63a <__LOCK_REGION_LENGTH__+0x23a>
 4da:	e9 2f       	mov	r30, r25
 4dc:	e0 61       	ori	r30, 0x10	; 16
 4de:	be 2e       	mov	r11, r30
 4e0:	b4 fe       	sbrs	r11, 4
 4e2:	0d c0       	rjmp	.+26     	; 0x4fe <__LOCK_REGION_LENGTH__+0xfe>
 4e4:	fb 2d       	mov	r31, r11
 4e6:	f4 60       	ori	r31, 0x04	; 4
 4e8:	bf 2e       	mov	r11, r31
 4ea:	09 c0       	rjmp	.+18     	; 0x4fe <__LOCK_REGION_LENGTH__+0xfe>
 4ec:	34 fe       	sbrs	r3, 4
 4ee:	0a c0       	rjmp	.+20     	; 0x504 <__LOCK_REGION_LENGTH__+0x104>
 4f0:	29 2f       	mov	r18, r25
 4f2:	26 60       	ori	r18, 0x06	; 6
 4f4:	b2 2e       	mov	r11, r18
 4f6:	06 c0       	rjmp	.+12     	; 0x504 <__LOCK_REGION_LENGTH__+0x104>
 4f8:	28 e0       	ldi	r18, 0x08	; 8
 4fa:	30 e0       	ldi	r19, 0x00	; 0
 4fc:	05 c0       	rjmp	.+10     	; 0x508 <__LOCK_REGION_LENGTH__+0x108>
 4fe:	20 e1       	ldi	r18, 0x10	; 16
 500:	30 e0       	ldi	r19, 0x00	; 0
 502:	02 c0       	rjmp	.+4      	; 0x508 <__LOCK_REGION_LENGTH__+0x108>
 504:	20 e1       	ldi	r18, 0x10	; 16
 506:	32 e0       	ldi	r19, 0x02	; 2
 508:	f8 01       	movw	r30, r16
 50a:	b7 fe       	sbrs	r11, 7
 50c:	07 c0       	rjmp	.+14     	; 0x51c <__LOCK_REGION_LENGTH__+0x11c>
 50e:	60 81       	ld	r22, Z
 510:	71 81       	ldd	r23, Z+1	; 0x01
 512:	82 81       	ldd	r24, Z+2	; 0x02
 514:	93 81       	ldd	r25, Z+3	; 0x03
 516:	0c 5f       	subi	r16, 0xFC	; 252
 518:	1f 4f       	sbci	r17, 0xFF	; 255
 51a:	06 c0       	rjmp	.+12     	; 0x528 <__LOCK_REGION_LENGTH__+0x128>
 51c:	60 81       	ld	r22, Z
 51e:	71 81       	ldd	r23, Z+1	; 0x01
 520:	80 e0       	ldi	r24, 0x00	; 0
 522:	90 e0       	ldi	r25, 0x00	; 0
 524:	0e 5f       	subi	r16, 0xFE	; 254
 526:	1f 4f       	sbci	r17, 0xFF	; 255
 528:	a3 01       	movw	r20, r6
 52a:	0e 94 79 03 	call	0x6f2	; 0x6f2 <__ultoa_invert>
 52e:	88 2e       	mov	r8, r24
 530:	86 18       	sub	r8, r6
 532:	fb 2d       	mov	r31, r11
 534:	ff 77       	andi	r31, 0x7F	; 127
 536:	3f 2e       	mov	r3, r31
 538:	36 fe       	sbrs	r3, 6
 53a:	0d c0       	rjmp	.+26     	; 0x556 <__LOCK_REGION_LENGTH__+0x156>
 53c:	23 2d       	mov	r18, r3
 53e:	2e 7f       	andi	r18, 0xFE	; 254
 540:	a2 2e       	mov	r10, r18
 542:	89 14       	cp	r8, r9
 544:	58 f4       	brcc	.+22     	; 0x55c <__LOCK_REGION_LENGTH__+0x15c>
 546:	34 fe       	sbrs	r3, 4
 548:	0b c0       	rjmp	.+22     	; 0x560 <__LOCK_REGION_LENGTH__+0x160>
 54a:	32 fc       	sbrc	r3, 2
 54c:	09 c0       	rjmp	.+18     	; 0x560 <__LOCK_REGION_LENGTH__+0x160>
 54e:	83 2d       	mov	r24, r3
 550:	8e 7e       	andi	r24, 0xEE	; 238
 552:	a8 2e       	mov	r10, r24
 554:	05 c0       	rjmp	.+10     	; 0x560 <__LOCK_REGION_LENGTH__+0x160>
 556:	b8 2c       	mov	r11, r8
 558:	a3 2c       	mov	r10, r3
 55a:	03 c0       	rjmp	.+6      	; 0x562 <__LOCK_REGION_LENGTH__+0x162>
 55c:	b8 2c       	mov	r11, r8
 55e:	01 c0       	rjmp	.+2      	; 0x562 <__LOCK_REGION_LENGTH__+0x162>
 560:	b9 2c       	mov	r11, r9
 562:	a4 fe       	sbrs	r10, 4
 564:	0f c0       	rjmp	.+30     	; 0x584 <__LOCK_REGION_LENGTH__+0x184>
 566:	fe 01       	movw	r30, r28
 568:	e8 0d       	add	r30, r8
 56a:	f1 1d       	adc	r31, r1
 56c:	80 81       	ld	r24, Z
 56e:	80 33       	cpi	r24, 0x30	; 48
 570:	21 f4       	brne	.+8      	; 0x57a <__LOCK_REGION_LENGTH__+0x17a>
 572:	9a 2d       	mov	r25, r10
 574:	99 7e       	andi	r25, 0xE9	; 233
 576:	a9 2e       	mov	r10, r25
 578:	09 c0       	rjmp	.+18     	; 0x58c <__LOCK_REGION_LENGTH__+0x18c>
 57a:	a2 fe       	sbrs	r10, 2
 57c:	06 c0       	rjmp	.+12     	; 0x58a <__LOCK_REGION_LENGTH__+0x18a>
 57e:	b3 94       	inc	r11
 580:	b3 94       	inc	r11
 582:	04 c0       	rjmp	.+8      	; 0x58c <__LOCK_REGION_LENGTH__+0x18c>
 584:	8a 2d       	mov	r24, r10
 586:	86 78       	andi	r24, 0x86	; 134
 588:	09 f0       	breq	.+2      	; 0x58c <__LOCK_REGION_LENGTH__+0x18c>
 58a:	b3 94       	inc	r11
 58c:	a3 fc       	sbrc	r10, 3
 58e:	11 c0       	rjmp	.+34     	; 0x5b2 <__LOCK_REGION_LENGTH__+0x1b2>
 590:	a0 fe       	sbrs	r10, 0
 592:	06 c0       	rjmp	.+12     	; 0x5a0 <__LOCK_REGION_LENGTH__+0x1a0>
 594:	b2 14       	cp	r11, r2
 596:	88 f4       	brcc	.+34     	; 0x5ba <__LOCK_REGION_LENGTH__+0x1ba>
 598:	28 0c       	add	r2, r8
 59a:	92 2c       	mov	r9, r2
 59c:	9b 18       	sub	r9, r11
 59e:	0e c0       	rjmp	.+28     	; 0x5bc <__LOCK_REGION_LENGTH__+0x1bc>
 5a0:	b2 14       	cp	r11, r2
 5a2:	60 f4       	brcc	.+24     	; 0x5bc <__LOCK_REGION_LENGTH__+0x1bc>
 5a4:	b6 01       	movw	r22, r12
 5a6:	80 e2       	ldi	r24, 0x20	; 32
 5a8:	90 e0       	ldi	r25, 0x00	; 0
 5aa:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 5ae:	b3 94       	inc	r11
 5b0:	f7 cf       	rjmp	.-18     	; 0x5a0 <__LOCK_REGION_LENGTH__+0x1a0>
 5b2:	b2 14       	cp	r11, r2
 5b4:	18 f4       	brcc	.+6      	; 0x5bc <__LOCK_REGION_LENGTH__+0x1bc>
 5b6:	2b 18       	sub	r2, r11
 5b8:	02 c0       	rjmp	.+4      	; 0x5be <__LOCK_REGION_LENGTH__+0x1be>
 5ba:	98 2c       	mov	r9, r8
 5bc:	21 2c       	mov	r2, r1
 5be:	a4 fe       	sbrs	r10, 4
 5c0:	10 c0       	rjmp	.+32     	; 0x5e2 <__LOCK_REGION_LENGTH__+0x1e2>
 5c2:	b6 01       	movw	r22, r12
 5c4:	80 e3       	ldi	r24, 0x30	; 48
 5c6:	90 e0       	ldi	r25, 0x00	; 0
 5c8:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 5cc:	a2 fe       	sbrs	r10, 2
 5ce:	17 c0       	rjmp	.+46     	; 0x5fe <__LOCK_REGION_LENGTH__+0x1fe>
 5d0:	a1 fc       	sbrc	r10, 1
 5d2:	03 c0       	rjmp	.+6      	; 0x5da <__LOCK_REGION_LENGTH__+0x1da>
 5d4:	88 e7       	ldi	r24, 0x78	; 120
 5d6:	90 e0       	ldi	r25, 0x00	; 0
 5d8:	02 c0       	rjmp	.+4      	; 0x5de <__LOCK_REGION_LENGTH__+0x1de>
 5da:	88 e5       	ldi	r24, 0x58	; 88
 5dc:	90 e0       	ldi	r25, 0x00	; 0
 5de:	b6 01       	movw	r22, r12
 5e0:	0c c0       	rjmp	.+24     	; 0x5fa <__LOCK_REGION_LENGTH__+0x1fa>
 5e2:	8a 2d       	mov	r24, r10
 5e4:	86 78       	andi	r24, 0x86	; 134
 5e6:	59 f0       	breq	.+22     	; 0x5fe <__LOCK_REGION_LENGTH__+0x1fe>
 5e8:	a1 fe       	sbrs	r10, 1
 5ea:	02 c0       	rjmp	.+4      	; 0x5f0 <__LOCK_REGION_LENGTH__+0x1f0>
 5ec:	8b e2       	ldi	r24, 0x2B	; 43
 5ee:	01 c0       	rjmp	.+2      	; 0x5f2 <__LOCK_REGION_LENGTH__+0x1f2>
 5f0:	80 e2       	ldi	r24, 0x20	; 32
 5f2:	a7 fc       	sbrc	r10, 7
 5f4:	8d e2       	ldi	r24, 0x2D	; 45
 5f6:	b6 01       	movw	r22, r12
 5f8:	90 e0       	ldi	r25, 0x00	; 0
 5fa:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 5fe:	89 14       	cp	r8, r9
 600:	38 f4       	brcc	.+14     	; 0x610 <__LOCK_REGION_LENGTH__+0x210>
 602:	b6 01       	movw	r22, r12
 604:	80 e3       	ldi	r24, 0x30	; 48
 606:	90 e0       	ldi	r25, 0x00	; 0
 608:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 60c:	9a 94       	dec	r9
 60e:	f7 cf       	rjmp	.-18     	; 0x5fe <__LOCK_REGION_LENGTH__+0x1fe>
 610:	8a 94       	dec	r8
 612:	f3 01       	movw	r30, r6
 614:	e8 0d       	add	r30, r8
 616:	f1 1d       	adc	r31, r1
 618:	80 81       	ld	r24, Z
 61a:	b6 01       	movw	r22, r12
 61c:	90 e0       	ldi	r25, 0x00	; 0
 61e:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 622:	81 10       	cpse	r8, r1
 624:	f5 cf       	rjmp	.-22     	; 0x610 <__LOCK_REGION_LENGTH__+0x210>
 626:	22 20       	and	r2, r2
 628:	09 f4       	brne	.+2      	; 0x62c <__LOCK_REGION_LENGTH__+0x22c>
 62a:	42 ce       	rjmp	.-892    	; 0x2b0 <vfprintf+0x24>
 62c:	b6 01       	movw	r22, r12
 62e:	80 e2       	ldi	r24, 0x20	; 32
 630:	90 e0       	ldi	r25, 0x00	; 0
 632:	0e 94 3d 03 	call	0x67a	; 0x67a <fputc>
 636:	2a 94       	dec	r2
 638:	f6 cf       	rjmp	.-20     	; 0x626 <__LOCK_REGION_LENGTH__+0x226>
 63a:	f6 01       	movw	r30, r12
 63c:	86 81       	ldd	r24, Z+6	; 0x06
 63e:	97 81       	ldd	r25, Z+7	; 0x07
 640:	02 c0       	rjmp	.+4      	; 0x646 <__LOCK_REGION_LENGTH__+0x246>
 642:	8f ef       	ldi	r24, 0xFF	; 255
 644:	9f ef       	ldi	r25, 0xFF	; 255
 646:	2b 96       	adiw	r28, 0x0b	; 11
 648:	e2 e1       	ldi	r30, 0x12	; 18
 64a:	0c 94 f3 03 	jmp	0x7e6	; 0x7e6 <__epilogue_restores__>

0000064e <strnlen_P>:
 64e:	fc 01       	movw	r30, r24
 650:	05 90       	lpm	r0, Z+
 652:	61 50       	subi	r22, 0x01	; 1
 654:	70 40       	sbci	r23, 0x00	; 0
 656:	01 10       	cpse	r0, r1
 658:	d8 f7       	brcc	.-10     	; 0x650 <strnlen_P+0x2>
 65a:	80 95       	com	r24
 65c:	90 95       	com	r25
 65e:	8e 0f       	add	r24, r30
 660:	9f 1f       	adc	r25, r31
 662:	08 95       	ret

00000664 <strnlen>:
 664:	fc 01       	movw	r30, r24
 666:	61 50       	subi	r22, 0x01	; 1
 668:	70 40       	sbci	r23, 0x00	; 0
 66a:	01 90       	ld	r0, Z+
 66c:	01 10       	cpse	r0, r1
 66e:	d8 f7       	brcc	.-10     	; 0x666 <strnlen+0x2>
 670:	80 95       	com	r24
 672:	90 95       	com	r25
 674:	8e 0f       	add	r24, r30
 676:	9f 1f       	adc	r25, r31
 678:	08 95       	ret

0000067a <fputc>:
 67a:	0f 93       	push	r16
 67c:	1f 93       	push	r17
 67e:	cf 93       	push	r28
 680:	df 93       	push	r29
 682:	fb 01       	movw	r30, r22
 684:	23 81       	ldd	r18, Z+3	; 0x03
 686:	21 fd       	sbrc	r18, 1
 688:	03 c0       	rjmp	.+6      	; 0x690 <fputc+0x16>
 68a:	8f ef       	ldi	r24, 0xFF	; 255
 68c:	9f ef       	ldi	r25, 0xFF	; 255
 68e:	2c c0       	rjmp	.+88     	; 0x6e8 <fputc+0x6e>
 690:	22 ff       	sbrs	r18, 2
 692:	16 c0       	rjmp	.+44     	; 0x6c0 <fputc+0x46>
 694:	46 81       	ldd	r20, Z+6	; 0x06
 696:	57 81       	ldd	r21, Z+7	; 0x07
 698:	24 81       	ldd	r18, Z+4	; 0x04
 69a:	35 81       	ldd	r19, Z+5	; 0x05
 69c:	42 17       	cp	r20, r18
 69e:	53 07       	cpc	r21, r19
 6a0:	44 f4       	brge	.+16     	; 0x6b2 <fputc+0x38>
 6a2:	a0 81       	ld	r26, Z
 6a4:	b1 81       	ldd	r27, Z+1	; 0x01
 6a6:	9d 01       	movw	r18, r26
 6a8:	2f 5f       	subi	r18, 0xFF	; 255
 6aa:	3f 4f       	sbci	r19, 0xFF	; 255
 6ac:	31 83       	std	Z+1, r19	; 0x01
 6ae:	20 83       	st	Z, r18
 6b0:	8c 93       	st	X, r24
 6b2:	26 81       	ldd	r18, Z+6	; 0x06
 6b4:	37 81       	ldd	r19, Z+7	; 0x07
 6b6:	2f 5f       	subi	r18, 0xFF	; 255
 6b8:	3f 4f       	sbci	r19, 0xFF	; 255
 6ba:	37 83       	std	Z+7, r19	; 0x07
 6bc:	26 83       	std	Z+6, r18	; 0x06
 6be:	14 c0       	rjmp	.+40     	; 0x6e8 <fputc+0x6e>
 6c0:	8b 01       	movw	r16, r22
 6c2:	ec 01       	movw	r28, r24
 6c4:	fb 01       	movw	r30, r22
 6c6:	00 84       	ldd	r0, Z+8	; 0x08
 6c8:	f1 85       	ldd	r31, Z+9	; 0x09
 6ca:	e0 2d       	mov	r30, r0
 6cc:	09 95       	icall
 6ce:	89 2b       	or	r24, r25
 6d0:	e1 f6       	brne	.-72     	; 0x68a <fputc+0x10>
 6d2:	d8 01       	movw	r26, r16
 6d4:	16 96       	adiw	r26, 0x06	; 6
 6d6:	8d 91       	ld	r24, X+
 6d8:	9c 91       	ld	r25, X
 6da:	17 97       	sbiw	r26, 0x07	; 7
 6dc:	01 96       	adiw	r24, 0x01	; 1
 6de:	17 96       	adiw	r26, 0x07	; 7
 6e0:	9c 93       	st	X, r25
 6e2:	8e 93       	st	-X, r24
 6e4:	16 97       	sbiw	r26, 0x06	; 6
 6e6:	ce 01       	movw	r24, r28
 6e8:	df 91       	pop	r29
 6ea:	cf 91       	pop	r28
 6ec:	1f 91       	pop	r17
 6ee:	0f 91       	pop	r16
 6f0:	08 95       	ret

000006f2 <__ultoa_invert>:
 6f2:	fa 01       	movw	r30, r20
 6f4:	aa 27       	eor	r26, r26
 6f6:	28 30       	cpi	r18, 0x08	; 8
 6f8:	51 f1       	breq	.+84     	; 0x74e <__ultoa_invert+0x5c>
 6fa:	20 31       	cpi	r18, 0x10	; 16
 6fc:	81 f1       	breq	.+96     	; 0x75e <__ultoa_invert+0x6c>
 6fe:	e8 94       	clt
 700:	6f 93       	push	r22
 702:	6e 7f       	andi	r22, 0xFE	; 254
 704:	6e 5f       	subi	r22, 0xFE	; 254
 706:	7f 4f       	sbci	r23, 0xFF	; 255
 708:	8f 4f       	sbci	r24, 0xFF	; 255
 70a:	9f 4f       	sbci	r25, 0xFF	; 255
 70c:	af 4f       	sbci	r26, 0xFF	; 255
 70e:	b1 e0       	ldi	r27, 0x01	; 1
 710:	3e d0       	rcall	.+124    	; 0x78e <__ultoa_invert+0x9c>
 712:	b4 e0       	ldi	r27, 0x04	; 4
 714:	3c d0       	rcall	.+120    	; 0x78e <__ultoa_invert+0x9c>
 716:	67 0f       	add	r22, r23
 718:	78 1f       	adc	r23, r24
 71a:	89 1f       	adc	r24, r25
 71c:	9a 1f       	adc	r25, r26
 71e:	a1 1d       	adc	r26, r1
 720:	68 0f       	add	r22, r24
 722:	79 1f       	adc	r23, r25
 724:	8a 1f       	adc	r24, r26
 726:	91 1d       	adc	r25, r1
 728:	a1 1d       	adc	r26, r1
 72a:	6a 0f       	add	r22, r26
 72c:	71 1d       	adc	r23, r1
 72e:	81 1d       	adc	r24, r1
 730:	91 1d       	adc	r25, r1
 732:	a1 1d       	adc	r26, r1
 734:	20 d0       	rcall	.+64     	; 0x776 <__ultoa_invert+0x84>
 736:	09 f4       	brne	.+2      	; 0x73a <__ultoa_invert+0x48>
 738:	68 94       	set
 73a:	3f 91       	pop	r19
 73c:	2a e0       	ldi	r18, 0x0A	; 10
 73e:	26 9f       	mul	r18, r22
 740:	11 24       	eor	r1, r1
 742:	30 19       	sub	r19, r0
 744:	30 5d       	subi	r19, 0xD0	; 208
 746:	31 93       	st	Z+, r19
 748:	de f6       	brtc	.-74     	; 0x700 <__ultoa_invert+0xe>
 74a:	cf 01       	movw	r24, r30
 74c:	08 95       	ret
 74e:	46 2f       	mov	r20, r22
 750:	47 70       	andi	r20, 0x07	; 7
 752:	40 5d       	subi	r20, 0xD0	; 208
 754:	41 93       	st	Z+, r20
 756:	b3 e0       	ldi	r27, 0x03	; 3
 758:	0f d0       	rcall	.+30     	; 0x778 <__ultoa_invert+0x86>
 75a:	c9 f7       	brne	.-14     	; 0x74e <__ultoa_invert+0x5c>
 75c:	f6 cf       	rjmp	.-20     	; 0x74a <__ultoa_invert+0x58>
 75e:	46 2f       	mov	r20, r22
 760:	4f 70       	andi	r20, 0x0F	; 15
 762:	40 5d       	subi	r20, 0xD0	; 208
 764:	4a 33       	cpi	r20, 0x3A	; 58
 766:	18 f0       	brcs	.+6      	; 0x76e <__ultoa_invert+0x7c>
 768:	49 5d       	subi	r20, 0xD9	; 217
 76a:	31 fd       	sbrc	r19, 1
 76c:	40 52       	subi	r20, 0x20	; 32
 76e:	41 93       	st	Z+, r20
 770:	02 d0       	rcall	.+4      	; 0x776 <__ultoa_invert+0x84>
 772:	a9 f7       	brne	.-22     	; 0x75e <__ultoa_invert+0x6c>
 774:	ea cf       	rjmp	.-44     	; 0x74a <__ultoa_invert+0x58>
 776:	b4 e0       	ldi	r27, 0x04	; 4
 778:	a6 95       	lsr	r26
 77a:	97 95       	ror	r25
 77c:	87 95       	ror	r24
 77e:	77 95       	ror	r23
 780:	67 95       	ror	r22
 782:	ba 95       	dec	r27
 784:	c9 f7       	brne	.-14     	; 0x778 <__ultoa_invert+0x86>
 786:	00 97       	sbiw	r24, 0x00	; 0
 788:	61 05       	cpc	r22, r1
 78a:	71 05       	cpc	r23, r1
 78c:	08 95       	ret
 78e:	9b 01       	movw	r18, r22
 790:	ac 01       	movw	r20, r24
 792:	0a 2e       	mov	r0, r26
 794:	06 94       	lsr	r0
 796:	57 95       	ror	r21
 798:	47 95       	ror	r20
 79a:	37 95       	ror	r19
 79c:	27 95       	ror	r18
 79e:	ba 95       	dec	r27
 7a0:	c9 f7       	brne	.-14     	; 0x794 <__ultoa_invert+0xa2>
 7a2:	62 0f       	add	r22, r18
 7a4:	73 1f       	adc	r23, r19
 7a6:	84 1f       	adc	r24, r20
 7a8:	95 1f       	adc	r25, r21
 7aa:	a0 1d       	adc	r26, r0
 7ac:	08 95       	ret

000007ae <__prologue_saves__>:
 7ae:	2f 92       	push	r2
 7b0:	3f 92       	push	r3
 7b2:	4f 92       	push	r4
 7b4:	5f 92       	push	r5
 7b6:	6f 92       	push	r6
 7b8:	7f 92       	push	r7
 7ba:	8f 92       	push	r8
 7bc:	9f 92       	push	r9
 7be:	af 92       	push	r10
 7c0:	bf 92       	push	r11
 7c2:	cf 92       	push	r12
 7c4:	df 92       	push	r13
 7c6:	ef 92       	push	r14
 7c8:	ff 92       	push	r15
 7ca:	0f 93       	push	r16
 7cc:	1f 93       	push	r17
 7ce:	cf 93       	push	r28
 7d0:	df 93       	push	r29
 7d2:	cd b7       	in	r28, 0x3d	; 61
 7d4:	de b7       	in	r29, 0x3e	; 62
 7d6:	ca 1b       	sub	r28, r26
 7d8:	db 0b       	sbc	r29, r27
 7da:	0f b6       	in	r0, 0x3f	; 63
 7dc:	f8 94       	cli
 7de:	de bf       	out	0x3e, r29	; 62
 7e0:	0f be       	out	0x3f, r0	; 63
 7e2:	cd bf       	out	0x3d, r28	; 61
 7e4:	09 94       	ijmp

000007e6 <__epilogue_restores__>:
 7e6:	2a 88       	ldd	r2, Y+18	; 0x12
 7e8:	39 88       	ldd	r3, Y+17	; 0x11
 7ea:	48 88       	ldd	r4, Y+16	; 0x10
 7ec:	5f 84       	ldd	r5, Y+15	; 0x0f
 7ee:	6e 84       	ldd	r6, Y+14	; 0x0e
 7f0:	7d 84       	ldd	r7, Y+13	; 0x0d
 7f2:	8c 84       	ldd	r8, Y+12	; 0x0c
 7f4:	9b 84       	ldd	r9, Y+11	; 0x0b
 7f6:	aa 84       	ldd	r10, Y+10	; 0x0a
 7f8:	b9 84       	ldd	r11, Y+9	; 0x09
 7fa:	c8 84       	ldd	r12, Y+8	; 0x08
 7fc:	df 80       	ldd	r13, Y+7	; 0x07
 7fe:	ee 80       	ldd	r14, Y+6	; 0x06
 800:	fd 80       	ldd	r15, Y+5	; 0x05
 802:	0c 81       	ldd	r16, Y+4	; 0x04
 804:	1b 81       	ldd	r17, Y+3	; 0x03
 806:	aa 81       	ldd	r26, Y+2	; 0x02
 808:	b9 81       	ldd	r27, Y+1	; 0x01
 80a:	ce 0f       	add	r28, r30
 80c:	d1 1d       	adc	r29, r1
 80e:	0f b6       	in	r0, 0x3f	; 63
 810:	f8 94       	cli
 812:	de bf       	out	0x3e, r29	; 62
 814:	0f be       	out	0x3f, r0	; 63
 816:	cd bf       	out	0x3d, r28	; 61
 818:	ed 01       	movw	r28, r26
 81a:	08 95       	ret

0000081c <_exit>:
 81c:	f8 94       	cli

0000081e <__stop_program>:
 81e:	ff cf       	rjmp	.-2      	; 0x81e <__stop_program>
