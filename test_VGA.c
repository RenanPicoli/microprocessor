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
    dma_init.num_xfers = 640*480;//length of the image in pixels (each pixel is stored as a 32-bit word)
    dma_init.src_addr = SDRAM_BASE_ADDR;
    dma_init.dst_addr = VGA_BASE_ADDR+VGA_DR_OFFSET;
    dma_init.dinc_select = DMA_DINC_DISABLE;//writes to the fixed position in VGA
    // dma_init.sinc_select = DMA_SINC_DISABLE;//reads always the first position in SDRAM (fills with single color)
    dma_init.sinc_select = DMA_SINC_ENABLE;// enables increment of address in SDRAM (loads an entire image)
    dma_init.src_lat_select = DMA_SRC_LAT_3;//source memory (SDRAM) has 2 clocks of latency (only for reading) + 1 of DMA
    dma_init.autostart_select = DMA_AUTOSTART_ENABLE;//will repeat tranfer after finishing
    DMA_Init(&dma_init);

	GIC_config();
	
    //configure VGA controller
    //no direct blanking
    //no sync on green
    WRITE(VGA_BASE_ADDR+VGA_CR_OFFSET,0x3);

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

    //start again transfer automatically
	//DMA_start();

	IRET();
    __asm(".remove_epilogue\n\t");
}


#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
