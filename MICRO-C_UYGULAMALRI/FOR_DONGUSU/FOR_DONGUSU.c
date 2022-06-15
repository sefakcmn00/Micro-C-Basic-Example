

 char i,led;

void main() {

cmcon=0; // comparator(karþýlaþtýrýcý kapatýldý pinler dijital olarak ayarlandý
vrcon=0; // referans voltak giriþi kapatýldý
TRISB=0x00;  // 0x00 demek 0 demektir.
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