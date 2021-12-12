#include <stdint.h>
#include <xc.h>
#include <inttypes.h>

#ifndef TIMER2_H
#define	TIMER2_H

#define CLOCK_FREQ 40000000

#define PRESCALE 256

extern void timer2_init();

extern uint16_t timer2_read();

extern uint16_t timer2_elapsed_ms(uint16_t t1, uint16_t t2 );

#endif

