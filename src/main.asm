#include <avr/io.h>

.global dbl

; TIMER1_OVF_vect:

; try to use lo8 or low with RAMEND

; RAMEND is 0x8FF
/*
RESET:
    ldi r16, 0xFF   ; Set Stack Pointer to top of RAM
    out _SFR_IO_ADDR(SPH), r16
    ldi r16, 0x08
    out _SFR_IO_ADDR(SPL), r16

    sei                     ; enable interrupts
*/

dbl:
    ; assumption : 16 bits argument is stored in r16, r17
    ADD r16, r17
