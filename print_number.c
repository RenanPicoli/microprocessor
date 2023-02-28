#include "cpu.h"
#include "bsp.h"

//function prototypes
int foo(void);
int poly(int x, int y);
//int sum(int x, int y);

int main(void){
    int x,y;
    x = foo();
		__asm("sw [r0+116] r2;\n\t"); //saves r2 in disp_7seg_DR mem(116) (inline assembly must follow my syntax)
		print_7segs(x);
    while(1){
        //printf("Hello World! x=%d\n",x);
        //y=sum(x,1);
        //x=poly(x,y);
    }
    return 0;
}

int foo(void) {
    int a=3;
    int b=4;
    if(a*b > 20){
        return sum(a,b);
    }else{
        return poly(a,b);
    }
}

int poly(int x, int y) {
    return (x * (sum(x,y)));
}

#include "cpu.c"
#include "bsp.c"
//int sum(int x, int y) {
//    return x+y;
//}
