;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module dgmtest
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _number_t
	.globl _number_h
	.globl _number_f
	.globl _number_e
	.globl _number_d
	.globl _number_c
	.globl _number_b
	.globl _number_a
	.globl _number_9
	.globl _number_8
	.globl _number_7
	.globl _number_6
	.globl _number_5
	.globl _number_4
	.globl _number_3
	.globl _number_2
	.globl _number_1
	.globl _number_0
	.globl _number__
	.globl _main
	.globl _SerialDisplay
	.globl _unsignedIntToStr
	.globl _checkbuttoninterrupt
	.globl _External0_ISR
	.globl _Timer0_ISR
	.globl _checkTarget
	.globl _printStatus
	.globl _listenButtons
	.globl _displayValue
	.globl _displayTemp
	.globl _updateAll
	.globl _updateTemp
	.globl _displayHum
	.globl _checkError
	.globl _updateHumidity
	.globl _displayError
	.globl _timer0_init
	.globl _UART_Receive_ISR
	.globl _PCF8574_Getbutton
	.globl _PCF8574_RelayOff
	.globl _PCF8574_RelayOn
	.globl _PCF8574_Init_input
	.globl _PCF8574_Init_output
	.globl _AHT21_getHum
	.globl _AHT21_getTemp
	.globl _AHT21_updateRawValue
	.globl _AHT21_init
	.globl _displayDigits
	.globl _initialize
	.globl _sendBuffer
	.globl _sendCommandStealth
	.globl _sendCommand
	.globl _decrementTime
	.globl _setTime
	.globl _fillBufferTime
	.globl _SPI_transfer
	.globl _SPI_end
	.globl _SPI_start
	.globl _SPI_init
	.globl _i2c_read_byte
	.globl _i2c_write_byte
	.globl _i2c_read
	.globl _i2c_write
	.globl _i2c_send_nack
	.globl _i2c_send_ack
	.globl _i2c_restart
	.globl _i2c_stop
	.globl _i2c_start
	.globl _i2c_SCL_line
	.globl _i2c_SDA_line
	.globl _i2c_setchannel
	.globl _UART_printDecimalValue
	.globl _UART_printHexValue
	.globl _UART_printBinaryValue
	.globl _UART_hexValueLetter
	.globl _UART_readBuffer
	.globl _UART_println
	.globl _UART_print
	.globl _UART_receiveNumber
	.globl _UART_receive
	.globl _UART_transmit
	.globl _UART_init
	.globl _delay
	.globl _delayMicroseconds
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _periphs
	.globl _mode
	.globl _counter
	.globl _datr
	.globl _dats
	.globl _unsignedIntToStr_PARM_2
	.globl _status1
	.globl _status0
	.globl _humidity
	.globl _temperature
	.globl _THRESHOLD
	.globl _button_pressed
	.globl _target_temp
	.globl _time
	.globl _PCF8574_RelayOff_PARM_2
	.globl _PCF8574_RelayOn_PARM_2
	.globl _ch
	.globl _sendCommandStealth_PARM_2
	.globl _sendCommand_PARM_2
	.globl _setTime_PARM_2
	.globl _timeseconds
	.globl _i2c_read_byte_PARM_2
	.globl _i2c_write_byte_PARM_3
	.globl _i2c_write_byte_PARM_2
	.globl _delay_time
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_UART_printDecimalValue_digit_10000_38:
	.ds 5
_channel:
	.ds 1
_addrW:
	.ds 1
_addrR:
	.ds 1
_delay_time::
	.ds 1
_i2c_write_byte_PARM_2:
	.ds 1
_i2c_write_byte_PARM_3:
	.ds 1
_i2c_read_byte_PARM_2:
	.ds 1
_buffer:
	.ds 4
_digits:
	.ds 4
_timeseconds::
	.ds 2
_setTime_PARM_2:
	.ds 2
_sendCommand_PARM_2:
	.ds 1
_sendCommandStealth_PARM_2:
	.ds 1
_values0:
	.ds 6
_values1:
	.ds 6
_AHT21_getTemp_temp_10000_124:
	.ds 4
_AHT21_getTemp_sloc0_1_0:
	.ds 4
_AHT21_getTemp_sloc1_1_0:
	.ds 4
_AHT21_getHum_hum_10000_131:
	.ds 4
_AHT21_getHum_sloc0_1_0:
	.ds 4
_AHT21_getHum_sloc1_1_0:
	.ds 4
_ch::
	.ds 1
_PCF8574_RelayOn_PARM_2:
	.ds 1
_PCF8574_RelayOff_PARM_2:
	.ds 1
_time::
	.ds 2
_target_temp::
	.ds 1
_button_pressed::
	.ds 1
_THRESHOLD::
	.ds 2
_temperature::
	.ds 1
_humidity::
	.ds 1
_status0::
	.ds 1
_status1::
	.ds 1
_checkError_sloc0_1_0:
	.ds 1
_checkError_sloc2_1_0:
	.ds 1
_unsignedIntToStr_PARM_2:
	.ds 3
_unsignedIntToStr_i_10000_250:
	.ds 2
_unsignedIntToStr_j_20000_253:
	.ds 2
_unsignedIntToStr_temp_30000_254:
	.ds 1
_unsignedIntToStr_sloc0_1_0:
	.ds 2
_SerialDisplay_buffer_10000_255:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_dats::
	.ds 1
_datr::
	.ds 1
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_checkError_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_counter::
	.ds 2
_mode::
	.ds 1
_updateHumidity_temp_10000_161:
	.ds 1
_updateTemp_temp_10000_174:
	.ds 1
_listenButtons_counter_10000_192:
	.ds 1
_listenButtons_last_pressed_10000_192:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_periphs::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_External0_ISR
	.ds	5
	ljmp	_Timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_UART_Receive_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	i2cports.h:24: unsigned char delay_time=0;
	mov	_delay_time,#0x00
;	timer_display.h:12: unsigned int timeseconds = 0;
	clr	a
	mov	_timeseconds,a
	mov	(_timeseconds + 1),a
;	pcf8574.h:12: unsigned char ch = I2C_CHANNEL;
	mov	_ch,#0x02
;	dgmtest.c:24: unsigned int THRESHOLD = 2;
	mov	_THRESHOLD,#0x02
	mov	(_THRESHOLD + 1),a
;	spi.h:30: __idata unsigned char dats = 0; // global variable to send used for assembly method
	mov	r0,#_dats
	mov	@r0,#0x00
;	spi.h:31: __idata unsigned char datr = 0;	// global variable to receive used for assembly method
	mov	r0,#_datr
	mov	@r0,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delayMicroseconds'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	time.h:5: void delayMicroseconds(unsigned long i)
;	-----------------------------------------
;	 function delayMicroseconds
;	-----------------------------------------
_delayMicroseconds:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	time.h:7: i = (i*1000)/1550;
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	__divulong_PARM_2,#0x0e
	mov	(__divulong_PARM_2 + 1),#0x06
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
00103$:
;	time.h:8: for (; i > 0; i--);
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00105$
	dec	r4
	cjne	r4,#0xff,00125$
	dec	r5
	cjne	r5,#0xff,00125$
	dec	r6
	cjne	r6,#0xff,00125$
	dec	r7
00125$:
	sjmp	00103$
00105$:
;	time.h:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	time.h:13: void delay(unsigned long i){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	time.h:14: delayMicroseconds(i*1000);	
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
;	time.h:15: }
	ljmp	_delayMicroseconds
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_init'
;------------------------------------------------------------
;baudrate                  Allocated to registers 
;BRT                       Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:33: void UART_init(unsigned long baudrate){
;	-----------------------------------------
;	 function UART_init
;	-----------------------------------------
_UART_init:
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	uart.h:37: unsigned long BRT = 256 - FOSC / (12 * 15 * baudrate);
	mov	dptr,#0x00b4
	clr	a
	mov	b,a
	lcall	__mullong
	mov	__divulong_PARM_2,dpl
	mov	(__divulong_PARM_2 + 1),dph
	mov	(__divulong_PARM_2 + 2),b
	mov	(__divulong_PARM_2 + 3),a
	mov	dptr,#0xb180
	mov	b, #0x4f
	mov	a, #0x01
	lcall	__divulong
	mov	r4, dpl
	clr	a
	clr	c
	subb	a,r4
	mov	r4,a
;	uart.h:39: SM0 = 0;
;	assignBit
	clr	_SM0
;	uart.h:40: SM1 = 1; 
;	assignBit
	setb	_SM1
;	uart.h:41: TMOD = 0x20; 
	mov	_TMOD,#0x20
;	uart.h:42: TL1 = BRT; 
	mov	_TL1,r4
;	uart.h:43: TH1 = BRT;
	mov	_TH1,r4
;	uart.h:46: TR1 = 1;
;	assignBit
	setb	_TR1
;	uart.h:50: delay(10);
	mov	dptr,#0x000a
	clr	a
	mov	b,a
;	uart.h:51: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_transmit'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	uart.h:53: void UART_transmit(unsigned char dat) {
;	-----------------------------------------
;	 function UART_transmit
;	-----------------------------------------
_UART_transmit:
	mov	_SBUF,dpl
;	uart.h:55: while (!TI){} // Wait until transmission is complete
00101$:
;	uart.h:56: TI = 0; // Clear the transmit interrupt flag
;	assignBit
	jbc	_TI,00118$
	sjmp	00101$
00118$:
;	uart.h:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_receive'
;------------------------------------------------------------
;	uart.h:60: unsigned char UART_receive(){
;	-----------------------------------------
;	 function UART_receive
;	-----------------------------------------
_UART_receive:
;	uart.h:61: while (!RI); // Wait until reception is complete
00101$:
;	uart.h:62: RI = 0; // Clear the receive interrupt flag 
;	assignBit
	jbc	_RI,00118$
	sjmp	00101$
00118$:
;	uart.h:63: return SBUF; // Return received data
	mov	dpl, _SBUF
;	uart.h:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_receiveNumber'
;------------------------------------------------------------
;received                  Allocated to registers r5 
;value                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	uart.h:66: unsigned int UART_receiveNumber() {
;	-----------------------------------------
;	 function UART_receiveNumber
;	-----------------------------------------
_UART_receiveNumber:
;	uart.h:68: unsigned int value = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	uart.h:70: while (1) {
00108$:
;	uart.h:71: received = UART_receive();
	push	ar7
	push	ar6
	lcall	_UART_receive
	mov	r5, dpl
	pop	ar6
	pop	ar7
;	uart.h:72: if (received == '\n' || received == '\r') {
	cjne	r5,#0x0a,00142$
	sjmp	00109$
00142$:
	cjne	r5,#0x0d,00143$
	sjmp	00109$
00143$:
;	uart.h:77: if (received >= '0' && received <= '9') {
	cjne	r5,#0x30,00144$
00144$:
	jc	00108$
	mov	a,r5
	add	a,#0xff - 0x39
	jc	00108$
;	uart.h:78: value = value * 10 + (received - '0');
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x000a
	push	ar5
	lcall	__mulint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	mov	a,r5
	add	a,#0xd0
	mov	r2,#0x00
	add	a, r3
	mov	r6,a
	mov	a,r2
	addc	a, r4
	mov	r7,a
	sjmp	00108$
00109$:
;	uart.h:81: return value;
	mov	dpl, r6
	mov	dph, r7
;	uart.h:82: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_print'
;------------------------------------------------------------
;string                    Allocated to registers 
;------------------------------------------------------------
;	uart.h:85: void UART_print(unsigned char* string) {
;	-----------------------------------------
;	 function UART_print
;	-----------------------------------------
_UART_print:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	uart.h:87: while(*string) {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	uart.h:89: UART_transmit(*string); // Transmit a single character
	mov	dpl, r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_UART_transmit
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.h:90: string++; // Move to the next character in the string
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
;	uart.h:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_println'
;------------------------------------------------------------
;string                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	uart.h:96: void UART_println(unsigned char* string) {
;	-----------------------------------------
;	 function UART_println
;	-----------------------------------------
_UART_println:
;	uart.h:97: UART_print(string);
	lcall	_UART_print
;	uart.h:98: UART_print("\r\n"); //newline
	mov	dptr,#___str_0
	mov	b, #0x80
;	uart.h:99: }
	ljmp	_UART_print
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_readBuffer'
;------------------------------------------------------------
;buffer                    Allocated to registers 
;dat                       Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:101: void UART_readBuffer(unsigned char* buffer){
;	-----------------------------------------
;	 function UART_readBuffer
;	-----------------------------------------
_UART_readBuffer:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	uart.h:102: unsigned char dat = SBUF;
	mov	r4,_SBUF
;	uart.h:104: while(dat!=10){
00101$:
	cjne	r4,#0x0a,00119$
	sjmp	00103$
00119$:
;	uart.h:105: *buffer = dat;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	uart.h:106: buffer++;
;	uart.h:107: dat = SBUF;
	mov	r4,_SBUF
	sjmp	00101$
00103$:
;	uart.h:110: UART_println(buffer);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	uart.h:112: }
	ljmp	_UART_println
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_hexValueLetter'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;hex                       Allocated to registers r6 
;------------------------------------------------------------
;	uart.h:114: unsigned char UART_hexValueLetter(unsigned char val){
;	-----------------------------------------
;	 function UART_hexValueLetter
;	-----------------------------------------
_UART_hexValueLetter:
	mov	r7, dpl
;	uart.h:116: if(val < 10){
	cjne	r7,#0x0a,00156$
00156$:
	jnc	00110$
;	uart.h:117: hex = '0' + val;
	mov	ar6,r7
	mov	a,#0x30
	add	a, r6
	mov	r6,a
	sjmp	00111$
00110$:
;	uart.h:119: switch(val){
	cjne	r7,#0x0a,00158$
	sjmp	00101$
00158$:
	cjne	r7,#0x0b,00159$
	sjmp	00102$
00159$:
	cjne	r7,#0x0c,00160$
	sjmp	00103$
00160$:
	cjne	r7,#0x0d,00161$
	sjmp	00104$
00161$:
	cjne	r7,#0x0e,00162$
	sjmp	00105$
00162$:
;	uart.h:120: case 10: hex = 'A'; break;
	cjne	r7,#0x0f,00107$
	sjmp	00106$
00101$:
	mov	r6,#0x41
;	uart.h:121: case 11: hex = 'B'; break;
	sjmp	00111$
00102$:
	mov	r6,#0x42
;	uart.h:122: case 12: hex = 'C'; break;
	sjmp	00111$
00103$:
	mov	r6,#0x43
;	uart.h:123: case 13: hex = 'D'; break;
	sjmp	00111$
00104$:
	mov	r6,#0x44
;	uart.h:124: case 14: hex = 'E'; break;
	sjmp	00111$
00105$:
	mov	r6,#0x45
;	uart.h:125: case 15: hex = 'F'; break;
	sjmp	00111$
00106$:
	mov	r6,#0x46
;	uart.h:126: default: hex = 'Z';
	sjmp	00111$
00107$:
	mov	r6,#0x5a
;	uart.h:127: }
00111$:
;	uart.h:130: return hex;
	mov	dpl, r6
;	uart.h:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_printBinaryValue'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	uart.h:133: void UART_printBinaryValue(unsigned char val){
;	-----------------------------------------
;	 function UART_printBinaryValue
;	-----------------------------------------
_UART_printBinaryValue:
	mov	r7, dpl
;	uart.h:135: for(i=0; i < 8; i++){
	mov	r6,#0x00
00105$:
;	uart.h:136: if(val&(0b10000000>>i)){
	mov	b,r6
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00123$
00122$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00123$:
	djnz	b,00122$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00102$
;	uart.h:137: UART_transmit('1');
	mov	dpl, #0x31
	push	ar7
	push	ar6
	lcall	_UART_transmit
	pop	ar6
	pop	ar7
	sjmp	00106$
00102$:
;	uart.h:139: UART_transmit('0');
	mov	dpl, #0x30
	push	ar7
	push	ar6
	lcall	_UART_transmit
	pop	ar6
	pop	ar7
00106$:
;	uart.h:135: for(i=0; i < 8; i++){
	inc	r6
	cjne	r6,#0x08,00125$
00125$:
	jc	00105$
;	uart.h:142: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_printHexValue'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;high                      Allocated to registers 
;low                       Allocated to registers r7 
;------------------------------------------------------------
;	uart.h:144: void UART_printHexValue(unsigned char val){
;	-----------------------------------------
;	 function UART_printHexValue
;	-----------------------------------------
_UART_printHexValue:
;	uart.h:147: unsigned char high = val>>4;
	mov	a,dpl
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	dpl,a
;	uart.h:148: unsigned char low = val&0b00001111;
	anl	ar7,#0x0f
;	uart.h:149: UART_transmit(UART_hexValueLetter(high));
	push	ar7
	lcall	_UART_hexValueLetter
	lcall	_UART_transmit
	pop	ar7
;	uart.h:150: UART_transmit(UART_hexValueLetter(low));
	mov	dpl, r7
	lcall	_UART_hexValueLetter
;	uart.h:151: }
	ljmp	_UART_transmit
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_printDecimalValue'
;------------------------------------------------------------
;val                       Allocated to registers r6 
;digit                     Allocated with name '_UART_printDecimalValue_digit_10000_38'
;start                     Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	uart.h:153: void UART_printDecimalValue(unsigned char val){
;	-----------------------------------------
;	 function UART_printDecimalValue
;	-----------------------------------------
_UART_printDecimalValue:
	mov	r7, dpl
;	uart.h:154: unsigned char digit[5] = {'0', '0', '0', '0', '0'};
	mov	_UART_printDecimalValue_digit_10000_38,#0x30
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0001),#0x30
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0002),#0x30
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0003),#0x30
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0004),#0x30
;	uart.h:158: digit[0] = '0' + val/10000;
	mov	r6,#0x00
	mov	_UART_printDecimalValue_digit_10000_38,#0x30
;	uart.h:159: val %= 10000;
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x27
	mov	dpl, r7
	mov	dph, r6
	lcall	__modsint
	mov	r6, dpl
;	uart.h:160: digit[1] = '0' + val/1000;
	mov	r7,#0x00
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0001),#0x30
;	uart.h:161: val %= 1000;
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
;	uart.h:162: digit[2] = '0' + val/100;
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r4
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0002),a
;	uart.h:163: val %= 100;
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
;	uart.h:164: digit[3] = '0' + val/10;
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4, dpl
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r4
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0003),a
;	uart.h:165: digit[4] = '0' + val%10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	a,#0x30
	add	a, r6
	mov	(_UART_printDecimalValue_digit_10000_38 + 0x0004),a
;	uart.h:167: for(i = 0; i < (5-1); i++){
	mov	r7,#0x00
	mov	r6,#0x00
00107$:
;	uart.h:168: if(digit[i] == '0'){
	mov	a,r7
	add	a, #_UART_printDecimalValue_digit_10000_38
	mov	r1,a
	mov	ar5,@r1
	cjne	r5,#0x30,00104$
;	uart.h:169: if(start){
	mov	a,r6
	jz	00108$
;	uart.h:170: UART_transmit(digit[i]);
	mov	dpl, r5
	push	ar7
	push	ar6
	lcall	_UART_transmit
	pop	ar6
	pop	ar7
	sjmp	00108$
00104$:
;	uart.h:173: start = 1;
	mov	r6,#0x01
;	uart.h:174: UART_transmit(digit[i]);
	mov	dpl, r5
	push	ar7
	push	ar6
	lcall	_UART_transmit
	pop	ar6
	pop	ar7
00108$:
;	uart.h:167: for(i = 0; i < (5-1); i++){
	inc	r7
	cjne	r7,#0x04,00143$
00143$:
	jc	00107$
;	uart.h:178: UART_transmit(digit[4]);
	mov	dpl,(_UART_printDecimalValue_digit_10000_38 + 0x0004)
;	uart.h:181: }
	ljmp	_UART_transmit
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_setchannel'
;------------------------------------------------------------
;ch                        Allocated to registers 
;------------------------------------------------------------
;	i2cports.h:26: void i2c_setchannel(unsigned char ch){
;	-----------------------------------------
;	 function i2c_setchannel
;	-----------------------------------------
_i2c_setchannel:
	mov	_channel,dpl
;	i2cports.h:27: channel = ch;
;	i2cports.h:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_SDA_line'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	i2cports.h:29: void i2c_SDA_line(unsigned char value){
;	-----------------------------------------
;	 function i2c_SDA_line
;	-----------------------------------------
_i2c_SDA_line:
	mov	r7, dpl
;	i2cports.h:31: switch(channel){
	clr	a
	cjne	a,_channel,00126$
	sjmp	00101$
00126$:
	mov	a,#0x01
	cjne	a,_channel,00127$
	sjmp	00102$
00127$:
	mov	a,#0x02
;	i2cports.h:32: case 0:
	cjne	a,_channel,00104$
	sjmp	00103$
00101$:
;	i2cports.h:33: SDA0 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_0,c
;	i2cports.h:34: break;
;	i2cports.h:35: case 1:
	ret
00102$:
;	i2cports.h:36: SDA1 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_2,c
;	i2cports.h:37: break;
;	i2cports.h:38: case 2:
	ret
00103$:
;	i2cports.h:39: SDA2 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P1_7,c
;	i2cports.h:40: break;
;	i2cports.h:41: default:
	ret
00104$:
;	i2cports.h:42: SDA0 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_0,c
;	i2cports.h:43: }
;	i2cports.h:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_SCL_line'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	i2cports.h:46: void i2c_SCL_line(unsigned char value){
;	-----------------------------------------
;	 function i2c_SCL_line
;	-----------------------------------------
_i2c_SCL_line:
	mov	r7, dpl
;	i2cports.h:48: switch(channel){
	clr	a
	cjne	a,_channel,00126$
	sjmp	00101$
00126$:
	mov	a,#0x01
	cjne	a,_channel,00127$
	sjmp	00102$
00127$:
	mov	a,#0x02
;	i2cports.h:49: case 0:
	cjne	a,_channel,00104$
	sjmp	00103$
00101$:
;	i2cports.h:50: SCL0 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_1,c
;	i2cports.h:51: break;
;	i2cports.h:52: case 1:
	ret
00102$:
;	i2cports.h:53: SCL1 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_3,c
;	i2cports.h:54: break;
;	i2cports.h:55: case 2:
	ret
00103$:
;	i2cports.h:56: SCL2 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P1_6,c
;	i2cports.h:57: break;
;	i2cports.h:58: default:
	ret
00104$:
;	i2cports.h:59: SCL0 = value;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_P2_1,c
;	i2cports.h:60: }
;	i2cports.h:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2cports.h:64: void i2c_start()
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2cports.h:66: i2c_SDA_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SDA_line
;	i2cports.h:67: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:68: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:69: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:70: i2c_SDA_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SDA_line
;	i2cports.h:71: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:72: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:73: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:74: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2cports.h:77: void i2c_stop()
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2cports.h:79: i2c_SDA_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SDA_line
;	i2cports.h:80: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:81: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:82: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:83: i2c_SDA_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SDA_line
;	i2cports.h:84: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:85: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_restart'
;------------------------------------------------------------
;	i2cports.h:87: void i2c_restart(){
;	-----------------------------------------
;	 function i2c_restart
;	-----------------------------------------
_i2c_restart:
;	i2cports.h:88: i2c_SDA_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SDA_line
;	i2cports.h:89: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:90: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:91: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:92: i2c_SDA_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SDA_line
;	i2cports.h:93: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:94: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:95: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:96: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send_ack'
;------------------------------------------------------------
;	i2cports.h:98: void i2c_send_ack(){
;	-----------------------------------------
;	 function i2c_send_ack
;	-----------------------------------------
_i2c_send_ack:
;	i2cports.h:99: i2c_SDA_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SDA_line
;	i2cports.h:100: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:102: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:103: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:104: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:105: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:106: i2c_SDA_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SDA_line
;	i2cports.h:107: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:108: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send_nack'
;------------------------------------------------------------
;	i2cports.h:110: void i2c_send_nack(){
;	-----------------------------------------
;	 function i2c_send_nack
;	-----------------------------------------
_i2c_send_nack:
;	i2cports.h:111: i2c_SDA_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SDA_line
;	i2cports.h:112: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:114: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:115: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:117: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:118: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:119: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	i2cports.h:121: void i2c_write(unsigned char data){
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7, dpl
;	i2cports.h:123: for(i=0; i < 8; i++){
	mov	r6,#0x00
00107$:
;	i2cports.h:124: switch(channel){
	clr	a
	cjne	a,_channel,00142$
	sjmp	00101$
00142$:
	mov	a,#0x01
	cjne	a,_channel,00143$
	sjmp	00102$
00143$:
	mov	a,#0x02
;	i2cports.h:125: case 0:
	cjne	a,_channel,00104$
	sjmp	00103$
00101$:
;	i2cports.h:126: SDA0 = (data & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P2_0,c
;	i2cports.h:127: break;
;	i2cports.h:128: case 1:
	sjmp	00105$
00102$:
;	i2cports.h:129: SDA1 = (data & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P2_2,c
;	i2cports.h:130: break;
;	i2cports.h:131: case 2:
	sjmp	00105$
00103$:
;	i2cports.h:132: SDA2 = (data & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P1_7,c
;	i2cports.h:133: break;
;	i2cports.h:134: default:
	sjmp	00105$
00104$:
;	i2cports.h:135: SDA0 = (data & 0x80) ? 1 : 0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P2_0,c
;	i2cports.h:136: }
00105$:
;	i2cports.h:137: delay(delay_time);
	mov	r2,_delay_time
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	push	ar7
	push	ar6
	lcall	_delay
;	i2cports.h:138: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:139: delay(delay_time);
	mov	r2,_delay_time
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	_delay
;	i2cports.h:140: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:141: delay(delay_time);
	mov	r2,_delay_time
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2cports.h:143: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	i2cports.h:123: for(i=0; i < 8; i++){
	inc	r6
	cjne	r6,#0x08,00145$
00145$:
	jnc	00146$
	ljmp	00107$
00146$:
;	i2cports.h:145: i2c_SCL_line(1);
	mov	dpl, #0x01
	lcall	_i2c_SCL_line
;	i2cports.h:146: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	_delay
;	i2cports.h:147: i2c_SCL_line(0);
	mov	dpl, #0x00
	lcall	_i2c_SCL_line
;	i2cports.h:148: delay(delay_time);
	mov	r4,_delay_time
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	i2cports.h:149: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read'
;------------------------------------------------------------
;data                      Allocated to registers r5 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	i2cports.h:152: unsigned char i2c_read(){
;	-----------------------------------------
;	 function i2c_read
;	-----------------------------------------
_i2c_read:
;	i2cports.h:153: unsigned char data = 0;
	mov	r7,#0x00
;	i2cports.h:155: for(i=0; i < 8; i++){
	mov	r6,#0x00
00107$:
;	i2cports.h:156: i2c_SCL_line(1);
	mov	dpl, #0x01
	push	ar7
	push	ar6
	lcall	_i2c_SCL_line
;	i2cports.h:157: delay(delay_time);
	mov	r2,_delay_time
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2cports.h:158: data <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	i2cports.h:159: switch(channel){
	clr	a
	cjne	a,_channel,00147$
	sjmp	00101$
00147$:
	mov	a,#0x01
	cjne	a,_channel,00148$
	sjmp	00102$
00148$:
	mov	a,#0x02
;	i2cports.h:160: case 0:
	cjne	a,_channel,00104$
	sjmp	00103$
00101$:
;	i2cports.h:161: data |= SDA0;
	mov	c,_P2_0
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	i2cports.h:162: break;
;	i2cports.h:163: case 1:
	sjmp	00105$
00102$:
;	i2cports.h:164: data |= SDA1;
	mov	c,_P2_2
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	i2cports.h:165: break;
;	i2cports.h:166: case 2:
	sjmp	00105$
00103$:
;	i2cports.h:167: data |= SDA2;
	mov	c,_P1_7
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	i2cports.h:168: break;
;	i2cports.h:169: default:
	sjmp	00105$
00104$:
;	i2cports.h:170: data |= SDA0;
	mov	c,_P2_0
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	i2cports.h:171: }
00105$:
;	i2cports.h:173: i2c_SCL_line(0);
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_i2c_SCL_line
;	i2cports.h:174: delay(delay_time);
	mov	r2,_delay_time
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	_delay
	pop	ar6
	pop	ar7
;	i2cports.h:155: for(i=0; i < 8; i++){
	inc	r6
	cjne	r6,#0x08,00150$
00150$:
	jnc	00151$
	ljmp	00107$
00151$:
;	i2cports.h:176: return data;
	mov	dpl, r7
;	i2cports.h:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_byte'
;------------------------------------------------------------
;i2c_add                   Allocated with name '_i2c_write_byte_PARM_2'
;data                      Allocated with name '_i2c_write_byte_PARM_3'
;ch                        Allocated to registers 
;------------------------------------------------------------
;	i2cports.h:179: void i2c_write_byte(unsigned char ch, unsigned char i2c_add, unsigned char data)
;	-----------------------------------------
;	 function i2c_write_byte
;	-----------------------------------------
_i2c_write_byte:
	mov	_channel,dpl
;	i2cports.h:182: i2c_start();
	lcall	_i2c_start
;	i2cports.h:183: i2c_write(i2c_add << 1);
	mov	a,_i2c_write_byte_PARM_2
	add	a,acc
	mov	dpl,a
	lcall	_i2c_write
;	i2cports.h:184: i2c_write(data);
	mov	dpl, _i2c_write_byte_PARM_3
	lcall	_i2c_write
;	i2cports.h:185: i2c_stop();
;	i2cports.h:186: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;i2c_add                   Allocated with name '_i2c_read_byte_PARM_2'
;ch                        Allocated to registers 
;rec                       Allocated to registers r7 
;------------------------------------------------------------
;	i2cports.h:188: unsigned char i2c_read_byte(unsigned char ch, unsigned char i2c_add)
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	mov	_channel,dpl
;	i2cports.h:193: i2c_start();
	lcall	_i2c_start
;	i2cports.h:194: i2c_write((i2c_add << 1) + 1);
	mov	a,_i2c_read_byte_PARM_2
	add	a,_i2c_read_byte_PARM_2
	inc	a
	mov	dpl,a
	lcall	_i2c_write
;	i2cports.h:195: rec=i2c_read();
	lcall	_i2c_read
	mov	r7, dpl
;	i2cports.h:197: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	i2cports.h:198: return rec;
	mov	dpl, r7
;	i2cports.h:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_init'
;------------------------------------------------------------
;	spi.h:34: void SPI_init() { 
;	-----------------------------------------
;	 function SPI_init
;	-----------------------------------------
_SPI_init:
;	spi.h:42: __endasm;
;
	setb	_P1_3
	setb	_P1_2
	clr	_P1_1
	setb	_P1_0
;	spi.h:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_start'
;------------------------------------------------------------
;	spi.h:45: void SPI_start() { 
;	-----------------------------------------
;	 function SPI_start
;	-----------------------------------------
_SPI_start:
;	spi.h:50: __endasm;
;
	clr	_P1_3
;	spi.h:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_end'
;------------------------------------------------------------
;	spi.h:53: void SPI_end() { 
;	-----------------------------------------
;	 function SPI_end
;	-----------------------------------------
_SPI_end:
;	spi.h:58: __endasm;
;
	setb	_P1_3
;	spi.h:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_transfer'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	spi.h:61: unsigned char SPI_transfer(unsigned char dat) {
;	-----------------------------------------
;	 function SPI_transfer
;	-----------------------------------------
_SPI_transfer:
	mov	r7, dpl
;	spi.h:62: dats = dat;
	mov	r0,#_dats
	mov	@r0,ar7
;	spi.h:122: __endasm;
;
	mov	_datr, #0x00
	clr	_P1_0 ;clock line low
	mov	R2, #0x80 ; same as 0b10000000
for_loop:
;sending	bit
	mov	A, _dats
	anl	A, R2
	jnz	ELSE_BR ; Compare A with zero
	clr	_P1_2
	sjmp	END_IF ; Jump to the end of the if-else statement
ELSE_BR:
	setb	_P1_2
END_IF:
	nop
	setb	_P1_0 ; clock line high
	nop
;	receiving bit
	jb	_P1_1, MISO_SET
;	set bit to 0
	sjmp	MISO_DONE
MISO_SET:
;	set bit to 1
	mov	A, _datr
	orl	A, R2
	mov	_datr, A
MISO_DONE:
	clr	_P1_0
	mov	A, R2
	rr	A
	mov	R2, A
	cjne	R2, #0x80, for_loop
	setb	_P1_2
;	spi.h:124: return datr;
	mov	r0,#_datr
	mov	dpl, @r0
;	spi.h:125: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fillBufferTime'
;------------------------------------------------------------
;minutes                   Allocated to registers r6 r7 
;seconds                   Allocated to registers r4 r5 
;------------------------------------------------------------
;	timer_display.h:179: void fillBufferTime(){
;	-----------------------------------------
;	 function fillBufferTime
;	-----------------------------------------
_fillBufferTime:
;	timer_display.h:180: unsigned int minutes = timeseconds/60;
	mov	__divuint_PARM_2,#0x3c
	mov	(__divuint_PARM_2 + 1),#0x00
;	timer_display.h:181: unsigned int seconds = timeseconds - minutes*60;
	mov	dpl, _timeseconds
	mov	dph, (_timeseconds + 1)
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x003c
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	mov	a,_timeseconds
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,(_timeseconds + 1)
	subb	a,r5
	mov	r5,a
;	timer_display.h:182: digits[3] = seconds%10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r4
	mov	dph, r5
	push	ar5
	push	ar4
	lcall	__moduint
	mov	r2, dpl
	pop	ar4
	pop	ar5
	mov	(_digits + 0x0003),r2
;	timer_display.h:183: digits[2] = seconds/10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r4
	mov	dph, r5
	lcall	__divuint
	mov	r4, dpl
	pop	ar6
	pop	ar7
	mov	(_digits + 0x0002),r4
;	timer_display.h:184: digits[1] = minutes%10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4, dpl
	pop	ar6
	pop	ar7
	mov	(_digits + 0x0001),r4
;	timer_display.h:185: digits[0] = minutes/10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__divuint
	mov	r6, dpl
	mov	_digits,r6
;	timer_display.h:186: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setTime'
;------------------------------------------------------------
;seconds                   Allocated with name '_setTime_PARM_2'
;minutes                   Allocated to registers 
;------------------------------------------------------------
;	timer_display.h:190: void setTime(unsigned int minutes, unsigned int seconds){
;	-----------------------------------------
;	 function setTime
;	-----------------------------------------
_setTime:
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
;	timer_display.h:191: timeseconds = seconds + minutes*60;
	mov	dptr,#0x003c
	lcall	__mulint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	add	a, _setTime_PARM_2
	mov	_timeseconds,a
	mov	a,r7
	addc	a, (_setTime_PARM_2 + 1)
	mov	(_timeseconds + 1),a
;	timer_display.h:192: fillBufferTime();
;	timer_display.h:193: }
	ljmp	_fillBufferTime
;------------------------------------------------------------
;Allocation info for local variables in function 'decrementTime'
;------------------------------------------------------------
;	timer_display.h:195: void decrementTime(){
;	-----------------------------------------
;	 function decrementTime
;	-----------------------------------------
_decrementTime:
;	timer_display.h:196: if(timeseconds>0){
	mov	a,_timeseconds
	orl	a,(_timeseconds + 1)
	jz	00102$
;	timer_display.h:197: timeseconds--;
	dec	_timeseconds
	mov	a,#0xff
	cjne	a,_timeseconds,00112$
	dec	(_timeseconds + 1)
00112$:
00102$:
;	timer_display.h:199: fillBufferTime();
;	timer_display.h:201: }
	ljmp	_fillBufferTime
;------------------------------------------------------------
;Allocation info for local variables in function 'sendCommand'
;------------------------------------------------------------
;lsb                       Allocated with name '_sendCommand_PARM_2'
;msb                       Allocated to registers r7 
;------------------------------------------------------------
;	timer_display.h:206: void sendCommand(unsigned char msb, unsigned char lsb){
;	-----------------------------------------
;	 function sendCommand
;	-----------------------------------------
_sendCommand:
	mov	r7, dpl
;	timer_display.h:207: CS = 0;
;	assignBit
	clr	_P1_3
;	timer_display.h:208: SPI_transfer(msb);
	mov	dpl, r7
	lcall	_SPI_transfer
;	timer_display.h:209: SPI_transfer(lsb);
	mov	dpl, _sendCommand_PARM_2
	lcall	_SPI_transfer
;	timer_display.h:210: CS = 1;
;	assignBit
	setb	_P1_3
;	timer_display.h:211: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendCommandStealth'
;------------------------------------------------------------
;lsb                       Allocated with name '_sendCommandStealth_PARM_2'
;msb                       Allocated to registers r7 
;------------------------------------------------------------
;	timer_display.h:213: void sendCommandStealth(unsigned char msb, unsigned char lsb){
;	-----------------------------------------
;	 function sendCommandStealth
;	-----------------------------------------
_sendCommandStealth:
;	timer_display.h:215: SPI_transfer(msb);
	lcall	_SPI_transfer
;	timer_display.h:216: SPI_transfer(lsb);
	mov	dpl, _sendCommandStealth_PARM_2
;	timer_display.h:218: }
	ljmp	_SPI_transfer
;------------------------------------------------------------
;Allocation info for local variables in function 'sendBuffer'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	timer_display.h:221: void sendBuffer(unsigned char address){
;	-----------------------------------------
;	 function sendBuffer
;	-----------------------------------------
_sendBuffer:
	mov	r7, dpl
;	timer_display.h:223: for(i=0; i<DISPNUM-1; i++){
	mov	r6,#0x00
00103$:
;	timer_display.h:224: sendCommandStealth(address, buffer[(DISPNUM-1)-i]);
	mov	ar5,r6
	mov	a,#0x03
	clr	c
	subb	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	_sendCommandStealth_PARM_2,@r1
	mov	dpl, r7
	push	ar7
	push	ar6
	lcall	_sendCommandStealth
	pop	ar6
	pop	ar7
;	timer_display.h:223: for(i=0; i<DISPNUM-1; i++){
	inc	r6
	cjne	r6,#0x03,00129$
00129$:
	jc	00103$
;	timer_display.h:226: sendCommand(address, buffer[0]);
	mov	_sendCommand_PARM_2,_buffer
	mov	dpl, r7
	lcall	_sendCommand
;	timer_display.h:228: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00105$:
;	timer_display.h:229: sendCommandStealth(0x00,0x00);
	mov	_sendCommandStealth_PARM_2,#0x00
	mov	dpl, #0x00
	push	ar7
	lcall	_sendCommandStealth
	pop	ar7
;	timer_display.h:228: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00131$
00131$:
	jc	00105$
;	timer_display.h:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initialize'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	timer_display.h:234: void initialize(){
;	-----------------------------------------
;	 function initialize
;	-----------------------------------------
_initialize:
;	timer_display.h:238: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00108$:
;	timer_display.h:239: buffer[i] = 0x00;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x00
;	timer_display.h:238: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00215$
00215$:
	jc	00108$
;	timer_display.h:241: sendBuffer(0x0F);
	mov	dpl, #0x0f
	lcall	_sendBuffer
;	timer_display.h:244: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00110$:
;	timer_display.h:245: buffer[i] = 0x07;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x07
;	timer_display.h:244: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00217$
00217$:
	jc	00110$
;	timer_display.h:247: sendBuffer(0x0B);
	mov	dpl, #0x0b
	lcall	_sendBuffer
;	timer_display.h:250: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00112$:
;	timer_display.h:251: buffer[i] = 0x00;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x00
;	timer_display.h:250: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00219$
00219$:
	jc	00112$
;	timer_display.h:253: sendBuffer(0x09);
	mov	dpl, #0x09
	lcall	_sendBuffer
;	timer_display.h:256: for(j=0; j<8; j++){
	mov	r7,#0x00
;	timer_display.h:258: for(i=0; i<DISPNUM; i++){
00130$:
	mov	r6,#0x00
00114$:
;	timer_display.h:259: buffer[i] = 0x00;
	mov	a,r6
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x00
;	timer_display.h:258: for(i=0; i<DISPNUM; i++){
	inc	r6
	cjne	r6,#0x04,00221$
00221$:
	jc	00114$
;	timer_display.h:261: sendBuffer(j+1);
	mov	ar6,r7
	mov	a,r6
	inc	a
	mov	dpl,a
	push	ar7
	lcall	_sendBuffer
	pop	ar7
;	timer_display.h:256: for(j=0; j<8; j++){
	inc	r7
	cjne	r7,#0x08,00223$
00223$:
	jc	00130$
;	timer_display.h:266: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00118$:
;	timer_display.h:267: buffer[i] = 0x05;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x05
;	timer_display.h:266: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00225$
00225$:
	jc	00118$
;	timer_display.h:269: sendBuffer(0x0A);
	mov	dpl, #0x0a
	lcall	_sendBuffer
;	timer_display.h:272: for(i=0; i<DISPNUM; i++){
	mov	r7,#0x00
00120$:
;	timer_display.h:273: buffer[i] = 0x01;
	mov	a,r7
	add	a, #_buffer
	mov	r0,a
	mov	@r0,#0x01
;	timer_display.h:272: for(i=0; i<DISPNUM; i++){
	inc	r7
	cjne	r7,#0x04,00227$
00227$:
	jc	00120$
;	timer_display.h:275: sendBuffer(0x0C);
	mov	dpl, #0x0c
;	timer_display.h:277: }
	ljmp	_sendBuffer
;------------------------------------------------------------
;Allocation info for local variables in function 'displayDigits'
;------------------------------------------------------------
;dot                       Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r5 
;------------------------------------------------------------
;	timer_display.h:279: void displayDigits(unsigned char dot){
;	-----------------------------------------
;	 function displayDigits
;	-----------------------------------------
_displayDigits:
	mov	r7, dpl
;	timer_display.h:282: for(i=0; i<8; i++){
	mov	r6,#0x00
;	timer_display.h:283: for(j=0; j<DISPNUM; j++){
00137$:
	mov	r5,#0x00
00130$:
;	timer_display.h:284: switch(digits[j]){
	mov	a,r5
	add	a, #_digits
	mov	r1,a
	mov	a,@r1
	mov	r4,a
	add	a,#0xff - 0x12
	jnc	00186$
	ljmp	00131$
00186$:
	mov	a,r4
	add	a,#(00187$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r4
	add	a,#(00188$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00187$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
00188$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
;	timer_display.h:285: case 0:
00101$:
;	timer_display.h:286: buffer[j] = number_0[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_0
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_0 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:287: break;
	ljmp	00131$
;	timer_display.h:288: case 1: 
00102$:
;	timer_display.h:289: buffer[j] = number_1[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_1
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:290: break;
	ljmp	00131$
;	timer_display.h:291: case 2: 
00103$:
;	timer_display.h:292: buffer[j] = number_2[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_2
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_2 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:293: break;
	ljmp	00131$
;	timer_display.h:294: case 3: 
00104$:
;	timer_display.h:295: buffer[j] = number_3[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_3
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_3 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:296: break;
	ljmp	00131$
;	timer_display.h:297: case 4: 
00105$:
;	timer_display.h:298: buffer[j] = number_4[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_4
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_4 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:299: break;
	ljmp	00131$
;	timer_display.h:300: case 5: 
00106$:
;	timer_display.h:301: buffer[j] = number_5[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_5
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_5 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:302: break;
	ljmp	00131$
;	timer_display.h:303: case 6: 
00107$:
;	timer_display.h:304: buffer[j] = number_6[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_6
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_6 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:305: break;
	ljmp	00131$
;	timer_display.h:306: case 7: 
00108$:
;	timer_display.h:307: buffer[j] = number_7[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_7
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_7 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:308: break;
	ljmp	00131$
;	timer_display.h:309: case 8: 
00109$:
;	timer_display.h:310: buffer[j] = number_8[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_8
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_8 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:311: break;
	ljmp	00131$
;	timer_display.h:312: case 9: 
00110$:
;	timer_display.h:313: buffer[j] = number_9[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_9
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_9 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:314: break;
	ljmp	00131$
;	timer_display.h:315: case 10: 
00111$:
;	timer_display.h:316: buffer[j] = number_a[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_a
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_a >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:317: break;
	ljmp	00131$
;	timer_display.h:318: case 11: 
00112$:
;	timer_display.h:319: buffer[j] = number_b[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_b
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_b >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:320: break;
	ljmp	00131$
;	timer_display.h:321: case 12: 
00113$:
;	timer_display.h:322: buffer[j] = number_c[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_c
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_c >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:323: break;
	ljmp	00131$
;	timer_display.h:324: case 13: 
00114$:
;	timer_display.h:325: buffer[j] = number_d[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_d
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_d >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:326: break;
	ljmp	00131$
;	timer_display.h:327: case 14: 
00115$:
;	timer_display.h:328: buffer[j] = number_e[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_e
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_e >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:329: break;
	ljmp	00131$
;	timer_display.h:330: case 15: 
00116$:
;	timer_display.h:331: buffer[j] = number_f[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_f
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_f >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:332: break;
;	timer_display.h:333: case 16:
	sjmp	00131$
00117$:
;	timer_display.h:334: buffer[j] = number_h[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_h
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_h >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:335: break;
;	timer_display.h:336: case 17:
	sjmp	00131$
00118$:
;	timer_display.h:337: buffer[j] = number__[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number__
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number__ >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:338: break;
;	timer_display.h:339: case 18:
	sjmp	00131$
00119$:
;	timer_display.h:340: buffer[j] = number_t[7-i];
	mov	a,r5
	add	a, #_buffer
	mov	r1,a
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_number_t
	mov	dpl,a
	mov	a,r3
	addc	a, #(_number_t >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	timer_display.h:342: }
00131$:
;	timer_display.h:283: for(j=0; j<DISPNUM; j++){
	inc	r5
	cjne	r5,#0x04,00189$
00189$:
	jnc	00190$
	ljmp	00130$
00190$:
;	timer_display.h:345: if(dot){
	mov	a,r7
	jz	00128$
;	timer_display.h:346: if((i==2)||(i==3)||(i==5)||(i==6)){
	cjne	r6,#0x02,00192$
	sjmp	00122$
00192$:
	cjne	r6,#0x03,00193$
	sjmp	00122$
00193$:
	cjne	r6,#0x05,00194$
	sjmp	00122$
00194$:
	cjne	r6,#0x06,00128$
00122$:
;	timer_display.h:347: buffer[1] = buffer[1]|0b10000000;
	mov	a,#0x80
	orl	a,(_buffer + 0x0001)
	mov	(_buffer + 0x0001),a
00128$:
;	timer_display.h:351: sendBuffer(i+1);
	mov	ar5,r6
	mov	a,r5
	inc	a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_sendBuffer
	pop	ar6
	pop	ar7
;	timer_display.h:282: for(i=0; i<8; i++){
	inc	r6
	cjne	r6,#0x08,00197$
00197$:
	jnc	00198$
	ljmp	00137$
00198$:
;	timer_display.h:353: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AHT21_init'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;------------------------------------------------------------
;	aht21.h:23: void AHT21_init(unsigned char ch) {
;	-----------------------------------------
;	 function AHT21_init
;	-----------------------------------------
_AHT21_init:
;	aht21.h:24: i2c_setchannel(ch);
	lcall	_i2c_setchannel
;	aht21.h:25: i2c_start();
	lcall	_i2c_start
;	aht21.h:26: i2c_write((add_aht21 << 1));  
	mov	dpl, #0x70
	lcall	_i2c_write
;	aht21.h:27: i2c_write(0xE1);  
	mov	dpl, #0xe1
	lcall	_i2c_write
;	aht21.h:28: i2c_stop();
	lcall	_i2c_stop
;	aht21.h:29: delay(10);
	mov	dptr,#0x000a
	clr	a
	mov	b,a
;	aht21.h:30: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'AHT21_updateRawValue'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;i                         Allocated to registers r5 
;status                    Allocated to registers r6 
;------------------------------------------------------------
;	aht21.h:32: unsigned char AHT21_updateRawValue(unsigned char ch){
;	-----------------------------------------
;	 function AHT21_updateRawValue
;	-----------------------------------------
_AHT21_updateRawValue:
;	aht21.h:36: i2c_setchannel(ch);
	mov  r7,dpl
	push	ar7
	lcall	_i2c_setchannel
;	aht21.h:37: i2c_start();
	lcall	_i2c_start
;	aht21.h:38: i2c_write(add_aht21<<1);
	mov	dpl, #0x70
	lcall	_i2c_write
;	aht21.h:39: i2c_write(0xAC);
	mov	dpl, #0xac
	lcall	_i2c_write
;	aht21.h:40: i2c_write(0x33);
	mov	dpl, #0x33
	lcall	_i2c_write
;	aht21.h:41: i2c_write(0x00);
	mov	dpl, #0x00
	lcall	_i2c_write
;	aht21.h:42: i2c_stop();
	lcall	_i2c_stop
;	aht21.h:43: delay(80);
	mov	dptr,#0x0050
	clr	a
	mov	b,a
	lcall	_delay
;	aht21.h:59: i2c_start();
	lcall	_i2c_start
;	aht21.h:60: i2c_write((add_aht21 << 1) + 1);
	mov	dpl, #0x71
	lcall	_i2c_write
;	aht21.h:61: status = i2c_read();
	lcall	_i2c_read
	mov	r6, dpl
;	aht21.h:62: i2c_send_ack();
	push	ar6
	lcall	_i2c_send_ack
	pop	ar6
	pop	ar7
;	aht21.h:63: for(i=0; i<6; i++){
	mov	r5,#0x00
00107$:
;	aht21.h:64: if(ch==0){
	mov	a,r7
	jnz	00102$
;	aht21.h:65: values0[i] = i2c_read();
	mov	a,r5
	add	a, #_values0
	mov	r1,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_i2c_read
	mov	a, dpl
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	@r1,a
	sjmp	00103$
00102$:
;	aht21.h:67: values1[i] = i2c_read();
	mov	a,r5
	add	a, #_values1
	mov	r1,a
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_i2c_read
	mov	a, dpl
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	@r1,a
00103$:
;	aht21.h:70: if(i!=5){
	cjne	r5,#0x05,00137$
	sjmp	00108$
00137$:
;	aht21.h:71: i2c_send_ack();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_send_ack
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	aht21.h:63: for(i=0; i<6; i++){
	inc	r5
	cjne	r5,#0x06,00138$
00138$:
	jc	00107$
;	aht21.h:76: i2c_stop();
	push	ar6
	lcall	_i2c_stop
	pop	ar6
;	aht21.h:79: return status;
	mov	dpl, r6
;	aht21.h:81: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AHT21_getTemp'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;temp                      Allocated with name '_AHT21_getTemp_temp_10000_124'
;sign                      Allocated to registers 
;farenheit_temp            Allocated to registers r7 
;celsius_temp              Allocated to registers r4 
;sloc0                     Allocated with name '_AHT21_getTemp_sloc0_1_0'
;sloc1                     Allocated with name '_AHT21_getTemp_sloc1_1_0'
;------------------------------------------------------------
;	aht21.h:83: unsigned char AHT21_getTemp(unsigned char ch){
;	-----------------------------------------
;	 function AHT21_getTemp
;	-----------------------------------------
_AHT21_getTemp:
	mov	r7, dpl
;	aht21.h:91: switch(ch){
	clr	a
	cjne	r7,#0x00,00136$
	inc	a
00136$:
	mov	r6,a
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	a,r6
	jnz	00101$
	cjne	r7,#0x01,00139$
	sjmp	00102$
00139$:
	ljmp	00103$
;	aht21.h:92: case 0:
00101$:
;	aht21.h:93: temp =  (values0[2]&0x0F);
	mov	r7,(_values0 + 0x0002)
	anl	ar7,#0x0f
	mov	_AHT21_getTemp_sloc0_1_0,r7
	mov	(_AHT21_getTemp_sloc0_1_0 + 1),#0x00
	mov	(_AHT21_getTemp_sloc0_1_0 + 2),#0x00
;	aht21.h:94: temp = temp<<8;
	mov	(_AHT21_getTemp_sloc0_1_0 + 3),(_AHT21_getTemp_sloc0_1_0 + 2)
	mov	(_AHT21_getTemp_sloc0_1_0 + 2),(_AHT21_getTemp_sloc0_1_0 + 1)
	mov	(_AHT21_getTemp_sloc0_1_0 + 1),_AHT21_getTemp_sloc0_1_0
	mov	_AHT21_getTemp_sloc0_1_0,#0x00
;	aht21.h:95: temp |= values0[3];
	mov	_AHT21_getTemp_sloc1_1_0,(_values0 + 0x0003)
	clr	a
	mov	(_AHT21_getTemp_sloc1_1_0 + 1),a
	mov	(_AHT21_getTemp_sloc1_1_0 + 2),a
	mov	(_AHT21_getTemp_sloc1_1_0 + 3),a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 1)
	orl	(_AHT21_getTemp_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 2)
	orl	(_AHT21_getTemp_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 3)
	orl	(_AHT21_getTemp_sloc1_1_0 + 3),a
;	aht21.h:96: temp = temp<<8;
	mov	(_AHT21_getTemp_sloc1_1_0 + 3),(_AHT21_getTemp_sloc1_1_0 + 2)
	mov	(_AHT21_getTemp_sloc1_1_0 + 2),(_AHT21_getTemp_sloc1_1_0 + 1)
	mov	(_AHT21_getTemp_sloc1_1_0 + 1),_AHT21_getTemp_sloc1_1_0
	mov	_AHT21_getTemp_sloc1_1_0,#0x00
;	aht21.h:97: temp |= values0[4];
	mov	_AHT21_getTemp_sloc0_1_0,(_values0 + 0x0004)
	clr	a
	mov	(_AHT21_getTemp_sloc0_1_0 + 1),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 2),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 3),a
	mov	a,_AHT21_getTemp_sloc0_1_0
	orl	a,_AHT21_getTemp_sloc1_1_0
	mov	r2,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 1)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 1)
	mov	r3,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 2)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 2)
	mov	r4,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 3)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 3)
	mov	r5,a
;	aht21.h:98: break;
;	aht21.h:99: case 1:
	sjmp	00103$
00102$:
;	aht21.h:100: temp =  (values1[2]&0x0F);
	mov	r7,(_values1 + 0x0002)
	anl	ar7,#0x0f
	mov	_AHT21_getTemp_temp_10000_124,r7
	mov	(_AHT21_getTemp_temp_10000_124 + 1),#0x00
	mov	(_AHT21_getTemp_temp_10000_124 + 2),#0x00
	mov	(_AHT21_getTemp_temp_10000_124 + 3),#0x00
;	aht21.h:101: temp = temp<<8;
	mov	(_AHT21_getTemp_sloc1_1_0 + 3),(_AHT21_getTemp_temp_10000_124 + 2)
	mov	(_AHT21_getTemp_sloc1_1_0 + 2),(_AHT21_getTemp_temp_10000_124 + 1)
	mov	(_AHT21_getTemp_sloc1_1_0 + 1),_AHT21_getTemp_temp_10000_124
	mov	_AHT21_getTemp_sloc1_1_0,#0x00
;	aht21.h:102: temp |= values1[3];
	mov	_AHT21_getTemp_sloc0_1_0,(_values1 + 0x0003)
	clr	a
	mov	(_AHT21_getTemp_sloc0_1_0 + 1),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 2),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 3),a
	mov	a,_AHT21_getTemp_sloc0_1_0
	orl	_AHT21_getTemp_sloc1_1_0,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 1)
	orl	(_AHT21_getTemp_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 2)
	orl	(_AHT21_getTemp_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 3)
	orl	(_AHT21_getTemp_sloc1_1_0 + 3),a
;	aht21.h:103: temp = temp<<8;
	mov	(_AHT21_getTemp_sloc1_1_0 + 3),(_AHT21_getTemp_sloc1_1_0 + 2)
	mov	(_AHT21_getTemp_sloc1_1_0 + 2),(_AHT21_getTemp_sloc1_1_0 + 1)
	mov	(_AHT21_getTemp_sloc1_1_0 + 1),_AHT21_getTemp_sloc1_1_0
	mov	_AHT21_getTemp_sloc1_1_0,#0x00
;	aht21.h:104: temp |= values1[4];
	mov	_AHT21_getTemp_sloc0_1_0,(_values1 + 0x0004)
	clr	a
	mov	(_AHT21_getTemp_sloc0_1_0 + 1),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 2),a
	mov	(_AHT21_getTemp_sloc0_1_0 + 3),a
	mov	a,_AHT21_getTemp_sloc0_1_0
	orl	a,_AHT21_getTemp_sloc1_1_0
	mov	r2,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 1)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 1)
	mov	r3,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 2)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 2)
	mov	r4,a
	mov	a,(_AHT21_getTemp_sloc0_1_0 + 3)
	orl	a,(_AHT21_getTemp_sloc1_1_0 + 3)
	mov	r5,a
;	aht21.h:106: }
00103$:
;	aht21.h:110: if(((temp*200)/0x100000) > 50){
	mov	__mullong_PARM_2,r2
	mov	(__mullong_PARM_2 + 1),r3
	mov	(__mullong_PARM_2 + 2),r4
	mov	(__mullong_PARM_2 + 3),r5
	mov	dptr,#0x00c8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r6, b
	mov	ar4,r6
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,#0x32
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00105$
;	aht21.h:111: celsius_temp = ((temp*200)/0x100000) - 50;
	mov	ar3,r4
	mov	a,r3
	add	a,#0xce
	mov	r3,a
;	aht21.h:112: sign = 0;
	sjmp	00108$
00105$:
;	aht21.h:114: celsius_temp = 50 -((temp*200)/0x100000);
	mov	a,#0x32
	clr	c
	subb	a,r4
	mov	r4,a
;	aht21.h:119: farenheit_temp = 32 - (9*celsius_temp)/5;
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0009
	lcall	__mulint
	mov	__divsint_PARM_2,#0x05
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6, dpl
	mov	a,#0x20
	clr	c
	subb	a,r6
	mov	r7,a
	sjmp	00109$
00108$:
;	aht21.h:121: farenheit_temp = (9*celsius_temp)/5 + 32;
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0009
	lcall	__mulint
	mov	__divsint_PARM_2,#0x05
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r5, dpl
	mov	a,#0x20
	add	a, r5
	mov	r7,a
00109$:
;	aht21.h:126: return farenheit_temp;
	mov	dpl, r7
;	aht21.h:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AHT21_getHum'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;hum                       Allocated with name '_AHT21_getHum_hum_10000_131'
;sloc0                     Allocated with name '_AHT21_getHum_sloc0_1_0'
;sloc1                     Allocated with name '_AHT21_getHum_sloc1_1_0'
;------------------------------------------------------------
;	aht21.h:129: uint32_t AHT21_getHum(unsigned char ch){
;	-----------------------------------------
;	 function AHT21_getHum
;	-----------------------------------------
_AHT21_getHum:
	mov	r7, dpl
;	aht21.h:131: switch(ch){
	clr	a
	cjne	r7,#0x00,00122$
	inc	a
00122$:
	mov	r6,a
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r5,a
	mov	a,r6
	jnz	00101$
	cjne	r7,#0x01,00125$
	ljmp	00102$
00125$:
	ljmp	00103$
;	aht21.h:132: case 0:
00101$:
;	aht21.h:133: hum = values0[0]&0xff;
	mov	r7,_values0
	mov	_AHT21_getHum_sloc0_1_0,r7
	mov	(_AHT21_getHum_sloc0_1_0 + 1),#0x00
	mov	(_AHT21_getHum_sloc0_1_0 + 2),#0x00
;	aht21.h:134: hum = hum <<8;
	mov	(_AHT21_getHum_sloc0_1_0 + 3),(_AHT21_getHum_sloc0_1_0 + 2)
	mov	(_AHT21_getHum_sloc0_1_0 + 2),(_AHT21_getHum_sloc0_1_0 + 1)
	mov	(_AHT21_getHum_sloc0_1_0 + 1),_AHT21_getHum_sloc0_1_0
	mov	_AHT21_getHum_sloc0_1_0,#0x00
;	aht21.h:135: hum |= values0[1];
	mov	_AHT21_getHum_sloc1_1_0,(_values0 + 0x0001)
	clr	a
	mov	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	(_AHT21_getHum_sloc1_1_0 + 3),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 1)
	orl	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 2)
	orl	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 3)
	orl	(_AHT21_getHum_sloc1_1_0 + 3),a
;	aht21.h:136: hum = hum <<8;
	mov	(_AHT21_getHum_sloc1_1_0 + 3),(_AHT21_getHum_sloc1_1_0 + 2)
	mov	(_AHT21_getHum_sloc1_1_0 + 2),(_AHT21_getHum_sloc1_1_0 + 1)
	mov	(_AHT21_getHum_sloc1_1_0 + 1),_AHT21_getHum_sloc1_1_0
	mov	_AHT21_getHum_sloc1_1_0,#0x00
;	aht21.h:137: hum |= values0[2]&0xF0;
	mov	r7,(_values0 + 0x0002)
	anl	ar7,#0xf0
	mov	_AHT21_getHum_sloc0_1_0,r7
	clr	a
	mov	(_AHT21_getHum_sloc0_1_0 + 1),a
	mov	(_AHT21_getHum_sloc0_1_0 + 2),a
	mov	(_AHT21_getHum_sloc0_1_0 + 3),a
	mov	a,_AHT21_getHum_sloc0_1_0
	orl	_AHT21_getHum_sloc1_1_0,a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 1)
	orl	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 2)
	orl	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 3)
	orl	(_AHT21_getHum_sloc1_1_0 + 3),a
;	aht21.h:138: hum = hum >> 4;
	mov	r2,_AHT21_getHum_sloc1_1_0
	mov	a,(_AHT21_getHum_sloc1_1_0 + 1)
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,(_AHT21_getHum_sloc1_1_0 + 2)
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	r3,a
	mov	r4,(_AHT21_getHum_sloc1_1_0 + 2)
	mov	a,(_AHT21_getHum_sloc1_1_0 + 3)
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	aht21.h:139: break;
	ljmp	00103$
;	aht21.h:140: case 1:
00102$:
;	aht21.h:141: hum = values1[0]&0xff;
	mov	r7,_values1
	mov	_AHT21_getHum_sloc1_1_0,r7
	mov	(_AHT21_getHum_sloc1_1_0 + 1),#0x00
	mov	(_AHT21_getHum_sloc1_1_0 + 2),#0x00
	mov	(_AHT21_getHum_sloc1_1_0 + 3),#0x00
;	aht21.h:142: hum = hum <<8;
	mov	(_AHT21_getHum_hum_10000_131 + 3),(_AHT21_getHum_sloc1_1_0 + 2)
	mov	(_AHT21_getHum_hum_10000_131 + 2),(_AHT21_getHum_sloc1_1_0 + 1)
	mov	(_AHT21_getHum_hum_10000_131 + 1),_AHT21_getHum_sloc1_1_0
	mov	_AHT21_getHum_hum_10000_131,#0x00
;	aht21.h:143: hum |= values1[1];
	mov	_AHT21_getHum_sloc1_1_0,(_values1 + 0x0001)
	clr	a
	mov	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	(_AHT21_getHum_sloc1_1_0 + 3),a
	mov	a,(_AHT21_getHum_hum_10000_131 + 1)
	orl	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getHum_hum_10000_131 + 2)
	orl	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getHum_hum_10000_131 + 3)
	orl	(_AHT21_getHum_sloc1_1_0 + 3),a
;	aht21.h:144: hum = hum <<8;
	mov	(_AHT21_getHum_sloc1_1_0 + 3),(_AHT21_getHum_sloc1_1_0 + 2)
	mov	(_AHT21_getHum_sloc1_1_0 + 2),(_AHT21_getHum_sloc1_1_0 + 1)
	mov	(_AHT21_getHum_sloc1_1_0 + 1),_AHT21_getHum_sloc1_1_0
	mov	_AHT21_getHum_sloc1_1_0,#0x00
;	aht21.h:145: hum |= values1[2]&0xF0;
	mov	r7,(_values1 + 0x0002)
	anl	ar7,#0xf0
	mov	_AHT21_getHum_sloc0_1_0,r7
	clr	a
	mov	(_AHT21_getHum_sloc0_1_0 + 1),a
	mov	(_AHT21_getHum_sloc0_1_0 + 2),a
	mov	(_AHT21_getHum_sloc0_1_0 + 3),a
	mov	a,_AHT21_getHum_sloc0_1_0
	orl	_AHT21_getHum_sloc1_1_0,a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 1)
	orl	(_AHT21_getHum_sloc1_1_0 + 1),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 2)
	orl	(_AHT21_getHum_sloc1_1_0 + 2),a
	mov	a,(_AHT21_getHum_sloc0_1_0 + 3)
	orl	(_AHT21_getHum_sloc1_1_0 + 3),a
;	aht21.h:146: hum = hum >> 4;
	mov	r2,_AHT21_getHum_sloc1_1_0
	mov	a,(_AHT21_getHum_sloc1_1_0 + 1)
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,(_AHT21_getHum_sloc1_1_0 + 2)
	swap	a
	anl	a,#0xf0
	orl	a,r3
	mov	r3,a
	mov	r4,(_AHT21_getHum_sloc1_1_0 + 2)
	mov	a,(_AHT21_getHum_sloc1_1_0 + 3)
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	aht21.h:148: }
00103$:
;	aht21.h:151: hum= (hum*100)/0x100000;
	mov	__mullong_PARM_2,r2
	mov	(__mullong_PARM_2 + 1),r3
	mov	(__mullong_PARM_2 + 2),r4
	mov	(__mullong_PARM_2 + 3),r5
	mov	dptr,#0x0064
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r6, b
	mov	ar4,r6
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
;	aht21.h:152: return hum;
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
;	aht21.h:154: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PCF8574_Init_output'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	pcf8574.h:15: void PCF8574_Init_output(unsigned char addr){
;	-----------------------------------------
;	 function PCF8574_Init_output
;	-----------------------------------------
_PCF8574_Init_output:
	mov	r7, dpl
;	pcf8574.h:16: i2c_setchannel(ch);
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_setchannel
	pop	ar7
;	pcf8574.h:17: i2c_write_byte(ch, addr, 0xFF);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0xff
	mov	dpl, _ch
;	pcf8574.h:18: } 
	ljmp	_i2c_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'PCF8574_Init_input'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	pcf8574.h:20: void PCF8574_Init_input(unsigned char addr){
;	-----------------------------------------
;	 function PCF8574_Init_input
;	-----------------------------------------
_PCF8574_Init_input:
	mov	r7, dpl
;	pcf8574.h:21: i2c_setchannel(ch);
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_setchannel
	pop	ar7
;	pcf8574.h:22: i2c_write_byte(ch, addr, 0x01);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x01
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:23: i2c_write_byte(ch, addr, 0x03);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x03
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:24: i2c_write_byte(ch, addr, 0x0F);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x0f
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:25: i2c_write_byte(ch, addr, 0x1F);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x1f
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:26: i2c_write_byte(ch, addr, 0x3F);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x3f
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:27: i2c_write_byte(ch, addr, 0x7F);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0x7f
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_write_byte
	pop	ar7
;	pcf8574.h:28: i2c_write_byte(ch, addr, 0xFF);
	mov	_i2c_write_byte_PARM_2,r7
	mov	_i2c_write_byte_PARM_3,#0xff
	mov	dpl, _ch
;	pcf8574.h:29: } 
	ljmp	_i2c_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'PCF8574_RelayOn'
;------------------------------------------------------------
;addr                      Allocated with name '_PCF8574_RelayOn_PARM_2'
;relay                     Allocated to registers r7 
;value                     Allocated to registers r6 
;------------------------------------------------------------
;	pcf8574.h:31: void PCF8574_RelayOn(unsigned char relay, unsigned char addr){
;	-----------------------------------------
;	 function PCF8574_RelayOn
;	-----------------------------------------
_PCF8574_RelayOn:
	mov	r7, dpl
;	pcf8574.h:32: unsigned char value = i2c_read_byte(ch, addr);
	mov	_i2c_read_byte_PARM_2,_PCF8574_RelayOn_PARM_2
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_read_byte
	mov	r6, dpl
	pop	ar7
;	pcf8574.h:33: i2c_write_byte(ch,addr, value&(~(1<<relay)));
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00104$
00103$:
	add	a,acc
00104$:
	djnz	b,00103$
	cpl	a
	anl	a,r6
	mov	_i2c_write_byte_PARM_3,a
	mov	_i2c_write_byte_PARM_2,_PCF8574_RelayOn_PARM_2
	mov	dpl, _ch
;	pcf8574.h:34: }
	ljmp	_i2c_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'PCF8574_RelayOff'
;------------------------------------------------------------
;addr                      Allocated with name '_PCF8574_RelayOff_PARM_2'
;relay                     Allocated to registers r7 
;value                     Allocated to registers r6 
;------------------------------------------------------------
;	pcf8574.h:36: void PCF8574_RelayOff(unsigned char relay, unsigned char addr){
;	-----------------------------------------
;	 function PCF8574_RelayOff
;	-----------------------------------------
_PCF8574_RelayOff:
	mov	r7, dpl
;	pcf8574.h:37: unsigned char value = i2c_read_byte(ch, addr);
	mov	_i2c_read_byte_PARM_2,_PCF8574_RelayOff_PARM_2
	mov	dpl, _ch
	push	ar7
	lcall	_i2c_read_byte
	mov	r6, dpl
	pop	ar7
;	pcf8574.h:38: i2c_write_byte(ch,addr, value|(1<<relay));
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00104$
00103$:
	add	a,acc
00104$:
	djnz	b,00103$
	orl	a,r6
	mov	_i2c_write_byte_PARM_3,a
	mov	_i2c_write_byte_PARM_2,_PCF8574_RelayOff_PARM_2
	mov	dpl, _ch
;	pcf8574.h:39: }
	ljmp	_i2c_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'PCF8574_Getbutton'
;------------------------------------------------------------
;addr                      Allocated to registers 
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	pcf8574.h:40: unsigned char PCF8574_Getbutton(unsigned char addr){
;	-----------------------------------------
;	 function PCF8574_Getbutton
;	-----------------------------------------
_PCF8574_Getbutton:
	mov	_i2c_read_byte_PARM_2,dpl
;	pcf8574.h:41: unsigned char value = i2c_read_byte(ch, addr);
	mov	dpl, _ch
	lcall	_i2c_read_byte
;	pcf8574.h:43: value = ~value;
	mov	a,dpl
;	pcf8574.h:44: switch(value){
	cpl	a
	mov	r7,a
	jz	00101$
	cjne	r7,#0x01,00146$
	sjmp	00102$
00146$:
	cjne	r7,#0x02,00147$
	sjmp	00103$
00147$:
	cjne	r7,#0x04,00148$
	sjmp	00104$
00148$:
;	pcf8574.h:45: case 0x00:
	cjne	r7,#0x08,00106$
	sjmp	00105$
00101$:
;	pcf8574.h:46: return 0;
	mov	dpl, #0x00
;	pcf8574.h:47: case 0x01:  
	ret
00102$:
;	pcf8574.h:48: return 1;
	mov	dpl, #0x01
;	pcf8574.h:49: case 0x02:
	ret
00103$:
;	pcf8574.h:50: return 2;
	mov	dpl, #0x02
;	pcf8574.h:51: case 0x04:
	ret
00104$:
;	pcf8574.h:52: return 3;
	mov	dpl, #0x03
;	pcf8574.h:53: case 0x08:
	ret
00105$:
;	pcf8574.h:54: return 4;
	mov	dpl, #0x04
;	pcf8574.h:55: default:
	ret
00106$:
;	pcf8574.h:56: return 0;
	mov	dpl, #0x00
;	pcf8574.h:58: }
;	pcf8574.h:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive_ISR'
;------------------------------------------------------------
;dat                       Allocated to registers 
;------------------------------------------------------------
;	dgmtest.c:41: void UART_Receive_ISR() __interrupt(4) {
;	-----------------------------------------
;	 function UART_Receive_ISR
;	-----------------------------------------
_UART_Receive_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	dgmtest.c:43: if (RI) {
	jnb	_RI,00103$
;	dgmtest.c:44: unsigned char dat = SBUF; // Store received da ta
	mov	a,_SBUF
;	dgmtest.c:45: UART_transmit('b');
	mov	dpl, #0x62
	lcall	_UART_transmit
;	dgmtest.c:46: RI = 0; // Clear the receive interrupt flag
;	assignBit
	clr	_RI
00103$:
;	dgmtest.c:49: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_init'
;------------------------------------------------------------
;	dgmtest.c:57: void timer0_init() {
;	-----------------------------------------
;	 function timer0_init
;	-----------------------------------------
_timer0_init:
;	dgmtest.c:61: TMOD &= 0b11111100;
	anl	_TMOD,#0xfc
;	dgmtest.c:63: TH0 = 0x00;
	mov	_TH0,#0x00
;	dgmtest.c:64: TL0 = 0xFF;
	mov	_TL0,#0xff
;	dgmtest.c:65: IE = 0x8B;
	mov	_IE,#0x8b
;	dgmtest.c:67: TR0 = 1; // Start Timer 0
;	assignBit
	setb	_TR0
;	dgmtest.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'displayError'
;------------------------------------------------------------
;temp                      Allocated with name '_displayError_temp_10000_154'
;------------------------------------------------------------
;	dgmtest.c:100: void displayError() 
;	-----------------------------------------
;	 function displayError
;	-----------------------------------------
_displayError:
;	dgmtest.c:96: PCF8574_RelayOff(1, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x01
	lcall	_PCF8574_RelayOff
;	dgmtest.c:97: periphs &= 0b11111110;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	dgmtest.c:86: PCF8574_RelayOff(0, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x00
	lcall	_PCF8574_RelayOff
;	dgmtest.c:87: periphs &= 0b11111011;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	dgmtest.c:106: digits[0] = 17;
	mov	_digits,#0x11
;	dgmtest.c:107: digits[1] = 17;
	mov	(_digits + 0x0001),#0x11
;	dgmtest.c:108: digits[2] = temp % 10;
	mov	(_digits + 0x0002),#0x09
;	dgmtest.c:109: digits[3] = 14;
	mov	(_digits + 0x0003),#0x0e
;	dgmtest.c:110: displayDigits(0);
	mov	dpl, #0x00
;	dgmtest.c:111: }
	ljmp	_displayDigits
;------------------------------------------------------------
;Allocation info for local variables in function 'updateHumidity'
;------------------------------------------------------------
;temp                      Allocated with name '_updateHumidity_temp_10000_161'
;------------------------------------------------------------
;	dgmtest.c:113: void updateHumidity() {
;	-----------------------------------------
;	 function updateHumidity
;	-----------------------------------------
_updateHumidity:
;	dgmtest.c:116: if((status0 == 0x18)&&(status1 == 0x18))
	mov	a,#0x18
	cjne	a,_status0,00108$
	mov	a,#0x18
	cjne	a,_status1,00108$
;	dgmtest.c:118: temp = (AHT21_getHum(1)+AHT21_getHum(0))/2;
	mov	dpl, #0x01
	lcall	_AHT21_getHum
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_AHT21_getHum
	mov	r0, dpl
	mov	r1, dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a, r4
	mov	r4,a
	mov	a,r1
	addc	a, r5
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	dptr,#_updateHumidity_temp_10000_161
	mov	a,r4
	movx	@dptr,a
	sjmp	00109$
00108$:
;	dgmtest.c:121: else if(status0 == 0x18)
	mov	a,#0x18
	cjne	a,_status0,00105$
;	dgmtest.c:123: temp = AHT21_getHum(0);
	mov	dpl, #0x00
	lcall	_AHT21_getHum
	mov	r4, dpl
	mov	dptr,#_updateHumidity_temp_10000_161
	mov	a,r4
	movx	@dptr,a
	sjmp	00109$
00105$:
;	dgmtest.c:126: else if(status1 ==0x18)
	mov	a,#0x18
	cjne	a,_status1,00102$
;	dgmtest.c:128: temp = AHT21_getHum(1);
	mov	dpl, #0x01
	lcall	_AHT21_getHum
	mov	r4, dpl
	mov	dptr,#_updateHumidity_temp_10000_161
	mov	a,r4
	movx	@dptr,a
	sjmp	00109$
00102$:
;	dgmtest.c:132: checkError();
	lcall	_checkError
00109$:
;	dgmtest.c:134: humidity = temp;
	mov	dptr,#_updateHumidity_temp_10000_161
	movx	a,@dptr
	mov	_humidity,a
;	dgmtest.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'checkError'
;------------------------------------------------------------
;sloc0                     Allocated with name '_checkError_sloc0_1_0'
;sloc2                     Allocated with name '_checkError_sloc2_1_0'
;flag1                     Allocated with name '_checkError_flag1_10000_166'
;flag2                     Allocated with name '_checkError_flag2_10000_166'
;------------------------------------------------------------
;	dgmtest.c:137: void checkError()
;	-----------------------------------------
;	 function checkError
;	-----------------------------------------
_checkError:
;	dgmtest.c:139: bool __xdata flag1 = (temperature == 0) && (humidity == 0); 
	mov	a,_temperature
	jnz	00107$
	mov	a,_humidity
	jz	00108$
00107$:
	mov	_checkError_sloc0_1_0,#0x00
	sjmp	00109$
00108$:
	mov	_checkError_sloc0_1_0,#0x01
00109$:
;	dgmtest.c:140: bool __xdata flag2 = (status0 != 0x18)&&(status1 != 0x18);
	mov	a,#0x18
	cjne	a,_status0,00139$
	setb	c
	sjmp	00140$
00139$:
	clr	c
00140$:
	mov	_checkError_sloc1_1_0,c
	jc	00110$
	mov	a,#0x18
	cjne	a,_status1,00142$
	setb	c
	sjmp	00143$
00142$:
	clr	c
00143$:
	mov	_checkError_sloc1_1_0,c
	jnc	00111$
00110$:
	mov	_checkError_sloc2_1_0,#0x00
	sjmp	00112$
00111$:
	mov	_checkError_sloc2_1_0,#0x01
00112$:
;	dgmtest.c:141: if(flag1 && flag2)
	mov	a,_checkError_sloc0_1_0
	jz	00102$
	mov	a,_checkError_sloc2_1_0
	jz	00102$
;	dgmtest.c:143: displayError();
	ljmp	_displayError
00102$:
;	dgmtest.c:148: displayDigits(0);
	mov	dpl, #0x00
;	dgmtest.c:150: }
	ljmp	_displayDigits
;------------------------------------------------------------
;Allocation info for local variables in function 'displayHum'
;------------------------------------------------------------
;	dgmtest.c:152: void displayHum() {
;	-----------------------------------------
;	 function displayHum
;	-----------------------------------------
_displayHum:
;	dgmtest.c:154: if (humidity < 100) 
	mov	a,#0x100 - 0x64
	add	a,_humidity
	jc	00102$
;	dgmtest.c:156: digits[0] = 17;
	mov	_digits,#0x11
	sjmp	00103$
00102$:
;	dgmtest.c:161: digits[0] = humidity / 100;
	mov	r6,_humidity
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__divsint
	mov	r6, dpl
	mov	_digits,r6
00103$:
;	dgmtest.c:164: if (humidity < 10) 
	mov	a,#0x100 - 0x0a
	add	a,_humidity
	jc	00105$
;	dgmtest.c:166: digits[1] = 17;
	mov	(_digits + 0x0001),#0x11
	sjmp	00106$
00105$:
;	dgmtest.c:171: digits[1] = (humidity - (humidity / 100) * 100) / 10;
	mov	r6,_humidity
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6, dpl
	mov	(_digits + 0x0001),r6
00106$:
;	dgmtest.c:174: digits[2] = humidity % 10;
	mov	r6,_humidity
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	(_digits + 0x0002),r6
;	dgmtest.c:175: digits[3] = 16;
	mov	(_digits + 0x0003),#0x10
;	dgmtest.c:177: checkError();
;	dgmtest.c:178: }
	ljmp	_checkError
;------------------------------------------------------------
;Allocation info for local variables in function 'updateTemp'
;------------------------------------------------------------
;temp                      Allocated with name '_updateTemp_temp_10000_174'
;------------------------------------------------------------
;	dgmtest.c:180: void updateTemp() {
;	-----------------------------------------
;	 function updateTemp
;	-----------------------------------------
_updateTemp:
;	dgmtest.c:182: if ((status0 == 0x18) && (status1 == 0x18)) 
	mov	a,#0x18
	cjne	a,_status0,00108$
	mov	a,#0x18
	cjne	a,_status1,00108$
;	dgmtest.c:184: temp = (AHT21_getTemp(1) + AHT21_getTemp(0)) / 2;
	mov	dpl, #0x01
	lcall	_AHT21_getTemp
	mov	r7, dpl
	mov	r6,#0x00
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_AHT21_getTemp
	mov	r5, dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	add	a, r7
	mov	dpl,a
	mov	a,r4
	addc	a, r6
	mov	dph,a
	mov	__divsint_PARM_2,#0x02
	mov	(__divsint_PARM_2 + 1),r4
	lcall	__divsint
	mov	r6, dpl
	mov	dptr,#_updateTemp_temp_10000_174
	mov	a,r6
	movx	@dptr,a
	sjmp	00109$
00108$:
;	dgmtest.c:186: else if (status0 == 0x18) 
	mov	a,#0x18
	cjne	a,_status0,00105$
;	dgmtest.c:188: temp = AHT21_getTemp(0);
	mov	dpl, #0x00
	lcall	_AHT21_getTemp
	mov	a, dpl
	mov	dptr,#_updateTemp_temp_10000_174
	movx	@dptr,a
	sjmp	00109$
00105$:
;	dgmtest.c:190: else if (status1 == 0x18) 
	mov	a,#0x18
	cjne	a,_status1,00102$
;	dgmtest.c:192: temp = AHT21_getTemp(1);
	mov	dpl, #0x01
	lcall	_AHT21_getTemp
	mov	a, dpl
	mov	dptr,#_updateTemp_temp_10000_174
	movx	@dptr,a
	sjmp	00109$
00102$:
;	dgmtest.c:196: checkError();
	lcall	_checkError
00109$:
;	dgmtest.c:198: temperature = temp;
	mov	dptr,#_updateTemp_temp_10000_174
	movx	a,@dptr
	mov	_temperature,a
;	dgmtest.c:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'updateAll'
;------------------------------------------------------------
;	dgmtest.c:201: void updateAll() {
;	-----------------------------------------
;	 function updateAll
;	-----------------------------------------
_updateAll:
;	dgmtest.c:202: status0 = AHT21_updateRawValue(0);
	mov	dpl, #0x00
	lcall	_AHT21_updateRawValue
	mov	_status0,dpl
;	dgmtest.c:203: status1 = AHT21_updateRawValue(1);
	mov	dpl, #0x01
	lcall	_AHT21_updateRawValue
	mov	_status1,dpl
;	dgmtest.c:204: updateHumidity();
	lcall	_updateHumidity
;	dgmtest.c:205: updateTemp();
;	dgmtest.c:206: }
	ljmp	_updateTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'displayTemp'
;------------------------------------------------------------
;	dgmtest.c:208: void displayTemp() {
;	-----------------------------------------
;	 function displayTemp
;	-----------------------------------------
_displayTemp:
;	dgmtest.c:210: if (temperature < 100) 
	mov	a,#0x100 - 0x64
	add	a,_temperature
	jc	00102$
;	dgmtest.c:212: digits[0] = 17;
	mov	_digits,#0x11
	sjmp	00103$
00102$:
;	dgmtest.c:216: digits[0] = temperature / 100;
	mov	r6,_temperature
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__divsint
	mov	r6, dpl
	mov	_digits,r6
00103$:
;	dgmtest.c:218: if (temperature < 10) 
	mov	a,#0x100 - 0x0a
	add	a,_temperature
	jc	00105$
;	dgmtest.c:220: digits[1] = 17;
	mov	(_digits + 0x0001),#0x11
	sjmp	00106$
00105$:
;	dgmtest.c:224: digits[1] = (temperature - (temperature / 100) * 100) / 10;
	mov	r6,_temperature
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	a,r6
	clr	c
	subb	a,r4
	mov	dpl,a
	mov	a,r7
	subb	a,r5
	mov	dph,a
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r6, dpl
	mov	(_digits + 0x0001),r6
00106$:
;	dgmtest.c:227: digits[2] = temperature % 10;
	mov	r6,_temperature
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl, r6
	mov	dph, r7
	lcall	__modsint
	mov	r6, dpl
	mov	(_digits + 0x0002),r6
;	dgmtest.c:228: digits[3] = 15;
	mov	(_digits + 0x0003),#0x0f
;	dgmtest.c:229: checkError();
;	dgmtest.c:230: }
	ljmp	_checkError
;------------------------------------------------------------
;Allocation info for local variables in function 'displayValue'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;temp                      Allocated with name '_displayValue_temp_10000_186'
;------------------------------------------------------------
;	dgmtest.c:232: void displayValue(unsigned char value) {
;	-----------------------------------------
;	 function displayValue
;	-----------------------------------------
_displayValue:
	mov	r7, dpl
;	dgmtest.c:234: if (temp < 100) 
	cjne	r7,#0x64,00121$
00121$:
	jnc	00102$
;	dgmtest.c:236: digits[0] = 17;
	mov	_digits,#0x11
	sjmp	00103$
00102$:
;	dgmtest.c:240: digits[0] = temp / 100;
	mov	ar5,r7
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	lcall	__divsint
	mov	r5, dpl
	pop	ar7
	mov	_digits,r5
00103$:
;	dgmtest.c:242: if (temp < 10) 
	cjne	r7,#0x0a,00123$
00123$:
	jnc	00105$
;	dgmtest.c:244: digits[1] = 17;
	mov	(_digits + 0x0001),#0x11
	sjmp	00106$
00105$:
;	dgmtest.c:248: digits[1] = (temp - (temp / 100) * 100) / 10;
	mov	ar5,r7
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl, r5
	mov	dph, r6
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	pop	ar6
	mov	a,r5
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r6
	subb	a,r4
	mov	dph,a
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r5, dpl
	pop	ar7
	mov	(_digits + 0x0001),r5
00106$:
;	dgmtest.c:250: digits[2] = temp % 10;
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl, r7
	mov	dph, r6
	lcall	__modsint
	mov	r6, dpl
	mov	(_digits + 0x0002),r6
;	dgmtest.c:251: digits[3] = 18;
	mov	(_digits + 0x0003),#0x12
;	dgmtest.c:252: checkError();
;	dgmtest.c:253: }
	ljmp	_checkError
;------------------------------------------------------------
;Allocation info for local variables in function 'listenButtons'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;counter                   Allocated with name '_listenButtons_counter_10000_192'
;last_pressed              Allocated with name '_listenButtons_last_pressed_10000_192'
;------------------------------------------------------------
;	dgmtest.c:257: void listenButtons(unsigned char value){
;	-----------------------------------------
;	 function listenButtons
;	-----------------------------------------
_listenButtons:
	mov	r7, dpl
;	dgmtest.c:258: unsigned char __xdata counter = 0;
	mov	dptr,#_listenButtons_counter_10000_192
	clr	a
	movx	@dptr,a
;	dgmtest.c:259: unsigned char __xdata last_pressed = 0;
	mov	dptr,#_listenButtons_last_pressed_10000_192
	movx	@dptr,a
;	dgmtest.c:261: while(counter < value){
00109$:
	mov	dptr,#_listenButtons_counter_10000_192
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00156$
	ret
00156$:
;	dgmtest.c:262: counter++;
	mov	dptr,#_listenButtons_counter_10000_192
	mov	a,r6
	inc	a
	movx	@dptr,a
;	dgmtest.c:263: button_pressed = PCF8574_Getbutton(ADDRESS_BUTT);
	mov	dpl, #0x20
	push	ar7
	lcall	_PCF8574_Getbutton
	mov	_button_pressed,dpl
;	dgmtest.c:264: delay(20);
	mov	dptr,#0x0014
	clr	a
	mov	b,a
	lcall	_delay
	pop	ar7
;	dgmtest.c:266: if(last_pressed == 0){
	mov	dptr,#_listenButtons_last_pressed_10000_192
	movx	a,@dptr
	jnz	00108$
;	dgmtest.c:268: if(button_pressed){
	mov	a,_button_pressed
	jz	00108$
;	dgmtest.c:270: switch(button_pressed){
	mov	a,#0x01
	cjne	a,_button_pressed,00159$
	sjmp	00101$
00159$:
	mov	a,#0x02
	cjne	a,_button_pressed,00160$
	sjmp	00102$
00160$:
	mov	a,#0x03
;	dgmtest.c:272: case 1:
	cjne	a,_button_pressed,00104$
	sjmp	00103$
00101$:
;	dgmtest.c:273: target_temp++;
	inc	_target_temp
;	dgmtest.c:274: displayValue(target_temp);
	mov	dpl, _target_temp
	push	ar7
	lcall	_displayValue
	pop	ar7
;	dgmtest.c:275: break;
;	dgmtest.c:276: case 2:
	sjmp	00104$
00102$:
;	dgmtest.c:277: target_temp--;
	dec	_target_temp
;	dgmtest.c:278: displayValue(target_temp);
	mov	dpl, _target_temp
	push	ar7
	lcall	_displayValue
	pop	ar7
;	dgmtest.c:279: break;
;	dgmtest.c:280: case 3:
	sjmp	00104$
00103$:
;	dgmtest.c:281: displayValue(target_temp);
	mov	dpl, _target_temp
	push	ar7
	lcall	_displayValue
	pop	ar7
;	dgmtest.c:283: }
00104$:
;	dgmtest.c:284: counter = 0;
	mov	dptr,#_listenButtons_counter_10000_192
	clr	a
	movx	@dptr,a
00108$:
;	dgmtest.c:288: last_pressed = button_pressed;
	mov	dptr,#_listenButtons_last_pressed_10000_192
	mov	a,_button_pressed
	movx	@dptr,a
;	dgmtest.c:290: }
	ljmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'printStatus'
;------------------------------------------------------------
;	dgmtest.c:292: void printStatus() {
;	-----------------------------------------
;	 function printStatus
;	-----------------------------------------
_printStatus:
;	dgmtest.c:293: UART_print("CO2 :");
	mov	dptr,#___str_1
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:294: (periphs & 0b00000001) ? UART_println("ON"):UART_println("OFF");
	mov	dptr,#_periphs
	movx	a,@dptr
	jnb	acc.0,00103$
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_println
	sjmp	00104$
00103$:
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_UART_println
00104$:
;	dgmtest.c:296: UART_print("FAN :");
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:297: (periphs & 0b00000010)>>1 ? UART_println("ON"):UART_println("OFF");
	mov	dptr,#_periphs
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x02
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	orl	a,r7
	jz	00105$
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_println
	sjmp	00106$
00105$:
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_UART_println
00106$:
;	dgmtest.c:299: UART_print("HEAT :");
	mov	dptr,#___str_5
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:300: (periphs & 0b00000100)>>2 ? UART_println("ON"):UART_println("OFF");
	mov	dptr,#_periphs
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x04
	clr	a
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	orl	a,r7
	jz	00107$
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_println
	sjmp	00108$
00107$:
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_UART_println
00108$:
;	dgmtest.c:302: UART_print("DEHUMIDIFIER :");
	mov	dptr,#___str_6
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:303: (periphs & 0b00001000)>>3 ? UART_println("ON"):UART_println("OFF");
	mov	dptr,#_periphs
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x08
	clr	a
	swap	a
	rl	a
	xch	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x1f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	jnb	acc.4,00138$
	orl	a,#0xffffffe0
00138$:
	orl	a,r7
	jz	00109$
	mov	dptr,#___str_2
	mov	b, #0x80
	lcall	_UART_println
	sjmp	00110$
00109$:
	mov	dptr,#___str_3
	mov	b, #0x80
	lcall	_UART_println
00110$:
;	dgmtest.c:305: UART_print("\r\n");
	mov	dptr,#___str_0
	mov	b, #0x80
;	dgmtest.c:306: }
	ljmp	_UART_print
;------------------------------------------------------------
;Allocation info for local variables in function 'checkTarget'
;------------------------------------------------------------
;sign                      Allocated to registers r7 
;difference                Allocated to registers r6 
;------------------------------------------------------------
;	dgmtest.c:308: void checkTarget() {
;	-----------------------------------------
;	 function checkTarget
;	-----------------------------------------
_checkTarget:
;	dgmtest.c:311: if (target_temp >= temperature) 
	clr	c
	mov	a,_target_temp
	subb	a,_temperature
	jc	00102$
;	dgmtest.c:313: sign = 0;
	mov	r7,#0x00
;	dgmtest.c:314: difference = target_temp - temperature;
	mov	a,_target_temp
	clr	c
	subb	a,_temperature
	mov	r6,a
	sjmp	00103$
00102$:
;	dgmtest.c:319: sign = 1;
	mov	r7,#0x01
;	dgmtest.c:320: difference = temperature - target_temp;
	mov	a,_temperature
	clr	c
	subb	a,_target_temp
	mov	r6,a
00103$:
;	dgmtest.c:323: if(difference <= THRESHOLD) 
	mov	ar5,r6
	mov	r6,#0x00
	clr	c
	mov	a,_THRESHOLD
	subb	a,r5
	mov	a,(_THRESHOLD + 1)
	subb	a,r6
	jc	00105$
;	dgmtest.c:86: PCF8574_RelayOff(0, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_PCF8574_RelayOff
;	dgmtest.c:87: periphs &= 0b11111011;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	dgmtest.c:96: PCF8574_RelayOff(1, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x01
	lcall	_PCF8574_RelayOff
;	dgmtest.c:97: periphs &= 0b11111110;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	dgmtest.c:76: PCF8574_RelayOff(2, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x02
	lcall	_PCF8574_RelayOff
	pop	ar5
	pop	ar6
	pop	ar7
;	dgmtest.c:77: periphs &= 0b11111101;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfd
	movx	@dptr,a
;	dgmtest.c:327: fanOff();
00105$:
;	dgmtest.c:330: if((status0 != 0x18)&&(status1 != 0x18))
	mov	a,#0x18
	cjne	a,_status0,00175$
	sjmp	00114$
00175$:
	mov	a,#0x18
	cjne	a,_status1,00176$
	sjmp	00114$
00176$:
;	dgmtest.c:86: PCF8574_RelayOff(0, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x00
	lcall	_PCF8574_RelayOff
;	dgmtest.c:87: periphs &= 0b11111011;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	dgmtest.c:96: PCF8574_RelayOff(1, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x01
	lcall	_PCF8574_RelayOff
;	dgmtest.c:97: periphs &= 0b11111110;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	dgmtest.c:76: PCF8574_RelayOff(2, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x02
	lcall	_PCF8574_RelayOff
;	dgmtest.c:77: periphs &= 0b11111101;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfd
	movx	@dptr,a
;	dgmtest.c:334: fanOff();
	ret
00114$:
;	dgmtest.c:339: if (sign) 
	mov	a,r7
	jz	00111$
;	dgmtest.c:86: PCF8574_RelayOff(0, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x00
	push	ar6
	push	ar5
	lcall	_PCF8574_RelayOff
	pop	ar5
	pop	ar6
;	dgmtest.c:87: periphs &= 0b11111011;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	dgmtest.c:342: if (difference >= THRESHOLD) 
	clr	c
	mov	a,r5
	subb	a,_THRESHOLD
	mov	a,r6
	subb	a,(_THRESHOLD + 1)
	jc	00129$
;	dgmtest.c:91: PCF8574_RelayOn(1, ADDRESS_RELAY);
	mov	_PCF8574_RelayOn_PARM_2,#0x21
	mov	dpl, #0x01
	lcall	_PCF8574_RelayOn
;	dgmtest.c:92: periphs |= 0b00000001;
	mov	dptr,#_periphs
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	dgmtest.c:71: PCF8574_RelayOn(2, ADDRESS_RELAY);
	mov	_PCF8574_RelayOn_PARM_2,#0x21
	mov	dpl, #0x02
	lcall	_PCF8574_RelayOn
;	dgmtest.c:72: periphs |= 0b00000010;
	mov	dptr,#_periphs
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
;	dgmtest.c:345: fanOn();
	ret
00111$:
;	dgmtest.c:96: PCF8574_RelayOff(1, ADDRESS_RELAY);
	mov	_PCF8574_RelayOff_PARM_2,#0x21
	mov	dpl, #0x01
	push	ar6
	push	ar5
	lcall	_PCF8574_RelayOff
	pop	ar5
	pop	ar6
;	dgmtest.c:97: periphs &= 0b11111110;
	mov	dptr,#_periphs
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	dgmtest.c:351: if (difference >= THRESHOLD) 
	clr	c
	mov	a,r5
	subb	a,_THRESHOLD
	mov	a,r6
	subb	a,(_THRESHOLD + 1)
	jc	00129$
;	dgmtest.c:81: PCF8574_RelayOn(0, ADDRESS_RELAY);
	mov	_PCF8574_RelayOn_PARM_2,#0x21
	mov	dpl, #0x00
	lcall	_PCF8574_RelayOn
;	dgmtest.c:82: periphs |= 0b00000100;
	mov	dptr,#_periphs
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
;	dgmtest.c:71: PCF8574_RelayOn(2, ADDRESS_RELAY);
	mov	_PCF8574_RelayOn_PARM_2,#0x21
	mov	dpl, #0x02
	lcall	_PCF8574_RelayOn
;	dgmtest.c:72: periphs |= 0b00000010;
	mov	dptr,#_periphs
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
;	dgmtest.c:354: fanOn(); 
00129$:
;	dgmtest.c:358: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	dgmtest.c:360: void Timer0_ISR() __interrupt(1) {
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	dpl
	push	dph
	push	psw
;	dgmtest.c:361: TH0 = 0x00; 
	mov	_TH0,#0x00
;	dgmtest.c:362: TL0 = 0xFF; 
	mov	_TL0,#0xff
;	dgmtest.c:363: counter++;
	mov	dptr,#_counter
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a, #0x00
	movx	@dptr,a
;	dgmtest.c:364: }
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'External0_ISR'
;------------------------------------------------------------
;	dgmtest.c:366: void External0_ISR() __interrupt(0) {
;	-----------------------------------------
;	 function External0_ISR
;	-----------------------------------------
_External0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	dgmtest.c:367: UART_println("Entered interrupt");
	mov	dptr,#___str_7
	mov	b, #0x80
	lcall	_UART_println
;	dgmtest.c:368: button_pressed = PCF8574_Getbutton(ADDRESS_BUTT);
	mov	dpl, #0x20
	lcall	_PCF8574_Getbutton
	mov	_button_pressed,dpl
;	dgmtest.c:369: UART_println("Exit interrupt"); 
	mov	dptr,#___str_8
	mov	b, #0x80
	lcall	_UART_println
;	dgmtest.c:370: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'checkbuttoninterrupt'
;------------------------------------------------------------
;	dgmtest.c:372: void checkbuttoninterrupt()
;	-----------------------------------------
;	 function checkbuttoninterrupt
;	-----------------------------------------
_checkbuttoninterrupt:
;	dgmtest.c:374: delay(30); 
	mov	dptr,#0x001e
	clr	a
	mov	b,a
	lcall	_delay
;	dgmtest.c:375: if (button_pressed) {
	mov	a,_button_pressed
	jz	00108$
;	dgmtest.c:376: switch (button_pressed) {
	mov	a,#0x01
	cjne	a,_button_pressed,00135$
	sjmp	00101$
00135$:
	mov	a,#0x02
	cjne	a,_button_pressed,00136$
	sjmp	00102$
00136$:
	mov	a,#0x03
;	dgmtest.c:377: case 1:
	cjne	a,_button_pressed,00108$
	sjmp	00103$
00101$:
;	dgmtest.c:378: target_temp++;
	inc	_target_temp
;	dgmtest.c:379: displayValue(target_temp);
	mov	dpl, _target_temp
;	dgmtest.c:380: break;
;	dgmtest.c:381: case 2:
	ljmp	_displayValue
00102$:
;	dgmtest.c:382: target_temp--;
	dec	_target_temp
;	dgmtest.c:383: displayValue(target_temp);
	mov	dpl, _target_temp
;	dgmtest.c:384: break;
;	dgmtest.c:385: case 3:
	ljmp	_displayValue
00103$:
;	dgmtest.c:386: displayValue(target_temp);
	mov	dpl, _target_temp
;	dgmtest.c:390: }
;	dgmtest.c:392: }
	ljmp	_displayValue
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'unsignedIntToStr'
;------------------------------------------------------------
;str                       Allocated with name '_unsignedIntToStr_PARM_2'
;num                       Allocated to registers r6 r7 
;i                         Allocated with name '_unsignedIntToStr_i_10000_250'
;j                         Allocated with name '_unsignedIntToStr_j_20000_253'
;temp                      Allocated with name '_unsignedIntToStr_temp_30000_254'
;sloc0                     Allocated with name '_unsignedIntToStr_sloc0_1_0'
;------------------------------------------------------------
;	dgmtest.c:394: void unsignedIntToStr(unsigned int num, char* str) {
;	-----------------------------------------
;	 function unsignedIntToStr
;	-----------------------------------------
_unsignedIntToStr:
	mov	r6, dpl
	mov	r7, dph
;	dgmtest.c:396: if (num == 0) 
	mov	a,r6
	orl	a,r7
	jnz	00114$
;	dgmtest.c:398: str[i++] = '0';
	mov	r3,_unsignedIntToStr_PARM_2
	mov	r4,(_unsignedIntToStr_PARM_2 + 1)
	mov	r5,(_unsignedIntToStr_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x30
	lcall	__gptrput
;	dgmtest.c:399: str[i] = '\0'; 
	inc	r3
	cjne	r3,#0x00,00145$
	inc	r4
00145$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
;	dgmtest.c:400: return;
	ljmp	__gptrput
;	dgmtest.c:403: while (num != 0) 
00114$:
	clr	a
	mov	_unsignedIntToStr_i_10000_250,a
	mov	(_unsignedIntToStr_i_10000_250 + 1),a
00103$:
	mov	a,r6
	orl	a,r7
	jz	00117$
;	dgmtest.c:405: str[i++] = (num % 10) + '0'; 
	mov	a,_unsignedIntToStr_i_10000_250
	add	a, _unsignedIntToStr_PARM_2
	mov	r1,a
	mov	a,(_unsignedIntToStr_i_10000_250 + 1)
	addc	a, (_unsignedIntToStr_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_unsignedIntToStr_PARM_2 + 2)
	inc	_unsignedIntToStr_i_10000_250
	clr	a
	cjne	a,_unsignedIntToStr_i_10000_250,00147$
	inc	(_unsignedIntToStr_i_10000_250 + 1)
00147$:
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	push	ar1
	lcall	__moduint
	mov	r0, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a, r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
;	dgmtest.c:406: num /= 10; 
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	sjmp	00103$
00117$:
	mov	_unsignedIntToStr_sloc0_1_0,_unsignedIntToStr_i_10000_250
	mov	(_unsignedIntToStr_sloc0_1_0 + 1),(_unsignedIntToStr_i_10000_250 + 1)
;	dgmtest.c:409: str[i] = '\0';
	mov	a,_unsignedIntToStr_i_10000_250
	add	a, _unsignedIntToStr_PARM_2
	mov	r3,a
	mov	a,(_unsignedIntToStr_i_10000_250 + 1)
	addc	a, (_unsignedIntToStr_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_unsignedIntToStr_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	dgmtest.c:411: for (unsigned int j = 0; j < i / 2; j++) 
	mov	r4,_unsignedIntToStr_i_10000_250
	mov	a,(_unsignedIntToStr_i_10000_250 + 1)
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	clr	a
	mov	_unsignedIntToStr_j_20000_253,a
	mov	(_unsignedIntToStr_j_20000_253 + 1),a
00108$:
	clr	c
	mov	a,_unsignedIntToStr_j_20000_253
	subb	a,r4
	mov	a,(_unsignedIntToStr_j_20000_253 + 1)
	subb	a,r5
	jnc	00106$
;	dgmtest.c:413: char temp = str[j];
	push	ar4
	push	ar5
	mov	a,_unsignedIntToStr_j_20000_253
	add	a, _unsignedIntToStr_PARM_2
	mov	r0,a
	mov	a,(_unsignedIntToStr_j_20000_253 + 1)
	addc	a, (_unsignedIntToStr_PARM_2 + 1)
	mov	r1,a
	mov	r3,(_unsignedIntToStr_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	_unsignedIntToStr_temp_30000_254,a
;	dgmtest.c:414: str[j] = str[i - j - 1];
	mov	a,_unsignedIntToStr_sloc0_1_0
	clr	c
	subb	a,_unsignedIntToStr_j_20000_253
	mov	r2,a
	mov	a,(_unsignedIntToStr_sloc0_1_0 + 1)
	subb	a,(_unsignedIntToStr_j_20000_253 + 1)
	mov	r5,a
	dec	r2
	cjne	r2,#0xff,00149$
	dec	r5
00149$:
	mov	a,r2
	add	a, _unsignedIntToStr_PARM_2
	mov	r2,a
	mov	a,r5
	addc	a, (_unsignedIntToStr_PARM_2 + 1)
	mov	r5,a
	mov	r4,(_unsignedIntToStr_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r5
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrput
;	dgmtest.c:415: str[i - j - 1] = temp;
	mov	dpl,r2
	mov	dph,r5
	mov	b,r4
	mov	a,_unsignedIntToStr_temp_30000_254
	lcall	__gptrput
;	dgmtest.c:411: for (unsigned int j = 0; j < i / 2; j++) 
	inc	_unsignedIntToStr_j_20000_253
	clr	a
	cjne	a,_unsignedIntToStr_j_20000_253,00150$
	inc	(_unsignedIntToStr_j_20000_253 + 1)
00150$:
	pop	ar5
	pop	ar4
	sjmp	00108$
00106$:
;	dgmtest.c:417: UART_println(str);
	mov	dpl, _unsignedIntToStr_PARM_2
	mov	dph, (_unsignedIntToStr_PARM_2 + 1)
	mov	b, (_unsignedIntToStr_PARM_2 + 2)
;	dgmtest.c:418: }
	ljmp	_UART_println
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialDisplay'
;------------------------------------------------------------
;buffer                    Allocated with name '_SerialDisplay_buffer_10000_255'
;------------------------------------------------------------
;	dgmtest.c:422: void SerialDisplay() {
;	-----------------------------------------
;	 function SerialDisplay
;	-----------------------------------------
_SerialDisplay:
;	dgmtest.c:425: UART_print("Temperature :"); 
	mov	dptr,#___str_9
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:426: unsignedIntToStr(temperature, buffer);
	mov	r6,_temperature
	mov	r7,#0x00
	mov	_unsignedIntToStr_PARM_2,#_SerialDisplay_buffer_10000_255
	mov	(_unsignedIntToStr_PARM_2 + 1),r7
	mov	(_unsignedIntToStr_PARM_2 + 2),#0x40
	mov	dpl, r6
	mov	dph, r7
	lcall	_unsignedIntToStr
;	dgmtest.c:427: UART_print("Humidity :");
	mov	dptr,#___str_10
	mov	b, #0x80
	lcall	_UART_print
;	dgmtest.c:428: unsignedIntToStr(humidity, buffer);
	mov	r6,_humidity
	mov	r7,#0x00
	mov	_unsignedIntToStr_PARM_2,#_SerialDisplay_buffer_10000_255
	mov	(_unsignedIntToStr_PARM_2 + 1),r7
	mov	(_unsignedIntToStr_PARM_2 + 2),#0x40
	mov	dpl, r6
	mov	dph, r7
	lcall	_unsignedIntToStr
;	dgmtest.c:429: printStatus();
;	dgmtest.c:430: }
	ljmp	_printStatus
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;new_threshold             Allocated to registers r6 r7 
;------------------------------------------------------------
;	dgmtest.c:434: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	dgmtest.c:435: time = 0;
	clr	a
	mov	_time,a
	mov	(_time + 1),a
;	dgmtest.c:436: counter = 0;
	mov	dptr,#_counter
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	dgmtest.c:437: status0 = 0;
	mov	_status0,a
;	dgmtest.c:438: status1 = 0;
	mov	_status1,a
;	dgmtest.c:439: mode = 0;
	mov	dptr,#_mode
	movx	@dptr,a
;	dgmtest.c:440: UART_init(9600);
	mov	dptr,#0x2580
	mov	b,a
	lcall	_UART_init
;	dgmtest.c:441: delay(30);
	mov	dptr,#0x001e
	clr	a
	mov	b,a
	lcall	_delay
;	dgmtest.c:442: SPI_init();
	lcall	_SPI_init
;	dgmtest.c:444: target_temp = 60; //farenheit
	mov	_target_temp,#0x3c
;	dgmtest.c:445: initialize();
	lcall	_initialize
;	dgmtest.c:446: AHT21_init(0);
	mov	dpl, #0x00
	lcall	_AHT21_init
;	dgmtest.c:447: AHT21_init(1);
	mov	dpl, #0x01
	lcall	_AHT21_init
;	dgmtest.c:448: PCF8574_Init_input(ADDRESS_BUTT);
	mov	dpl, #0x20
	lcall	_PCF8574_Init_input
;	dgmtest.c:449: PCF8574_Init_output(ADDRESS_RELAY);
	mov	dpl, #0x21
	lcall	_PCF8574_Init_output
;	dgmtest.c:453: while (1) {
00109$:
;	dgmtest.c:455: updateAll();
	lcall	_updateAll
;	dgmtest.c:456: checkTarget();
	lcall	_checkTarget
;	dgmtest.c:457: displayTemp();
	lcall	_displayTemp
;	dgmtest.c:458: listenButtons(DELAY);
	mov	dpl, #0x14
	lcall	_listenButtons
;	dgmtest.c:460: updateAll();
	lcall	_updateAll
;	dgmtest.c:461: checkTarget();
	lcall	_checkTarget
;	dgmtest.c:462: displayHum();
	lcall	_displayHum
;	dgmtest.c:463: listenButtons(DELAY);
	mov	dpl, #0x14
	lcall	_listenButtons
;	dgmtest.c:465: updateAll();
	lcall	_updateAll
;	dgmtest.c:466: checkTarget();
	lcall	_checkTarget
;	dgmtest.c:467: displayValue(target_temp);
	mov	dpl, _target_temp
	lcall	_displayValue
;	dgmtest.c:468: SerialDisplay();
	lcall	_SerialDisplay
;	dgmtest.c:471: UART_println("Waiting for new threshold value:");
	mov	dptr,#___str_11
	mov	b, #0x80
	lcall	_UART_println
;	dgmtest.c:472: unsigned int new_threshold = UART_receiveNumber();
	lcall	_UART_receiveNumber
	mov	r6, dpl
	mov	r7, dph
;	dgmtest.c:473: if (new_threshold > 0 && new_threshold <= 100) { 
	mov	a,r6
	orl	a,r7
	jz	00102$
	clr	c
	mov	a,#0x64
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00102$
;	dgmtest.c:474: THRESHOLD = new_threshold;	
	mov	_THRESHOLD,r6
	mov	(_THRESHOLD + 1),r7
;	dgmtest.c:475: UART_println("Threshold updated successfully.");
	mov	dptr,#___str_12
	mov	b, #0x80
	lcall	_UART_println
	sjmp	00103$
00102$:
;	dgmtest.c:477: UART_println("Invalid threshold value. Please enter a value between 1 and 100.");
	mov	dptr,#___str_13
	mov	b, #0x80
	lcall	_UART_println
00103$:
;	dgmtest.c:480: listenButtons(DELAY);
	mov	dpl, #0x14
	lcall	_listenButtons
;	dgmtest.c:482: if((status0!=0x18)&&(status1!=0x18)){
	mov	a,#0x18
	cjne	a,_status0,00145$
	sjmp	00106$
00145$:
	mov	a,#0x18
	cjne	a,_status1,00146$
	sjmp	00106$
00146$:
;	dgmtest.c:483: updateAll();
	lcall	_updateAll
;	dgmtest.c:484: checkTarget();
	lcall	_checkTarget
;	dgmtest.c:485: displayError();
	lcall	_displayError
;	dgmtest.c:486: listenButtons(DELAY);
	mov	dpl, #0x14
	lcall	_listenButtons
00106$:
;	dgmtest.c:500: temperature = 0;
	mov	_temperature,#0x00
;	dgmtest.c:501: humidity = 0;
	mov	_humidity,#0x00
;	dgmtest.c:502: button_pressed = 0;
	mov	_button_pressed,#0x00
;	dgmtest.c:505: }
	ljmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
_number__:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_number_0:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_1:
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x00	; 0
_number_2:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x00	; 0
_number_3:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_4:
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x3c	; 60
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
_number_5:
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_6:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_7:
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
_number_8:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_9:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x38	; 56	'8'
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_a:
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
_number_b:
	.db #0x1c	; 28
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x00	; 0
_number_c:
	.db #0x0c	; 12
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x00	; 0
_number_d:
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x00	; 0
_number_e:
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x00	; 0
_number_f:
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x00	; 0
_number_h:
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x3c	; 60
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
_number_t:
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	; 0
	.area CONST   (CODE)
___str_1:
	.ascii "CO2 :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "ON"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "OFF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "FAN :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "HEAT :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "DEHUMIDIFIER :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Entered interrupt"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Exit interrupt"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Temperature :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Humidity :"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Waiting for new threshold value:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Threshold updated successfully."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Invalid threshold value. Please enter a value between 1 and "
	.ascii "100."
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__periphs:
	.db #0x08	; 8
	.area CABS    (ABS,CODE)
