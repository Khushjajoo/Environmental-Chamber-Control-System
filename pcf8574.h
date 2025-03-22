#pragma once

#include <8051.h>
#include "time.h" 
#include "i2cports.h"   
#include "uart.h" 

#define ADDRESS_BUTT    0x20
#define ADDRESS_RELAY   0x21
#define I2C_CHANNEL     2

unsigned char ch = I2C_CHANNEL;


void PCF8574_Init_output(unsigned char addr){
    i2c_setchannel(ch);
	i2c_write_byte(ch, addr, 0xFF);
} 

void PCF8574_Init_input(unsigned char addr){
    i2c_setchannel(ch);
	i2c_write_byte(ch, addr, 0x01);
    i2c_write_byte(ch, addr, 0x03);
    i2c_write_byte(ch, addr, 0x0F);
    i2c_write_byte(ch, addr, 0x1F);
    i2c_write_byte(ch, addr, 0x3F);
    i2c_write_byte(ch, addr, 0x7F);
    i2c_write_byte(ch, addr, 0xFF);
} 

void PCF8574_RelayOn(unsigned char relay, unsigned char addr){
    unsigned char value = i2c_read_byte(ch, addr);
    i2c_write_byte(ch,addr, value&(~(1<<relay)));
}

void PCF8574_RelayOff(unsigned char relay, unsigned char addr){
    unsigned char value = i2c_read_byte(ch, addr);
    i2c_write_byte(ch,addr, value|(1<<relay));
}
unsigned char PCF8574_Getbutton(unsigned char addr){
    unsigned char value = i2c_read_byte(ch, addr);
    
    value = ~value;
    switch(value){
        case 0x00:
            return 0;
        case 0x01:  
            return 1;
        case 0x02:
            return 2;
        case 0x04:
            return 3;
        case 0x08:
            return 4;
        default:
            return 0;
        
    }
}

