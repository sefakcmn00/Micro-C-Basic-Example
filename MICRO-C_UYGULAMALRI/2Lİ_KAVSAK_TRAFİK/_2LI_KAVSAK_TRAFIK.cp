#line 1 "C:/Users/ASUS/Desktop/MICRO-C/2L�_KAVSAK_TRAF�K/_2LI_KAVSAK_TRAFIK.c"
void main() {
TRISA=0B00000000;
TRISB=0B00000000;
PORTA=0;
PORTB=0;
CMCON=7;
while(1)
{
 PORTA.RA0=1;
 PORTB.RB2=1;
 DELAY_MS(2000);
 PORTA.RA0=0;
 PORTB.RB2=0;
 PORTA.RA1=1;
 PORTB.RB1=1;
 DELAY_MS(1000);
 PORTA.RA1=0;
 PORTB.RB1=0;
 PORTA.RA2=1;
 PORTB.RB0=1;
 DELAY_MS(2000);
PORTA.RA2=0;
PORTB.RB0=0;
PORTA.RA1=1;
PORTB.RB1=1;
 DELAY_MS(1000);
 PORTA.RA1=0;
 PORTB.RB1=0;



}
}
