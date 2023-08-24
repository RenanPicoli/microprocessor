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

//prints value in format [-]X.YE[-]Z (X,Y are single digits, Z has 1 our 2 digits)
//TO-DO: handle special values like +/-0,NaN,+Inf,-Inf
void lcd_print_float(float value){
	const int decimal_places=1;
	word w;
	w.f = value;
	if(w.i & 0x80000000 != 0){
		lcd_write_data('-');
	}
	unsigned short int biased_exp = (w.i & 0x7F800000) >> 23;
	signed short int exp = biased_exp-127;//exponent for base 2
	signed short int exp10;//exponent for base 10

    unsigned short int negative = 0;
	if((w.i & 0x80000000) != 0){
	    negative = 1;
	    w.f = w.f * (-1.0);
	}
	
	float tmp = w.f;
	
	if(w.f < 1.0){
    	for(int i=0;i<40;i++){
    	    if(tmp >= 1.0){
    	       exp10 = -i;
    	       break;
    	    }else{
    	        tmp = tmp * 10.0;
    	    }
    	}
	}else{
    	for(int i=0;i<40;i++){
    	    if(tmp < 1.0){
    	       exp10 = i-1;
    	       tmp = tmp * 10.0;
    	       break;
    	    }else{
    	        tmp = tmp / 10.0;
    	    }
    	}
	}
	
	//TO-DO: remove
	//printf("exp10=%d\n",exp10);
	//printf("tmp=%f\n",tmp);
	//printf("%f\n",tmp-1.0);
	
	if(negative !=0){
		lcd_write_data('-');
	}
	char digit_array[decimal_places+1];
//	tmp = w.f;
	for(int i=0;i<decimal_places+1;i++){
        digit_array[i] = '0'+(int)tmp;
        tmp = tmp - (int)tmp;
        tmp = tmp * 10.0;
	    //printf("%c",digit_array[i]);
	    //printf("%f\n",tmp);
	}
	//printf("\n%c",digit_array[0]);
	//printf(".");
	lcd_write_data(digit_array[0]);
	lcd_write_data('.');
	for(int i=1;i<decimal_places+1;i++){
	    //printf("%c",digit_array[i]);
		lcd_write_data(digit_array[i]);
	}

	
	//prints the exponent, always an integer
	//printf("E");
	lcd_write_data('E');
	if(exp10 < 0){
		//printf("-");
		lcd_write_data('-');		
		exp10 = -exp10;
	}
	int exp_digit_array[2];
	unsigned short int last_digit = 0;
	for(int i=0;i<2;i++){
		exp_digit_array[i] = exp10 % 10;
		exp10 = exp10 / 10;
		if(exp_digit_array[i] != 0){
			last_digit = i;
		}
	}
	//printf("%d",exp_digit_array[last_digit]);
	lcd_write_data('0'+exp_digit_array[last_digit]);
	if(last_digit != 0){
		//printf("%d",exp_digit_array[last_digit-1]);
		lcd_write_data('0'+exp_digit_array[last_digit-1]);
	}
	
	//TO-DO: remove	
	//printf("\n\nf=%f\n",w.f);
	//printf("exp=%d\n",exp);
    return;
}
