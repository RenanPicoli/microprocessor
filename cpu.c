#include "cpu.h"

int sum(int x, int y) {
    return x+y;
}

int one_hot(int n){
  return (1<<n);
}
/*
inline void lvec_f(char src,char dst){
 LVEC(src,one_hot(dst));
 //__asm __volatile("lvec %0.18b %1.8b;\n\t": : "I"(src),"I"(dst));
}*/