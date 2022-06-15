
_main:

;D_SPLAY_PORT.c,7 :: 		void main() {
;D_SPLAY_PORT.c,9 :: 		TRISB=128;
	MOVLW       128
	MOVWF       TRISB+0 
;D_SPLAY_PORT.c,10 :: 		PORTB=63;
	MOVLW       63
	MOVWF       PORTB+0 
;D_SPLAY_PORT.c,11 :: 		bekle;
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main0:
	DECFSZ      R13, 1, 1
	BRA         L_main0
	DECFSZ      R12, 1, 1
	BRA         L_main0
	DECFSZ      R11, 1, 1
	BRA         L_main0
	NOP
;D_SPLAY_PORT.c,12 :: 		sayi=0;
	CLRF        _sayi+0 
;D_SPLAY_PORT.c,13 :: 		while(1)
L_main1:
;D_SPLAY_PORT.c,16 :: 		if(ButonA==1) sayi=sayi+1;
	BTFSS       PORTB+0, 7 
	GOTO        L_main3
	INCF        _sayi+0, 1 
L_main3:
;D_SPLAY_PORT.c,17 :: 		while(ButonA==1){delay_ms(100);}
L_main4:
	BTFSS       PORTB+0, 7 
	GOTO        L_main5
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	GOTO        L_main4
L_main5:
;D_SPLAY_PORT.c,18 :: 		PORTB=rakam[sayi];
	MOVLW       _rakam+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_rakam+0)
	MOVWF       FSR0L+1 
	MOVF        _sayi+0, 0 
	ADDWF       FSR0L+0, 1 
	MOVLW       0
	BTFSC       _sayi+0, 7 
	MOVLW       255
	ADDWFC      FSR0L+1, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTB+0 
;D_SPLAY_PORT.c,19 :: 		if(sayi>9) sayi=0;
	MOVLW       128
	XORLW       9
	MOVWF       R0 
	MOVLW       128
	XORWF       _sayi+0, 0 
	SUBWF       R0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
	CLRF        _sayi+0 
L_main7:
;D_SPLAY_PORT.c,21 :: 		}
	GOTO        L_main1
;D_SPLAY_PORT.c,22 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
