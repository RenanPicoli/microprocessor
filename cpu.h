#ifndef CPU_H
#define CPU_H

enum registers {r0=0, r1, r2, r3, r4, r5, r6, r7, r8, r9,\
				r10, r11, r12, r13, r14, r15, r16, r17, r18, r19,\
				r20, r21, r22, r23, r24, r25, r26, r27, r28, r29,\
				r30, r31};

//useful when you need to treat a float as integer (based on its encoding)
typedef union {
  int i;
  float f;
 } word;

//macros

#define LVEC_DST_MSK_0 1<<0
#define LVEC_DST_MSK_1 1<<1
#define LVEC_DST_MSK_2 1<<2
#define LVEC_DST_MSK_3 1<<3
#define LVEC_DST_MSK_4 1<<4
#define LVEC_DST_MSK_5 1<<5
#define LVEC_DST_MSK_6 1<<6

#define LVEC_DST_MSK(n) LVEC_DST_MSK_ ## n

#define LVEC(src,dst) __asm("\tlvec " #src " " #dst ";\n\t")
//#define one_hot(n) (1<<n)
#define xxstr(s) xstr(s)
#define xstr(s) str(s)
#define str(s) #s
//#define hex_str(n,length))

#define VMAC() __asm("\tvmac;\n\t");
#define HALT() __asm("\thalt;\n\t");
#define IRET() __asm("\tiret;\n\t");
#define IACK() __asm("\tiack;\n\t");
#define LDFP(dst) __asm("\tldfp " #dst ";\n\t")
#define ADDSP(n) __asm("\taddsp " #n ";\n\t")
#define LDRV(dst) __asm("\tldrv " #dst ";\n\t")

//function prototypes
int one_hot(int n);
void lvec_f(char src,char dst);
inline void vmac_f();

//floating point support
//these functions in MIPS gcc are emulators of FPU operations
//here they'll call the special instructions for FPU operations
float __addsf3(float x,float y);
float __subsf3(float x,float y);
float __mulsf3(float x,float y);
float __divsf3(float x,float y);
float __negsf3(float x);

//int add(int x, int y) {
//    return x+y;
//}

#endif
