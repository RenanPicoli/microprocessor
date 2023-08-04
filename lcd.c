#include "lcd.h"
#include "bsp.h"

//addi cnt_reg, cnt_reg, 2;
//beq cnt_reg, num_cycles, -1;
#define	DELAY_CYCLES(cnt_reg,num_cycles) __asm("\taddi %0 %0 x\"0002\";\n\tbeq %0 %1 x\"FFFF\";\n\t" : "=r" (cnt_reg) : "r" (num_cycles));

// Implementações das funções
void lcd_write_command(unsigned int command) {
    // Implementação para escrever um comando no LCD
    write_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET, command);
}

void lcd_clear() {
    lcd_write_command(LCD_CLEAR_DISPLAY);
	lcd_pulse_enable_and_wait(2000);
}

void lcd_return_home() {
    lcd_write_command(LCD_RETURN_HOME);
	lcd_pulse_enable_and_wait(2000);
}

void lcd_entry_mode_set(unsigned int i_d, unsigned int s) {
    lcd_write_command(LCD_ENTRY_MODE_SET | i_d | s);
	lcd_pulse_enable_and_wait(100);
}

void lcd_display_control(unsigned int d, unsigned int c, unsigned int b) {
    lcd_write_command(LCD_DISPLAY_CONTROL | d | c | b);
	lcd_pulse_enable_and_wait(100);
}

void lcd_cursor_shift(unsigned int s_c, unsigned int r_l) {
    lcd_write_command(LCD_CURSOR_SHIFT | s_c | r_l);
	lcd_pulse_enable_and_wait(100);
}

void lcd_function_set(unsigned int dl, unsigned int n, unsigned int f) {
    lcd_write_command(LCD_FUNCTION_SET | dl | n | f );
	lcd_pulse_enable_and_wait(100);
}

void lcd_set_cgram_addr(unsigned int addr) {
    lcd_write_command(LCD_SET_CGRAM_ADDR | addr);
	lcd_pulse_enable_and_wait(100);
}

void lcd_set_ddram_addr(unsigned int addr) {
    lcd_write_command(LCD_SET_DDRAM_ADDR | addr);
	lcd_pulse_enable_and_wait(100);
}

void lcd_read_busy_flag_addr(unsigned int* busy_flag, unsigned int* address) {
    lcd_write_command(LCD_READ_BUSY_FLAG_ADDR);
	lcd_pulse_enable_and_wait(1);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    unsigned int data = read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
    *busy_flag = (data >> 7) & 0x01;
    *address = data & 0x7F;
}

void lcd_write_data(unsigned int data) {
    lcd_write_command(LCD_WRITE_DDRAM_DATA | data);
	lcd_pulse_enable_and_wait(100);
}

unsigned int lcd_read_data() {
    // Implementação para ler dados do LCD
    lcd_write_command(LCD_READ_DDRAM_DATA);
	lcd_pulse_enable_and_wait(100);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    return read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
}

//improvised
//TO-DO: remove the hardcoded information of cpu frequency
//time is a desired delay in microseconds
void delay_us(unsigned int time){
	const int cpu_freq_MHz = 4;//cpu frequency (also lcd clk frequency) in MHz
	register unsigned int num_cycles = cpu_freq_MHz * time;
	register unsigned int cnt = 0;
	DELAY_CYCLES(cnt,num_cycles);//num_cycles needs to be even number
	return;
}

//time_us: time in microseconds to wait AFTER enable falling edge
void lcd_pulse_enable_and_wait(unsigned int time_us){
    write_w(LCD_EN_BASE_ADDR + LCD_EN_OFFSET, 0);
	delay_us(1);
    write_w(LCD_EN_BASE_ADDR + LCD_EN_OFFSET, 1);
	delay_us(1);
    write_w(LCD_EN_BASE_ADDR + LCD_EN_OFFSET, 0);
	delay_us(time_us);
	return;
}
