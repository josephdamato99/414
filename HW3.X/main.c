
#pragma config FNOSC = FRCPLL, POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV = DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN = OFF

#include <xc.h>
#include <inttypes.h>
#include <plib.h>
#include "UIFSM.h"
#include "PIDFSM.h"
#include "vmonitor.h"
#define _SUPPRESS_PLIB_WARNING


typedef struct task {
   int state;
   uint32_t period; 
   uint32_t elapsedTime;
   int (*TickFctP)(int);
} task;

task PIDFSM, UIFSM, vmonitor;


void main(){
    const uint32_t tasksPeriodGCD = 100;
    uint8_t i = 0;
    unsigned char i=0;
    tasks[i].state = PIDFSM_SMStart;
    tasks[i].period = 100;
    tasks[i].elapsedTime = tasks[i].period;
    tasks[i].TickFct = &TickFct_PIDFSM;  
    i++;
    tasks[i].state = UIFSM_SMStart;
    tasks[i].period = 200;
    tasks[i].elapsedTime = tasks[i].period;
    tasks[i].TickFct = &TickFct_UIFSM;
    i++;
    tasks[i].state = vmonitor_SMStart;
    tasks[i].period = 5000;
    tasks[i].elapsedTime = tasks[i].period;
    tasks[i].TickFct = &checkvolt_vmonito;
    zTimerSet(tasksPeriodGCD);
    zTimerOn();

  
    
   while (1) {
        uint8_t i;
        if (zTimerReadFlag()) {
            for (i = 0; i < tasksNum; ++i) {
                if ( tasks[i].elapsedTime >= tasks[i].period ) {
                tasks[i].state = tasks[i].TickFct(tasks[i].state);
               tasks[i].elapsedTime = 0;
            }
            tasks[i].elapsedTime += tasksPeriodGCD;
        }
    }

}