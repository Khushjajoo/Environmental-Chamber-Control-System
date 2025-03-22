#pragma once

#include "spi.h"
#include <stdint.h>

#define DISPNUM 4
#define CS P1_3

static unsigned char buffer[DISPNUM];
static unsigned char digits[DISPNUM];

unsigned int timeseconds = 0;


__code unsigned char number__[] = {0b00000000, 
                             0b00000000, 
                             0b00000000, 
                             0b00000000, 
                             0b00000000,
                             0b00000000,
                             0b00000000,
                             0b00000000};

__code unsigned char number_0[] = {0b00011000, 
                             0b00100100, 
                             0b00100100, 
                             0b00100100, 
                             0b00100100,
                             0b00100100,
                             0b00011000,
                             0b00000000};

__code unsigned char number_1[] = {0b00010000, 
                             0b00011000, 
                             0b00010000, 
                             0b00010000, 
                             0b00010000,
                             0b00010000,
                             0b00111000,
                             0b00000000};

__code unsigned char number_2[] = {0b00011000, 
                             0b00100100, 
                             0b00100000, 
                             0b00010000, 
                             0b00001000,
                             0b00000100,
                             0b00111100,
                             0b00000000};
  
__code unsigned char number_3[] = {0b00011000, 
                             0b00100100, 
                             0b00100000, 
                             0b00011000, 
                             0b00100000,
                             0b00100100,
                             0b00011000,
                             0b00000000};

__code unsigned char number_4[] = {0b00010000, 
                             0b00011000, 
                             0b00010100, 
                             0b00111100, 
                             0b00010000,
                             0b00010000,
                             0b00010000,
                             0b00000000};

__code unsigned char number_5[] = {0b00111100, 
                             0b00000100, 
                             0b00011100, 
                             0b00100000, 
                             0b00100000,
                             0b00100100,
                             0b00011000,
                             0b00000000};

__code unsigned char number_6[] = {0b00011000, 
                             0b00100100, 
                             0b00000100, 
                             0b00011100, 
                             0b00100100,
                             0b00100100,
                             0b00011000,
                             0b00000000};

__code unsigned char number_7[] = {0b00111100, 
                             0b00100000, 
                             0b00010000, 
                             0b00001000, 
                             0b00001000,
                             0b00001000,
                             0b00001000,
                             0b00000000};

__code unsigned char number_8[] = {0b00011000, 
                             0b00100100, 
                             0b00100100, 
                             0b00011000, 
                             0b00100100,
                             0b00100100,
                             0b00011000,
                             0b00000000};

__code unsigned char number_9[] = {0b00011000, 
                             0b00100100, 
                             0b00100100, 
                             0b00111000, 
                             0b00100000,
                             0b00100100,
                             0b00011000,
                             0b00000000};
__code unsigned char number_a[] = {0b00011000, 
                             0b00100100, 
                             0b00100100, 
                             0b00111100, 
                             0b00100100,
                             0b00100100,
                             0b00100100,
                             0b00000000};
__code unsigned char number_b[] = {0b00011100, 
                             0b00100100, 
                             0b00100100, 
                             0b00011100, 
                             0b00100100,
                             0b00100100,
                             0b00011100,
                             0b00000000};
__code unsigned char number_c[] = {0b0001100, 
                             0b00100100, 
                             0b00000100, 
                             0b00000100, 
                             0b00000100,
                             0b00100100,
                             0b00011000,
                             0b00000000};
__code unsigned char number_d[] = {0b00001100, 
                             0b00010100, 
                             0b00100100, 
                             0b00100100, 
                             0b00100100,
                             0b00010100,
                             0b00001100,
                             0b00000000};
__code unsigned char number_e[] = {0b00111100, 
                             0b00000100, 
                             0b00000100, 
                             0b00111100, 
                             0b00000100,
                             0b00000100,
                             0b00111100,
                             0b00000000};
__code unsigned char number_f[] = {0b00111100, 
                             0b00000100, 
                             0b00000100, 
                             0b00111100, 
                             0b00000100,
                             0b00000100,
                             0b00000100,
                             0b00000000};
__code unsigned char number_h[] = {0b00100100, 
                             0b00100100, 
                             0b00100100, 
                             0b00111100, 
                             0b00100100,
                             0b00100100,
                             0b00100100,
                             0b00000000};
__code unsigned char number_t[] = {0b01111100, 
                             0b00010000, 
                             0b00010000, 
                             0b00010000, 
                             0b00010000,
                             0b00010000,
                             0b00010000,
                             0b00000000};    


void fillBufferTime(){
    unsigned int minutes = timeseconds/60;
    unsigned int seconds = timeseconds - minutes*60;
    digits[3] = seconds%10;
    digits[2] = seconds/10;
    digits[1] = minutes%10;
    digits[0] = minutes/10;
}



void setTime(unsigned int minutes, unsigned int seconds){
  timeseconds = seconds + minutes*60;
  fillBufferTime();
}

void decrementTime(){
  if(timeseconds>0){
    timeseconds--;
  }
  fillBufferTime();
  
}




void sendCommand(unsigned char msb, unsigned char lsb){
    CS = 0;
    SPI_transfer(msb);
    SPI_transfer(lsb);
    CS = 1;
}

void sendCommandStealth(unsigned char msb, unsigned char lsb){
    
    SPI_transfer(msb);
    SPI_transfer(lsb);
  
}


void sendBuffer(unsigned char address){
  unsigned char i = 0;
  for(i=0; i<DISPNUM-1; i++){
    sendCommandStealth(address, buffer[(DISPNUM-1)-i]);
  }
  sendCommand(address, buffer[0]);
  // clean shift registers
  for(i=0; i<DISPNUM; i++){
    sendCommandStealth(0x00,0x00);
  }

}

void initialize(){
    //display test
    unsigned char i = 0;
    unsigned char j = 0;
    for(i=0; i<DISPNUM; i++){
      buffer[i] = 0x00;
    }
    sendBuffer(0x0F);

    //scan limit
    for(i=0; i<DISPNUM; i++){
      buffer[i] = 0x07;
    }
    sendBuffer(0x0B);

    //Decode mode
    for(i=0; i<DISPNUM; i++){
      buffer[i] = 0x00;
    }
    sendBuffer(0x09);

    //clear digits
    for(j=0; j<8; j++){
      //Decode mode
      for(i=0; i<DISPNUM; i++){
        buffer[i] = 0x00;
      }
      sendBuffer(j+1);
    }
    

    //intensity
    for(i=0; i<DISPNUM; i++){
      buffer[i] = 0x05;
    }
    sendBuffer(0x0A);

    //turn on
    for(i=0; i<DISPNUM; i++){
      buffer[i] = 0x01;
    }
    sendBuffer(0x0C);

}

void displayDigits(unsigned char dot){
  unsigned char i = 0;
  unsigned char j = 0;  
  for(i=0; i<8; i++){
    for(j=0; j<DISPNUM; j++){
      switch(digits[j]){
        case 0:
          buffer[j] = number_0[7-i];
          break;
        case 1: 
          buffer[j] = number_1[7-i];
          break;
        case 2: 
          buffer[j] = number_2[7-i];
          break;
        case 3: 
          buffer[j] = number_3[7-i];
          break;
        case 4: 
          buffer[j] = number_4[7-i];
          break;
        case 5: 
          buffer[j] = number_5[7-i];
          break;
        case 6: 
          buffer[j] = number_6[7-i];
          break;
        case 7: 
          buffer[j] = number_7[7-i];
          break;
        case 8: 
          buffer[j] = number_8[7-i];
          break;
        case 9: 
          buffer[j] = number_9[7-i];
          break;
        case 10: 
          buffer[j] = number_a[7-i];
          break;
        case 11: 
          buffer[j] = number_b[7-i];
          break;
        case 12: 
          buffer[j] = number_c[7-i];
          break;
        case 13: 
          buffer[j] = number_d[7-i];
          break;
        case 14: 
          buffer[j] = number_e[7-i];
          break;
        case 15: 
          buffer[j] = number_f[7-i];
          break;
        case 16:
          buffer[j] = number_h[7-i];
          break;
        case 17:
          buffer[j] = number__[7-i];
          break;
        case 18:
          buffer[j] = number_t[7-i];
          break;
      }
    }
    
    if(dot){
       if((i==2)||(i==3)||(i==5)||(i==6)){
        buffer[1] = buffer[1]|0b10000000;
        //buffer[2] = buffer[2]|0b00000001;
      }
    }  
    sendBuffer(i+1);
  }
}