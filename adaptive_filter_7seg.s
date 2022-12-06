; Adaptive filter

.section rodata
	MEM_INSTR_BASE_ADDR x0100;
.section code
; register initialization
	xor r0 r0 r0; zera r0
	xor r1 r1 r1; zera r1, vai armazenar (2*step)
	xor r2 r2 r2; zera r2, vai armazenar a cte 5E-5
	xor r3 r3 r3; zera r3, vai ser ponteiro nos loops de preenchimento da memória
	xor r4 r4 r4; zera r4, será um segundo ponteiro nos loops em memória
	xor r5 r5 r5; zera r5
	xor r6 r6 r6; zera r6
	xor r7 r7 r7; zera r7, será a constante 8 (NÚMERO DE COEFICIENTES DO FILTRO)
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
	sw [r4+64] r11; coloca ISR IRQ0_Handler (filter_CLK rising_edge) na prioridade 0

	xor r5 r5 r5; zera r5
	xor r11 r11 r11; zera r11
	addi r5 r5 IRQ1_Handler;
	sw [r4+33] r5; escreve r5 no endereco da ISR IRQ1_Handler (I2C)
	addi r11 r11 x"0001";
	sw [r4+67] r11; coloca ISR IRQ1_Handler (I2C) na prioridade 3

	xor r5 r5 r5; zera r5
	xor r11 r11 r11; zera r11
	addi r5 r5 IRQ2_Handler;
	sw [r4+34] r5; escreve r5 no endereco da ISR IRQ2_Handler (I2S)
	addi r11 r11 x"0002";
	sw [r4+65] r11; coloca ISR IRQ2_Handler (I2S) na prioridade 1

	xor r5 r5 r5; zera r5
	xor r11 r11 r11; zera r11
	addi r5 r5 IRQ3_Handler;
	sw [r4+35] r5; escreve r5 no endereco da ISR IRQ3_Handler (filter_CLK falling_edge)
	addi r11 r11 x"0003";
	sw [r4+66] r11; coloca ISR IRQ3_Handler (filter_CLK falling_edge) na prioridade 2

	xor r5 r5 r5; zera r5
	xor r11 r11 r11; zera r11
	
;Feintuch’s Algorithm
;initialize
addi r0 r0 x"0008"; stores N=P+Q+1=8 in r0
addi r3 r3 MEM_INSTR_BASE_ADDR; é a posição 0 da memória de instruções
lw [r3 + FP_1E4_OFFSET] r2; r2<- x"461C4000", carrega a cte 1E4, armazenada junto do programa
addi r7 r7 x"0008"; r7 <- 8 (NÚMERO DE COEFICIENTES DO FILTRO)
	
xor r3 r3 r3; zera r3
addi r3 r3 x"0072"; x72 é a posição 0 do filter control and status
lw [r3+0] r5; armazena em r5 o valor do filter control and status
xor r5 r5 r5; zera r5
sw [r3+0] r5; escreve em filter control and status, desabilita o filtro

;I2S configuration
xor r3 r3 r3; zera r3
addi r3 r3 x"0068"; x68 é a posição 0 do I2S (CR register)
xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
addi r5 r5 "0000_0000_0_011_010_0"; configura CR: seleciona left fifo, DS 16 bits, 2 frames, aguardando início
sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
lw [r3+2] r5; r5 recebe o valor de I2S:SR
andi r5 r5 x"0080"; (zera todos os bits, menos o bit 7 - pll locked)
beq r5 r11 x"FFFD"; beq r5 r11 (-3), se r5 = 0, pll não deu lock, repetir leitura (instrucao 46)
	
call CODEC_INIT; (makes I2C transfers to configure codec registers)
	
xor r3 r3 r3; zera r3
addi r3 r3 x"0072"; x72 é a posição 0 do filter control and status
lw [r3+0] r5; armazena em r5 o valor do filter control and status
xor r5 r5 r5; zera r5
addi r5 r5 x"0001"; r5 <- x0001 habilitará filtro
sw [r3+0] r5; escreve em filter control and status (x72), habilita o filtro

halt; waits for filter interruption to be generated when filter_CLK rises (new sample)
xor r13 r13 r13; zera r13
addi r13 r13 MEM_INSTR_BASE_ADDR; r13 <- 0x100 base address da memória de instruções
lw [r13+50] r5; (carrega r5 com o valor da instrucao 50 -> x016B5827) (para teste do 7 segmentos)
lw [r13 + INSTR_MASK_OFFSET] r6; <- 0x0000FFFF
and r5 r6 r5; r5 <- r5 and 0x0000FFFF
sw [r13+50] r5; saves modified instruction to program memory
lw [r13+50] r5; (carrega r5 com o valor NOVO da instrucao 50 -> x00005827) (para teste do 7 segmentos)
sw [r3+2] r5; escreve r5 no registrador DR do display de 7 segmentos (x74)
jmp x"51"; volta pro halt (loop infinito)
	
;r5 será um registrador para carregamento temporário de dados
;r6 será um índice para a iteração nos loops
;r8 será para armazenar a leitura da saída do filtro
;r9 será para armazenar a resposta desejada
;r10 será o erro (d-y)
;r11 será mais um registrador de carregamento temporário de dados
;r12 será uma máscara para a seleção do bit 7 (x"0008")

;IRQ0_Handler(void): Processes new sample
IRQ0_Handler:
;%calculo do step
;carrega o produto interno (A e B - 3 e 4) e vmac:B (6) com os xN(2)
lvec x"02" x"58";

xor r3 r3 r3; zera r3
addi r3 r3 x"0020"; x20 é a posição 0 do inner_product
lw [r3 + 16] r1; stores squared norm in r1
xor r3 r3 r3; zera r3
addi r3 r3 MEM_INSTR_BASE_ADDR; posição 0 da memória de instruções

lw [r3+FP_0_5_OFFSET] r6; r6 <- 0.5
fdiv r6 r1 r1; r1 <- r6/r1 (0.5/squared norm)
push r2; 1E4
push r1; (0.5/squared norm)
call MIN; call 220
pop r1; r1 <- step=MIN(0.5/squared norm,1E4), this value is removed from program stack

;If you want a interrupt handler to produce permanent data modification, write it to ram
;changes kept in register file will be lost after interrup return (iret)
lw [r3 + FP_2_OFFSET] r6; r6<- x"40000000", carrega a cte 2.0, da memória de instrução
fmul r1 r6 r1; r1 <- (2*step)
xor r3 r3 r3; zera r3
addi r3 r3 x"0010"; r3 aponta para a posição 0 da mini_ram
sw [r3 + 0] r1; saves r1 (2*step) to position 0 of mini_ram

xor r4 r4 r4; zera o r4
addi r4 r4 x"0071"; r4 aponta para o registrador da resposta desejada (x71)
lw [r4+0] r9; lê a resposta desejada e armazena em r9 (PRECISA SER antes de filter_CLK descer)
sw [r3 + 1] r9; saves r9 (desired response) to position 1 of mini_ram
iret; (IRQ 0 do filtro)
	
;IRQ3_Handler(void): Processes filter output
IRQ3_Handler:
xor r3 r3 r3; zera o r3
addi r3 r3 x"0070"; r3 aponta para o registrador da saída atual do filtro (x70*4)
lw [r3+0] r8; lê a resposta do filtro e armazena em r8

xor r4 r4 r4; zera o r4
addi r4 r4 x"0010"; x10 é a posição 0 da mini_ram	
lw [r4 + 1] r9; loads r9 with position 1 of mini_ram (desired response)
fsub r9 r8 r10; Calcula e armazena o erro (d-y) em r10
	
lw [r4 + 0] r1; loads r1 with position 0 of mini_ram (2*step) 
fmul r1 r10 r1; r1 <- (2*step)*erro
xor r4 r4 r4; zera o r4
addi r4 r4 x"0040"; x40, r4 aponta posição 0 do vmac
sw [r4 + 16] r1; armazena step*erro no lambda
	
;Carrega VMAC:A(5) com as componentes do filtro atual(0)
lvec x"00" x"20";

vmac; enables accumulation in vector A of VMAC
	
;Lê o acumulador do VMAC(5) e atualiza os coeficientes do filtro(0)
lvec x"05" x"01";	
	
;Lê memória de coeficientes do filtro(0) para o filtro(1)
;enables filter to update its components (when filter_CLK rises)
lvec x"00" x"02";
	
;TODO: se filtro já convergiu, sair do loop

;I2S transmission (left fifo já foi selecionada antes do loop principal)
;escreve 2x no DR (upsampling fator 2)
;habilita a transmissão
xor r3 r3 r3; zera r3
addi r3 r3 x"0073"; x73 é a posição do converted_output register
lw [r3+0] r5; loads r5 with filter response converted to 2's complement
xor r3 r3 r3; zera r3
addi r3 r3 x"0068"; x68 é a posição 0 do I2S (CR register)
sw [r3+1] r5; escreve r5 no DR do I2S
;r31 deve estar zerado, faz upsampling de 22050 Hz para 44100 Hz
sw [r3+1] r5; escreve r5 no DR do I2S (duplica para improvisar upsampling sem perder ganho)

;usar r11 para armazenar a configuração do I2S
lw [r3+0] r11; armazena em r11 a configuração atual do I2S (CR)
xor r12 r12 r12; zera r12
addi r12 r12 x"0001"; r12 <- x0001 (máscara do bit 0)
or r11 r12 r11; r11 <- r11 or x"0001", ativa o bit I2S_EN (inicia transmissão)
sw [r3+0] r11; armazena r11 em I2S:CR ativa o bit I2S_EN
halt; waits for I2S interruption (assumes sucess)
iret; (IRQ 1 do filtro, IRQ3 global)
																
;IRQ2_Handler(void): Processes I2S IRQ (assumes sucess)
IRQ2_Handler:
xor r3 r3 r3; zera r3
addi r3 r3 x"0068"; x68 é a posição 0 do I2S (CR register)	
xor r11 r11 r11; zera r11
addi r11 r11 x"FFFE"; r11 <- FFFE
sw [r3+4] r11; escreve zero no bit 0 do reg de IRQ pendentes do I2S
iret; (IRQ do I2S)
	
;CODEC_INIT(void):
;Audio codec configuration
CODEC_INIT:
xor r3 r3 r3; zera r3
addi r3 r3 x"0060"; x60 é a posição 0 do I2C (CR register)
xor r5 r5 r5; zera r5, vai conter dados para escrita de registrador
addi r5 r5 "00000_0_01_0011010_0"; configura CR para 2 bytes, slave address 0b"0011010", escrita
sw [r3+0] r5; escreve em CR, transmissão não habilitada ainda
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
ldfp r4; r4 <- FP (frame pointer,first parameter, last passed by caller)
lw [r4+0] r0; r0 <- endereco-base do I2C
lw [r4+1] r1; r1 <- valor de CR
lw [r4+2] r2; r2 <- valor de DR
sw [r0+1] r2; armazena em DR o valor a ser transmitido
sw [r0+0] r1; escreve em CR e ativa o I2C_EN (inicia transmissão)
halt; waits for I2C interruption to be generated when I2C transmission ends (assumes sucess)	
ret;
	
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
addi r5 r5 MEM_INSTR_BASE_ADDR;
lw [r5+BIT_31_MASK_OFFSET] r4;
;if bit 31 of r3 is zero, return  x, else return y
and r3 r4 r3; r3 <- r3 and r4, zero todos os bits, menos 31
beq r3 r4 x"0002"; beq r3 r4 (+2); se r3 = x80000000, (x-y)<0
;case x-y>=0
push r1; return y
ret;
;case x-y<0
push r0; return 0
ret;

.section data
; all data here must be 32-bit
FP_1E4_OFFSET:
  x461C4000; 1E4: a filter constant
FP_0_5_OFFSET:
  x3F000000; 0.5
FP_2_OFFSET:
  x40000000; 2.0
INSTR_MASK_OFFSET:
  x0000FFFF
BIT_31_MASK_OFFSET:
  x80000000
