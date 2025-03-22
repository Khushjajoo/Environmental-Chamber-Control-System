#ifndef SPI_H
#define SPI_H

#define NO_OP __asm; nop __endasm;

#include <8051.h>


#ifdef SPI_ASM_SIZE


#define SS _P1_3 // Slave Select pin
#define MOSI _P1_2 // Master Out Slave In pin
#define MISO _P1_1 // Master In Slave Out pin
#define SCK _P1_0 // Serial Clock pin

__idata unsigned char dats = 0; // global variable to send used for assembly method
__idata unsigned char datr = 0;	// global variable to receive used for assembly method


void SPI_init() { 
	__asm;

    	setb SS
		setb MOSI
		clr MISO
		setb SCK 

    __endasm;
}

void SPI_start() { 
	__asm;

    	clr SS
	
    __endasm;
}

void SPI_end() { 
	__asm;

    	setb SS

    __endasm;
}

unsigned char SPI_transfer(unsigned char dat) {
	dats = dat;
	__asm;


		mov _datr, #0x00

		clr SCK ;clock line low
		mov R2, #0x80 ; same as 0b10000000

	for_loop:

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR  ; Compare A with zero

		clr MOSI

		sjmp END_IF  ; Jump to the end of the if-else statement

	ELSE_BR:
		setb MOSI

	END_IF:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET
		
		; set bit to 0

		sjmp MISO_DONE

	MISO_SET:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE: 
		
		clr SCK

		mov A, R2
		rr A
		mov R2, A 


		

		cjne R2, #0x80, for_loop   

		setb MOSI



    __endasm;

	return datr;
}

#else
#ifdef SPI_ASM_SPEED
// This is speed optimized assembly version of SPI it
// Uses 8 cycles for single bit R/W and memory of 538 Bytes
#define SS _P1_3 // Slave Select pin
#define MOSI _P1_2 // Master Out Slave In pin
#define MISO _P1_1 // Master In Slave Out pin
#define SCK _P1_0 // Serial Clock pin

__idata unsigned char dats = 0; // global variable to send used for assembly method
__idata unsigned char datr = 0;	// global variable to receive used for assembly method


void SPI_init() { 
	__asm;

    	setb SS
		setb MOSI
		clr MISO
		setb SCK 

    __endasm;
}

void SPI_start() { 
	__asm;

    	clr SS
		mov P2, #0x00
		mov P2, #0xff
    __endasm;
}

void SPI_end() { 
	__asm;

    	setb SS

    __endasm;
}

unsigned char SPI_transfer(unsigned char dat) {
	dats = dat;
	__asm;
		
		; init
		mov _datr, #0x00

		; #0

		clr SCK ;clock line low

		mov R2, #0x80 ; same as 0b10000000

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR0  ; Compare A with zero

		clr MOSI

		sjmp END_IF0  ; Jump to the end of the if-else statement

	ELSE_BR0:
		setb MOSI

	END_IF0:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET0
		
		; set bit to 0

		sjmp MISO_DONE0

	MISO_SET0:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE0: 
		

	; #1

		clr SCK ;clock line low
		mov R2, #0x40 ; same as 0b01000000

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR1  ; Compare A with zero

		clr MOSI

		sjmp END_IF1  ; Jump to the end of the if-else statement

	ELSE_BR1:
		setb MOSI

	END_IF1:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET1
		
		; set bit to 0

		sjmp MISO_DONE1

	MISO_SET1:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE1: 
		  

	; #2

		clr SCK ;clock line low
		mov R2, #0x20 ; same as 0b00100000

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR2  ; Compare A with zero

		clr MOSI

		sjmp END_IF2  ; Jump to the end of the if-else statement

	ELSE_BR2:
		setb MOSI

	END_IF2:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET2
		
		; set bit to 0

		sjmp MISO_DONE2

	MISO_SET2:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE2: 
		
	; #3

		clr SCK ;clock line low
		mov R2, #0x10 ; same as 0b00100000

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR3  ; Compare A with zero

		clr MOSI

		sjmp END_IF3  ; Jump to the end of the if-else statement

	ELSE_BR3:
		setb MOSI

	END_IF3:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET3
		
		; set bit to 0

		sjmp MISO_DONE3

	MISO_SET3:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE3: 
		
	; #4

		clr SCK ;clock line low
		mov R2, #0x08 ; same as 0b00001000

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR4  ; Compare A with zero

		clr MOSI

		sjmp END_IF4  ; Jump to the end of the if-else statement

	ELSE_BR4:
		setb MOSI

	END_IF4:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET4
		
		; set bit to 0

		sjmp MISO_DONE4

	MISO_SET4:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE4: 	
	

	; #5

		clr SCK ;clock line low
		mov R2, #0x04 ; same as 0b00000100

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR5  ; Compare A with zero

		clr MOSI

		sjmp END_IF5  ; Jump to the end of the if-else statement

	ELSE_BR5:
		setb MOSI

	END_IF5:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET5
		
		; set bit to 0

		sjmp MISO_DONE5

	MISO_SET5:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE5: 


	; #6

		clr SCK ;clock line low
		mov R2, #0x02 ; same as 0b00000010

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR6  ; Compare A with zero

		clr MOSI

		sjmp END_IF6  ; Jump to the end of the if-else statement

	ELSE_BR6:
		setb MOSI

	END_IF6:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET6
		
		; set bit to 0

		sjmp MISO_DONE6

	MISO_SET6:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE6: 

	; #7

		clr SCK ;clock line low
		mov R2, #0x01 ; same as 0b00000001

		;sending bit
		mov A, _dats
		anl A, R2


		jnz ELSE_BR7  ; Compare A with zero

		clr MOSI

		sjmp END_IF7  ; Jump to the end of the if-else statement

	ELSE_BR7:
		setb MOSI

	END_IF7:
		nop
		setb SCK ; clock line high
		nop
		; receiving bit
		jb MISO, MISO_SET7
		
		; set bit to 0

		sjmp MISO_DONE7

	MISO_SET7:
	
		; set bit to 1
		mov A, _datr
		orl A, R2
		mov _datr, A

	MISO_DONE7: 



		setb MOSI

    __endasm;

	return datr;
}

#else

// This is C version of SPI driver, it uses 16 machine cycle for R/W single bit

#define SS P1_3 // Slave Select pin
#define MOSI P1_2 // Master Out Slave In pin
#define MISO P1_1 // Master In Slave Out pin
#define SCK P1_0 // Serial Clock pin

const char t = 1; // for adjusting timing


void SPI_init() { 
    // Configure SPI pins
    SS = 1; // Set Slave Select pin as output and high
    MOSI = 1; // Set MOSI pin as output and high
    MISO = 0; // Set MISO pin as input
    SCK = 1; // Set SCK pin as output and high 
}

void SPI_start() { 
	SS = 0;
}

void SPI_end() { 
	SS = 1;
}

// CS pin must be low before using this method
unsigned char SPI_transfer(unsigned char dat) {
	unsigned char received_data = 0;
	unsigned char bitPosition = 0b10000000;
	SCK = 0;
    unsigned char i = 0;
	for(i=0; i < 8; i++){
		SCK = 0;
		MOSI = dat&(bitPosition);
	
		SCK = 1;
		
		if(MISO){
			received_data |= bitPosition;
		}
		SCK = 1;
		bitPosition = bitPosition>>1;
		
	}


	MOSI = 1;
	return received_data;
}

#endif

#endif

#endif