
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
  74:	0e 94 42 00 	call	0x84	; 0x84 <main>
  78:	0c 94 5c 00 	jmp	0xb8	; 0xb8 <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <dbl>:
  80:	89 0f       	add	r24, r25
  82:	08 95       	ret

00000084 <main>:
  84:	80 e2       	ldi	r24, 0x20	; 32
  86:	84 b9       	out	0x04, r24	; 4
  88:	62 e0       	ldi	r22, 0x02	; 2
  8a:	84 e0       	ldi	r24, 0x04	; 4
  8c:	0e 94 40 00 	call	0x80	; 0x80 <dbl>
  90:	88 23       	and	r24, r24
  92:	89 f0       	breq	.+34     	; 0xb6 <main+0x32>
  94:	90 e0       	ldi	r25, 0x00	; 0
  96:	30 e2       	ldi	r19, 0x20	; 32
  98:	2f ef       	ldi	r18, 0xFF	; 255
  9a:	49 e6       	ldi	r20, 0x69	; 105
  9c:	58 e1       	ldi	r21, 0x18	; 24
  9e:	21 50       	subi	r18, 0x01	; 1
  a0:	40 40       	sbci	r20, 0x00	; 0
  a2:	50 40       	sbci	r21, 0x00	; 0
  a4:	e1 f7       	brne	.-8      	; 0x9e <main+0x1a>
  a6:	00 c0       	rjmp	.+0      	; 0xa8 <main+0x24>
  a8:	00 00       	nop
  aa:	25 b1       	in	r18, 0x05	; 5
  ac:	23 27       	eor	r18, r19
  ae:	25 b9       	out	0x05, r18	; 5
  b0:	9f 5f       	subi	r25, 0xFF	; 255
  b2:	89 13       	cpse	r24, r25
  b4:	f1 cf       	rjmp	.-30     	; 0x98 <main+0x14>
  b6:	ff cf       	rjmp	.-2      	; 0xb6 <main+0x32>

000000b8 <_exit>:
  b8:	f8 94       	cli

000000ba <__stop_program>:
  ba:	ff cf       	rjmp	.-2      	; 0xba <__stop_program>
