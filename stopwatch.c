#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"

void register_init();

//configures the global interrupt controller
void GIC_config();

//condifgures the audio codec
void codec_init();

// handler of IRQ0 (filter_CLK rising_edge)
void IRQ0_Handler();

// handler of IRQ1 (I2C)
void IRQ1_Handler();

// handler of IRQ0 (filter_CLK falling_edge)
void IRQ3_Handler();

//global vars
/*
int ticks = 0;
int seconds=10;
const int minutes=5;
int hours=0;
*/

//main loop
int main(void){
    register_init();
	
	GIC_config();
	
	filter_control(1);//enables filter
	word n;
	n.f = 1.0f;
	print_7segs(n.i);	

    while(1){
        HALT();
    }
    return 0;
}

void register_init(){
__asm(".remove_prologue\n\t\
    xor r0 r0 r0; zera r0\n\t\
    xor r1 r1 r1; zera r1\n\t\
    xor r2 r2 r2; zera r2\n\t\
    xor r3 r3 r3; zera r3\n\t\
    xor r4 r4 r4; zera r4\n\t\
    xor r5 r5 r5; zera r5\n\t\
    xor r6 r6 r6; zera r6\n\t\
    xor r7 r7 r7; zera r7\n\t\
    xor r8 r8 r8; zera r8\n\t\
    xor r9 r9 r9; zera r9\n\t\
    xor r10 r10 r10; zera r10\n\t\
    xor r11 r11 r11; zera r11\n\t\
    xor r12 r12 r12; zera r12\n\t\
    xor r13 r13 r13; zera r13\n\t\
    xor r14 r14 r14; zera r14\n\t\
    xor r15 r15 r15; zera r15\n\t\
    xor r16 r16 r16; zera r16\n\t\
    xor r17 r17 r17; zera r17\n\t\
    xor r18 r18 r18; zera r18\n\t\
    xor r19 r19 r19; zera r19\n\t\
    xor r20 r20 r20; zera r20\n\t\
    xor r21 r21 r21; zera r21\n\t\
    xor r22 r22 r22; zera r22\n\t\
    xor r23 r23 r23; zera r23\n\t\
    xor r24 r24 r24; zera r24\n\t\
    xor r25 r25 r25; zera r25\n\t\
    xor r26 r26 r26; zera r26\n\t\
    xor r27 r27 r27; zera r27\n\t\
    xor r28 r28 r28; zera r28\n\t\
    xor r29 r29 r29; zera r29\n\t\
    xor r30 r30 r30; zera r30\n\t\
    xor r31 r31 r31; zera r31\n\t\
	ret;\n\t\
    .remove_epilogue\n\t");
}

//configures the global interrupt controller
void GIC_config(){
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+0,(int) &IRQ0_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 0 of vector with address of IRQ0_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+0,0);//put IRQ0_Handler in priority 0
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+12,(int) &IRQ3_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 3 of vector with address of IRQ3_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+4,3);//put IRQ3_Handler in priority 1
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+4,(int) &IRQ1_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 1 of vector with address of IRQ1_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+8,1);//put IRQ1_Handler in priority 2
	
	return;
}

// handler of IRQ0 (filter_CLK rising_edge)
void IRQ0_Handler(){
    __asm(".remove_prologue\n\t");
    static int ticks=0;
    static int seconds=0;
	static int minutes=0;
	static int hours=0;

    ticks += 1;
    
    if(ticks == 22059){
        ticks = 0;
        seconds += 1;
    }
    if(seconds == 60){
        seconds = 0;
        minutes += 1;
    }
    if(minutes == 60){
        minutes = 0;
        hours += 1;
    }
	register int number_to_display;
	number_to_display = (seconds/10)<<4|(seconds%10);
	number_to_display |= ((minutes/10)<<4|(minutes%10))<<16;
	number_to_display |= ((hours/10)<<4|(hours%10))<<24;
	//number_to_display = seconds;
	print_7segs(number_to_display);
	
	IRET();
    __asm(".remove_epilogue\n\t");
}

// handler of IRQ1 (I2C)
void IRQ1_Handler(){
    __asm(".remove_prologue\n\t");
	WRITE(I2C_BASE_ADDR+I2C_IRQ_CTRL_OFFSET+IRQ_CTRL_IRQ_PEND_OFFSET,0);
	IRET();
    __asm(".remove_epilogue\n\t");
}

// handler of IRQ3 (filter_CLK falling_edge)
void IRQ3_Handler(){
    __asm(".remove_prologue\n\t");
	IRET();
    __asm(".remove_epilogue\n\t");
}

#include "bsp.c"
#include "cpu.c"
