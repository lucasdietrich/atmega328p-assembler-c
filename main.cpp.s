	.file	"main.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(32)
	out 0x4,r24
	ldi r24,lo8(2)
	call _Z3dblh
	tst r24
	breq .L2
	ldi r25,0
	ldi r19,lo8(32)
.L3:
	ldi r18,lo8(1599999)
	ldi r20,hi8(1599999)
	ldi r21,hlo8(1599999)
1:	subi r18,1
	sbci r20,0
	sbci r21,0
	brne 1b
	rjmp .
	nop
	in r18,0x5
	eor r18,r19
	out 0x5,r18
	subi r25,lo8(-(1))
	cpse r24,r25
	rjmp .L3
.L2:
.L7:
	rjmp .L7
	.size	main, .-main
	.ident	"GCC: (GNU) 7.3.0"
