# 1 "src/main.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/main.asm"
# 1 "/usr/lib/avr/include/avr/io.h" 1 3
# 99 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/sfr_defs.h" 1 3
# 100 "/usr/lib/avr/include/avr/io.h" 2 3
# 272 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/iom328p.h" 1 3
# 273 "/usr/lib/avr/include/avr/io.h" 2 3
# 627 "/usr/lib/avr/include/avr/io.h" 3
# 1 "/usr/lib/avr/include/avr/portpins.h" 1 3
# 628 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/common.h" 1 3
# 630 "/usr/lib/avr/include/avr/io.h" 2 3

# 1 "/usr/lib/avr/include/avr/version.h" 1 3
# 632 "/usr/lib/avr/include/avr/io.h" 2 3






# 1 "/usr/lib/avr/include/avr/fuse.h" 1 3
# 639 "/usr/lib/avr/include/avr/io.h" 2 3


# 1 "/usr/lib/avr/include/avr/lock.h" 1 3
# 642 "/usr/lib/avr/include/avr/io.h" 2 3
# 2 "src/main.asm" 2

.global dbl
.global tpl
.global qtr

; uint8_t dbl(uint8_t, uint8_t)
; @see : https:

; Start at r26 :
; ARGUMENT 1
; If the argument size is an odd number of bytes, round up the size to the next even number : uint8_t (1) -> 2
; Subtract the rounded size from the register number Rn : r26 - 2 = r24
; If the new Rn is at least R8 and the size of the object is non-zero, then the
; low-byte of the argument is passed in Rn. Subsequent bytes of the argument are
; passed in the subsequent registers, i.e. in increasing register numbers. : value in r24 (r25 unused)
; f there are arguments left, goto 1. and proceed with the next argument.
; ARGUMENT 2
; If the argument size is an odd number of bytes, round up the size to the next even number : uint8_t (1) -> 2
; Subtract the rounded size from the register number Rn : r24 - 2 = r22
; If the new Rn is at least R8 and the size of the object is non-zero, then the
; low-byte of the argument is passed in Rn. Subsequent bytes of the argument are
; passed in the subsequent registers, i.e. in increasing register numbers. : value in r22 (r23 unused)
; RETURN VALUE
; Return values with a size of 1 byte up to and including a size of 8 bytes will be returned
; in registers. Return values whose size is outside that range will be returned in memory. : return value (uint8_t) in registers
; an 8-bit value is returned in R24 : return value in r24
dbl:
    ADD r24, r22
    ret

; uint8_t qtr(uint8_t, uint8_t, uint8_t, uint8_t)
; parameters are in r24, r22, r20, r18
qtr:
    call tpl ; we sum r24, r22 and r20 -> r24 (return value)
    add r24, r18 ; we add the result with r18 and return it
    ret
