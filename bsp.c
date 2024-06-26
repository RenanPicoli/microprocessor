#include "bsp.h"

void print_7segs(int n){
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r1;\n\t\
	xor r3 r3 r3;\n\t\
	addi r3 r3 x\"01D0\";\n\t\
	sw [r3+0] r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
	//__asm("ldfp r2;\n\tlw [r2+0] r1;\n\txor r3 r3 r3;\n\taddi r3 r3 DISPLAY_7SEGS_BASE_ADDR;\n\tsw [r3+0] r1;\n\tret;\n\t");
}

//writes integer n to address addr
//r1 stores the value, r4 stores the address
void write_w(int addr,int n){
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+4] r1;\n\t\
	lw [r2+0] r4;\n\t\
	sw [r4+0] r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

//reads a single word from address addr
int read_w(int addr){
	__asm(".remove_prologue\n\t\
	ldfp r30;\n\t\
	lw [r30+0] r4;\n\t\
	lw [r4+0] r2;\n\t\
	push r2;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}
/*	ldfp r30;
	lw [r30+0] r4;# r4 is the address argument (addr)
	lw [r4+0] r2; # r2 receives the content pointed by r4 (*addr)
	push r2; # saves the value read in the stack
	ret;*/

//copies l consecutive words (starting from address src_addr) to consecutives positions starting at dst_addr
void write_multiple(int src_addr,int dst_addr,int l){
	__asm(".remove_prologue\n\t\
	ldfp r30;\n\t\
	lw [r30+0] r4;\n\t\
	lw [r30+4] r5;\n\t\
	lw [r30+8] r6;\n\t\
	xor r1 r1 r1;\n\t\
	LOOP:\n\t\
	add r4 r1 r2;\n\t\
	add r5 r1 r3;\n\t\
	lw [r2+0] r8;\n\t\
	sw [r3+0] r8;\n\t\
	addi r1 r1 x\"0001\";\n\t\
	beq r1 r6 x\"0001\";\n\t\
	jmp LOOP;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}
/*	ldfp r30;
	lw [r30+0] r4;# src_addr
	lw [r30+1] r5;# dst_addr
	lw [r30+2] r6;# length
	xor r1 r1 r1;# iteration counter
LOOP:
	add r4 r1 r2;# pointer to src
	add r5 r1 r3;# pointer to dst
	lw [r2+0] r8;# copies the data to r8
	sw [r3+0] r8;# stores the data in the destination
	addi r1 r1 x"0001";
	beq r1 r6 x"0001";
	jmp LOOP;
	ret;*/


//copies 8 consecutive words - aka vector - (starting from address src_addr) to consecutives positions starting at dst_addr
//intended to use for manually filling a peripheral that operates on vectors
void write_vector(int src_addr,int dst_addr){
	__asm(".remove_prologue\n\t\
	ldfp r30;\n\t\
	lw [r30+0] r4;\n\t\
	lw [r30+4] r5;\n\t\
	xor r6 r6 r6;\n\t\
	addi r6 r6 x\"0008\";\n\t\
	xor r1 r1 r1;\n\t\
	LOOP:\n\t\
	add r4 r1 r2;\n\t\
	add r5 r1 r3;\n\t\
	lw [r2+0] r8;\n\t\
	sw [r3+0] r8;\n\t\
	addi r1 r1 x\"0001\";\n\t\
	beq r1 r6 x\"0001\";\n\t\
	jmp LOOP;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}
/*	ldfp r30;
	lw [r30+0] r4;# src_addr
	lw [r30+1] r5;# dst_addr
	xor r6 r6 r6;
	addi r6 r6 x"0008";# length
	xor r1 r1 r1;# iteration counter
LOOP:
	add r4 r1 r2;# pointer to src
	add r5 r1 r3;# pointer to dst
	lw [r2+0] r8;# copies the data to r8
	sw [r3+0] r8;# stores the data in the destination
	addi r1 r1 x"0001";
	beq r1 r6 x"0001";
	jmp LOOP;
	ret;*/

//computes the dot product between two arrays of l elements	
int dot_product(int A_ptr,int B_ptr,int l){//TODO: validate l (l<8)
	write_multiple(A_ptr,INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_A_OFFSET,l);
	write_multiple(B_ptr,INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_B_OFFSET,l);
	write_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_CTRL_OFFSET,0x1);
	int result=read_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET);//I don't need cast to float, and it would move to $f0-$f31 (MIPS)
	return result;
}

//computes A+lambda*B and stores back at A (A and B are vectors in MEMORY)
void multiply_add(int A_ptr,int B_ptr,int lambda){
	write_vector(A_ptr,VMAC_BASE_ADDR+VMAC_A_OFFSET);//copies A to VMAC:A
	write_vector(B_ptr,VMAC_BASE_ADDR+VMAC_B_OFFSET);//copies B to VMAC:B
	write_w(VMAC_BASE_ADDR+VMAC_LAMBDA_OFFSET,lambda);//copies lambda to VMAC:lambda
	VMAC();//VMAC:A <= VMAC:A + (VMAC:lambda * VMAC:B)
	write_vector(VMAC_BASE_ADDR+VMAC_A_OFFSET,A_ptr);//copies result (VMAC:A) back to A
	return;
}

//A is a matrix mxn
//v is a vector (nx1)
//dst_addr is the address for storing the resulting vector (A*v - mx1)
void linear_transformation(int A_ptr,int m,int v_ptr,int n,int dst_addr){
	for(int i=0;i<m;i++){//iterates through A lines
		write_w(dst_addr+i,dot_product(A_ptr+i*n,v_ptr,n));//TODO: validate n (n<8)
	}	
	return;
}

//A is a matrix mxn
//B is a matrix (nxp)
//dst_addr is the address for storing the resulting matrix (mxp)
void matrix_product(int A_ptr,int B_ptr,int m,int n,int p,int dst_addr){
	for(int i=0;i<m;i++){//iterates through A lines
		for(int j=0;j<p;j++){//iterates through B columns
			write_multiple(A_ptr,INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_A_OFFSET,n);//TODO: validate n (n<8)
			for(int k=0;k<n;k++){//iterates inside a single column of B
				int tmp=read_w(B_ptr+j+k*p);//B(k,j)
				write_w(VMAC_BASE_ADDR+VMAC_B_OFFSET+k,tmp);//TODO: validate k (k<8)
			}
			int tmp=read_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET);//this inner product is a result element
			write_w(dst_addr+i*p+j,tmp);//writes a single element of the resulting matrix
		}
	}
	return;
}

//cmd=true => enables filter
//cmd=false => disables filter
void filter_control(int cmd){
	write_w(FILTER_CTRL_STATUS_BASE_ADDR+FILTER_CTRL_STATUS_OFFSET,cmd);
	return;
}

//I2C support
void I2C_Init(I2C_Init_typedef* i2c_init){
    int cfg=i2c_init->num_words|i2c_init->direction;
    write_w(I2C_BASE_ADDR+I2C_CR_OFFSET,cfg);
    return;
}

void I2C_Transmit(int addr,int data){
    write_w(I2C_BASE_ADDR+I2C_DR_OFFSET,data);
    int cfg=read_w(I2C_BASE_ADDR+I2C_CR_OFFSET);
    cfg=cfg|(addr<<1)|I2C_EN;
    write_w(I2C_BASE_ADDR+I2C_CR_OFFSET,cfg);//starts transmission
    HALT();//waits for I2C IRQ
    return;
}

//I2S support
void I2S_Init(I2S_Init_typedef* i2s_init){
    int cfg=i2s_init->lr_fifo_select|i2s_init->data_size|i2s_init->num_frames;
    write_w(I2S_BASE_ADDR+I2S_CR_OFFSET,cfg);
    return;
}

//transmits a single frame, with left/right channels equal to data
void I2S_Transmit(int addr,int data){
    write_w(I2S_BASE_ADDR+I2S_DR_OFFSET,data);
    //TODO: write in each fifo, for now the left fifo and right fifo are the same
    int cfg=read_w(I2S_BASE_ADDR+I2S_CR_OFFSET);
    cfg=cfg|I2S_NUM_FRAMES_1|I2S_EN;
    write_w(I2S_BASE_ADDR+I2S_CR_OFFSET,cfg);//starts transmission, no IRQ generated
    return;
}
