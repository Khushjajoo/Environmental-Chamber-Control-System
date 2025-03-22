#define SPI_ASM_SIZE
#define DELAY 20
#define COUNTER_LIMIT 1000
//#define THRESHOLD 2

#include <8051.h>

//#include <stdio.h>
#include<stdbool.h>
#include<stdint.h>
#include "time.h"
#include "uart.h"
#include "i2cports.h"
#include "timer_display.h"
#include "spi.h"
#include "aht21.h"
#include "pcf8574.h"

//#include "main.h"

unsigned int time;
unsigned char target_temp;
unsigned char button_pressed;
unsigned int THRESHOLD = 2;
unsigned char temperature;
unsigned char humidity;

unsigned char __xdata periphs = 0b00001000;
volatile unsigned char status0;
volatile unsigned char status1;

//unsigned int THRESHOLD = 2;
unsigned int __xdata counter;
unsigned char __xdata mode;

//bool button = False;

//unsigned char periphs = 0b00000000;
//unsigned char periphs[6];

void UART_Receive_ISR() __interrupt(4) {

  if (RI) {
    unsigned char dat = SBUF; // Store received da ta
    UART_transmit('b');
    RI = 0; // Clear the receive interrupt flag
  }

}

inline void Ext_int_Init() {
  EA = 1; /* Enable global interrupt */
  EX0 = 1; /* Enable Ext. interrupt0 */
  IT0 = 1; /* Select Ext. interrupt0 on falling edge */
}

void timer0_init() {

  //TMOD &= 0xF0; // Clear the bits of Timer 0
  //TMOD = 0x20;
  TMOD &= 0b11111100;

  TH0 = 0x00;
  TL0 = 0xFF;
  IE = 0x8B;

  TR0 = 1; // Start Timer 0
}

inline void fanOn() {
  PCF8574_RelayOn(2, ADDRESS_RELAY);
  periphs |= 0b00000010;
}

inline void fanOff() {
  PCF8574_RelayOff(2, ADDRESS_RELAY);
  periphs &= 0b11111101;
}

inline void heaterOn() {
  PCF8574_RelayOn(0, ADDRESS_RELAY);
  periphs |= 0b00000100;
}

inline void heaterOff() {
  PCF8574_RelayOff(0, ADDRESS_RELAY);
  periphs &= 0b11111011;
}

inline void co2On() {
  PCF8574_RelayOn(1, ADDRESS_RELAY);
  periphs |= 0b00000001;
}

inline void co2Off() {
  PCF8574_RelayOff(1, ADDRESS_RELAY);
  periphs &= 0b11111110;
}

void displayError() 
  {
    unsigned char __xdata temp;
    co2Off();
    heaterOff();
    temp = 9;
	  digits[0] = 17;
	  digits[1] = 17;
    digits[2] = temp % 10;
    digits[3] = 14;
    displayDigits(0);
  }

void updateHumidity() {
  unsigned char __xdata temp;
  //UART_println("Entered update Hum");
  if((status0 == 0x18)&&(status1 == 0x18))
  {
    temp = (AHT21_getHum(1)+AHT21_getHum(0))/2;
  } 

  else if(status0 == 0x18)
  {
    temp = AHT21_getHum(0);
  }
   
  else if(status1 ==0x18)
  {
    temp = AHT21_getHum(1);
  } 
  else 
  {
    checkError();
  }
  humidity = temp;
}

void checkError()
{
  bool __xdata flag1 = (temperature == 0) && (humidity == 0); 
  bool __xdata flag2 = (status0 != 0x18)&&(status1 != 0x18);
  if(flag1 && flag2)
  {
     displayError();
  }

  else
  {
    displayDigits(0);
  }
}

void displayHum() {

  if (humidity < 100) 
  {
    digits[0] = 17;
  }

  else 
  {
    digits[0] = humidity / 100;
  }

  if (humidity < 10) 
  {
    digits[1] = 17;
  }

  else 
  {
    digits[1] = (humidity - (humidity / 100) * 100) / 10;
  }

  digits[2] = humidity % 10;
  digits[3] = 16;

  checkError();
}

void updateTemp() {
  unsigned char __xdata temp;
  if ((status0 == 0x18) && (status1 == 0x18)) 
  {
    temp = (AHT21_getTemp(1) + AHT21_getTemp(0)) / 2;
  }
  else if (status0 == 0x18) 
  {
    temp = AHT21_getTemp(0);
  } 
  else if (status1 == 0x18) 
  {
    temp = AHT21_getTemp(1);
  }
  else 
  {
   checkError();
  }
  temperature = temp;
}

void updateAll() {
  status0 = AHT21_updateRawValue(0);
  status1 = AHT21_updateRawValue(1);
  updateHumidity();
  updateTemp();
}

void displayTemp() {

  if (temperature < 100) 
  {
    digits[0] = 17;
  } 
  else
  {
    digits[0] = temperature / 100;
  }
  if (temperature < 10) 
  {
    digits[1] = 17;
  } 
  else 
  {
    digits[1] = (temperature - (temperature / 100) * 100) / 10;
  }

  digits[2] = temperature % 10;
  digits[3] = 15;
  checkError();
}

void displayValue(unsigned char value) {
  unsigned char __xdata temp = value;
  if (temp < 100) 
  {
    digits[0] = 17;
  } 
  else 
  {
    digits[0] = temp / 100;
  }
  if (temp < 10) 
  {
    digits[1] = 17;
  } 
  else 
  {
    digits[1] = (temp - (temp / 100) * 100) / 10;
  }
  digits[2] = temp % 10;
  digits[3] = 18;
  checkError();
}



void listenButtons(unsigned char value){
  unsigned char __xdata counter = 0;
  unsigned char __xdata last_pressed = 0;

  while(counter < value){
    counter++;
    button_pressed = PCF8574_Getbutton(ADDRESS_BUTT);
    delay(20);

    if(last_pressed == 0){

      if(button_pressed){

        switch(button_pressed){

        case 1:
          target_temp++;
          displayValue(target_temp);
          break;
        case 2:
          target_temp--;
          displayValue(target_temp);
          break;
        case 3:
          displayValue(target_temp);
          break;
        }
        counter = 0;

      }
    }
    last_pressed = button_pressed;
  }
}

void printStatus() {
  UART_print("CO2 :");
  (periphs & 0b00000001) ? UART_println("ON"):UART_println("OFF");
  
  UART_print("FAN :");
  (periphs & 0b00000010)>>1 ? UART_println("ON"):UART_println("OFF");

  UART_print("HEAT :");
  (periphs & 0b00000100)>>2 ? UART_println("ON"):UART_println("OFF");

  UART_print("DEHUMIDIFIER :");
  (periphs & 0b00001000)>>3 ? UART_println("ON"):UART_println("OFF");

  UART_print("\r\n");
}

void checkTarget() {
  unsigned char sign;
  unsigned char difference;
  if (target_temp >= temperature) 
  {
    sign = 0;
    difference = target_temp - temperature;
  }

  else 
  {
    sign = 1;
    difference = temperature - target_temp;
  }
  
  if(difference <= THRESHOLD) 
  {
    heaterOff();
    co2Off();
    fanOff();
  }

  if((status0 != 0x18)&&(status1 != 0x18))
  {
    heaterOff();
    co2Off();
    fanOff();
  }

  else
  {
    if (sign) 
    {
      heaterOff();
      if (difference >= THRESHOLD) 
      {
        co2On();
        fanOn();
      }
    } 
    else 
    {
      co2Off();
      if (difference >= THRESHOLD) 
      {
        heaterOn();
        fanOn(); 
      }
    }
  }
 }

void Timer0_ISR() __interrupt(1) {
  TH0 = 0x00; 
  TL0 = 0xFF; 
  counter++;
}

void External0_ISR() __interrupt(0) {
  UART_println("Entered interrupt");
  button_pressed = PCF8574_Getbutton(ADDRESS_BUTT);
  UART_println("Exit interrupt"); 
}

void checkbuttoninterrupt()
{
    delay(30); 
    if (button_pressed) {
    switch (button_pressed) {
    case 1:
      target_temp++;
      displayValue(target_temp);
      break;
    case 2:
      target_temp--;
      displayValue(target_temp);
      break;
    case 3:
      displayValue(target_temp);
      break;
      default:
      break;
    }
  }
}

void unsignedIntToStr(unsigned int num, char* str) {
    unsigned int i = 0;   
    if (num == 0) 
    {
        str[i++] = '0';
        str[i] = '\0'; 
        return;
    }

    while (num != 0) 
    {
        str[i++] = (num % 10) + '0'; 
        num /= 10; 
    }

    str[i] = '\0';

	  for (unsigned int j = 0; j < i / 2; j++) 
    {
        char temp = str[j];
        str[j] = str[i - j - 1];
        str[i - j - 1] = temp;
    }
	  UART_println(str);
}



void SerialDisplay() {
	unsigned char buffer[4]; 
	
	UART_print("Temperature :"); 
	unsignedIntToStr(temperature, buffer);
	UART_print("Humidity :");
	unsignedIntToStr(humidity, buffer);
  printStatus();
}



void main(void) {
  time = 0;
  counter = 0;
  status0 = 0;
  status1 = 0;
  mode = 0;
  UART_init(9600);
  delay(30);
  SPI_init();
  //UART_println("Starting program");
  target_temp = 60; //farenheit
  initialize();
  AHT21_init(0);
  AHT21_init(1);
  PCF8574_Init_input(ADDRESS_BUTT);
  PCF8574_Init_output(ADDRESS_RELAY);
  //Ext_int_Init();
  //timer0_init();

  while (1) {
    //UART_print("Checking..."); //0x41
    updateAll();
    checkTarget();
    displayTemp();
    listenButtons(DELAY);

    updateAll();
    checkTarget();
    displayHum();
    listenButtons(DELAY);

    updateAll();
    checkTarget();
    displayValue(target_temp);
   	SerialDisplay();


  // UART_println("Waiting for new threshold value:");
	// unsigned int new_threshold = UART_receiveNumber();
	// if (new_threshold > 0 && new_threshold <= 100) { 
	//   THRESHOLD = new_threshold;	
	//   UART_println("Threshold updated successfully.");
	// } else {
	// 	UART_println("Invalid threshold value. Please enter a value between 1 and 100.");
	// }
   
    listenButtons(DELAY);

    if((status0!=0x18)&&(status1!=0x18)){
    updateAll();
    checkTarget();
    displayError();
    listenButtons(DELAY);
    }
	// UART_println("Waiting for new threshold value:");
	// unsigned int new_threshold = UART_receiveNumber();
	// if (new_threshold > 0 && new_threshold <= 100) { 
	//   THRESHOLD = new_threshold;	
	//   UART_println("Threshold updated successfully.");
	// // } else {
	// 	UART_println("Invalid threshold value. Please enter a value between 1 and 100.");
	// }

	// delay(1000);
	// }

	temperature = 0;
	humidity = 0;
  button_pressed = 0;

  }
}