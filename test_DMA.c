#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"

//configures the global interrupt controller
void GIC_config();

// handler of IRQ5 (DMA interrupt)
void IRQ5_Handler();

//main loop
int main(void){
	DMA_Init_typedef dma_init;
    dma_init.num_xfers = 0x4D;//length of the text in bytes
    dma_init.src_addr = SDRAM_BASE_ADDR;
    dma_init.dst_addr = SDRAM_BASE_ADDR+(0x50<<2);
    dma_init.dinc_select = DMA_DINC_ENABLE;
    dma_init.sinc_select = DMA_SINC_ENABLE;
    
    DMA_Init(&dma_init);

	GIC_config();
	
    DMA_start();
	
    while(1){
        HALT();
    }
    return 0;
}

//configures the global interrupt controller
void GIC_config(){
    //loads the position 5 of vector with address of IRQ5_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+5*4,(int) &IRQ5_Handler-INSTRUCTION_MEMORY_BASE_ADDR);
    //put IRQ5_Handler in priority 0
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+0*4,5);
	
	return;
}


// handler of IRQ5 (DMA transfer finished)
void IRQ5_Handler(){
    __asm(".remove_prologue\n\t");

	//simply write a msg to LCD display
	LCD_WRITE_DATA('C');
	LCD_WRITE_DATA('o');
	LCD_WRITE_DATA('p');
	LCD_WRITE_DATA('y');
	LCD_WRITE_DATA(' ');
	LCD_WRITE_DATA('f');
	LCD_WRITE_DATA('i');
	LCD_WRITE_DATA('n');
	LCD_WRITE_DATA('i');
	LCD_WRITE_DATA('s');
	LCD_WRITE_DATA('h');
	LCD_WRITE_DATA('e');
	LCD_WRITE_DATA('d');
	LCD_WRITE_DATA('!');

	IRET();
    __asm(".remove_epilogue\n\t");
}


#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
