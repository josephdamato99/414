#include <plib.h>
#include <inttypes.h>
void initCompare1() {
ANSELA=1;
TRISA=0x010100;
CNPUA=0x00;

}
uint8_t readCompare1() {
 uint8_t CA=PORTAbits.RA2;
uint8_t CB=PORTAbits.RA4;    
if(CA>CB){
return 1;
}
else{
return 0;
}


}
