
#define bekle delay_ms(100)
#define ButonA portb.b7
short rakam[10]={63,25,11,32,35,78,10,6,27,5}  ;
short sayi=0;

void main() {

      TRISB=128;
      PORTB=63;
      bekle;
      sayi=0;
      while(1)
      {
      
      if(ButonA==1) sayi=sayi+1;
      while(ButonA==1){delay_ms(100);}
      PORTB=rakam[sayi];
      if(sayi>9) sayi=0;

      }
}