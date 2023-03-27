//int one_hot(int n);
//macros

#define LVEC_DST_MSK_0 1<<0
#define LVEC_DST_MSK_1 1<<1
#define LVEC_DST_MSK_2 1<<2
#define LVEC_DST_MSK_3 1<<3
#define LVEC_DST_MSK_4 1<<4
#define LVEC_DST_MSK_5 1<<5
#define LVEC_DST_MSK_6 1<<6

#define LVEC_DST_MSK(n) LVEC_DST_MSK_ ## n

#define LVEC(src,dst) __asm("lvec " #src " " #dst ";")
//#define one_hot(n) (1<<n)
#define xxstr(s) xstr(s)
#define xstr(s) str(s)
#define str(s) #s
//#define hex_str(n,length))

#define VMAC() __asm("vmac;\n\t");
#define HALT() __asm("halt;\n\t");
#define IRET() __asm("iret;\n\t");
#define IACK() __asm("iack;\n\t");

//function prototypes
int sum(int x, int y);
int one_hot(int n);
void lvec_f(char src,char dst);
inline void vmac_f();

//int add(int x, int y) {
//    return x+y;
//}

