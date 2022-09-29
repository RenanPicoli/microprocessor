// Type your code here, or load an example.
int foo(void);
int poly(int x, int y);
int add(int x, int y);

int main(void){
    int x,y;
    x = foo();
    while(1){
        //printf("Hello World! x=%d\n",x);
        y=add(x,1);
        x=poly(x,y);
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
