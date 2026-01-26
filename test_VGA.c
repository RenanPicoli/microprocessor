#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"

//configures the global interrupt controller
void GIC_config();

// handler of IRQ5 (DMA interrupt)
void IRQ5_Handler();

void demo(uint32_t *fb);

//main loop
int main(void){
	DMA_Init_typedef dma_init;
    dma_init.num_xfers = VGA_WIDTH * VGA_HEIGHT;//length of the image in pixels (each pixel is stored as a 32-bit word)

    dma_init.src_addr = SDRAM_BASE_ADDR;
    dma_init.dst_addr = VGA_BASE_ADDR + VGA_DR_OFFSET;

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

    demo((uint32_t *)SDRAM_BASE_ADDR);

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

void VGA_put_pixel(uint32_t *fb,
                             int x, int y,
                             uint32_t color)
{
    if (x < 0 || x >= VGA_WIDTH ||
        y < 0 || y >= VGA_HEIGHT)
        return;
    fb[y * VGA_WIDTH + x] = color;
}

void demo(uint32_t *fb)
{
    //  VGA_put_pixel(fb, 320, 240, 0x002CFF05);//neon-green

    // Limpa a tela
    // VGA_fill_rect(fb, 0, 0, VGA_WIDTH, VGA_HEIGHT, 0x00000000);

    // Retângulo cheio
    // VGA_fill_rect(fb, 320, 240, 160, 80, 0x002CFF05);//neon-green

    // Contorno
    // VGA_draw_rect(fb, 320, 240, 160, 80, 0x000000FF);//blue

    // Linhas cruzadas
    VGA_draw_line(fb, 0, 0, 639, 479, 0x00FF0000);//red
    // VGA_draw_line(fb, 639, 0, 0, 479, 0x000000FF);//green
}


#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
