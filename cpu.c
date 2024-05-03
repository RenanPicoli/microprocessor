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
	WRITE(FP32_TO_INT32_BASE_ADDR+FP32_TO_INT32_IN_OFFSET,x);
	int converted;
	READ(FP32_TO_INT32_BASE_ADDR+FP32_TO_INT32_OUT_OFFSET,converted);
	return converted;
	//return float2int(x);
}

//convert x to a signed integer, rounding toward zero
int float2int(float a){
    word w;
    w.f = a;
    int sgn =1;
    int masked_w = (w.i & 0x80000000);
    if(masked_w != 0){
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

// convert x, a signed integer, to floating point
//will call int2float (my implementation)
float __floatsisf (int x){
	return int2float(x);
}

float int2float(int x){//convert x (signed int) to a float
	if(x < 0){
		word w;
		w.f = uint2float((unsigned int)(-x));
		w.i |= 0x80000000;
		return w.f;
	}else{
		return (uint2float((unsigned int) x));
	}
}

// convert x, a unsigned integer, to floating point
//will call uint2float (my implementation)
float __floatunsisf (unsigned int x){
	return uint2float(x);
}

float uint2float(unsigned int x){//convert x (unsigned int) to a float
	unsigned int clz = 0;//count leading zeros (number of 0s at left of most significant 1)
	word w;
	w.i = 0;
	unsigned int tmp = x;
	if(x == 0){
		clz = 32;
		return w.f;
	}else{
		for(int i=0;i<32;i++){
			tmp = (x >> i);
			if(tmp == 0){
				clz = 32-i;
				break;
			}
		}
	
		if(clz >= 8){
			w.i = (x << (clz - 8));
			w.i = (w.i & 0x007FFFFF);//zeroes the implicit '1.'
			w.i = (w.i | ((31-clz+127)<<23));
		}else{
			w.i = (x >> (8 - clz));
			w.i = (w.i & 0x007FFFFF);//zeroes the implicit '1.'
			w.i = (w.i | ((31-clz+127)<<23));
		}
		return w.f;
	}
}
