#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"

//main loop
int main(void){
/*
       //popping empty stack   
       __asm("\
       pop r1;\n\t\
       pop r2;\n\t\
       pop r3;\n\t\
       ");
*/

	//pushing to stack until is filled and underflows
	for(int i=0;;i++){
		__asm("\
		push r3;\n\t\
		");
	}
	/*
	float float_arr[]={1.0f,1.7e-3f,-1240.0f};
	filter_control(0);//disables filter

	//ADDSP(x"F000");// addsp -4096
	//ADDSP(x"0038");// addsp 56
	
	//intentionally ommited the instruction memory write
	//and 7-seg write
	lcd_print_float(float_arr[0]);
	LCD_WRITE_DATA(',');
	lcd_print_float(float_arr[1]);
	LCD_WRITE_DATA(',');
	lcd_print_float(float_arr[2]);
	
	filter_control(1);//enables filter
	*/
    while(1){
        HALT();
    }
    return 0;
}

#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
