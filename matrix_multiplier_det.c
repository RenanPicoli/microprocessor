#include "bsp.h"
#include "cpu.h"

void register_init();

//main loop
int main(void){
    register_init();
    while(1){
        HALT();
    }
    return 0;
}


void register_init(){
__asm(".remove_prologue\n\t\
    xor r0 r0 r0; zera r0\n\t\
    xor r1 r1 r1; zera r1\n\t\
    xor r2 r2 r2; zera r2\n\t\
    xor r3 r3 r3; zera r3\n\t\
    xor r4 r4 r4; zera r4\n\t\
    xor r5 r5 r5; zera r5\n\t\
    xor r6 r6 r6; zera r6\n\t\
    xor r7 r7 r7; zera r7\n\t\
    xor r8 r8 r8; zera r8\n\t\
    xor r9 r9 r9; zera r9\n\t\
    xor r10 r10 r10; zera r10\n\t\
    xor r11 r11 r11; zera r11\n\t\
    xor r12 r12 r12; zera r12\n\t\
    xor r13 r13 r13; zera r13\n\t\
    xor r14 r14 r14; zera r14\n\t\
    xor r15 r15 r15; zera r15\n\t\
    xor r16 r16 r16; zera r16\n\t\
    xor r17 r17 r17; zera r17\n\t\
    xor r18 r18 r18; zera r18\n\t\
    xor r19 r19 r19; zera r19\n\t\
    xor r20 r20 r20; zera r20\n\t\
    xor r21 r21 r21; zera r21\n\t\
    xor r22 r22 r22; zera r22\n\t\
    xor r23 r23 r23; zera r23\n\t\
    xor r24 r24 r24; zera r24\n\t\
    xor r25 r25 r25; zera r25\n\t\
    xor r26 r26 r26; zera r26\n\t\
    xor r27 r27 r27; zera r27\n\t\
    xor r28 r28 r28; zera r28\n\t\
    xor r29 r29 r29; zera r29\n\t\
    xor r30 r30 r30; zera r30\n\t\
    xor r31 r31 r31; zera r31\n\t\
    .remove_epilogue\n\t");
}

#include "bsp.c"
#include "cpu.c"
