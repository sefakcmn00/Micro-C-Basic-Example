

char i=0;

void main() {

CMCON=0X07; // COMPARATOR KISMI KAPATILDI
VRCON=0;
TRISA=0B00000000;
TRISB=0X00;
PORTA=0;
PORTB=0;
while(1<10)
{
portb.rb2=1;
i=i+1;
delay_ms(100);


}
  portb.rb2=0;


}