#ifndef WM8731_H
#define WM8731_H

//constants

#define WM8731_ADDR 0b0011010

#define RESET_REG (0b0001111 << 8)
#define ANALOG_AUD_PATH_REG (0b0000100 << 8)
#define PDN_CTRL_REG(0b0000110 << 8)

// register contents

//analogue audio path contents
#define MICBOOST 1<<0
#define MUTEMIC	 1<<1
#define INSEL 	 1<<2
#define BYPASS 	 1<<3
#define DACSEL 	 1<<4
#define SIDETONE 1<<5
#define SIDEATT_6dB  0<<6
#define SIDEATT_9dB  1<<6
#define SIDEATT_12dB 2<<6
#define SIDEATT_15dB 3<<6

//power down values
#define LINEINPD 1<<0
#define MICPD 	 1<<1
#define ADCPD 	 1<<2
#define DACPD 	 1<<3
#define OUTPD 	 1<<4
#define OSCPD	 1<<5
#define CLKOUTPD 1<<6
#define POWEROFF 1<<7

#define RESET_EN 0b000000000

#endif