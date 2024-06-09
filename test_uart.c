#include "bsp.h"
#include "cpu.h"
#include "wm8731.h"
#include "lcd.h"

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

// handler of IRQ4 (UART)
void IRQ4_Handler();

// handler of IRQ5 (LCD printing task, software interrupt)
void IRQ5_Handler();

// alias for IRQ5_Handler()
//void (*lcd_print_task)();

float min(float x, float y);

int has_new_data;//flag to indicate new char arrived
int received_char;//last char received by UART

//main loop
int main(void){
	GIC_config();
	//lcd_print_task = &IRQ5_Handler;
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
	LCD_WRITE_DATA('>');
	
	filter_control(1);//enables filter
	
    while(1){
        HALT();
		if(has_new_data){
			//prints received_char in LCD
			lcd_write_data(received_char);
			has_new_data=0;
			//TODO: send acknowledgement to master
			/*
			WRITE(UART_BASE_ADDR+UART_DR_OFFSET,'>');
			HALT();
			WRITE(UART_BASE_ADDR+UART_DR_OFFSET,'O');
			HALT();
			WRITE(UART_BASE_ADDR+UART_DR_OFFSET,'K');
			HALT();
			WRITE(UART_BASE_ADDR+UART_DR_OFFSET,'\n');
			HALT();
			*/
		}
    }
    return 0;
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
	
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_VECTOR_OFFSET+5*4,(int) &IRQ5_Handler-INSTRUCTION_MEMORY_BASE_ADDR);//loads the position 1 of vector with address of IRQ1_Handler
	WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_PRIORITIES_OFFSET+31*4,4);//put IRQ5_Handler in priority 31
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
	word step_w;
	FMUL(2.0f,step,step_w.f);//step_w.f = 2.0f*step;
	WRITE(CACHE_BASE_ADDR+0*4,step_w.i);
	
	word desired_w;
	READ(DESIRED_RESPONSE_BASE_ADDR+DESIRED_RESPONSE_OFFSET,desired_w.i);
	WRITE(CACHE_BASE_ADDR+1*4,desired_w.i);//saves desired response to position 1 of mini_ram

	//__asm("\taddi $17 $1 x\"0000\";\n\t");
	WRITE(CACHE_BASE_ADDR+2*4,squared_norm_w.i);//saves squared_norm_w to position 2 of mini_ram
	//__asm("\tnop;\n\t");
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
	static int converged = 0;
	register word filter_out_w;
	READ(FILTER_OUTPUT_BASE_ADDR+FILTER_OUTPUT_OFFSET,filter_out_w.i);

	register word desired_w;
	READ(CACHE_BASE_ADDR+1*4,desired_w.i);
	
	register word error_w;
	FSUB(desired_w.f,filter_out_w.f,error_w.f);//error_w.f=desired_w.f-filter_out_w.f;
	
	register word double_step_w;//2*step
	READ(CACHE_BASE_ADDR+0*4,double_step_w.i);
	
	register word lambda_w;
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
	register word squared_norm_coeffs_w;//squared norm of filter coefficients
	READ(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET,squared_norm_coeffs_w.i);
	
	//TODO: se filtro já convergiu, sair do loop

	//I2S transmission (left fifo já foi selecionada antes do loop principal)
	//escreve 2x no DR (upsampling fator 2, 22050 Hz -> 44100 Hz)
	//habilita a transmissão
	register int converted_output;
	READ(CONVERTED_OUTPUT_BASE_ADDR+CONVERTED_OUTPUT_OFFSET,converted_output);
	WRITE(I2S_BASE_ADDR+I2S_DR_OFFSET,converted_output);
	WRITE(I2S_BASE_ADDR+I2S_DR_OFFSET,converted_output);
	
	register int i2s_cfg;
	READ(I2S_BASE_ADDR+I2S_CR_OFFSET,i2s_cfg);
	i2s_cfg |= I2S_EN;
	WRITE(I2S_BASE_ADDR+I2S_CR_OFFSET,i2s_cfg);
	
	register word squared_lambda_w;
	//computes squared_lambda_w
	FMUL(lambda_w.f,lambda_w.f,squared_lambda_w.f);
	register word squared_norm_w;
	READ(CACHE_BASE_ADDR+2*4,squared_norm_w.i);
	FMUL(squared_lambda_w.f,squared_norm_w.f,squared_norm_w.f);
	
	register float squared_dev;//filter coefficients SQUARED deviation
	FDIV(squared_norm_w.f,squared_norm_coeffs_w.f,squared_dev);

	//saves the squared deviation of filter coefficients to cache, position 3
	//WRITE(CACHE_BASE_ADDR+3*4,squared_dev);
	   
	//tests if filter converged
	register word d_w;
	FSUB(squared_dev,1e-13f,d_w.f);
	//d_w.i &= 0x80000000;
	if(((d_w.i & 0x80000000)==0x80000000) && converged == 0){//(squared_dev - 1e-13f)<0
	//if(squared_dev < 1e-13f){
		converged = 1;
		//Lê memória de coeficientes do filtro(0) para o tmp_vector (7)
		LVECR(0,128);
		/*
		register word b0 asm ("$1");
		register word b1 asm ("$2");
		register word b2 asm ("$3");
		register word b3 asm ("$4");
		register word b4 asm ("$1");
		register word b5 asm ("$2");
		register word b6 asm ("$3");
		register word b7 asm ("$4");
		__asm("\tlw [$0 + 0] %0;\n\t"::"r"(b0));
		__asm("\tsw [$0 + 96] %0;\n\t"::"r"(b0));
		__asm("\tlw [$0 + 4] %0;\n\t"::"r"(b1));
		__asm("\tsw [$0 + 100] %0;\n\t"::"r"(b1));
		__asm("\tlw [$0 + 8] %0;\n\t"::"r"(b2));
		__asm("\tsw [$0 + 104] %0;\n\t"::"r"(b2));
		__asm("\tlw [$0 + 12] %0;\n\t"::"r"(b3));
		__asm("\tsw [$0 + 108] %0;\n\t"::"r"(b3));
		__asm("\tlw [$0 + 16] %0;\n\t"::"r"(b4));
		__asm("\tsw [$0 + 112] %0;\n\t"::"r"(b4));
		__asm("\tlw [$0 + 20] %0;\n\t"::"r"(b5));
		__asm("\tsw [$0 + 116] %0;\n\t"::"r"(b5));
		__asm("\tlw [$0 + 24] %0;\n\t"::"r"(b6));
		__asm("\tsw [$0 + 120] %0;\n\t"::"r"(b6));
		__asm("\tlw [$0 + 28] %0;\n\t"::"r"(b7));
		__asm("\tsw [$0 + 124] %0;\n\t"::"r"(b7));
		*/
		//creates a software interrupt
		WRITE(IRQ_CTRL_BASE_ADDR+IRQ_CTRL_SW_IRQ_REG_OFFSET,1<<5);
	}
	IRET();
    __asm(".remove_epilogue\n\t");
}

// handler of IRQ4 (UART)
void IRQ4_Handler(){
    __asm(".remove_prologue\n\t");
	//test if new data was received
	int status_reg;
	int data;
	READ(UART_BASE_ADDR+UART_SR_OFFSET,status_reg);
	if((status_reg & (1<<1))!=0){
		READ(UART_BASE_ADDR+UART_DR_OFFSET,data);
		has_new_data=1;
		received_char=data;
		IRET();
	}else{
		//data sent
		if((status_reg & (1<<0))!=0){
			IRET();
		}
	}
	//stop error
	//will simply ignore!
	IRET();
    __asm(".remove_epilogue\n\t");
}

// handler of IRQ5 (software)
void IRQ5_Handler(){
    __asm(".remove_prologue\n\t");/*
	word tmp;
	
	READ(TMP_VECTOR_BASE_ADDR+0*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(1.0f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+1*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(0.5f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+2*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(2.5e-1f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+3*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(1.25e-1f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+4*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(1.0f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+5*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(2.0e1f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+6*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(4.0e2f);
	LCD_WRITE_DATA(',');
	
	READ(TMP_VECTOR_BASE_ADDR+7*4,tmp.i);
	lcd_print_float(tmp.f);
	//lcd_print_float(8.0e3f);
	*/
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
