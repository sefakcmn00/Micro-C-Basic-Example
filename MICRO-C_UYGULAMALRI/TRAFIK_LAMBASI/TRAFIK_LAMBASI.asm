
_main:

;TRAFIK_LAMBASI.c,1 :: 		void main() {
;TRAFIK_LAMBASI.c,2 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;TRAFIK_LAMBASI.c,3 :: 		PORTA=0;
	CLRF       PORTA+0
;TRAFIK_LAMBASI.c,4 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;TRAFIK_LAMBASI.c,5 :: 		while(1)
L_main0:
;TRAFIK_LAMBASI.c,7 :: 		PORTA=0B00000001;
	MOVLW      1
	MOVWF      PORTA+0
;TRAFIK_LAMBASI.c,8 :: 		DELAY_MS(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
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
;TRAFIK_LAMBASI.c,9 :: 		PORTA=0B00000010;
	MOVLW      2
	MOVWF      PORTA+0
;TRAFIK_LAMBASI.c,10 :: 		DELAY_MS(1000);
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
;TRAFIK_LAMBASI.c,11 :: 		PORTA=0B00000100;
	MOVLW      4
	MOVWF      PORTA+0
;TRAFIK_LAMBASI.c,12 :: 		DELAY_MS(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;TRAFIK_LAMBASI.c,13 :: 		PORTA=0B00000010;
	MOVLW      2
	MOVWF      PORTA+0
;TRAFIK_LAMBASI.c,14 :: 		DELAY_MS(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;TRAFIK_LAMBASI.c,15 :: 		PORTA=0B00000001;
	MOVLW      1
	MOVWF      PORTA+0
;TRAFIK_LAMBASI.c,16 :: 		}
	GOTO       L_main0
;TRAFIK_LAMBASI.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
