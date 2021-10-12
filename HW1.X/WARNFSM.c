
#include "alarm_intf.h"
#include "WARNFSM.h"
#include <inttypes.h>
extern uint8_t WARN;
static enum WARN_States
{WARN_S, WARN_OFF,WARN_On} WARN_State;
void WARNFSM(){
   switch(WARN_State){
       case WARN_S:
           WARN_State=WARN_OFF;
           break;
       case WARN_OFF:             
           if(WARN==1){
           WARN_State=WARN_On;    
           }
           else{
           WARN_State=WARN_OFF;
           }
           break;
       case WARN_On:
           if(WARN==0){
           WARN_State=WARN_OFF;    
           }
           else{
           WARN_State=WARN_On;    
           }
           break;
       default:
           WARN_State=WARN_S;
           break;
   }
   
   
   
   switch(WARN_State){
       case WARN_OFF:
         ledOff();  
       
           break;
       case WARN_On:
          ledON(); 
           break;
   }
   }
   
        
        
        
        
    
    
    
    
    
    
    
    
    
    
    
    

