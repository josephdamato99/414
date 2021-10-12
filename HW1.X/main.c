
#pragma config FNOSC= FRCPLL,POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL= MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV= DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN= OFF


#include <stdio.h>
#include <stdlib.h>
#include "alarm_intf.h"
#include "AlARMFSM.h"
#include "WARNFSM.h"
/*
 * 
 */
 int LED;
 int Buzz;
 uint8_t WARN;
void main() {
    initAlaram();
    timer1_init();
   uint16_t ta1= timer1_read();
   while(1){
       uint16_t ta2= timer1_read();
       if(timer1_elapsed_ms(ta1,ta2)>1000){
        ALARMFSM();   
        WARNFSM();
        write();
        ta1= ta2;
       }
       
       
       
   }
}

