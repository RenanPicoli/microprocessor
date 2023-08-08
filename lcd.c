#include "lcd.h"
#include "bsp.h"
/*
void lcd_init(){
    write_w(LCD_EN_BASE_ADDR + LCD_EN_OFFSET, 1);  
    //IdleBeforeInit
    delay_us(50000);
    write_w(LCD_EN_BASE_ADDR + LCD_EN_OFFSET, 0);    
    write_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET, 0);
    
    //Init1
    lcd_write_command(LCD_FUNCTION_SET | LCD_DL_8BITS | LCD_N_2LINES | LCD_F_5X8);
    lcd_pulse_enable_and_wait(4500);
    
    //Init2
    lcd_write_command(LCD_FUNCTION_SET | LCD_DL_8BITS | LCD_N_2LINES | LCD_F_5X8);
    lcd_pulse_enable_and_wait(150);
    
    //Init3
    lcd_write_command(LCD_FUNCTION_SET | LCD_DL_8BITS | LCD_N_2LINES | LCD_F_5X8);
    lcd_pulse_enable_and_wait(100);
    
    //Init4
    lcd_write_command(LCD_FUNCTION_SET | LCD_DL_8BITS | LCD_N_2LINES | LCD_F_5X8);
    lcd_pulse_enable_and_wait(100);
    
    //Init5 - displaycontrol
    lcd_write_command(LCD_DISPLAY_CONTROL | LCD_D_OFF | LCD_C_OFF | LCD_B_OFF);
    lcd_pulse_enable_and_wait(100);
    
    //Init6 - clear
    lcd_clear();
    
    //Init7 - turn on display and turn off cursor
    lcd_write_command(LCD_DISPLAY_CONTROL | LCD_D_ON | LCD_C_OFF | LCD_B_OFF);
    lcd_pulse_enable_and_wait(100);
    
    //Init8 - entry mode set
    lcd_entry_mode_set(LCD_I_D_INCR, LCD_S_OFF);
}
*/
// Implementações das funções
void lcd_write_command(unsigned int command) {
    // Implementação para escrever um comando no LCD
    WRITE(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET, command);
}
/*
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
	//lcd_pulse_enable_and_wait(100);
}

void lcd_read_busy_flag_addr(unsigned int* busy_flag, unsigned int* address) {
    lcd_write_command(LCD_READ_BUSY_FLAG_ADDR);
	lcd_pulse_enable_and_wait(1);
	// Dados são lidos do mesmo endereço onde os comandos são escritos
    unsigned int data = read_w(LCD_CTRL_BASE_ADDR + LCD_CTRL_OFFSET);
    *busy_flag = (data >> 7) & 0x01;
    *address = data & 0x7F;
}
*/
void lcd_write_data(unsigned int data) {
    lcd_write_command(LCD_WRITE_DDRAM_DATA | data);
	//lcd_pulse_enable_and_wait(100);
}
/*
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
    if((num_cycles % 4) != 0){
        num_cycles = ((num_cycles/4)+1)*4;
    }
	DELAY_CYCLES(cnt,num_cycles);//num_cycles needs to be even number
    print_7segs(cnt);
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
*/