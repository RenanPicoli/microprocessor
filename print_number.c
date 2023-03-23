#include "cpu.h"
#include "bsp.h"

//function prototypes
int foo(void);
int poly(int x, int y);
//int sum(int x, int y);

int main(void){
    int x,y;
    x = foo();
		//print_7segs(x);
		write_w(DISPLAY_7SEGS_BASE_ADDR,x);
		int dst_mask=LVEC_DST_MSK(1);		
		write_w(DISPLAY_7SEGS_BASE_ADDR,dst_mask);
		LVEC(x"05",x"02");
		//LVEC(x"05",LVEC_DST_MSK_1);
		//lvec_f(5,dst_mask);
		VMAC();
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
