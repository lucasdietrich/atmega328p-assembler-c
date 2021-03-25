#include <avr/io.h>
#include <util/delay.h>

#define ITER 4

// name mangling : https://stackoverflow.com/questions/39934392/avr-gcc-not-linking-c-with-assembly-function
//  wikipedia : https://en.wikipedia.org/wiki/Name_mangling
extern "C" uint8_t dbl(uint8_t, uint8_t);


int main() {
  DDRB = 1 << 5;

  uint8_t iter = dbl(ITER, 2); // (4 + 2)

  for(uint8_t i = 0; i < iter; i++) {
    _delay_ms(500);

    PORTB ^= 1 << 5;
  }

  while(1);
}