
_main:

;WH_LE_DONGUSU.c,5 :: 		void main() {
;WH_LE_DONGUSU.c,7 :: 		CMCON=0X07; // COMPARATOR KISMI KAPATILDI
	MOVLW      7
	MOVWF      CMCON+0
;WH_LE_DONGUSU.c,8 :: 		VRCON=0;
	CLRF       VRCON+0
;WH_LE_DONGUSU.c,9 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;WH_LE_DONGUSU.c,10 :: 		TRISB=0X00;
	CLRF       TRISB+0
;WH_LE_DONGUSU.c,11 :: 		PORTA=0;
	CLRF       PORTA+0
;WH_LE_DONGUSU.c,12 :: 		PORTB=0;
	CLRF       PORTB+0
;WH_LE_DONGUSU.c,13 :: 		while(1<10)
L_main0:
;WH_LE_DONGUSU.c,15 :: 		portb.rb2=1;
	BSF        PORTB+0, 2
;WH_LE_DONGUSU.c,16 :: 		i=i+1;
	INCF       _i+0, 1
;WH_LE_DONGUSU.c,17 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;WH_LE_DONGUSU.c,20 :: 		}
	GOTO       L_main0
;WH_LE_DONGUSU.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
