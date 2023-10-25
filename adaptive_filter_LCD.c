#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"

void register_init();

//configures the global interrupt controller
void GIC_config();

//condifgures the audio codec
void codec_init();

// handler of IRQ0 (filter_CLK rising_edge)
void IRQ0_Handler();

// handler of IRQ1 (I2C)
void IRQ1_Handler();

// handler of IRQ2 (I2S)
//void IRQ2_Handler();

// handler of IRQ3 (filter_CLK falling_edge)
void IRQ3_Handler();

// handler of IRQ4 (LCD printing task, software interrupt)
void IRQ4_Handler();

// alias for IRQ4_Handler()
//void (*lcd_print_task)();

float min(float x, float y);

//main loop
int main(void){
    register_init();
	GIC_config();
	//lcd_print_task = &IRQ4_Handler;
	//(*lcd_print_task)();
	
	filter_control(0);//disables filter
	
	I2S_Init_typedef i2s;
	i2s.num_frames = I2S_NUM_FRAMES_2;
    i2s.data_size = I2S_DATA_SIZE_16BIT;
    i2s.lr_fifo_select = I2S_FIFO_SEL_LEFT;
	
	I2S_Init(&i2s);
	int i2s_status;
	do{
		i2s_status=read_w(I2S_BASE_ADDR+I2S_SR_OFFSET);
	
	}while((i2s_status & 0x80) == 0);
	
	codec_init();
	
	//intentionally ommited the instruction memory write
	//and 7-seg write
	
	filter_control(1);//enables filter	
	
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
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+0*4,(int) &IRQ0_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 0 of vector with address of IRQ0_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+0*4,0);//put IRQ0_Handler in priority 0
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+3*4,(int) &IRQ3_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 3 of vector with address of IRQ3_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+1*4,3);//put IRQ3_Handler in priority 1
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+1*4,(int) &IRQ1_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 1 of vector with address of IRQ1_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+2*4,1);//put IRQ1_Handler in priority 2
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+4*4,(int) &IRQ4_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 1 of vector with address of IRQ1_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+31*4,4);//put IRQ4_Handler in priority 31
	
	return;
}

//condifgures the audio codec
void codec_init(){
	I2C_Init_typedef i2c;
	i2c.num_words = I2C_WORDS_2;
    i2c.direction = I2C_DIRECTION_WRITE;
	I2C_Init(&i2c);
	
	// reset
	I2C_Transmit(WM8731_ADDR,RESET_REG|RESET_EN);
	//power down
	I2C_Transmit(WM8731_ADDR,PDN_CTRL_REG|LINEINPD|MICPD|ADCPD|OUTPD|OSCPD|CLKOUTPD);
	//analogue audio path
	I2C_Transmit(WM8731_ADDR,ANALOG_AUD_PATH_REG|MUTEMIC|DACSEL);
	//digital audio path
	I2C_Transmit(WM8731_ADDR,DIGITAL_AUD_PATH_REG|DEEMP_DIS);
	//digital audio interface format
	I2C_Transmit(WM8731_ADDR,DIGITAL_AUD_ITFC_FRMT_REG|FORMAT_I2S|IWL_16bits|LRP);
	//sampling control
	I2C_Transmit(WM8731_ADDR,SAMPLING_CTRL_REG|USB_MODE|BOSR|SR_8);
	//left headphone out
	I2C_Transmit(WM8731_ADDR,LEFT_HEADPHONE_OUT_REG|LHPVOL_MINUS_40dB);
	//right headphone out
	I2C_Transmit(WM8731_ADDR,RIGHT_HEADPHONE_OUT_REG|RHPVOL_MINUS_40dB);
	//active control
	I2C_Transmit(WM8731_ADDR,ACTIVE_CTRL_REG|ACTIVE);
	//power down (activates the output)
	I2C_Transmit(WM8731_ADDR,PDN_CTRL_REG|LINEINPD|MICPD|ADCPD|OSCPD|CLKOUTPD);
	return;
}

// handler of IRQ0 (filter_CLK rising_edge)
void IRQ0_Handler(){
    __asm(".remove_prologue\n\t");
	//cálculo do step
	
	//carrega o produto interno (A e B - 3 e 4) e vmac:B (6) com os xN(2)
	//LVEC(2,LVEC_DST_MSK_3|LVEC_DST_MSK_4|LVEC_DST_MSK_6);
	LVECR(2,88);
	WRITE(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_CTRL_OFFSET,0x1);
	word squared_norm_w;
	READ(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET,squared_norm_w.i);
	word half_inv_sqr_norm_w;
	FDIV(0.5f,squared_norm_w.f,half_inv_sqr_norm_w.f);
	float step=min(half_inv_sqr_norm_w.f,1e4f);//f for float
	//float step=min(0.5/squared_norm_w.f,1e4f);//f for float
	word step_w;
	FMUL(2.0f,step,step_w.f);//step_w.f = 2.0f*step;
	WRITE(CACHE_BASE_ADDR+0*4,step_w.i);
	
	word desired_w;
	READ(DESIRED_RESPONSE_BASE_ADDR+DESIRED_RESPONSE_OFFSET,desired_w.i);
	WRITE(CACHE_BASE_ADDR+1*4,desired_w.i);//saves desired response to position 1 of mini_ram

	WRITE(CACHE_BASE_ADDR+2*4,squared_norm_w.i);//saves squared_norm_w to position 2 of mini_ram
	
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

// handler of IRQ0 (filter_CLK falling_edge)
void IRQ3_Handler(){
    __asm(".remove_prologue\n\t");
	word filter_out_w;
	READ(FILTER_OUTPUT_BASE_ADDR+FILTER_OUTPUT_OFFSET,filter_out_w.i);

	word desired_w;
	READ(CACHE_BASE_ADDR+1*4,desired_w.i);
	
	word error_w;
	FSUB(desired_w.f,filter_out_w.f,error_w.f);//error_w.f=desired_w.f-filter_out_w.f;
	
	word double_step_w;//2*step
	READ(CACHE_BASE_ADDR+0*4,double_step_w.i);
	
	word lambda_w;
	FMUL(double_step_w.f,error_w.f,lambda_w.f);//lambda_w.f=double_step_w.f*error_w.f; (2*step*error)
	WRITE(VMAC_BASE_ADDR+VMAC_LAMBDA_OFFSET,lambda_w.i);
	
	//Carrega VMAC:A(5) com as componentes do filtro atual(0)
	LVECR(0,32);
	VMAC();
	//Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
	LVECR(5,1);
	//Lê memória de coeficientes do filtro(0) para o filtro(1), produto interno (A e B - 3 e 4)
	LVECR(0,26);
	WRITE(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_CTRL_OFFSET,0x1);
	word squared_norm_coeffs_w;//squared norm of filter coefficients
	READ(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET,squared_norm_coeffs_w.i);
	
	//TODO: se filtro já convergiu, sair do loop

	//I2S transmission (left fifo já foi selecionada antes do loop principal)
	//escreve 2x no DR (upsampling fator 2, 22050 Hz -> 44100 Hz)
	//habilita a transmissão
	int converted_output;
	READ(CONVERTED_OUTPUT_BASE_ADDR+CONVERTED_OUTPUT_OFFSET,converted_output);
	WRITE(I2S_BASE_ADDR+I2S_DR_OFFSET,converted_output);
	WRITE(I2S_BASE_ADDR+I2S_DR_OFFSET,converted_output);
	
	int i2s_cfg;
	READ(I2S_BASE_ADDR+I2S_CR_OFFSET,i2s_cfg);
	i2s_cfg |= I2S_EN;
	WRITE(I2S_BASE_ADDR+I2S_CR_OFFSET,i2s_cfg);
		
	word squared_lambda_w;
	//computes squared_lambda_w
	FMUL(lambda_w.f,lambda_w.f,squared_lambda_w.f);
	word squared_norm_w;
	READ(CACHE_BASE_ADDR+2*4,squared_norm_w.i);
	FMUL(squared_lambda_w.f,squared_norm_w.f,squared_norm_w.f);

	float squared_dev;//filter coefficients SQUARED deviation
	FDIV(squared_norm_w.f,squared_norm_coeffs_w.f,squared_dev);

	//saves the squared deviation of filter coefficients to cache, position 3
	//WRITE(CACHE_BASE_ADDR+3*4,squared_dev);
	   
	//tests if filter converged
	word d_w;
	FSUB(squared_dev,1e-13f,d_w.f);
	//d_w.i &= 0x80000000;
	if((d_w.i & 0x80000000)==0x80000000){//(squared_dev - 1e-13f)<0
	//if(squared_dev < 1e-13f){
		//creates a software interrupt
		WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_SW_IRQ_REG_OFFSET,1<<4);
	}
	   
	IRET();
    __asm(".remove_epilogue\n\t");
}

// handler of IRQ4 (software )
void IRQ4_Handler(){
    __asm(".remove_prologue\n\t");
	word tmp;
	
	READ(FILTER_COEFFS_BASE_ADDR+0*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+1*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+2*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+3*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+4*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+5*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+6*4,tmp.i);
	lcd_print_float(tmp.f);
	lcd_write_data(',');
	
	READ(FILTER_COEFFS_BASE_ADDR+7*4,tmp.i);
	lcd_print_float(tmp.f);
	
	IRET();
    __asm(".remove_epilogue\n\t");
}

float min(float x, float y){
	word d_w;
	d_w.f=x-y;
	d_w.i &= 0x80000000;
	if(d_w.i==0x80000000){//(x-y)<0
		return x;
	}else{//(x-y)>=0
		return y;
	}
}

#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
