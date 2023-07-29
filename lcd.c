#include "lcd.h"
#include "bsp.h"

// Protótipos das funções
void lcd_write_command(uint32_t command);
void lcd_clear();
void lcd_return_home();
void lcd_entry_mode_set(uint8_t i_d, uint8_t s);
void lcd_display_control(uint8_t d, uint8_t c, uint8_t b);
void lcd_cursor_shift(uint8_t s_c, uint8_t r_l);
void lcd_function_set(uint8_t dl, uint8_t n, uint8_t f);
void lcd_set_cgram_addr(uint8_t addr);
void lcd_set_ddram_addr(uint8_t addr);
void lcd_read_busy_flag_addr(uint32_t* busy_flag, uint32_t* address);
void lcd_write_data(uint8_t data);
uint32_t lcd_read_data();

// Implementações das funções
void lcd_write_command(uint32_t command) {
    // Implementação para escrever um comando no LCD
    write_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET, command);
}

void lcd_clear() {
    lcd_write_command(LCD_CLEAR_DISPLAY);
}

void lcd_return_home() {
    lcd_write_command(LCD_RETURN_HOME);
}

void lcd_entry_mode_set(uint8_t i_d, uint8_t s) {
    lcd_write_command(LCD_ENTRY_MODE_SET | i_d | s);
}

void lcd_display_control(uint8_t d, uint8_t c, uint8_t b) {
    lcd_write_command(LCD_DISPLAY_CONTROL | d | c | b);
}

void lcd_cursor_shift(uint8_t s_c, uint8_t r_l) {
    lcd_write_command(LCD_CURSOR_SHIFT | s_c | r_l);
}

void lcd_function_set(uint8_t dl, uint8_t n, uint8_t f) {
    lcd_write_command(LCD_FUNCTION_SET | dl | n | f );
}

void lcd_set_cgram_addr(uint8_t addr) {
    lcd_write_command(LCD_SET_CGRAM_ADDR | addr);
}

void lcd_set_ddram_addr(uint8_t addr) {
    lcd_write_command(LCD_SET_DDRAM_ADDR | addr);
}

void lcd_read_busy_flag_addr(uint32_t* busy_flag, uint32_t* address) {
    lcd_write_command(LCD_READ_BUSY_FLAG_ADDR);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    uint32_t data = read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
    *busy_flag = (data >> 7) & 0x01;
    *address = data & 0x7F;
}

void lcd_write_data(uint8_t data) {
    lcd_write_command(LCD_WRITE_DDRAM_DATA | data);
}

uint32_t lcd_read_data() {
    // Implementação para ler dados do LCD
    lcd_write_command(LCD_READ_DDRAM_DATA);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    return read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
}
