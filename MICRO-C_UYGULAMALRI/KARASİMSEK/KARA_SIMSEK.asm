
_main:

;KARA_SIMSEK.c,4 :: 		void main() {
;KARA_SIMSEK.c,5 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;KARA_SIMSEK.c,6 :: 		PORTB=0;
	CLRF       PORTB+0
;KARA_SIMSEK.c,7 :: 		CMCON=7;  // ANALOG GÝRÝÞLERÝ KAPATIYORUZ
	MOVLW      7
	MOVWF      CMCON+0
;KARA_SIMSEK.c,9 :: 		while(1)
L_main0:
;KARA_SIMSEK.c,11 :: 		PORTB=0B00000001;
	MOVLW      1
	MOVWF      PORTB+0
;KARA_SIMSEK.c,12 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;KARA_SIMSEK.c,13 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
;KARA_SIMSEK.c,14 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;KARA_SIMSEK.c,15 :: 		PORTB=0B000000100;
	MOVLW      4
	MOVWF      PORTB+0
;KARA_SIMSEK.c,16 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;KARA_SIMSEK.c,17 :: 		PORTB=0B00001000;
	MOVLW      8
	MOVWF      PORTB+0
;KARA_SIMSEK.c,18 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;KARA_SIMSEK.c,19 :: 		PORTB=0B00010000;
	MOVLW      16
	MOVWF      PORTB+0
;KARA_SIMSEK.c,20 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;KARA_SIMSEK.c,21 :: 		PORTB=0B00100000;
	MOVLW      32
	MOVWF      PORTB+0
;KARA_SIMSEK.c,22 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;KARA_SIMSEK.c,23 :: 		PORTB=0B01000000;
	MOVLW      64
	MOVWF      PORTB+0
;KARA_SIMSEK.c,24 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;KARA_SIMSEK.c,25 :: 		PORTB=0B10000000;
	MOVLW      128
	MOVWF      PORTB+0
;KARA_SIMSEK.c,26 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;KARA_SIMSEK.c,29 :: 		PORTB=0B10000000;
	MOVLW      128
	MOVWF      PORTB+0
;KARA_SIMSEK.c,30 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;KARA_SIMSEK.c,31 :: 		PORTB=0B01000000;
	MOVLW      64
	MOVWF      PORTB+0
;KARA_SIMSEK.c,32 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;KARA_SIMSEK.c,33 :: 		PORTB=0B00100000;
	MOVLW      32
	MOVWF      PORTB+0
;KARA_SIMSEK.c,34 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;KARA_SIMSEK.c,35 :: 		PORTB=0B00010000;
	MOVLW      16
	MOVWF      PORTB+0
;KARA_SIMSEK.c,36 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;KARA_SIMSEK.c,37 :: 		PORTB=0B00001000;
	MOVLW      8
	MOVWF      PORTB+0
;KARA_SIMSEK.c,38 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
	NOP
;KARA_SIMSEK.c,39 :: 		PORTB=0B00000100;
	MOVLW      4
	MOVWF      PORTB+0
;KARA_SIMSEK.c,40 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;KARA_SIMSEK.c,41 :: 		PORTB=0B00000010;
	MOVLW      2
	MOVWF      PORTB+0
;KARA_SIMSEK.c,42 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
	NOP
;KARA_SIMSEK.c,43 :: 		PORTB=0B00000001;
	MOVLW      1
	MOVWF      PORTB+0
;KARA_SIMSEK.c,44 :: 		DELAY_MS(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
	NOP
;KARA_SIMSEK.c,47 :: 		}
	GOTO       L_main0
;KARA_SIMSEK.c,53 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
