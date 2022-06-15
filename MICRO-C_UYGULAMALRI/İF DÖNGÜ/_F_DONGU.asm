
_main:

;_F_DONGU.c,1 :: 		void main() {
;_F_DONGU.c,2 :: 		TRISA=0B00000000;
	CLRF       TRISA+0
;_F_DONGU.c,3 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;_F_DONGU.c,4 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;_F_DONGU.c,5 :: 		PORTA=0;
	CLRF       PORTA+0
;_F_DONGU.c,6 :: 		PORTb=0;
	CLRF       PORTB+0
;_F_DONGU.c,7 :: 		porta.ra0=1;
	BSF        PORTA+0, 0
;_F_DONGU.c,8 :: 		while(1)
L_main0:
;_F_DONGU.c,11 :: 		if(PortA.RA0=1)
	BSF        PORTA+0, 0
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;_F_DONGU.c,13 :: 		DELAY_MS(1000);
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
;_F_DONGU.c,14 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;_F_DONGU.c,15 :: 		}
L_main2:
;_F_DONGU.c,16 :: 		if(portb.rb0=1)
	BSF        PORTB+0, 0
	BTFSS      PORTB+0, 0
	GOTO       L_main4
;_F_DONGU.c,18 :: 		delay_ms(1000);
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
;_F_DONGU.c,19 :: 		Portb.rb0=0;
	BCF        PORTB+0, 0
;_F_DONGU.c,20 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;_F_DONGU.c,21 :: 		porta.ra0=0;
	BCF        PORTA+0, 0
;_F_DONGU.c,22 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;_F_DONGU.c,24 :: 		}
L_main4:
;_F_DONGU.c,28 :: 		}
	GOTO       L_main0
;_F_DONGU.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
