//function prototypes
int foo(void);
int poly(int x, int y);
int add(int x, int y);

int main(void){
    int x,y;
    x = foo();
	__asm("sw $2,464($0)\n\t"); //saves $2 in disp_7seg_DR mem(464) (inline assembly must follow MIPS syntax)
    while(1){
        //printf("Hello World! x=%d\n",x);
        //y=add(x,1);
        //x=poly(x,y);
    }
    return 0;
}

int foo(void) {
    int a=3;
    int b=4;
    if(a*b > 20){
        return add(a,b);
    }else{
        return poly(a,b);
    }
}

int poly(int x, int y) {
    return (x * (add(x,y)));
}

int add(int x, int y) {
    return x+y;
}
