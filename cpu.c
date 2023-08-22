#include "cpu.h"

int one_hot(int n){
  return (1<<n);
}
/*
inline void lvec_f(char src,char dst){
 LVEC(src,one_hot(dst));
 //__asm __volatile("lvec %0.18b %1.8b;\n\t": : "I"(src),"I"(dst));
}*/

//floating point support
//these functions in MIPS gcc are emulators of FPU operations
//here they'll call the special instructions for FPU operations

float __addsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+4] r4;\n\t\
	fadd r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __subsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+4] r4;\n\t\
	fsub r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __mulsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+4] r4;\n\t\
	fmul r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __divsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+4] r4;\n\t\
	fdiv r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __negsf3(float x){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lui r4 x\"8000\";\n\t\
	xor r3 r4 r3;\n\t\
	push r3;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

//convert x to a signed integer, rounding toward zero
//will call float2int (my implementation)
int   __fixsfsi(float x){
	return float2int(x);
}

//convert x to a signed integer, rounding toward zero
int float2int(float a){
    word w;
    w.f = a;
    int sgn =1;
    if((w.i & 0x80000000)!=0){
        sgn = -1;
    }
    unsigned int exp2u = (w.i & 0x7F800000)>>23;
    int exp2 = exp2u - 127;
    unsigned int mantissa = (w.i & 0x007FFFFF);
    mantissa = mantissa | 0x00800000;//appends the implicit '1.'
    if(exp2 < 0){
        return 0;
    }else{
        if(exp2 < 23){
            return sgn*(mantissa >> (23-exp2));
        }else{
            return sgn*(mantissa << (exp2 - 23));
        }
    }
}