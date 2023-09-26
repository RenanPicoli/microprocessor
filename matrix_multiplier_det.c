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

// handler of IRQ0 (filter_CLK falling_edge)
void IRQ3_Handler();

float min(float x, float y);
//determinant of a matrix 2x2
float det_2x2(float A[2][2]);

//main loop
int main(void){
	//TESTE de NOVAS INSTRUÇÕES E MACROS
	/*
    float aa=1.0;
    float bb=0.5;
    float cc;
    //FADD(aa,bb,cc);
    const int a=1<<6|1<<4|1<<3;
    int b=0;
    int c=1;
    LVECR(1,1<<6|1<<4|1<<3);
    LVECR(I2C_BASE_ADDR,I2S_BASE_ADDR);
    LVECR(aa,bb);
    LVECR(aa,0x80);	
    LVECR(cc,cc);
	LVECR(b,1);
	LVECR(b,c);
	LVECR(2,c);
	LVECR(2,5);
    WRITE(I2S_BASE_ADDR,a);
    READ(I2C_BASE_ADDR,b);
    READ(I2S_BASE_ADDR,c);
	*/
    register_init();
    
    //computes a matrix product,
	//then computes its determinant
	float A[2][2]=	{{1.0f, 0.0f},
					 {3.0f, 5.0f}};
	float B[2][2]=	{{1.0f, 1.0f},
					 {1.0f, 3.0f}};
	float C[2][2];//will store the product AB
	word (*A_w)[2] = (word (*)[2]) A;
	word (*B_w)[2] = (word (*)[2]) B;
	word (*C_w)[2] = (word (*)[2]) C;
	
	for(register int i=0;i<2;i++){//iterates through lines of A
		for(register int j=0;j<2;j++){//iterates through columns of B
			//copies one line of A and one column of B to inner_product
			for(register int k=0;k<2;k++){
				write_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_A_OFFSET+k*(sizeof(int)),A_w[i][k].i);
				write_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_B_OFFSET+k*(sizeof(int)),B_w[k][j].i);
			}
			//fills with zeroes the unused positions
			for(register int k=2;k<8;k++){
				write_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_A_OFFSET+k*(sizeof(int)),0);
				write_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_B_OFFSET+k*(sizeof(int)),0);
			}
			//enables the inner_product calculation
			WRITE(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_CTRL_OFFSET,0x1);
			//stores the result in memory (which region??? stack?)
			READ(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET,C_w[i][j].i);
		}
	}
	word det_w;
	det_w.f=det_2x2(C);
	
	//intentionally ommited the instruction memory write
	//writes determinant to 7-seg and LCD (scientific notation)
	print_7segs(det_w.i);
	lcd_print_float(det_w.f);
	
	GIC_config();
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
	
	return;
}

//configures the audio codec
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
	LVEC(x"02",x"58");
	WRITE(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_CTRL_OFFSET,0x1);
	register word squared_norm_w;
	READ(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET,squared_norm_w.i);
	register word half_inv_sqr_norm_w;
	FDIV(0.5f,squared_norm_w.f,half_inv_sqr_norm_w.f);
	float step=min(half_inv_sqr_norm_w.f,1e4f);//f for float
	//float step=min(0.5/squared_norm_w.f,1e4f);//f for float
	register word step_w;
	FMUL(2.0f,step,step_w.f);//step_w.f = 2.0f*step;
	WRITE(CACHE_BASE_ADDR+0*4,step_w.i);
	
	register word desired_w;
	READ(DESIRED_RESPONSE_BASE_ADDR+DESIRED_RESPONSE_OFFSET,desired_w.i);
	WRITE(CACHE_BASE_ADDR+1*4,desired_w.i);//saves desired response to position 1 of mini_ram
	
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
	LVEC(x"00",x"20");
	VMAC();
	//Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
	LVEC(x"05",x"01");
	//Lê memória de coeficientes do filtro(0) para o filtro(1)
	//enables filter to update its components (when filter_CLK rises)
	LVEC(x"00",x"02");
	
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

//determinant of a matrix 2x2
float det_2x2(float A[2][2]){
	return ((A[0][0]*A[1][1])-(A[0][1]*A[1][0]));
}

#include "bsp.c"
#include "cpu.c"
#include "lcd.c"
