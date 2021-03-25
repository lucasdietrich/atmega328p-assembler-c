#include <avr/io.h>

.global dbl

; TIMER1_OVF_vect:

; try to use lo8 or low with RAMEND

; RAMEND is 0x8FF

; function * 4
dbl:
    ; assumption : 16 bits argument is stored in r16, r17
    ADD r24, r25
    ret
