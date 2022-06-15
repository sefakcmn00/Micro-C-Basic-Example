#line 1 "C:/Users/ASUS/Desktop/MICRO-C/LED_YAKMA/LED_YAKMA.c"




void main() {

TRISA=0B00000000;


PORTA=0;

while(1)
{
PORTA.RA0=1;
DELAY_MS(1000);
PORTA.RA0=0;
DELAY_MS(1000);


}

}
