

#define _SUPRRESS_PLIB_WARNING
#include <plib.h>
#include"alarm_intf.h" 
#include <stdio.h>
#include <xc.h>
#include <inttypes.h>
#define PORT IOPORT_A
#define PORT2 IOPORT_B
#define PORT3 IOPORT_C
#define PINS BIT_7

void initAlaram(){
 PORTSetPinsDigitalOut(PORT,PINS);
 PORTSetPinsDigitalOut(PORT2,PINS);
 PORTSetPinsDigitalIn(PORT3,PINS);   
}

uint8_t readDoor(){
uint8_t data;
data= PORT3;
return data;
    
}
void LedOff(){
    LED=0;
    PORT=LED;
}
void LedOn(){
LED=1;    
PORT=LED;
}
void alarmOff(){
Buzz=0;    
   PORT2 =Buzz;
}
void alarmOn(){
Buzz=2; 
PORT2=Buzz;  
}