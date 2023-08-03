#ifndef LCD_HD44780_COMMANDS_H
#define LCD_HD44780_COMMANDS_H

//#include <stdint.h>

// Macros para facilitar a conversão de binário para unsigned int
#define BIN10(rs, rw, b7, b6, b5, b4, b3, b2, b1, b0) ((unsigned int)( \
    ((rs & 1) << 9) | ((rw & 1) << 8) | ((b7 & 1) << 7) | ((b6 & 1) << 6) | \
    ((b5 & 1) << 5) | ((b4 & 1) << 4) | ((b3 & 1) << 3) | ((b2 & 1) << 2) | \
    ((b1 & 1) << 1) | (b0 & 1)))

// LCD Commands
//LCD_CLEAR_DISPLAY   (0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
#define LCD_CLEAR_DISPLAY       BIN10(0, 0, 0, 0, 0, 0, 0, 0, 0, 1)

//LCD_RETURN_HOME     (0, 0, 0, 0, 0, 0, 0, 0, 1, 0)
#define LCD_RETURN_HOME         BIN10(0, 0, 0, 0, 0, 0, 0, 0, 1, 0)

//LCD_ENTRY_MODE_SET  (0, 0, 0, 0, 0, 0, 0, 1, I_D, S)
#define LCD_ENTRY_MODE_SET      BIN10(0, 0, 0, 0, 0, 0, 0, 1, 0, 0)

//LCD_DISPLAY_CONTROL (0, 0, 0, 0, 0, 0, 1, D, B)
#define LCD_DISPLAY_CONTROL     BIN10(0, 0, 0, 0, 0, 0, 1, 0, 0, 0)

//LCD_CURSOR_SHIFT    (0, 0, 0, 0, 0, 1, S_C, R_L, 0, 0)
#define LCD_CURSOR_SHIFT        BIN10(0, 0, 0, 0, 0, 1, 0, 0, 0, 0)

//LCD_FUNCTION_SET    (0, 0, 0, 0, 1, DL, N, F, 0, 0)
#define LCD_FUNCTION_SET        BIN10(0, 0, 0, 0, 1, 0, 0, 0, 0, 0)

//LCD_SET_CGRAM_ADDR  (0, 0, 0, 1, AC5, AC4, AC3, AC2, AC1, AC0)
#define LCD_SET_CGRAM_ADDR      BIN10(0, 0, 0, 1, 0, 0, 0, 0, 0, 0)

//LCD_SET_DDRAM_ADDR  (0, 0, 1, AC6, AC5, AC4, AC3, AC2, AC1, AC0)
#define LCD_SET_DDRAM_ADDR      BIN10(0, 0, 1, 0, 0, 0, 0, 0, 0, 0)

//LCD_READ_BUSY_FLAG_ADDR (0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
#define LCD_READ_BUSY_FLAG_ADDR BIN10(0, 1, 0, 0, 0, 0, 0, 0, 0, 0)

//LCD_WRITE_CGRAM_DATA    (1, 0, b7, b6, b5, b4, b3, b2, b1, b0)
#define LCD_WRITE_CGRAM_DATA    BIN10(1, 0, 0, 0, 0, 0, 0, 0, 0, 0)

//LCD_WRITE_DDRAM_DATA    (1, 0, b7, b6, b5, b4, b3, b2, b1, b0)
#define LCD_WRITE_DDRAM_DATA    BIN10(1, 0, 0, 0, 0, 0, 0, 0, 0, 0)

//LCD_READ_CGRAM_DATA     (1, 1, b7, b6, b5, b4, b3, b2, b1, b0)
#define LCD_READ_CGRAM_DATA     BIN10(1, 1, 0, 0, 0, 0, 0, 0, 0, 0)

//LCD_READ_DDRAM_DATA     (1, 1, b7, b6, b5, b4, b3, b2, b1, b0)
#define LCD_READ_DDRAM_DATA     BIN10(1, 1, 0, 0, 0, 0, 0, 0, 0, 0)

// Command bit definitions
#define LCD_D_ON   0x04 // Bit 2: 1 - Display ON, 0 - Display OFF
#define LCD_D_OFF  0x00
#define LCD_C_ON   0x02 // Bit 1: 1 - Cursor ON, 0 - Cursor OFF
#define LCD_C_OFF  0x00
#define LCD_B_ON   0x01 // Bit 0: 1 - Blinking ON, 0 - Blinking OFF
#define LCD_B_OFF  0x00

#define LCD_I_D_INCR  0x02 // Bit 1: 1 - Increment, 0 - Decrement
#define LCD_I_D_DECR  0x00
#define LCD_S_ON      0x01 // Bit 0: 1 - Shift ON, 0 - Shift OFF
#define LCD_S_OFF     0x00

#define LCD_DL_8BITS  0x10 // Bit 4: 1 - 8 bits, 0 - 4 bits
#define LCD_DL_4BITS  0x00
#define LCD_N_2LINES  0x08 // Bit 3: 1 - 2 lines, 0 - 1 line
#define LCD_N_1LINE   0x00
#define LCD_F_5X10    0x04 // Bit 2: 1 - 5x10 dots, 0 - 5x8 dots
#define LCD_F_5X8     0x00

#define LCD_S_C_DISPLAY  0x08 // Bit 3: 1 - Display shift, 0 - Cursor move
#define LCD_S_C_CURSOR   0x00
#define LCD_R_L_RIGHT    0x04 // Bit 2: 1 - Right, 0 - Left
#define LCD_R_L_LEFT     0x00


// Protótipos das funções
void lcd_write_command(unsigned int command);
void lcd_puse_enable();
void lcd_init();
void lcd_clear();
void lcd_return_home();
void lcd_entry_mode_set(unsigned int i_d, unsigned int s);
void lcd_display_control(unsigned int d, unsigned int c, unsigned int b);
void lcd_cursor_shift(unsigned int s_c, unsigned int r_l);
void lcd_function_set(unsigned int dl, unsigned int n, unsigned int f);
void lcd_set_cgram_addr(unsigned int addr);
void lcd_set_ddram_addr(unsigned int addr);
void lcd_read_busy_flag_addr(unsigned int* busy_flag, unsigned int* address);
void lcd_write_data(unsigned int data);
unsigned int lcd_read_data();

#endif // LCD_HD44780_COMMANDS_H
