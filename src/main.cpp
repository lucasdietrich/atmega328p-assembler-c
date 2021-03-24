#include <avr/io.h>
#include <util/delay.h>

#define ITER 2

/*
uint8_t dbl(uint8_t x) {
  return 2*x;
}
*/

uint8_t dbl(uint8_t);


int main() {
  DDRB = 1 << 5;

  uint8_t iter = dbl(ITER);

  for(uint8_t i = 0; i < iter; i++) {
    _delay_ms(500);

    PORTB ^= 1 << 5;
  }

  while(1) { }
}