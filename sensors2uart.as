opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6446"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 5 "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	dw 0x3F72 ;#
	FNCALL	_main,_initial
	FNCALL	_main,_UART_Init
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,_read_DHT11
	FNCALL	_main,_read_PIR
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_command
	FNCALL	_main,_data
	FNCALL	_main,_sprintf
	FNCALL	_main,_UART_SendString
	FNCALL	_initial,_command
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_UART_SendString,_UART_SendChar
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	
STR_1:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	44	;','
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	44	;','
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	56	;'8'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	44	;','
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	53	;'5'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	44	;','
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	10
	retlw	0
psect	strings
	file	"sensors2uart.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	main@buffer
main@buffer:	; 32 bytes @ 0x0
	ds	32
	global	main@buffer1
main@buffer1:	; 32 bytes @ 0x20
	ds	32
	global	main@temp
main@temp:	; 2 bytes @ 0x40
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x42
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x44
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x46
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x48
	ds	2
	global	main@pirState
main@pirState:	; 1 bytes @ 0x4A
	ds	1
	global	main@a
main@a:	; 2 bytes @ 0x4B
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x4D
	ds	2
	global	main@temperature
main@temperature:	; 1 bytes @ 0x4F
	ds	1
	global	main@distance
main@distance:	; 2 bytes @ 0x50
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_command
?_command:	; 0 bytes @ 0x0
	global	??_command
??_command:	; 0 bytes @ 0x0
	global	?_data
?_data:	; 0 bytes @ 0x0
	global	??_data
??_data:	; 0 bytes @ 0x0
	global	?_initial
?_initial:	; 0 bytes @ 0x0
	global	?_UART_Init
?_UART_Init:	; 0 bytes @ 0x0
	global	??_UART_Init
??_UART_Init:	; 0 bytes @ 0x0
	global	?_UART_SendChar
?_UART_SendChar:	; 0 bytes @ 0x0
	global	??_UART_SendChar
??_UART_SendChar:	; 0 bytes @ 0x0
	global	?_UART_SendString
?_UART_SendString:	; 0 bytes @ 0x0
	global	?_read_DHT11
?_read_DHT11:	; 0 bytes @ 0x0
	global	??_read_DHT11
??_read_DHT11:	; 0 bytes @ 0x0
	global	??_read_PIR
??_read_PIR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_read_PIR
?_read_PIR:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	UART_SendChar@bt
UART_SendChar@bt:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_UART_SendString
??_UART_SendString:	; 0 bytes @ 0x1
	global	command@y
command@y:	; 1 bytes @ 0x1
	global	data@z
data@z:	; 1 bytes @ 0x1
	global	read_DHT11@temperature
read_DHT11@temperature:	; 1 bytes @ 0x1
	ds	1
	global	??_initial
??_initial:	; 0 bytes @ 0x2
	global	UART_SendString@str
UART_SendString@str:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	2
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x7
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xA
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xA
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xA
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xB
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xD
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xE
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xE
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x11
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x11
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x12
	ds	2
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x14
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x19
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1D
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1E
	ds	5
;;Data sizes: Strings 91, constant 10, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     35      35
;; BANK1           80      0       0
;; BANK3           96     82      82
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 46
;;		 -> STR_2(CODE[45]), STR_1(CODE[46]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 32
;;		 -> main@buffer1(BANK3[32]), main@buffer(BANK3[32]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S353$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; read_DHT11@temperature	PTR unsigned char  size(1) Largest target is 1
;;		 -> main@temperature(BANK3[1]), 
;;
;; UART_SendString@str	PTR unsigned char  size(1) Largest target is 32
;;		 -> main@buffer1(BANK3[32]), main@buffer(BANK3[32]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _initial->_command
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;   _sprintf->___lwmod
;;   _UART_SendString->_UART_SendChar
;;   ___fttol->___ftpack
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
;;   ___awtoft->___fttol
;;   ___ftmul->___awtoft
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                87    87      0    3085
;;                                             30 BANK0      5     5      0
;;                                              0 BANK3     82    82      0
;;                            _initial
;;                          _UART_Init
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;;                         _read_DHT11
;;                           _read_PIR
;;                            ___awdiv
;;                            ___awmod
;;                            _command
;;                               _data
;;                            _sprintf
;;                    _UART_SendString
;; ---------------------------------------------------------------------------------
;; (1) _initial                                              0     0      0      22
;;                            _command
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             6     3      3     300
;;                                             12 COMMON     2     2      0
;;                                             10 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             14 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             19    12      7     798
;;                                              0 BANK0     19    12      7
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _UART_SendString                                      2     2      0      67
;;                                              1 COMMON     2     2      0
;;                      _UART_SendChar
;; ---------------------------------------------------------------------------------
;; (1) _data                                                 2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _command                                              2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              8 COMMON     6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _read_PIR                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _read_DHT11                                           2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _UART_SendChar                                        1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _UART_Init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initial
;;     _command
;;   _UART_Init
;;   ___awtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;   _read_DHT11
;;   _read_PIR
;;   ___awdiv
;;   ___awmod
;;   _command
;;   _data
;;   _sprintf
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _UART_SendString
;;     _UART_SendChar
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     23      23       5       43.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60     52      52       9       85.4%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 85 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer1        32   32[BANK3 ] unsigned char [32]
;;  buffer         32    0[BANK3 ] unsigned char [32]
;;  c               2   77[BANK3 ] int 
;;  a               2   75[BANK3 ] int 
;;  f               2   72[BANK3 ] int 
;;  e               2   70[BANK3 ] int 
;;  d               2   68[BANK3 ] int 
;;  b               2   66[BANK3 ] int 
;;  distance        2   80[BANK3 ] int 
;;  temp            2   64[BANK3 ] int 
;;  temperature     1   79[BANK3 ] unsigned char 
;;  pirState        1   74[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0      82       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0      82       0
;;Total ram usage:       87 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_initial
;;		_UART_Init
;;		___awtoft
;;		___ftmul
;;		___fttol
;;		_read_DHT11
;;		_read_PIR
;;		___awdiv
;;		___awmod
;;		_command
;;		_data
;;		_sprintf
;;		_UART_SendString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	85
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2-btemp+1+pclath+cstack]
	line	89
	
l2701:	
;sensors2uart.c: 86: int temp, distance;
;sensors2uart.c: 87: unsigned char temperature, pirState;
;sensors2uart.c: 89: TRISB = 0x0B;
	movlw	(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	90
	
l2703:	
;sensors2uart.c: 90: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	91
	
l2705:	
;sensors2uart.c: 91: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	92
	
l2707:	
;sensors2uart.c: 92: PORTD = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	93
	
l2709:	
;sensors2uart.c: 93: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	94
	
l2711:	
;sensors2uart.c: 94: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	96
	
l2713:	
;sensors2uart.c: 96: initial();
	fcall	_initial
	line	97
	
l2715:	
;sensors2uart.c: 97: UART_Init();
	fcall	_UART_Init
	line	98
	
l2717:	
;sensors2uart.c: 98: T1CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(16)	;volatile
	line	100
;sensors2uart.c: 100: while(1) {
	
l593:	
	line	102
	
l2719:	
;sensors2uart.c: 102: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	103
	
l2721:	
;sensors2uart.c: 103: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	104
	
l2723:	
;sensors2uart.c: 104: RB1 = 1;
	bsf	(49/8),(49)&7
	line	105
;sensors2uart.c: 105: _delay((unsigned long)((0.01)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u3477:
decfsz	(??_main+0)+0,f
	goto	u3477
opt asmopt_on

	line	106
	
l2725:	
;sensors2uart.c: 106: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	107
;sensors2uart.c: 107: while(RB0 == 0);
	goto	l594
	
l595:	
	
l594:	
	btfss	(48/8),(48)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l595
u3440:
	
l596:	
	line	108
;sensors2uart.c: 108: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	109
;sensors2uart.c: 109: while(RB0 == 1);
	goto	l597
	
l598:	
	
l597:	
	btfsc	(48/8),(48)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l598
u3450:
	
l599:	
	line	110
;sensors2uart.c: 110: TMR1ON = 0;
	bcf	(128/8),(128)&7
	line	111
	
l2727:	
;sensors2uart.c: 111: temp = ((TMR1H << 8) | TMR1L);
	movf	(15),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movlw	08h
	movwf	btemp+0
u3465:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+0,f
	goto	u3465
	movf	(14),w	;volatile
	iorwf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temp)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	1+(main@temp)^0180h
	line	112
	
l2729:	
;sensors2uart.c: 112: distance = (temp * 0.017);
	movf	(main@temp+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temp)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x44
	movwf	(?___ftmul)
	movlw	0x8b
	movwf	(?___ftmul+1)
	movlw	0x3c
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@distance+1)^0180h
	addwf	(main@distance+1)^0180h
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@distance)^0180h
	addwf	(main@distance)^0180h

	line	115
	
l2731:	
;sensors2uart.c: 115: read_DHT11(&temperature);
	movlw	(main@temperature)&0ffh
	fcall	_read_DHT11
	line	118
	
l2733:	
;sensors2uart.c: 118: pirState = read_PIR();
	fcall	_read_PIR
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@pirState)^0180h
	line	122
	
l2735:	
;sensors2uart.c: 121: int a, b, c, d, e, f;
;sensors2uart.c: 122: a = distance / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@distance+1)^0180h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@distance)^0180h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@a+1)^0180h
	addwf	(main@a+1)^0180h
	movf	(0+(?___awdiv)),w
	clrf	(main@a)^0180h
	addwf	(main@a)^0180h

	line	123
	
l2737:	
;sensors2uart.c: 123: b = distance % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@distance+1)^0180h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@distance)^0180h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@b+1)^0180h
	addwf	(main@b+1)^0180h
	movf	(0+(?___awmod)),w
	clrf	(main@b)^0180h
	addwf	(main@b)^0180h

	line	124
	
l2739:	
;sensors2uart.c: 124: c = a / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@a+1)^0180h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@a)^0180h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@c+1)^0180h
	addwf	(main@c+1)^0180h
	movf	(0+(?___awdiv)),w
	clrf	(main@c)^0180h
	addwf	(main@c)^0180h

	line	125
	
l2741:	
;sensors2uart.c: 125: d = a % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@a+1)^0180h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@a)^0180h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@d+1)^0180h
	addwf	(main@d+1)^0180h
	movf	(0+(?___awmod)),w
	clrf	(main@d)^0180h
	addwf	(main@d)^0180h

	line	126
	
l2743:	
;sensors2uart.c: 126: e = c / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@c+1)^0180h,w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@c)^0180h,w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@e+1)^0180h
	addwf	(main@e+1)^0180h
	movf	(0+(?___awdiv)),w
	clrf	(main@e)^0180h
	addwf	(main@e)^0180h

	line	127
	
l2745:	
;sensors2uart.c: 127: f = c % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@c+1)^0180h,w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@c)^0180h,w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@f+1)^0180h
	addwf	(main@f+1)^0180h
	movf	(0+(?___awmod)),w
	clrf	(main@f)^0180h
	addwf	(main@f)^0180h

	line	128
	
l2747:	
;sensors2uart.c: 128: command(0x80);
	movlw	(080h)
	fcall	_command
	line	129
	
l2749:	
;sensors2uart.c: 129: data(e + 0x30);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@e)^0180h,w
	addlw	030h
	fcall	_data
	line	130
	
l2751:	
;sensors2uart.c: 130: data(f + 0x30);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@f)^0180h,w
	addlw	030h
	fcall	_data
	line	131
	
l2753:	
;sensors2uart.c: 131: data(d + 0x30);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@d)^0180h,w
	addlw	030h
	fcall	_data
	line	132
	
l2755:	
;sensors2uart.c: 132: data(b + 0x30);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@b)^0180h,w
	addlw	030h
	fcall	_data
	line	137
	
l2757:	
;sensors2uart.c: 135: char buffer[32];
;sensors2uart.c: 136: char buffer1[32];
;sensors2uart.c: 137: sprintf(buffer, "Distance: %d cm, Temperature: %d C, PIR: %d\r\n", distance, temperature, pirState);
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@distance+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@distance)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temperature)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	movwf	0+(?_sprintf)+03h
	movf	1+(??_main+1)+0,w
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@pirState)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+3)+0
	clrf	(??_main+3)+0+1
	movf	0+(??_main+3)+0,w
	movwf	0+(?_sprintf)+05h
	movf	1+(??_main+3)+0,w
	movwf	1+(?_sprintf)+05h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	138
	
l2759:	
;sensors2uart.c: 138: sprintf(buffer1, "Distance: 182 cm, Temperature: 25 C, PIR: 1\n");
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_sprintf)
	movlw	(main@buffer1)&0ffh
	fcall	_sprintf
	line	140
	
l2761:	
;sensors2uart.c: 140: UART_SendString(buffer);
	movlw	(main@buffer)&0ffh
	fcall	_UART_SendString
	line	141
	
l2763:	
;sensors2uart.c: 141: UART_SendString(buffer1);
	movlw	(main@buffer1)&0ffh
	fcall	_UART_SendString
	line	143
	
l2765:	
;sensors2uart.c: 143: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3487:
	decfsz	((??_main+0)+0),f
	goto	u3487
	decfsz	((??_main+0)+0+1),f
	goto	u3487
	decfsz	((??_main+0)+0+2),f
	goto	u3487
opt asmopt_on

	line	144
	
l600:	
	line	100
	goto	l593
	
l601:	
	line	145
	
l602:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initial
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

;; *************** function _initial *****************
;; Defined at:
;;		line 47 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text393
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	47
	global	__size_of_initial
	__size_of_initial	equ	__end_of_initial-_initial
	
_initial:	
	opt	stack 7
; Regs used in _initial: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2699:	
;sensors2uart.c: 48: command(0x38);
	movlw	(038h)
	fcall	_command
	line	49
;sensors2uart.c: 49: command(0x01);
	movlw	(01h)
	fcall	_command
	line	50
;sensors2uart.c: 50: command(0x06);
	movlw	(06h)
	fcall	_command
	line	51
;sensors2uart.c: 51: command(0x0C);
	movlw	(0Ch)
	fcall	_command
	line	52
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_initial
	__end_of_initial:
;; =============== function _initial ends ============

	signat	_initial,88
	global	___awtoft
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   10[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text394
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 7
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2689:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l2691:	
	btfss	(___awtoft@c+1),7
	goto	u3431
	goto	u3430
u3431:
	goto	l775
u3430:
	line	38
	
l2693:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	line	40
	
l775:	
	line	41
	
l2695:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	
l2697:	
	line	42
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;;  f2              3   17[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   25[BANK0 ] unsigned um
;;  sign            1   29[BANK0 ] unsigned char 
;;  cntr            1   28[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text395
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 7
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2639:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l737
u3290:
	line	57
	
l2641:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	
l2643:	
	goto	l738
	
l737:	
	line	58
	
l2645:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l739
u3300:
	line	59
	
l2647:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	
l2649:	
	goto	l738
	
l739:	
	line	60
	
l2651:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3315:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3310:
	addlw	-1
	skipz
	goto	u3315
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3325:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3320:
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l2653:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l2655:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l2657:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l2659:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l2661:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	70
	
l740:	
	line	71
	
l2663:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l741
u3330:
	line	72
	
l2665:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3341
	addwf	(___ftmul@f3_as_product+1),f
u3341:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3342
	addwf	(___ftmul@f3_as_product+2),f
u3342:

	
l741:	
	line	73
	
l2667:	
	movlw	01h
u3355:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3355

	line	74
	
l2669:	
	movlw	01h
u3365:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3365
	line	75
	
l2671:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l740
u3370:
	
l742:	
	line	76
	
l2673:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	77
	
l743:	
	line	78
	
l2675:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l744
u3380:
	line	79
	
l2677:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3391
	addwf	(___ftmul@f3_as_product+1),f
u3391:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3392
	addwf	(___ftmul@f3_as_product+2),f
u3392:

	
l744:	
	line	80
	
l2679:	
	movlw	01h
u3405:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3405

	line	81
	
l2681:	
	movlw	01h
u3415:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3415

	line	82
	
l2683:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l743
u3420:
	
l745:	
	line	83
	
l2685:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	
l2687:	
	line	84
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	_sprintf
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer1(32), main@buffer(32), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(45), STR_1(46), 
;; Auto vars:     Size  Location     Type
;;  sp              1   17[BANK0 ] PTR unsigned char 
;;		 -> main@buffer1(32), main@buffer(32), 
;;  _val            4   13[BANK0 ] struct .
;;  c               1   18[BANK0 ] char 
;;  prec            1   12[BANK0 ] char 
;;  flag            1   11[BANK0 ] unsigned char 
;;  ap              1   10[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text396
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 7
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l2579:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l611
	
l612:	
	line	542
	
l2581:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u3211
	goto	u3210
u3211:
	goto	l613
u3210:
	line	545
	
l2583:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2585:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l611
	line	547
	
l613:	
	line	552
	
l2587:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(sprintf@flag)
	line	638
	goto	l614
	line	640
	
l615:	
	line	641
	goto	l616
	line	700
	
l617:	
	line	701
	
l618:	
	line	702
	goto	l619
	line	805
	
l620:	
	line	816
	goto	l611
	line	825
	
l2589:	
	goto	l619
	line	638
	
l614:	
	
l2591:	
	clrw
	iorlw	01h
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l615
	xorlw	100^0	; case 100
	skipnz
	goto	l617
	xorlw	105^100	; case 105
	skipnz
	goto	l618
	goto	l620

	line	825
	
l619:	
	line	1254
	
l2593:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l2595:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1256
	
l2597:	
	btfss	(sprintf@_val+1),7
	goto	u3221
	goto	u3220
u3221:
	goto	l621
u3220:
	line	1257
	
l2599:	
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1258
	
l2601:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1259
	
l621:	
	line	1300
	
l2603:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l2605:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l622
u3230:
	
l2607:	
	goto	l623
	line	1301
	
l622:	
	
l2609:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u3245
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u3245:
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l624
u3240:
	line	1302
	
l2611:	
	goto	l623
	
l624:	
	line	1300
	
l2613:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2615:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l622
u3250:
	
l623:	
	line	1433
	
l2617:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l625
u3260:
	line	1434
	
l2619:	
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2621:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l625:	
	line	1467
	
l2623:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l626
	
l627:	
	line	1484
	
l2625:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1516
	
l2627:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2629:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1517
	
l626:	
	line	1469
	
l2631:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l627
u3270:
	
l628:	
	line	1525
	
l611:	
	line	540
	
l2633:	
	clrw
	iorlw	01h
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l612
u3280:
	
l629:	
	line	1527
	
l616:	
	line	1530
	
l2635:	
	clrc
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	indf
	line	1532
	
l2637:	
	line	1533
;	Return value of _sprintf is never used
	
l630:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_UART_SendString
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:

;; *************** function _UART_SendString *****************
;; Defined at:
;;		line 68 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@buffer1(32), main@buffer(32), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> main@buffer1(32), main@buffer(32), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_SendChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text397
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	68
	global	__size_of_UART_SendString
	__size_of_UART_SendString	equ	__end_of_UART_SendString-_UART_SendString
	
_UART_SendString:	
	opt	stack 7
; Regs used in _UART_SendString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_SendString@str stored from wreg
	movwf	(UART_SendString@str)
	line	69
	
l2571:	
;sensors2uart.c: 69: while(*str) {
	goto	l581
	
l582:	
	line	70
	
l2573:	
;sensors2uart.c: 70: UART_SendChar(*str++);
	movf	(UART_SendString@str),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	fcall	_UART_SendChar
	
l2575:	
	movlw	(01h)
	movwf	(??_UART_SendString+0)+0
	movf	(??_UART_SendString+0)+0,w
	addwf	(UART_SendString@str),f
	line	71
	
l581:	
	line	69
	
l2577:	
	movf	(UART_SendString@str),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,f
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l582
u3200:
	
l583:	
	line	72
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of_UART_SendString
	__end_of_UART_SendString:
;; =============== function _UART_SendString ends ============

	signat	_UART_SendString,4216
	global	_data
psect	text398,local,class=CODE,delta=2
global __ptext398
__ptext398:

;; *************** function _data *****************
;; Defined at:
;;		line 38 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;  z               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  z               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text398
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	38
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 7
; Regs used in _data: [wreg]
;data@z stored from wreg
	movwf	(data@z)
	line	39
	
l2561:	
;sensors2uart.c: 39: PORTD = z;
	movf	(data@z),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	40
	
l2563:	
;sensors2uart.c: 40: RC0 = 1;
	bsf	(56/8),(56)&7
	line	41
	
l2565:	
;sensors2uart.c: 41: RC1 = 0;
	bcf	(57/8),(57)&7
	line	42
	
l2567:	
;sensors2uart.c: 42: RC2 = 1;
	bsf	(58/8),(58)&7
	line	43
;sensors2uart.c: 43: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_data+0)+0,f
u3497:
	clrwdt
decfsz	(??_data+0)+0,f
	goto	u3497
	nop2	;nop
	clrwdt
opt asmopt_on

	line	44
	
l2569:	
;sensors2uart.c: 44: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	45
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_command
psect	text399,local,class=CODE,delta=2
global __ptext399
__ptext399:

;; *************** function _command *****************
;; Defined at:
;;		line 29 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initial
;;		_main
;; This function uses a non-reentrant model
;;
psect	text399
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	29
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
	
_command:	
	opt	stack 7
; Regs used in _command: [wreg]
;command@y stored from wreg
	movwf	(command@y)
	line	30
	
l2551:	
;sensors2uart.c: 30: PORTD = y;
	movf	(command@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	31
	
l2553:	
;sensors2uart.c: 31: RC0 = 0;
	bcf	(56/8),(56)&7
	line	32
	
l2555:	
;sensors2uart.c: 32: RC1 = 0;
	bcf	(57/8),(57)&7
	line	33
	
l2557:	
;sensors2uart.c: 33: RC2 = 1;
	bsf	(58/8),(58)&7
	line	34
;sensors2uart.c: 34: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_command+0)+0,f
u3507:
	clrwdt
decfsz	(??_command+0)+0,f
	goto	u3507
	nop2	;nop
	clrwdt
opt asmopt_on

	line	35
	
l2559:	
;sensors2uart.c: 35: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	36
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
;; =============== function _command ends ============

	signat	_command,4216
	global	___awmod
psect	text400,local,class=CODE,delta=2
global __ptext400
__ptext400:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text400
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2467:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l2469:	
	btfss	(___awmod@dividend+1),7
	goto	u3051
	goto	u3050
u3051:
	goto	l847
u3050:
	line	10
	
l2471:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	line	12
	
l847:	
	line	13
	
l2473:	
	btfss	(___awmod@divisor+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l848
u3060:
	line	14
	
l2475:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l848:	
	line	15
	
l2477:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l849
u3070:
	line	16
	
l2479:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l850
	
l851:	
	line	18
	
l2481:	
	movlw	01h
	
u3085:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3085
	line	19
	
l2483:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	20
	
l850:	
	line	17
	
l2485:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l851
u3090:
	
l852:	
	line	21
	
l853:	
	line	22
	
l2487:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3105
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3105:
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l854
u3100:
	line	23
	
l2489:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l854:	
	line	24
	
l2491:	
	movlw	01h
	
u3115:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3115
	line	25
	
l2493:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l853
u3120:
	
l855:	
	line	26
	
l849:	
	line	27
	
l2495:	
	movf	(___awmod@sign),w
	skipz
	goto	u3130
	goto	l856
u3130:
	line	28
	
l2497:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l856:	
	line	29
	
l2499:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l2501:	
	line	30
	
l857:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text401,local,class=CODE,delta=2
global __ptext401
__ptext401:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text401
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2429:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l2431:	
	btfss	(___awdiv@divisor+1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l779
u2950:
	line	11
	
l2433:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	line	13
	
l779:	
	line	14
	
l2435:	
	btfss	(___awdiv@dividend+1),7
	goto	u2961
	goto	u2960
u2961:
	goto	l780
u2960:
	line	15
	
l2437:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2439:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l780:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l781
u2970:
	line	20
	
l2441:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l782
	
l783:	
	line	22
	
l2443:	
	movlw	01h
	
u2985:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2985
	line	23
	
l2445:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	24
	
l782:	
	line	21
	
l2447:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l783
u2990:
	
l784:	
	line	25
	
l785:	
	line	26
	
l2449:	
	movlw	01h
	
u3005:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3005
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3015
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3015:
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l786
u3010:
	line	28
	
l2451:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2453:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	30
	
l786:	
	line	31
	
l2455:	
	movlw	01h
	
u3025:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3025
	line	32
	
l2457:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l785
u3030:
	
l787:	
	line	33
	
l781:	
	line	34
	
l2459:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3040
	goto	l788
u3040:
	line	35
	
l2461:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l788:	
	line	36
	
l2463:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l2465:	
	line	37
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text402,local,class=CODE,delta=2
global __ptext402
__ptext402:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text402
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2371:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l748
u2840:
	line	50
	
l2373:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2375:	
	goto	l749
	
l748:	
	line	51
	
l2377:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2855:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2850:
	addlw	-1
	skipz
	goto	u2855
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2379:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2381:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2383:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2385:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2387:	
	btfss	(___fttol@exp1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l750
u2860:
	line	57
	
l2389:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l751
u2870:
	line	58
	
l2391:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2393:	
	goto	l749
	
l751:	
	line	59
	
l752:	
	line	60
	
l2395:	
	movlw	01h
u2885:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2885

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l752
u2890:
	
l753:	
	line	62
	goto	l754
	
l750:	
	line	63
	
l2397:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l755
u2900:
	line	64
	
l2399:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	
l2401:	
	goto	l749
	
l755:	
	line	65
	goto	l756
	
l757:	
	line	66
	
l2403:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2915:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2915
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	line	68
	
l756:	
	line	65
	
l2405:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l757
u2920:
	
l758:	
	line	69
	
l754:	
	line	70
	
l2407:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2930
	goto	l759
u2930:
	line	71
	
l2409:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l759:	
	line	72
	
l2411:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l2413:	
	line	73
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text403,local,class=CODE,delta=2
global __ptext403
__ptext403:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text403
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2297:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2650
	goto	l973
u2650:
	
l2299:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l971
u2660:
	
l973:	
	line	65
	
l2301:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	
l2303:	
	goto	l974
	
l971:	
	line	66
	goto	l975
	
l976:	
	line	67
	
l2305:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2675:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2675

	line	69
	
l975:	
	line	66
	
l2307:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l976
u2680:
	
l977:	
	line	70
	goto	l978
	
l979:	
	line	71
	
l2309:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2311:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2313:	
	movlw	01h
u2695:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2695

	line	74
	
l978:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l979
u2700:
	
l980:	
	line	75
	goto	l981
	
l982:	
	line	76
	
l2315:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2715:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2715
	line	78
	
l981:	
	line	75
	
l2317:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l982
u2720:
	
l983:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l984
u2730:
	line	80
	
l2319:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l984:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2321:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2745:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2740:
	addlw	-1
	skipz
	goto	u2745
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2323:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2750
	goto	l985
u2750:
	line	84
	
l2325:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l985:	
	line	85
	line	86
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text404,local,class=CODE,delta=2
global __ptext404
__ptext404:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text404
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2203:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l655
u2350:
	line	9
	
l2205:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l656
	
l657:	
	line	11
	
l2207:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2365
	line	12
	
l2209:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	13
	
l656:	
	line	10
	
l2211:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l657
u2370:
	
l658:	
	line	14
	
l659:	
	line	15
	
l2213:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2385
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2385:
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l660
u2380:
	line	16
	
l2215:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l660:	
	line	17
	
l2217:	
	movlw	01h
	
u2395:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2395
	line	18
	
l2219:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l659
u2400:
	
l661:	
	line	19
	
l655:	
	line	20
	
l2221:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l2223:	
	line	21
	
l662:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text405,local,class=CODE,delta=2
global __ptext405
__ptext405:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text405
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.71a\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2179:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l645
u2280:
	line	11
	
l2181:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l646
	
l647:	
	line	13
	
l2183:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2295
	line	14
	
l2185:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	15
	
l646:	
	line	12
	
l2187:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l647
u2300:
	
l648:	
	line	16
	
l649:	
	line	17
	
l2189:	
	movlw	01h
	
u2315:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2315
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2325
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2325:
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l650
u2320:
	line	19
	
l2191:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2193:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	21
	
l650:	
	line	22
	
l2195:	
	movlw	01h
	
u2335:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2335
	line	23
	
l2197:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l649
u2340:
	
l651:	
	line	24
	
l645:	
	line	25
	
l2199:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l2201:	
	line	26
	
l652:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_read_PIR
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

;; *************** function _read_PIR *****************
;; Defined at:
;;		line 81 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text406
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	81
	global	__size_of_read_PIR
	__size_of_read_PIR	equ	__end_of_read_PIR-_read_PIR
	
_read_PIR:	
	opt	stack 7
; Regs used in _read_PIR: [wreg]
	line	82
	
l2175:	
;sensors2uart.c: 82: return RB3;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(51/8),(51)&7
	movlw	1
	
l2177:	
	line	83
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of_read_PIR
	__end_of_read_PIR:
;; =============== function _read_PIR ends ============

	signat	_read_PIR,89
	global	_read_DHT11
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

;; *************** function _read_DHT11 *****************
;; Defined at:
;;		line 75 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;  temperature     1    wreg     PTR unsigned char 
;;		 -> main@temperature(1), 
;; Auto vars:     Size  Location     Type
;;  temperature     1    1[COMMON] PTR unsigned char 
;;		 -> main@temperature(1), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text407
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	75
	global	__size_of_read_DHT11
	__size_of_read_DHT11	equ	__end_of_read_DHT11-_read_DHT11
	
_read_DHT11:	
	opt	stack 7
; Regs used in _read_DHT11: [wregfsr0]
;read_DHT11@temperature stored from wreg
	line	77
	movwf	(read_DHT11@temperature)
	
l2173:	
;sensors2uart.c: 77: *temperature = 25;
	movlw	(019h)
	movwf	(??_read_DHT11+0)+0
	movf	(read_DHT11@temperature),w
	movwf	fsr0
	movf	(??_read_DHT11+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	78
	
l587:	
	return
	opt stack 0
GLOBAL	__end_of_read_DHT11
	__end_of_read_DHT11:
;; =============== function _read_DHT11 ends ============

	signat	_read_DHT11,4216
	global	_UART_SendChar
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

;; *************** function _UART_SendChar *****************
;; Defined at:
;;		line 63 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_SendString
;; This function uses a non-reentrant model
;;
psect	text408
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	63
	global	__size_of_UART_SendChar
	__size_of_UART_SendChar	equ	__end_of_UART_SendChar-_UART_SendChar
	
_UART_SendChar:	
	opt	stack 6
; Regs used in _UART_SendChar: [wreg]
;UART_SendChar@bt stored from wreg
	movwf	(UART_SendChar@bt)
	line	64
	
l2169:	
;sensors2uart.c: 64: while(!TXIF);
	goto	l575
	
l576:	
	
l575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l576
u2270:
	
l577:	
	line	65
	
l2171:	
;sensors2uart.c: 65: TXREG = bt;
	movf	(UART_SendChar@bt),w
	movwf	(25)	;volatile
	line	66
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_UART_SendChar
	__end_of_UART_SendChar:
;; =============== function _UART_SendChar ends ============

	signat	_UART_SendChar,4216
	global	_UART_Init
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 55 in file "D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text409
	file	"D:\MY STUFFS\MY PROJECTS\EMBEDDED AND IOT PROJECT-MAIN\sensors2uart\sensors2uart.c"
	line	55
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
	opt	stack 7
; Regs used in _UART_Init: [wreg]
	line	56
	
l2163:	
;sensors2uart.c: 56: SPBRG = ((4000000/16/9600) - 1);
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	57
;sensors2uart.c: 57: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	58
;sensors2uart.c: 58: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	59
	
l2165:	
;sensors2uart.c: 59: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	60
	
l2167:	
;sensors2uart.c: 60: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	61
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
;; =============== function _UART_Init ends ============

	signat	_UART_Init,88
psect	text410,local,class=CODE,delta=2
global __ptext410
__ptext410:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
