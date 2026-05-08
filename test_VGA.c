#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"
#include "ascii_points.h"

//configures the global interrupt controller
void GIC_config();

// handler of IRQ5 (DMA interrupt)
void IRQ5_Handler();

void demo(uint32_t *fb);

//main loop
int main(void){

	GIC_config();
	
    //configure VGA controller
    //no direct blanking
    //no sync on green
    WRITE(VGA_BASE_ADDR+VGA_CR_OFFSET,0x3);

    //draws over image on framebuffer, prints characters
    demo((uint32_t *)SDRAM_BASE_ADDR);

    DMA_Init_typedef dma_init;

    // configures DMA for continuously transmitting the framebufer to VGA
    dma_init.num_xfers = VGA_WIDTH * VGA_HEIGHT;//length of the image in pixels (each pixel is stored as a 32-bit word)

    dma_init.src_addr = SDRAM_BASE_ADDR;
    dma_init.dst_addr = VGA_BASE_ADDR + VGA_DR_OFFSET;

    dma_init.dinc_select = DMA_DINC_DISABLE;//writes to the fixed position in VGA
    // dma_init.sinc_select = DMA_SINC_DISABLE;//reads always the first position in SDRAM (fills with single color)
    dma_init.sinc_select = DMA_SINC_ENABLE;// enables increment of address in SDRAM (loads an entire image)

    dma_init.src_lat_select = DMA_SRC_LAT_3;//source memory (SDRAM) has 2 clocks of latency (only for reading) + 1 of DMA

    dma_init.autostart_select = DMA_AUTOSTART_ENABLE;//will repeat tranfer after finishing
    DMA_Init(&dma_init);

    VGA_start();

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

void print_vga(){
    
    uint32_t* fb = (uint32_t *)SDRAM_BASE_ADDR;
    int base_x=300;
    int base_y=70;
    uint32_t font_color = (uint32_t)0x00ff0000;

	DMA_Init_typedef dma_init;

    //configures DMA to perform single transfers
    dma_init.num_xfers = FONT_WIDTH;//length of a single row of a character

    //leaves dma_init.src_addr and dma_init.dst_addr zeroed for now

    dma_init.dinc_select = DMA_DINC_ENABLE;//increments destination address (SDRAM framebuffer)
    dma_init.sinc_select = DMA_SINC_ENABLE;//increment source address (glyph stored in mini_ram)

    dma_init.src_lat_select = DMA_SRC_LAT_1;//source memory (mini_ram registers) has 0 clock of latency (only for reading) + 1 of DMA

    dma_init.autostart_select = DMA_AUTOSTART_DISABLE;//performs single transfer
    //prints letter 'A'
    char c = 'A';
    
    // iterates over rows of region to be drawn
    for (int y=base_y; y < base_y+FONT_HEIGHT; y++){
        //fill mini_ram cache with a row (8 pixels) where the char will be drawn, uses DMA
        //byte address of row start
        dma_init.src_addr = (uint32_t) fb + (y * VGA_WIDTH * sizeof(uint32_t)) + (sizeof(uint32_t) * base_x);
        dma_init.dst_addr = CACHE_BASE_ADDR + CACHE_OFFSET;
        DMA_Init_and_Start(&dma_init);
        HALT(); //cpu sleeps until IRQ (DMA transfer finished)

        //iterate over pixels on mini_ram replacing with font_color where necessary; j is the column number
        // j: 0 1 ... 7 (pixel number)
        // i: 7 6 ... 0 (bit index of mask)
        for (int j=0;j<FONT_WIDTH;j++){
            uint32_t pixel = read_w(CACHE_BASE_ADDR + j*sizeof(uint32_t));//original pixel
            uint32_t row = font_bitmap[c - ASCII_FIRST][y - base_y];//single row of font_bitmaps, bit 1 corresponds to drawn pixel
            uint32_t bit_j = row & (1 << (FONT_WIDTH - 1 - j));// non-zero only if column j of this row belongs to character
            uint32_t mask = (bit_j == 0) ? 0x00000000 : 0xffffffff;// 11...1 only if column j of this row belongs to character
            pixel = (pixel & (~mask)) | (font_color & mask);// new pixel
            write_w(CACHE_BASE_ADDR + j*sizeof(uint32_t), pixel);// store new pixel to mini_ram cache
        }

        //sends the row back to framebuffer with DMA
        dma_init.src_addr = CACHE_BASE_ADDR + CACHE_OFFSET;
        //byte address of row start
        dma_init.dst_addr = (uint32_t) fb + (y * VGA_WIDTH * sizeof(uint32_t)) + (sizeof(uint32_t) * base_x);
        DMA_Init_and_Start(&dma_init);
        HALT(); //cpu sleeps until IRQ (DMA transfer finished)
    }
    // const Glyph *g = ascii_get_glyph('A');
    // for (int i = 0; i < g->count; i++){
    //     VGA_put_pixel((uint32_t*)fb,base_x+g->points[i].x,base_y+g->points[i].y,font_color);
    // }


    return;
}

void demo(uint32_t *fb)
{
    print_vga();
    //  VGA_put_pixel(fb, 320, 240, 0x002CFF05);//neon-green

    // Limpa a tela
    // VGA_fill_rect(fb, 0, 0, VGA_WIDTH, VGA_HEIGHT, 0x00000000);

    // Retângulo cheio
    VGA_fill_rect(fb, 320, 240, 160, 80, 0x002CFF05);//neon-green

    // Contorno
    VGA_draw_rect(fb, 320, 240, 160, 80, 0x000000FF);//blue

    // Linhas cruzadas
    // VGA_draw_line(fb, 0, 0, 639, 479, 0x00FF0000);//red
    // VGA_draw_line(fb, 639, 0, 0, 479, 0x000000FF);//green
}


#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
#include "ascii_points.c"
