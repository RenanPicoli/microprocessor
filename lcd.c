#include "lcd.h"
#include "bsp.h"

// Implementações das funções
void lcd_write_command(unsigned int command) {
    // Implementação para escrever um comando no LCD
    WRITE(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET, command);
}

void lcd_clear() {
    lcd_write_command(LCD_CLEAR_DISPLAY);
}

void lcd_return_home() {
    lcd_write_command(LCD_RETURN_HOME);
}

void lcd_entry_mode_set(unsigned int i_d, unsigned int s) {
    lcd_write_command(LCD_ENTRY_MODE_SET | i_d | s);
}

void lcd_display_control(unsigned int d, unsigned int c, unsigned int b) {
    lcd_write_command(LCD_DISPLAY_CONTROL | d | c | b);
}

void lcd_cursor_shift(unsigned int s_c, unsigned int r_l) {
    lcd_write_command(LCD_CURSOR_SHIFT | s_c | r_l);
}

void lcd_function_set(unsigned int dl, unsigned int n, unsigned int f) {
    lcd_write_command(LCD_FUNCTION_SET | dl | n | f );
}

void lcd_set_cgram_addr(unsigned int addr) {
    lcd_write_command(LCD_SET_CGRAM_ADDR | addr);
}

void lcd_set_ddram_addr(unsigned int addr) {
    lcd_write_command(LCD_SET_DDRAM_ADDR | addr);
}

void lcd_read_busy_flag_addr(unsigned int* busy_flag, unsigned int* address) {
    lcd_write_command(LCD_READ_BUSY_FLAG_ADDR);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    unsigned int data = read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
    *busy_flag = (data >> 7) & 0x01;
    *address = data & 0x7F;
}

void lcd_write_data(unsigned int data) {
    lcd_write_command(LCD_WRITE_DDRAM_DATA | data);
}

unsigned int lcd_read_data() {
    // Implementação para ler dados do LCD
    lcd_write_command(LCD_READ_DDRAM_DATA);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    return read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
}

//TO-DO: add support in translator script to .ascii directive
//prints a null-terminated string
void lcd_print(unsigned int* str){
	unsigned int i=0;
	while(str[i]!='\0'){
		lcd_write_data(str[i]);
	}
	return;
}

void lcd_print_reg(unsigned int reg_value){
///*
	static unsigned int printed_regs_cnt = 0;
	if(printed_regs_cnt == 4){//user mistake printing more registers than available space in display
		while(1){//blocks processor
		}
	}
	printed_regs_cnt++;
//*/
	for (int i=0;i<8;i++){
		unsigned int digit = (reg_value >> 4*(7-i)) & 0xF;
		if(digit < 10){
			lcd_write_data('0'+digit);
		}else{
			lcd_write_data('A'+digit-10);
		}
	}
	return;
}
