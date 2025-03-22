
#ifndef __STC8A8K_H__
#define __STC8A8K_H__

#include <8051.h>       
#include <compiler.h>   //
#define bit(b) (1UL << (b))

// I2C Special function registers
#define I2CCFG (*(unsigned char volatile __xdata *)0xfe80)
#define I2CMSCR (*(unsigned char volatile __xdata *)0xfe81)
#define I2CMSST (*(unsigned char volatile __xdata *)0xfe82)
#define I2CSLCR (*(unsigned char volatile __xdata *)0xfe83)
#define I2CSLST (*(unsigned char volatile __xdata *)0xfe84)
#define I2CSLADR (*(unsigned char volatile __xdata *)0xfe85)
#define I2CTXD (*(unsigned char volatile __xdata *)0xfe86)
#define I2CRXD (*(unsigned char volatile __xdata *)0xfe87)


// ADC Special function registers
#define ADC_CONTR (*(unsigned char volatile __xdata *)0xbc)
#define ADC_RES (*(unsigned char volatile __xdata *)0xbd)
#define ADC_RESL (*(unsigned char volatile __xdata *)0xbe)
#define ADCCFG (*(unsigned char volatile __xdata *)0xde)


  #define RESFMT  bit(5)
  #define SPEED3  bit(3)
  #define SPEED2  bit(2)
  #define SPEED1  bit(1)
  #define SPEED0  bit(0)



  #define ADC_POWER   bit(7)
  #define ADC_START   bit(6)
  #define ADC_FLAG    bit(5)
  #define ADC_CHS3    bit(3)
  #define ADC_CHS2    bit(2)
  #define ADC_CHS1    bit(1)
  #define ADC_CHS0    bit(0)

// Timer registers
#define TMOD (*(unsigned char volatile __xdata *)0x89)
#define T2H (*(unsigned char volatile __xdata *)0xd6)
#define T2L (*(unsigned char volatile __xdata *)0xd7)
#define TH1 (*(unsigned char volatile __xdata *)0x8d)
#define TL1 (*(unsigned char volatile __xdata *)0x8b)

// Clock Stuff

SFRX(CKSEL, 0xFE00);  // Clock Select Register
  #define MCKSEL0 bit(0)
  #define MCKSEL1 bit(1)
  #define MCLK0_S bit(3)  // 0=P5_4  1=P1_6
  #define MCLKDIV0 bit(4)
  #define MCLKDIV1 bit(5)
  #define MCLKDIV2 bit(6)
  #define MCLKDIV3 bit(7)
  // MCLKDIV[3:0] Sysclk Divisor to Pin Out
  //  0000        No Output
  //  0001        SysClk/1
  //  001x        SysClk/2
  //  010x        SysClk/4
  //  011x        SysClk/8
  //  100x        SysClk/16
  //  101x        SysClk/32
  //  110x        SysClk/64
  //  111x        SysClk/128

  // MCKSEL[1:0]  Main Clk Source
  //  00          Internal 24Mhz Hi Precision IRC
  //  01 or 10    External Xtal or Ext Clk Input
  //  11          Internal 32Khz low spd IRC

SFRX(CLKDIV, 0xFE01); // Main CLock Divisor - becomes SYSclk
  // CLKDIV   SysClk = MainClk divide by
  // 0        Mclk/1
  // 1        Mclk/1
  // 2        Mclk/2
  // 3        Mclk/3
  // x        Mclk/x
  //255       Mclk/255
SFRX(IRC24MCR, 0xFE02);
  #define ENIRC24M  bit(7)  // 0=disable  1=enable Internal 24M IRC
  #define IRC24MST  bit(0)  // 0=Not Stable  1=Clock Stable
SFRX(XOSCCR, 0xFE03);
  #define ENXOSC  bit(7)  // 0=disable  1=enable External Xtal Osc
  #define XITYPE  bit(6)  // 0=Extrn Clock In on P1_7 1=Xtal Osc XtalI=P1_7 XtalO=P1_6
  #define XOSCMST  bit(0)  // 0=Not Stable  1=Clock Stable
SFRX(IRC32KCR, 0xFE04);
  #define ENIRC32K  bit(7)  // 0=disable  1=enable Internal 24M IRC
  #define IRC32KST  bit(0)  // 0=Not Stable  1=Clock Stable

  // Watch Dog
SFR(WDT_CONTR, 0xC1); // WatchDog Control
  #define WDT_FLAG  bit(7)  // When Set a WDOG overflow occurred Clear via SW
  #define EN_WDT    bit(5)  // 1=Start Wdog Timer
  #define CLR_WDT   bit(4)  // 1=Clear Timer - HW will auto Clear
  #define IDL_WDT   bit(3)  // 0=Stop WDT  1=WDT running  (?)
  #define WDT_PS_MSK 0x07   // WDT_PS[2:0] ((OSC*32,768)*2^(WDT_PS+1) )/SYSclk

SFR(VOCTRL, 0xBB);  // Voltage Control Reg
  #define SCC bit(7)  // 0= normal current is 1.5uA  1= .15uA


// Misc Stuff

SFR(P_SW2, 0xBA);

SFR(DPL1, 0xE4);        // DPTR1 low byte
SFR(DPH1, 0xE5);        // DPTR1 high byte

SFR(AUXR, 0x8E);      // Aux register
  #define T0x12 bit(7)
  #define T1x12 bit(6)
  #define UART_M0x6 bit(5)
  #define T2R bit(4)
  #define T2_CT bit(3)
  #define T2x12 bit(2)
  #define EXTRAM bit(1) // 0=Access Internal RAM  1=Disable Internal only Ext Ram
  #define S1ST2 bit(0)  // 0=Sel Timer1 for Uart1_Baud  1=Sel Timer2 for Uart1_baud

//PCON new bits
#define SMOD0   bit(6)  // 8051 Enhanced UART for FE (missing start bit) so 8052 docs
#define LVDF    bit(5)  // 1=Low Voltage Det req SW to clear
#define POF     bit(4)  // 1=Power On Reset

SFR(BUS_SPEED, 0xA1);   // Bus Speed Control Reg
  #define RW_S1 bit(7)  // RW_S1  RW_S0  RD   WR
  #define RW_S0 bit(6)  //   0      0    P4_4 P4_3
                        //   0      1    P3_7 P3_6
                        //   1      0    P4_2 P4_0
                        //   1      1    reserved
  #define SPD1 bit(1)   // SPD1   SPD0   Pulse Len for ExtBus Rd/Wr
  #define SPD0 bit(0)   //  0     0       1 clock
                        //  0     1       2 clock
                        //  1     0       4 clock
                        //  1     1       8 clock
SFR(P_SW1, 0xA2);       // Perph Port Swt Control
  #define S1_S1 bit(7)  // S1_S1  S1_S0   RX    TX  Serial Port 1 Pin select
  #define S1_S0 bit(6)  //  0       0     P3_0  P3_1
                        //  0       1     P3_6  P3_7
                        //  1       0     P1_6  P1_7
                        //  1       1     P4_3  P4_4
  #define CCP_S1 bit(5) // PCA Function Pin Select
  #define CCP_S0 bit(4)
  // CCP_S1  CCP_S0  ECI  CCP0  CCP1  CCP2  CCP3
  //  0       0      P1_2 P1_7  P1_6  P1_5  P1_4
  //  0       1      P2_2 P2_3  P2_4  P2_5  P2_6
  //  1       0      P7_4 P7_0  P7_1  P7_2  P7_3
  //  1       1      P3_5 P3_3  P3_2  P3_1  P3_0
  #define SPI_S1 bit(3) // SPI Function Pin Select
  #define SPI_S0 bit(2)
  // SPI_S1  SPI_S0  SS   MOSI  MISO  SCLK
  //  0       0      P1_2 P1_3  P1_4  P1_5
  //  0       1      P2_2 P2_3  P2_4  P2_5
  //  1       0      P7_4 P7_5  P7_6  P7_7
  //  1       1      P3_5 P3_4  P3_3  P3_2
  // BITS 1 and 0 NOT used

SFR(P_SW2, 0xBA);     // Perph Port Swt Control 2
  #define EAXFR bit(7)  //
  #define I2C_S1 bit(5)  // I2C Func Pin Select
  #define I2C_S0 bit(4)
  // I2C_S1  I2C_S0  SCL  SDA
  //  0       0      P1_5 P1_4
  //  0       1      P2_5 P2_4
  //  1       0      P7_7 P7_6
  //  1       1      P3_2 P3_3
  #define CMPO_S bit(3) //Comp Out Func Pin Sel  0=P3_4  1=P4_1
  #define S4_S bit(2)   // Serial Port 4 pin Sel
  // S4_S   RxD4  TxD4
  //  0     P0_2  P0_3
  //  1     P5_2  P5_3
  #define S3_S bit(1)   // Serial Port 3 pin Sel
  // S3_S   RxD3  TxD3
  //  0     P0_0  P0_1
  //  1     P5_0  P5_1
  #define S2_S bit(0)   // Serial Port 2 pin Sel
  // S2_S   RxD2  TxD2
  //  0     P1_0  P1_1
  //  1     P4_0  P4_2

  SFR(SPSTAT, 0xCD);  // SPI Status Reg  [00xx,xxxx]
    #define SPIF bit(7) // xfr complete flag - drives interrupt (must be cleared by sw)
    #define WCOL bit(6) // write collision flag (must be cleared by sw)

  SFR(SPCTL, 0xCE);   // SPI Control Reg [0000,0100]
    #define SSIG bit(7) // 0=SS pin decides Mstr/Slave  1=ignore SS pin MSTR decides mode
    #define SPEN bit(6) // 0=SPI disabled 1=SPI enabled
    #define DORD bit(5) // 0=MSB xmit 1st  1=LSB xmit 1st
    #define MSTR bit(4) // 1=MSTR (using SSIG setting)  0=SLAVE (using SSIG setting)
    #define CPOL bit(3) // Clk Pol 0=SCLK low when idle  1=SCLK high when idle
    #define CPHA bit(2) // Clk phase 0= Data chg on trailing edge of SPICLK
                          //          1= Data chg on the leading edge of SPICLK
    #define SPR1 bit(1)  // SPR[1:0] SPI CLK Freq
    #define SPR0 bit(0)  //     0 0 SYSclk/4
                          //     0 1 SYSclk/8
                          //     1 0 SYSclk/16
                          //     1 1 SYSclk/32

  SFR(SPDAT, 0xCF);   // SPI Data Reg    [0000,0000]

// IO section

// M1 M0  00=Quasi BiDir  01=Push/Pull Out  10=Hi Impedence Input 11=Open Drain out
SFR(P0M0, 0x94);      // P0 Port Mode Reg 0
SFR(P0M1, 0x93);      // P0 Port Mode Reg 1
SFRX(P0PU, 0xFE10);   // P0 3.7K Pull Up   0=Disable 1=Enable
SFRX(P0ST, 0xFE18);   // P0 Schmit Trigger  0=Enable  1=Disable

SFR(P1M0, 0x92);      // P1 Port Mode Reg 0
SFR(P1M1, 0x91);      // P1 Port Mode Reg 1
SFRX(P1PU, 0xFE11);  // P1 3.7K Pull Up   0=Disable 1=Enable
SFRX(P1ST, 0xFE19);   // P1 Schmit Trigger  0=Enable  1=Disable

SFR(P2M0, 0x96);      // P2 Port Mode Reg 0
SFR(P2M1, 0x95);      // P2 Port Mode Reg 1
SFRX(P2PU, 0xFE12);   // P2 3.7K Pull Up   0=Disable 1=Enable
SFRX(P2ST, 0xFE1A);   // P2 Schmit Trigger  0=Enable  1=Disable

SFR(P3M0, 0xB2);      // P3 Port Mode Reg 0
SFR(P3M1, 0xB1);      // P3 Port Mode Reg 1
SFRX(P3PU, 0xFE13);   // P3 3.7K Pull Up   0=Disable 1=Enable
SFRX(P3ST, 0xFE1B);   // P3 Schmit Trigger  0=Enable  1=Disable

SFR(P4M0, 0xB4);      // P4 Port Mode Reg 0
SFR(P4M1, 0xB5);      // P4 Port Mode Reg 1
SFRX(P4PU, 0xFE14);   // P4 3.7K Pull Up   0=Disable 1=Enable
SFRX(P4ST, 0xFE1C);   // P4 Schmit Trigger  0=Enable  1=Disable

SFR(P5M0, 0xCA);      // P5 Port Mode Reg 0
SFR(P5M1, 0xC9);      // P5 Port Mode Reg 1
SFRX(P5PU, 0xFE15);   // P5 3.7K Pull Up   0=Disable 1=Enable
SFRX(P5ST, 0xFE1D);   // P5 Schmit Trigger  0=Enable  1=Disable

SFR(P6M0, 0xCC);      // P6 Port Mode Reg 0
SFR(P6M1, 0xCB);      // P6 Port Mode Reg 1
SFRX(P6PU, 0xFE16);   // P6 3.7K Pull Up   0=Disable 1=Enable
SFRX(P6ST, 0xFE1E);   // P6 Schmit Trigger  0=Enable  1=Disable

SFR(P7M0, 0xE2);      // P7 Port Mode Reg 0
SFR(P7M1, 0xE1);      // P7 Port Mode Reg 1
SFRX(P7PU, 0xFE17);   // P7 3.7K Pull Up   0=Disable 1=Enable
SFRX(P7ST, 0xFE1F);   // P7 Schmit Trigger  0=Enable  1=Disable

SFR(P4, 0xC0);    // P4
  SBIT(P4_0, 0xC0, 0);
  SBIT(P4_1, 0xC0, 1);
  SBIT(P4_2, 0xC0, 2);
  SBIT(P4_3, 0xC0, 3);
  SBIT(P4_4, 0xC0, 4);
  SBIT(P4_5, 0xC0, 5);
  SBIT(P4_6, 0xC0, 6);
  SBIT(P4_7, 0xC0, 7);

SFR(P5, 0xC8);  // P5
  SBIT(P5_0, 0xC8, 0);
  SBIT(P5_1, 0xC8, 1);
  SBIT(P5_2, 0xC8, 2);
  SBIT(P5_3, 0xC8, 3);
  SBIT(P5_4, 0xC8, 4);
  SBIT(P5_5, 0xC8, 5);
  SBIT(P5_6, 0xC8, 6);
  SBIT(P5_7, 0xC8, 7);

SFR(P6, 0xE8);  // P6
  SBIT(P6_0, 0xE8, 0);
  SBIT(P6_1, 0xE8, 1);
  SBIT(P6_2, 0xE8, 2);
  SBIT(P6_3, 0xE8, 3);
  SBIT(P6_4, 0xE8, 4);
  SBIT(P6_5, 0xE8, 5);
  SBIT(P6_6, 0xE8, 6);
  SBIT(P6_7, 0xE8, 7);

SFR(P7, 0xF8);  // P7
  SBIT(P7_0, 0xF8, 0);
  SBIT(P7_1, 0xF8, 1);
  SBIT(P7_2, 0xF8, 2);
  SBIT(P7_3, 0xF8, 3);
  SBIT(P7_4, 0xF8, 4);
  SBIT(P7_5, 0xF8, 5);
  SBIT(P7_6, 0xF8, 6);
  SBIT(P7_7, 0xF8, 7);



#endif  // __STC8A8K_H__