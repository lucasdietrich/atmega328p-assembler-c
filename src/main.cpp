#include <avr/io.h>
#include <util/delay.h>

#include <string.h>
#include <stdio.h>

// #define UART_DEBUG

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

// assembler function that call a function defined by : uint8_t (*) (uint8_t)
// give to this function a parameter which is a pointer to its context (type void *)
extern "C" void call(uint8_t (*) (uint8_t), void *);


void USART_Init();
void USART_Transmit(uint8_t data);

int main() {
  DDRB = 1 << 5;

  uint8_t iter = qtr(VALUE, VALUE, VALUE, VALUE);
  
#ifdef UART_DEBUG
  // UART transmit
  static char message[10];

  USART_Init();

  // wtf function in assembly
  sprintf(message, "value = %d\n", iter);

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