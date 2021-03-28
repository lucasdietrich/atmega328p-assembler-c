
.pio/build/pro16MHzatmega328/firmware.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   8:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  10:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  14:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  18:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  1c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  20:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  24:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  28:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  2c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  30:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  34:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  38:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  3c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  40:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  44:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  48:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  4c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  50:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  54:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  58:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  5c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  60:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  64:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 4d 00 	call	0x9a	; 0x9a <main>
  78:	0c 94 69 00 	jmp	0xd2	; 0xd2 <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <tpl>:
  80:	cf 93       	push	r28
  82:	c4 2f       	mov	r28, r20
  84:	0e 94 47 00 	call	0x8e	; 0x8e <dbl>
  88:	8c 0f       	add	r24, r28
  8a:	cf 91       	pop	r28
  8c:	08 95       	ret

0000008e <dbl>:
  8e:	86 0f       	add	r24, r22
  90:	08 95       	ret

00000092 <qtr>:
  92:	0e 94 40 00 	call	0x80	; 0x80 <tpl>
  96:	82 0f       	add	r24, r18
  98:	08 95       	ret

0000009a <main>:
  9a:	80 e2       	ldi	r24, 0x20	; 32
  9c:	84 b9       	out	0x04, r24	; 4
  9e:	22 e0       	ldi	r18, 0x02	; 2
  a0:	42 e0       	ldi	r20, 0x02	; 2
  a2:	62 e0       	ldi	r22, 0x02	; 2
  a4:	82 e0       	ldi	r24, 0x02	; 2
  a6:	0e 94 49 00 	call	0x92	; 0x92 <qtr>
  aa:	88 23       	and	r24, r24
  ac:	89 f0       	breq	.+34     	; 0xd0 <main+0x36>
  ae:	90 e0       	ldi	r25, 0x00	; 0
  b0:	30 e2       	ldi	r19, 0x20	; 32
  b2:	2f ef       	ldi	r18, 0xFF	; 255
  b4:	49 e6       	ldi	r20, 0x69	; 105
  b6:	58 e1       	ldi	r21, 0x18	; 24
  b8:	21 50       	subi	r18, 0x01	; 1
  ba:	40 40       	sbci	r20, 0x00	; 0
  bc:	50 40       	sbci	r21, 0x00	; 0
  be:	e1 f7       	brne	.-8      	; 0xb8 <main+0x1e>
  c0:	00 c0       	rjmp	.+0      	; 0xc2 <main+0x28>
  c2:	00 00       	nop
  c4:	25 b1       	in	r18, 0x05	; 5
  c6:	23 27       	eor	r18, r19
  c8:	25 b9       	out	0x05, r18	; 5
  ca:	9f 5f       	subi	r25, 0xFF	; 255
  cc:	89 13       	cpse	r24, r25
  ce:	f1 cf       	rjmp	.-30     	; 0xb2 <main+0x18>
  d0:	ff cf       	rjmp	.-2      	; 0xd0 <main+0x36>

000000d2 <_exit>:
  d2:	f8 94       	cli

000000d4 <__stop_program>:
  d4:	ff cf       	rjmp	.-2      	; 0xd4 <__stop_program>
