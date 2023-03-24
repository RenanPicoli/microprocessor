#include "bsp.h"

void print_7segs(int n){
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r1;\n\t\
	xor r3 r3 r3;\n\t\
	addi r3 r3 x\"0074\";\n\t\
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
	lw [r2+1] r1;\n\t\
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
	lw [r30+1] r5;\n\t\
	lw [r30+2] r6;\n\t\
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
	lw [r30+1] r5;\n\t\
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
int dot_product(int A_ptr,int B_ptr,int l){
	write_multiple(A_ptr,INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_A_OFFSET,l);
	write_multiple(B_ptr,INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_B_OFFSET,l);
	int result=read_w(INNER_PRODUCT_BASE_ADDR+INNER_PRODUCT_RESULT_OFFSET);//I don't need cast to float, and it would move to $f0-$f31 (MIPS)
	return result;
}

//computes A+lambda*B and stores back at A (A and B are vectors in MEMORY)
void multiply_add(int A_ptr,int B_ptr,int lambda){
	write_vector(A_ptr,VMAC_BASE_ADDR+VMAC_A_OFFSET);//copies A to VMAC:A
	write_vector(B_ptr,VMAC_BASE_ADDR+VMAC_B_OFFSET);//copies B to VMAC:B
	write_w(lambda,VMAC_BASE_ADDR+VMAC_LAMBDA_OFFSET);//copies lambda to VMAC:lambda
	VMAC();//VMAC:A <= VMAC:A + (VMAC:lambda * VMAC:B)
	write_vector(VMAC_BASE_ADDR+VMAC_A_OFFSET,A_ptr);//copies result (VMAC:A) back to A
	return;
}