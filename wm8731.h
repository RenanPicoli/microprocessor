#ifndef WM8731_H
#define WM8731_H

//constants

#define WM8731_ADDR 0b0011010

#define LEFT_LINE_IN_REG (0b0000000 << 9)
#define RIGHT_LINE_IN_REG (0b0000001 << 9)
#define LEFT_HEADPHONE_OUT_REG (0b0000010 << 9)
#define RIGHT_HEADPHONE_OUT_REG (0b0000011 << 9)
#define ANALOG_AUD_PATH_REG (0b0000100 << 9)
#define DIGITAL_AUD_PATH_REG (0b0000101 << 9)
#define PDN_CTRL_REG(0b0000110 << 9)
#define DIGITAL_AUD_ITFC_FRMT_REG(0b0000111 << 9)
#define SAMPLING_CTRL_REG (0b0001000 << 9)
#define ACTIVE_CTRL_REG (0b0001001 << 9)
#define RESET_REG (0b0001111 << 9)

// register contents

//left line in
#define LINVOL_0dB (0b10111 << 0)
#define LINMUTE 1<<7
#define LRINBOTH 1<<8

//right line in
#define RINVOL_0dB (0b10111 << 0)
#define RINMUTE 1<<7
#define RLINBOTH 1<<8

//left headphone out
#define LHPVOL_0dB (0b1111001 << 0)
#define LHPVOL_MINUS_40dB (0b1010001 << 0)
#define LZCEN 1<<7
#define LRHPBOTH 1<<8

//right headphone out
#define RHPVOL_0dB (0b1111001 << 0)
#define RHPVOL_MINUS_40dB (0b1010001 << 0)
#define RZCEN 1<<7
#define RLHPBOTH 1<<8

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

//digital audio path contents
#define ADCHPD 1<<0
#define DEEMP_DIS     0<<1
#define DEEMP_32kHz   1<<1
#define DEEMP_44_1kHz 2<<1
#define DEEMP_48kHz   3<<1
#define DACMU 	 1<<3
#define HPOR 	 1<<4

//power down values
#define LINEINPD 1<<0
#define MICPD 	 1<<1
#define ADCPD 	 1<<2
#define DACPD 	 1<<3
#define OUTPD 	 1<<4
#define OSCPD	 1<<5
#define CLKOUTPD 1<<6
#define POWEROFF 1<<7

//digital audio interface format
#define FORMAT_RIGHT_JUST 0<<0
#define FORMAT_LEFT_JUST  1<<0
#define FORMAT_I2S 2<<0
#define FORMAT_DSP 3<<0
#define IWL_16bits 	 0<<2
#define IWL_20bits 	 1<<2
#define IWL_24bits 	 2<<2
#define IWL_32bits 	 3<<2
#define LRP 	 1<<4
#define LRSWAP	 1<<5
#define MS       1<<6
#define BCLKINV  1<<7

//sampling control
#define USB_MODE 1<<0
#define NORMAL_MODE 0<<0
#define BOSR 	 1<<1
#define SR_0 	 0<<2
#define SR_1 	 1<<2
#define SR_2 	 2<<2
#define SR_3 	 3<<2
#define SR_4 	 4<<2
#define SR_5 	 5<<2
#define SR_6 	 6<<2
#define SR_7 	 7<<2
#define SR_8 	 8<<2
#define SR_9 	 9<<2
#define SR_10 	 10<<2
#define SR_11 	 11<<2
#define SR_12 	 12<<2
#define SR_13 	 13<<2
#define SR_14 	 14<<2
#define SR_15 	 15<<2
#define CLKIDIV2 1<<6
#define CLKODIV2 1<<7

//active control
#define ACTIVE 1<<0

//reset
#define RESET_EN 0b000000000

#endif