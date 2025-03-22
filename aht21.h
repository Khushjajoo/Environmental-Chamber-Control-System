#pragma once
#define add_aht21 0x38

#include <stdint.h>
#include "i2cports.h"
static unsigned char values0[6];
static unsigned char values1[6];


// void AHT21_init(unsigned char ch){
//   unsigned char status;
//   delay(100);
  
//   i2c_write_byte(ch, add_aht21, 0x71);
//   status = i2c_read_byte(ch, add_aht21);
//   if(status == 0x18){
//     UART_println("Initialized");
//   } else {
//     UART_println("Not initilized");
//   }
// }

void AHT21_init(unsigned char ch) {
    i2c_setchannel(ch);
    i2c_start();
    i2c_write((add_aht21 << 1));  
    i2c_write(0xE1);  
    i2c_stop();
    delay(10);
}

unsigned char AHT21_updateRawValue(unsigned char ch){

   unsigned char i;
   unsigned char status;
  i2c_setchannel(ch);
  i2c_start();
  i2c_write(add_aht21<<1);
  i2c_write(0xAC);
  i2c_write(0x33);
  i2c_write(0x00);
  i2c_stop();
  delay(80);



//   i2c_start();
//   i2c_write((add_aht21 << 1) + 1);
//   i2c_read();
//   i2c_send_nack();
//   i2c_stop();
   
//   delay(100);
  //unsigned char status = i2c_read_byte(ch, add_aht21);
  // while(!(status&0b10000000)){
  //   delay(10);
  //   status = i2c_read_byte(ch, add_aht21);
  // }
  i2c_start();
  i2c_write((add_aht21 << 1) + 1);
  status = i2c_read();
  i2c_send_ack();
  for(i=0; i<6; i++){
    if(ch==0){
      values0[i] = i2c_read();
    } else {
      values1[i] = i2c_read();
    }
    
    if(i!=5){
      i2c_send_ack();
      
    } 
    
  }
  i2c_stop();
  
  
  return status;

}

unsigned char AHT21_getTemp(unsigned char ch){
  uint32_t temp;
  unsigned char sign;
  //uint32_t humid;
  unsigned char farenheit_temp;
  unsigned char celsius_temp;
  

  switch(ch){
    case 0:
      temp =  (values0[2]&0x0F);
      temp = temp<<8;
      temp |= values0[3];
      temp = temp<<8;
      temp |= values0[4];
      break;
    case 1:
      temp =  (values1[2]&0x0F);
      temp = temp<<8;
      temp |= values1[3];
      temp = temp<<8;
      temp |= values1[4];
      break;
  }
  

  
  if(((temp*200)/0x100000) > 50){
    celsius_temp = ((temp*200)/0x100000) - 50;
    sign = 0;
  } else {
    celsius_temp = 50 -((temp*200)/0x100000);
    sign =1;
  }

  if(sign){
    farenheit_temp = 32 - (9*celsius_temp)/5;
  } else {
    farenheit_temp = (9*celsius_temp)/5 + 32;
  }
  
  //return temp;
  //return celsius_temp;
  return farenheit_temp;
}
 
uint32_t AHT21_getHum(unsigned char ch){
  uint32_t hum;
  switch(ch){
    case 0:
      hum = values0[0]&0xff;
      hum = hum <<8;
      hum |= values0[1];
      hum = hum <<8;
      hum |= values0[2]&0xF0;
      hum = hum >> 4;
      break;
    case 1:
      hum = values1[0]&0xff;
      hum = hum <<8;
      hum |= values1[1];
      hum = hum <<8;
      hum |= values1[2]&0xF0;
      hum = hum >> 4;
      break;
  }
  
  
  hum= (hum*100)/0x100000;
  return hum;
  
}