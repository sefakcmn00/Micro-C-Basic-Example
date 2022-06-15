
_main:

;FOR_DONGUSU.c,5 :: 		void main() {
;FOR_DONGUSU.c,7 :: 		cmcon=0; // comparator(karþýlaþtýrýcý kapatýldý pinler dijital olarak ayarlandý
	CLRF       CMCON+0
;FOR_DONGUSU.c,8 :: 		vrcon=0; // referans voltak giriþi kapatýldý
	CLRF       VRCON+0
;FOR_DONGUSU.c,9 :: 		TRISB=0x00;  // 0x00 demek 0 demektir.
	CLRF       TRISB+0
;FOR_DONGUSU.c,10 :: 		trisa=0b00000000;
	CLRF       TRISA+0
;FOR_DONGUSU.c,11 :: 		portb=0;
	CLRF       PORTB+0
;FOR_DONGUSU.c,12 :: 		porta=0;
	CLRF       PORTA+0
;FOR_DONGUSU.c,13 :: 		led=1;
	MOVLW      1
	MOVWF      _led+0
;FOR_DONGUSU.c,15 :: 		while(1)
L_main0:
;FOR_DONGUSU.c,17 :: 		for(i=1;i<8;i++)
	MOVLW      1
	MOVWF      _i+0
L_main2:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;FOR_DONGUSU.c,19 :: 		portb=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;FOR_DONGUSU.c,20 :: 		led=led << 1;
	RLF        _led+0, 1
	BCF        _led+0, 0
;FOR_DONGUSU.c,21 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;FOR_DONGUSU.c,17 :: 		for(i=1;i<8;i++)
	INCF       _i+0, 1
;FOR_DONGUSU.c,23 :: 		}
	GOTO       L_main2
L_main3:
;FOR_DONGUSU.c,24 :: 		for(i=1;i<8;i++)
	MOVLW      1
	MOVWF      _i+0
L_main6:
	MOVLW      8
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;FOR_DONGUSU.c,26 :: 		portb=led;
	MOVF       _led+0, 0
	MOVWF      PORTB+0
;FOR_DONGUSU.c,27 :: 		led=led>> 1;
	RRF        _led+0, 1
	BCF        _led+0, 7
;FOR_DONGUSU.c,28 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;FOR_DONGUSU.c,24 :: 		for(i=1;i<8;i++)
	INCF       _i+0, 1
;FOR_DONGUSU.c,29 :: 		}
	GOTO       L_main6
L_main7:
;FOR_DONGUSU.c,31 :: 		}
	GOTO       L_main0
;FOR_DONGUSU.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
