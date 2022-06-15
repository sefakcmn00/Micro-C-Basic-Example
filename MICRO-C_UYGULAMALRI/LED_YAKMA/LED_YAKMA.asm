
_main:

;LED_YAKMA.c,5 :: 		void main() {
;LED_YAKMA.c,7 :: 		TRISA=0B00000000; // PORTA BINARY(2LÝK) SÝSTEMDE ÇIKIÞ YAPILDI - EGER BINARY VERÝCEKSEK 0B YAZILMASI LAZIM
	CLRF       TRISA+0
;LED_YAKMA.c,10 :: 		PORTA=0; // PORTA ÝÇERÝÐÝ TEMÝZLENDÝ
	CLRF       PORTA+0
;LED_YAKMA.c,12 :: 		while(1)
L_main0:
;LED_YAKMA.c,14 :: 		PORTA.RA0=1;    // PORTA'NIN 0.CI BACAÐINI 1 YAP YANÝ 17.BACAGINA +5V YOLLADIK
	BSF        PORTA+0, 0
;LED_YAKMA.c,15 :: 		DELAY_MS(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LED_YAKMA.c,16 :: 		PORTA.RA0=0; // PORTA'NIN 0.CI BÝTÝNÝ 0 YAPTIK 17.BACAGI 0 VOLT YOLLADIK
	BCF        PORTA+0, 0
;LED_YAKMA.c,17 :: 		DELAY_MS(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LED_YAKMA.c,20 :: 		}
	GOTO       L_main0
;LED_YAKMA.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
