#include <avr/io.h>
#include <util/delay.h>

#include <string.h>
#include <stdio.h>

#define UART_DEBUG

/*
;Initialize the microcontroller stack pointer
                LDI    R16, low(RAMEND)
                OUT    SPL, R16
                LDI    R16, high(RAMEND)
                OUT    SPH, R16
*/

#define VALUE 2

// name mangling : https://stackoverflow.com/questions/39934392/avr-gcc-not-linking-c-with-assembly-function
//  wikipedia : https://en.wikipedia.org/wiki/Name_mangling
extern "C" uint8_t dbl(uint8_t, uint8_t);

extern "C" uint8_t qtr(uint8_t, uint8_t, uint8_t, uint8_t);


// tells that tpl is used externally
extern "C" {
  uint8_t tpl(uint8_t a, uint8_t b, uint8_t c) {
    return dbl(a, b) + c;
  }
}

typedef struct {
  uint32_t a;
  uint32_t b;
} data_t;

void alter(data_t *s) {
  s->a++;
  s->b--;
}

// assembler function that call a function defined by : uint8_t (*) (uint8_t)
// give to this function a parameter which is a pointer to its context (type void *)
extern "C" void call_cb(void (*) (data_t *), void *);

void call_cb2(void (*func) (data_t *), void *context) {
  func((data_t*) context);
}

void USART_Init();
void USART_Transmit(uint8_t data);

data_t mystruct = {
  .a = 0b0100000,
  .b = 0b0100000
};

int main() {
  // setup led
  DDRB = 1 << 5;

  uint8_t iter = qtr(VALUE, VALUE, VALUE, VALUE);

  // call the alter function that change the structure values
  call_cb(alter, (void*) &mystruct); // eq to call_cb2 ( ... )
  
#ifdef UART_DEBUG
  // UART transmit

  // DEBUG dbl
  static char message[20];

  USART_Init();

  // wtf function in assembly
  sprintf(message, "value = %d\n", iter);

  for(uint8_t i = 0; i < strlen(message); i++) {
    USART_Transmit((uint8_t) message[i]);
  }

  // DEBUG call( ... )
  sprintf(message, "a=%d & b=%d\n", (uint8_t) mystruct.a, (uint8_t) mystruct.b);

  for(uint8_t i = 0; i < strlen(message); i++) {
    USART_Transmit((uint8_t) message[i]);
  }

  // END of UART transmit
#endif

  for(uint8_t i = 0; i < iter; i++) {
    _delay_ms(500);

    PORTB ^= 1 << 5;
  }

  while(1);
}

#ifdef UART_DEBUG
/***
 * UART DEBUG
 */
#include <avr/io.h>
#include <string.h>
#include <stdio.h>

#define FOSC 16000000 // Clock Speed
#define BAUD 9600

// FOSC/16/BAUD - 1 = 103.166 -> 103
#define MH16_9600_UBRR 103

void USART_Init()
{
  UBRR0H = (uint8_t) (MH16_9600_UBRR >> 8);
  UBRR0L = (uint8_t) MH16_9600_UBRR;

  UCSR0B = (1 << RXEN0) | (1 << TXEN0);

  UCSR0C = (0<<USBS0) | (3 << UCSZ00);
}

void USART_Transmit( uint8_t data )
{
  while (!(UCSR0A & ( 1<<UDRE0)));

  UDR0 = data;
}
#endif