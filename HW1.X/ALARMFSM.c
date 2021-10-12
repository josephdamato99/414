extern int WARN;
extern int Buzz;
int count;
#include"alarm_intf.h"
static enum A_States
{A_S, A_O,A_C} A_State;
void ALARMFSM(){
    switch (A_State){
      case A_S:
        A_State=A_C;
        break;
        case A_C:
         if(readDoor()==1){
         A_State=A_C;        
         }
         else{
         A_State=A_O;    
         }
         break;
        case A_O:
        if(readDoor()==0){
        A_State=A_O;       
        }
        else{
            A_State=A_C;
        }
        break;
        default:
            A_State=A_S;
            break;
    }
    switch(A_State){
        case A_C:
            WARN=0;
            Buzz=0;
            count=0;
       break;
        case A_O:
            if(WARN==0&count<30){
            WARN=1; 
            count++;
            Buzz=0;
            }
            else if(WARN==0&count>=30){
            WARN=1;
            count=31;
            Buzz=1;
            }
            else if(WARN==1&count<30){
            WARN=0;    
            count++;
            Buzz=0;
            }
            else if(WARN==1&count>=30){
            WARN=0;
            count=31;
            Buzz=1;
            } 
            else{
            WARN=1;        
            }
            }
        }
    
    
    
    
    
    

