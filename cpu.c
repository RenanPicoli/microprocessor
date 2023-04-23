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
	lw [r2+1] r4;\n\t\
	fadd r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __subsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+1] r4;\n\t\
	fsub r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __mulsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+1] r4;\n\t\
	fmul r3 r4 r1;\n\t\
	push r1;\n\t\
	ret;\n\t\
	.remove_epilogue\n\t");
}

float __divsf3(float x,float y){	
	__asm(".remove_prologue\n\t\
	ldfp r2;\n\t\
	lw [r2+0] r3;\n\t\
	lw [r2+1] r4;\n\t\
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