#ifndef UART_H
#define UART_H

#include "time.h"
#include <stdint.h>
#define FOSC 22000000UL

void UART_init(unsigned long baudrate){
    unsigned long BRT = 256 - FOSC / (12 * 15 * baudrate);
    SM0 = 0;
    SM1 = 1; 
	TMOD = 0x20; 
	TL1 = BRT; 
	TH1 = BRT;
	TR1 = 1;
	//AUXR = 0x40;
    //ES = 1;
	//EA = 1;
    delay(10);
}

void UART_transmit(unsigned char dat) {
    SBUF = dat;
    while (!TI){} // Wait until transmission is complete
    TI = 0; // Clear the transmit interrupt flag
  
}

unsigned char UART_receive(){
    while (!RI); // Wait until reception is complete
    RI = 0; // Clear the receive interrupt flag 
    return SBUF; // Return received data
}

unsigned int UART_receiveNumber() {
    unsigned char received;
    unsigned int value = 0;

    while (1) {
        received = UART_receive();
        if (received == '\n' || received == '\r') {
            break; 
        }

    // Convert ASCII to number if it is a digit (0-9)
        if (received >= '0' && received <= '9') {
            value = value * 10 + (received - '0');
        }
        }
        return value;
}


void UART_print(unsigned char* string) {

    while(*string) {
        
        UART_transmit(*string); // Transmit a single character
        string++; // Move to the next character in the string
    }


}

void UART_println(unsigned char* string) {
    UART_print(string);
	UART_print("\r\n"); //newline
}

void UART_readBuffer(unsigned char* buffer){
    unsigned char dat = SBUF;
    // So until its pressed enter
    while(dat!=10){
        *buffer = dat;
        buffer++;
        dat = SBUF;
    }

    UART_println(buffer);

}

unsigned char UART_hexValueLetter(unsigned char val){
    unsigned char hex;
    if(val < 10){
        hex = '0' + val;
    } else {
        switch(val){
            case 10: hex = 'A'; break;
            case 11: hex = 'B'; break;
            case 12: hex = 'C'; break;
            case 13: hex = 'D'; break;
            case 14: hex = 'E'; break;
            case 15: hex = 'F'; break;
            default: hex = 'Z';
        }
    }

    return hex;
}

void UART_printBinaryValue(unsigned char val){
    unsigned char i = 0;
    for(i=0; i < 8; i++){
        if(val&(0b10000000>>i)){
            UART_transmit('1');
        }else{
            UART_transmit('0');
        }
    }
}

void UART_printHexValue(unsigned char val){
    //UART_transmit('0');
    //UART_transmit('x');
    unsigned char high = val>>4;
    unsigned char low = val&0b00001111;
    UART_transmit(UART_hexValueLetter(high));
    UART_transmit(UART_hexValueLetter(low));
}

void UART_printDecimalValue(unsigned char val){
    unsigned char digit[5] = {'0', '0', '0', '0', '0'};
    unsigned char start;
    unsigned char i;

    digit[0] = '0' + val/10000;
    val %= 10000;
    digit[1] = '0' + val/1000;
    val %= 1000;
    digit[2] = '0' + val/100;
    val %= 100;
    digit[3] = '0' + val/10;
    digit[4] = '0' + val%10;

    for(i = 0; i < (5-1); i++){
        if(digit[i] == '0'){
            if(start){
                UART_transmit(digit[i]);
            }
        } else {
            start = 1;
            UART_transmit(digit[i]);
        }
    }

    UART_transmit(digit[4]);

    
}

#endif