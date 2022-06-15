#line 1 "C:/Users/ASUS/Desktop/MICRO-C/FOR_DONGUSU/FOR_DONGUSU.c"


 char i,led;

void main() {

cmcon=0;
vrcon=0;
TRISB=0x00;
trisa=0b00000000;
portb=0;
porta=0;
led=1;

while(1)
{
 for(i=1;i<8;i++)
 {
 portb=led;
 led=led << 1;
 delay_ms(100);

 }
 for(i=1;i<8;i++)
 {
 portb=led;
 led=led>> 1;
 delay_ms(100);
 }

}

}
