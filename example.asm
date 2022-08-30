.section data
    BASE 20;
    MAX_HEIGHT 30;
	THICKNESS xA4;
.section code
    xor r0 r0 r0;
	halt;
    addi r0 r0 BASE;
    xor r1 r1 r1;
    addi r1 r1 MAX_HEIGHT;
    push r0; passes 1st argument
    push r1; passes 2nd argument
    call FOO;
    ldrv r2;
    ret;
FOO:
    pop r1;
    pop r0;
    mult r0 r1; [hi lo] <= r0*r1
    mflo r2; r2 <= lo (discards MSB)
    ret;
