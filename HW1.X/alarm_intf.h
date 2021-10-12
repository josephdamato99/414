
#include <xc.h>
#include <inttypes.h>
#ifndef ALARM_INTF_H

#define ALARM__INTF_H
// Initialize the alarm interfaces
void initAlarm();
extern uint8_t readDoor();
// turn warning LED OFF
 extern void ledOff();
// turn warning LED ON
 extern void ledOn();
// turn alarm buzzer OFF
extern void alarmOff();
// turn alarm buzzer ON
void alarmOn();
#endif