; During INIT performs matrix multiplication
; then computes determinant
; displays determinant in 7-segs display
; after INIT, plays music

.section rodata
	MEM_INSTR_BASE_ADDR x0100;
.section code
jmp INIT; goes to register initialization, configures interrupt controller, codec, etc

halt; 1: waits for filter interruption to be generated when filter_CLK falls (new output)

jmp x"01"; 2: volta pro halt (loop infinito)

;IRQ3_Handler(void): Processes output
IRQ3_Handler:

;I2S transmission (left fifo já foi selecionada antes do loop principal)
;escreve 2x no DR (upsampling fator 2)
;habilita a transmissão
xor r3 r3 r3; zera r3
addi r3 r3 x"0073"; x73 é a posição do converted_output register
lw [r3+0] r5; 5: loads r5 with filter response converted to twos complement
xor r3 r3 r3; zera r3
addi r3 r3 x"0068"; x68 é a posição 0 do I2S (CR register)
sw [r3+1] r5; 8: escreve r5 no DR do I2S
;r31 deve estar zerado, faz upsampling de 22050 Hz para 44100 Hz
sw [r3+1] r5; escreve r5 no DR do I2S (duplica para improvisar upsampling sem perder ganho)

;usar r11 para armazenar a configuração do I2S
lw [r3+0] r11; armazena em r11 a configuração atual do I2S (CR)
xor r12 r12 r12; zera r12
addi r12 r12 x"0001"; r12 <- x0001 (máscara do bit 0)
or r11 r12 r11; r11 <- r11 or x"0001", ativa o bit I2S_EN (inicia transmissão)
sw [r3+0] r11; 14: armazena r11 em I2S:CR ativa o bit I2S_EN
iret; (IRQ 3 do filtro)

; register initialization, configures interrupt controller, codec, etc
INIT:
; register initialization
xor r0 r0 r0; zera r0
xor r1 r1 r1; zera r1
xor r2 r2 r2; zera r2
xor r3 r3 r3; zera r3
xor r4 r4 r4; zera r4
xor r5 r5 r5; zera r5
xor r6 r6 r6; zera r6
xor r7 r7 r7; zera r7
xor r8 r8 r8; zera r8
xor r9 r9 r9; zera r9
xor r10 r10 r10; zera r10
xor r11 r11 r11; zera r11
xor r12 r12 r12; zera r12
xor r13 r13 r13; zera r13
xor r14 r14 r14; zera r14
xor r15 r15 r15; zera r15
xor r16 r16 r16; zera r16
xor r17 r17 r17; zera r17
xor r18 r18 r18; zera r18
xor r19 r19 r19; zera r19
xor r20 r20 r20; zera r20
xor r21 r21 r21; zera r21
xor r22 r22 r22; zera r22
xor r23 r23 r23; zera r23
xor r24 r24 r24; zera r24
xor r25 r25 r25; zera r25
xor r26 r26 r26; zera r26
xor r27 r27 r27; zera r27
xor r28 r28 r28; zera r28
xor r29 r29 r29; zera r29
xor r30 r30 r30; zera r30
xor r31 r31 r31; zera r31

;configure global interrupt controller
addi r4 r4 x"0080"; (x80), r4 aponta a posição do reg do controlador de interrupção
addi r5 r5 IRQ0_Handler;
sw [r4+32] r5; escreve r5 no endereco da ISR IRQ0_Handler (filter_CLK rising_edge)
addi r11 r11 x"0000";
sw [r4+66] r11; coloca ISR IRQ0_Handler (filter_CLK rising_edge) na prioridade 2

xor r5 r5 r5; zera r5
xor r11 r11 r11; zera r11
addi r5 r5 IRQ3_Handler;
sw [r4+35] r5; escreve r5 no endereco da ISR IRQ3_Handler (filter_CLK falling_edge)
addi r11 r11 x"0003";
sw [r4+64] r11; coloca ISR IRQ3_Handler (filter_CLK falling_edge) na prioridade 0

xor r5 r5 r5; zera r5
xor r11 r11 r11; zera r11
addi r5 r5 IRQ1_Handler;
sw [r4+33] r5; escreve r5 no endereco da ISR IRQ1_Handler (I2C)
addi r11 r11 x"0001";
sw [r4+65] r11; coloca ISR IRQ1_Handler (I2C) na prioridade 1

xor r5 r5 r5; zera r5
xor r11 r11 r11; zera r11
	
;Feintuch’s Algorithm
;initialize
	
xor r3 r3 r3; zera r3
addi r3 r3 x"0072"; x72 é a posição 0 do filter control and status
sw [r3+0] r5; escreve em filter control and status, desabilita o filtro

;I2S configuration
xor r3 r3 r3; zera r3
addi r3 r3 x"0068"; x68 é a posição 0 do I2S (CR register)
xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
lw [r3+2] r5; r5 recebe o valor de I2S:SR
andi r5 r5 x"0080"; (zera todos os bits, menos o bit 7 - pll locked)
beq r5 r11 x"FFFD"; beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 132)
	
call CODEC_INIT; (makes I2C transfers to configure codec registers)

xor r13 r13 r13; 75: zera r13
addi r13 r13 MEM_INSTR_BASE_ADDR; r13 <- 0x100 base address da memória de instruções
addi r13 r14 x"000"; r14 <- r13
xor r4 r4 r4; zera r4
addi r4 r4 x"0020"; 20 é a posição 0 do inner_product:A
xor r3 r3 r3; zera r3, contador de tamanho do vetor (dimensao comum)
addi r7 r7 x"0002"; r7 <- 2 (constante)
xor r8 r8 r8; zera r8, tamanho do vetor da dimensao comum
addi r8 r8 x"0008"; r8 <- 8 (constante)


COPY_VECTORS:
beq r3 r7 x"0009"; if r3=2, goes to fill_zeros
lw [r13+MATRIX_A_OFFSET] r9; r9 <- a[i]
lw [r14+MATRIX_B_OFFSET] r6; r6 <- b[i]
sw [r4 + 0] r9; stores r9 in position i of inner_product:A
sw [r4 + 8] r6; stores r6 in position i of inner_product:B
addi r13 r13 x"0001";
addi r14 r14 x"0002";
addi r3 r3 x"0001";
addi r4 r4 x"0001";
jmp COPY_VECTORS; 104
FILL_ZEROS:
xor r6 r6 r6; zera r6
sw [r4 + 0] r6; stores r6 in position i of inner_product:A
sw [r4 + 8] r6; stores r6 in position i of inner_product:B
addi r3 r3 x"0001";
addi r4 r4 x"0001";
beq r3 r8 x"0001"; if r3!=8, goes to fill_zeros
jmp FILL_ZEROS;
lw [r4 + 16] r6; loads r6 with resulting inner_product

xor r9 r9 r9; zera r9
addi r9 r9 x"0072"; x72 é a posição 0 do filter control and status
sw [r9+2] r6; escreve r6 no registrador DR do display de 7 segmentos (x74)
	
;Escreve os coeficientes do filtro
xor r3 r3 r3; zera r3 (aponta para o coeficiente(0))
xor r1 r1 r1; zera r1
addi r1 r1 MEM_INSTR_BASE_ADDR; é a posição 0 da memória de instruções
lw [r1+FP_1_OFFSET] r2; 100: r2 <- x"3F800000" (1.0)
sw [r3+0] r2; b0 <- 1.0
xor r2 r2 r2; zera r2
sw [r3+1] r2; b1 <- 0.0
sw [r3+2] r2; b2 <- 0.0
sw [r3+3] r2; b3 <- 0.0
sw [r3+4] r2; a1 <- 0.0
sw [r3+5] r2; a2 <- 0.0
sw [r3+6] r2; a3 <- 0.0
sw [r3+7] r2; a4 <- 0.0

xor r5 r5 r5; zera r5
addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
;Lê memória de coeficientes do filtro(0) para o filtro(1)
;enables filter to update its components (when filter_CLK rises)
lvec x"00" x"02";
sw [r9+0] r5; escreve em filter control and status (x72), habilita o filtro
jmp x"01"; goes to the infinite loop (main loop)
	
;CODEC_INIT(void):
;Audio codec configuration
CODEC_INIT:
xor r3 r3 r3; zera r3
addi r3 r3 x"0060"; x60 é a posição 0 do I2C (CR register)
xor r2 r2 r2; zera r2, vai conter dados de configuracao do I2C
addi r2 r2 "00000_1_01_0011010_0"; vai configurar CR sempre com os mesmos valores e ativar o I2C_EN (iniciar transmissão)

;reset
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0001111_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 0Fh (reset)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;
	
;power down
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000110_0_0111_0111"; configura DR para escrever 0_0111_0111 no reg 06h (power down control)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;
	
;analogue audio path
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000100_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 04h (analogue audio path)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;digital audio path
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000101_0_0000_0000"; configura DR para escrever 0_0000_0000 no reg 05h (digital audio path)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;digital audio interface format
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000111_0_0001_0010"; configura DR para escrever 0_0001_0010 no reg 07h (digital audio interface format, I2S)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;sampling control
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0001000_0_0010_0011"; configura DR para escrever 0_0010_0011 no reg 08h (sampling control, USB mode)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;left headphone out
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000010_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 02h (volume left, -40dB)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;right headphone out
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000011_0_0101_0001"; configura DR para escrever 0_0101_0001 no reg 03h (volume right, -40dB)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;active control
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0001001_0_0000_0001"; configura DR para escrever 0_0000_0001 no reg 09h (active control, ativa o codec)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;

;power down control
xor r5 r5 r5; zera r5, vai conter dados para envio no barramento
addi r5 r5 "0000110_0_0110_0111"; configura DR para escrever 0_0110_0111 no reg 06h (power down control, ativa a saída)
push r5; valor de DR
push r2; valor de CR
push r3; endereço do I2C
call I2C_WRITE;
	
ret;
	
;I2C_WRITE(I2C_pointer,control_reg,data_reg):
I2C_WRITE:
;retrieving arguments from program stack (popping would increment SP)
ldfp r4;  r4 <- FP (frame pointer,first parameter, last passed by caller)
lw [r4+0] r0; r0 <- endereco-base do I2C
lw [r4+1] r1; r1 <- valor de CR
lw [r4+2] r2; r2 <- valor de DR
sw [r0+1] r2; armazena em DR o valor a ser transmitido
sw [r0+0] r1; escreve em CR e ativa o I2C_EN (inicia transmissão)
halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)	
ret;
	
;IRQ0_Handler(void): processes filter IRQ 0
IRQ0_Handler:
nop;
iret;
	
;IRQ1_Handler(void): processes I2C IRQ
IRQ1_Handler:
xor r3 r3 r3; zera r3
addi r3 r3 x"0060"; x60 é a posição 0 do I2C (CR register)
xor r11 r11 r11; zera r11
sw [r3+4] r11; escreve zero no reg de IRQ pendentes do I2C
iret;
	
;function MIN(x,y): retorna o menor entre dois floats: x e y
MIN:
ldfp r2; r2 <- FP (frame pointer, points to first parameter, last passed by caller)
lw [r2+0] r0; r0 <- x (float)
lw [r2+1] r1; r1 <- y (float)
fsub r0 r1 r3; r3 <- (x-y)
;creates mask for bit 31:
xor r5 r5 r5; zera r5
addi r5 r5 MEM_INSTR_BASE_ADDR;
lw [r5+BIT_31_MASK_OFFSET] r4;
;if bit 31 of r3 is zero, return  x, else return y
and r3 r4 r3; r3 <- r3 and r4, zero todos os bits, menos 31
beq r3 r4 x"0002"; beq r3 r4 (+2); se r3 = x80000000, (x-y)<0
;case x-y>=0
push r1; return y
ret;
;case x-y<0
push r0; return x
ret;

;function MAX(x,y): retorna o maior entre dois floats: x e y
MAX:
ldfp r2; r2 <- FP (frame pointer, points to first parameter, last passed by caller)
lw [r2+0] r0; r0 <- x (float)
lw [r2+1] r1; r1 <- y (float)
fsub r0 r1 r3; r3 <- (x-y)
;creates mask for bit 31:
xor r5 r5 r5; zera r5
addi r5 r5 MEM_INSTR_BASE_ADDR;
lw [r5+BIT_31_MASK_OFFSET] r4;
;if bit 31 of r3 is zero, return  x, else return y
and r3 r4 r3; r3 <- r3 and r4, zero todos os bits, menos 31
beq r3 r4 x"0002"; beq r3 r4 (+2); se r3 = x80000000, (x-y)<0
;case x-y>=0
push r0; return x
ret;
;case x-y<0
push r1; return y
ret;

.section data
; all data here must be 32-bit
BIT_31_MASK_OFFSET:
  x80000000
FP_1_OFFSET:
  x3F800000; +1.0
; 2x2 matrix
MATRIX_A_OFFSET:
  x3F800000; +1.0
  x00000000; 0.0
  x40400000; +3.0
  x40A00000; +5.0
; 2x2 matrix
MATRIX_B_OFFSET:
  x3F800000; +1.0
  x3F800000; +1.0
  x3F800000; +1.0
  x40400000; +3.0
