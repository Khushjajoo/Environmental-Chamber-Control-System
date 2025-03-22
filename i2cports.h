#ifndef I2C_H
#define I2C_H
#define SDA0 P2_0
#define SCL0 P2_1
#define SDA1 P2_2
#define SCL1 P2_3
#define SDA2 P1_7
#define SCL2 P1_6


#include <8051.h>
#include "time.h"

static unsigned char channel;
static unsigned char addrW;
static unsigned char addrR;

unsigned char delay_time=0;

void i2c_setchannel(unsigned char ch){
    channel = ch;
}
void i2c_SDA_line(unsigned char value){

    switch(channel){
        case 0:
            SDA0 = value;
            break;
        case 1:
            SDA1 = value;
            break;
        case 2:
            SDA2 = value;
            break;
        default:
            SDA0 = value;
    }
}

void i2c_SCL_line(unsigned char value){

    switch(channel){
        case 0:
            SCL0 = value;
            break;
        case 1:
            SCL1 = value;
            break;
        case 2:
            SCL2 = value;
            break;
        default:
            SCL0 = value;
    }
}


void i2c_start()
{
    i2c_SDA_line(1);
    delay(delay_time);
    i2c_SCL_line(1);
    delay(delay_time);
    i2c_SDA_line(0);
    delay(delay_time);
    i2c_SCL_line(0);
    delay(delay_time);
}


void i2c_stop()
{
    i2c_SDA_line(0);
    delay(delay_time);
    i2c_SCL_line(1);
    delay(delay_time);
    i2c_SDA_line(1);
    delay(delay_time);
}

void i2c_restart(){
    i2c_SDA_line(1);
    delay(delay_time);
    i2c_SCL_line(1);
    delay(delay_time);
    i2c_SDA_line(0);
    delay(delay_time);
    i2c_SCL_line(0);
    delay(delay_time);
}

void i2c_send_ack(){
    i2c_SDA_line(0);
    delay(delay_time);
    //delayMicroseconds(1);
    i2c_SCL_line(1);
    delay(delay_time);
    i2c_SCL_line(0);
    delay(delay_time);
    i2c_SDA_line(1);
    delay(delay_time);
}

void i2c_send_nack(){
    i2c_SDA_line(1);
    delay(delay_time);

    i2c_SCL_line(1);
    delay(delay_time);

    i2c_SCL_line(0);
    delay(delay_time);
}

void i2c_write(unsigned char data){
    unsigned char i = 0;
    for(i=0; i < 8; i++){
        switch(channel){
            case 0:
                SDA0 = (data & 0x80) ? 1 : 0;
                break;
            case 1:
                SDA1 = (data & 0x80) ? 1 : 0;
                break;
            case 2:
                SDA2 = (data & 0x80) ? 1 : 0;
                break;
            default:
                SDA0 = (data & 0x80) ? 1 : 0;
        }
        delay(delay_time);
        i2c_SCL_line(1);
        delay(delay_time);
        i2c_SCL_line(0);
        delay(delay_time);

        data <<= 1;
    }
    i2c_SCL_line(1);
    delay(delay_time);
    i2c_SCL_line(0);
    delay(delay_time);
}


unsigned char i2c_read(){
    unsigned char data = 0;
    int i = 0;
    for(i=0; i < 8; i++){
        i2c_SCL_line(1);
        delay(delay_time);
        data <<= 1;
        switch(channel){
            case 0:
                data |= SDA0;
                break;
            case 1:
                data |= SDA1;
                break;
            case 2:
                data |= SDA2;
                break;
            default:
                data |= SDA0;
        }

        i2c_SCL_line(0);
        delay(delay_time);
    }
    return data;
}

void i2c_write_byte(unsigned char ch, unsigned char i2c_add, unsigned char data)
{
    channel = ch;
    i2c_start();
    i2c_write(i2c_add << 1);
    i2c_write(data);
    i2c_stop();
}

unsigned char i2c_read_byte(unsigned char ch, unsigned char i2c_add)
{
    unsigned char rec;
    channel = ch;
    
    i2c_start();
    i2c_write((i2c_add << 1) + 1);
    rec=i2c_read();
//i2c_send_nack();
    i2c_stop();
    return rec;
}


#endif