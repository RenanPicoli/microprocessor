#include "bsp.h"
#include "cpu.h"

// Type your code here, or load an example.
int square(int num);

int main(void) {
    int (*foo)(int);
    foo=&square;
    int num=5;
    int sq = (*foo)(num);
    print_7segs(sq);
    while(1){
    }
    return 0;
}

int square(int num) {
    return num * num;
}

#include "bsp.c"
#include "cpu.c"
