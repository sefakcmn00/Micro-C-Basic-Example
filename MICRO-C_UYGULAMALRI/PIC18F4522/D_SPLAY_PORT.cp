#line 1 "C:/Users/ASUS/Desktop/MICRO-C/PIC18F4522/D_SPLAY_PORT.c"



short rakam[10]={63,25,11,32,35,78,10,6,27,5} ;
short sayi=0;

void main() {

 TRISB=128;
 PORTB=63;
  delay_ms(100) ;
 sayi=0;
 while(1)
 {

 if( portb.b7 ==1) sayi=sayi+1;
 while( portb.b7 ==1){delay_ms(100);}
 PORTB=rakam[sayi];
 if(sayi>9) sayi=0;

 }
}
