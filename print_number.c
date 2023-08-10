#include "cpu.h"
#include "bsp.h"
#include "lcd.h"

//function prototypes
int foo(void);
int poly(int x, int y);
//int sum(int x, int y);

int main(void){
    int x,y;
	y=720600004;
	//print_7segs(x);
	write_w(DISPLAY_7SEGS_BASE_ADDR,y<<2);
	//lcd_clear();
	//lcd_set_ddram_addr(0);
	lcd_write_data('A');
	lcd_write_data('m');
	lcd_write_data('o');
	lcd_write_data(' ');
	lcd_write_data('a');
	lcd_write_data(' ');
	lcd_write_data('M');
	lcd_write_data('o');
	lcd_write_data('z');
	lcd_write_data('i');
	lcd_write_data('n');
	lcd_write_data('h');
	lcd_write_data('a');
	lcd_write_data('!');
	lcd_write_data('S');
	lcd_write_data('2');
	__asm("\
	addi r5 r4 x\"0000\";\n\t\
	push r4;\n\t\
	call lcd_print_reg;\n\t\
	ldrv r2;\n\t\
	addsp x\"000C\";\n\t\
	");
	lcd_print_reg(0xFFFFFFFF);
    while(1){
    }
    return 0;
}

#include "cpu.c"
#include "bsp.c"
#include "lcd.c"
