#include "bsp.h"

void print_7segs(int n){
	__asm(".remove_prologue\n\t");
	__asm("ldfp r2;\n\tlw [r2+0] r1;\n\txor r3 r3 r3;\n\taddi r3 r3 x\"0074\";\n\tsw [r3+0] r1;\n\tret;\n\t");
	__asm(".remove_epilogue\n\t");
	//__asm("ldfp r2;\n\tlw [r2+0] r1;\n\txor r3 r3 r3;\n\taddi r3 r3 DISPLAY_7SEGS_BASE_ADDR;\n\tsw [r3+0] r1;\n\tret;\n\t");
}

//writes integer n to address addr
//r1 stores the value, r4 stores the address
void write_w(int addr,int n){
	__asm(".remove_prologue\n\t");
	__asm("ldfp r2;\n\tlw [r2+1] r1;\n\tlw [r2+0] r4;\n\txor r3 r3 r3;\n\tadd r3 r4 r3;\n\tsw [r3+0] r1;\n\tret;\n\t");
	__asm(".remove_epilogue\n\t");
}