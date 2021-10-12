
#pragma config FNOSC= FRCPLL,POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL= MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV= DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN= OFF

#include"alarm_intf.h" 
#include <stdio.h>
#include <xc.h>
#include <inttypes.h>

extern int LED;
extern int Buzz;
extern int WARN;
void initAlaram(){
ANSELA= 1; //analog  
TRISA = 0x1F; //input    
CNPUA = 0x1F;    
ANSELB = 0; //digital
TRISB = 0x0000; //output
LATB = 0x0000; // init output as 0

}

uint8_t readDoor(){
uint8_t data;
data= PORTA;    
return data; 

}

void write(){
 uint16_t outled= LED& 0x0001;   
 uint16_t outBuzz= Buzz & 0x0002;  
LATB= outled| outBuzz;    
}

void ledOff(){
LED=0;  
}

void ledON(){
LED=1;  

}

void alarmOff(){
Buzz=0;     
}


void alarmOn(){
Buzz=2;       

}
