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
	lcd_write_data('b');
    while(1){
    }
    return 0;
}

#include "cpu.c"
#include "bsp.c"
#include "lcd.c"
