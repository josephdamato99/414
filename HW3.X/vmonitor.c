#include <plib.h>
#include <inttypes.h>
#include "compare1.h"
#include "timer2.h"



static enum VOLT_States
{VOLT_Init,VOLT_On, VOLT_Wait, VOLT_Off} VOLT_State; 


void delay(int milisecounds){
int delay=milisecounds;    
uint16_t time=timer2_read();    
  while(timer2_read()<delay+time){
      ;
  }      
}

void checkvolts(){
    
 switch(VOLT_State) {
     case VOLT_Init:
         VOLT_State=VOLT_On;
     case VOLT_On:
       VOLT_State=VOLT_Wait;
       break;
     case VOLT_Wait:
         delay(50);
         VOLT_State=VOLT_Off;
         break;
     case VOLT_Off:
         VOLT_State=VOLT_Init;
         break;
         
 } 
switch(VOLT_State){
    case VOLT_Init:
       break;
    case VOLT_On:
      PORTBbits.RB0==1;  
      break;
    case VOLT_Wait:
        break;
    case VOLT_Off:
      PORTBbits.RB0==0;
      if(readCompare1()!=1){
        //shutdown_lb()  
      }
      break;
} 
}
