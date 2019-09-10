-----------------------------
--control unity
-----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity control_unit is
	port (instruction: in std_logic_vector (31 downto 0);
			regDst: out std_logic_vector(1 downto 0);
			branch: out std_logic;
			jump: out std_logic;
			memRead: out std_logic;
			reg_data_src: out std_logic_vector(1 downto 0);--selects which data is to be written to reg file
			mem_data_src: out std_logic;--selects which data is to be written to data memory
			aluControl: out std_logic_vector (3 downto 0);--ALU operation selector
			fpuControl: out std_logic_vector (1 downto 0);--FPU operation selector
--			fpuResult_or_read_data_2: out std_logic;--selects which data is to be written to memory
			
			memWrite: out std_logic;
			aluSrc: out std_logic;
			regWrite: out std_logic			
			);

end entity;

architecture control of control_unit is
--signals
signal aluOp: std_logic_vector (1 downto 0);--auxiliary signal for alu control

--Instruction fields
signal opcode: std_logic_vector (5 downto 0);
signal shamt: std_logic_vector (4 downto 0);
signal funct: std_logic_vector (5 downto 0);
signal addressRelative: std_logic_vector (15 downto 0);--for load, store, branch
signal addressAbsolute: std_logic_vector (25 downto 0);--for jumps
signal immediate: std_logic_vector (15 downto 0);--for addi,andi,etc

--instruction type indicators
signal R_type: std_logic;
signal jump_type: std_logic;
signal branch_type: std_logic;
signal load_type: std_logic;
signal store_type: std_logic;
signal addi: std_logic;
signal subi: std_logic;
signal andi: std_logic;
signal ori:	 std_logic;
signal xori: std_logic;
signal nori: std_logic;
signal slti: std_logic;
signal mult: std_logic;--unsigned multiplication
signal imul: std_logic;--signed multiplication
signal mflo: std_logic;--load lower half of product into register
signal mfhi: std_logic;--load upper half of product into register

begin

------------------UNIDADE DE CONTROLE---------------------
opcode<= instruction(31 downto 26);
shamt <= instruction(10 downto 6);
funct <= instruction(5 downto 0);

R_type 		<= '1' when opcode="000000" else '0';--instrucao de tipo R
jump_type 	<= '1' when opcode="000010" else '0';--instrucao de jump
branch_type	<= '1' when opcode="000100" else '0';--instrucao de branch
load_type 	<= '1' when opcode="100011" else '0';--instrucao de load
store_type 	<= '1' when opcode="101011" else '0';--instrucao de store

branch 	<= '1' when (branch_type='1') else '0';
jump 		<= '1' when (jump_type='1') else '0';
addi 		<= '1' when opcode="001000" else '0';
subi		<= '1' when opcode="001001" else '0';
andi		<= '1' when opcode="000011" else '0';
ori		<= '1' when opcode="000001" else '0';
xori		<=	'1' when opcode="010000" else	'0';
nori		<= '1' when opcode="010100" else '0';
slti 		<= '1' when opcode="010101" else '0';
mult		<= '1' when opcode="000101" else '0';
imul		<= '1' when opcode="001101" else '0';
mflo		<= '1' when opcode="100101" else '0';
mfhi		<= '1' when opcode="101101" else '0';

regDst 	<= "01" when R_type='1' else--usa rd (para escrita) só em instrucao tipo R
				"10" when (mfhi='1' or mflo='1') else--apenas mflo mfhi escrevem no rs
				"00";--demais instrucoes escrevem no rt
memRead 	<= load_type;
memWrite <= store_type;
reg_data_src <= (R_type and (not funct(5))) & load_type;--01: loads memory content to register; 00: saves alu result to register; 1X: saves fpu result to register
mem_data_src <= '1';--now I don't understand how to implement a instruction that operates on fp numbers and save the result to memory 
aluSrc 	<= load_type or store_type or addi or subi or andi or ori or xori or nori or slti;--'1': operando 2 da ALU é imediato com extensão de sinal
regWrite <= R_type or load_type     or addi or subi or andi or ori or xori or nori or slti or mfhi or mflo;--addi tambem escreve no register file, como R-type

AluOp <= "00" when (load_type='1' or store_type='1') else--load/store require addition
			"01" when (branch_type='1') else--branch requires subctration
			"10" when (R_type='1') else--R-type requires access to any arith operation
			"11" when (addi='1' or subi='1' or andi='1' or--these I-type ops require access to any arith operation
							ori='1' or xori='1' or nori='1' or
							slti='1' or mult='1' or imul='1' or
							mfhi='1' or mflo='1')
			else "XX";

aluControl <= 	"0010" when (AluOp = "00") else--add
					"0110" when (AluOp = "01") else--subtract
					--for I-type
					"0010" when (AluOp = "11" and addi='1') else--addi
					"0110" when (AluOp = "11" and subi='1') else--subi
					"0000" when (AluOp = "11" and andi='1') else--andi
					"0001" when (AluOp = "11" and ori ='1') else--ori
					"0011" when (AluOp = "11" and xori='1') else--xori
					"1100" when (AluOp = "11" and nori='1') else--nori
					"0111" when (AluOp = "11" and slti='1') else--slti
					"1000" when (AluOp = "11" and mult='1') else--mult (immediate is ignored)
					"1011" when (AluOp = "11" and imul='1') else--imul
					"1001" when (AluOp = "11" and mfhi='1') else--mfhi
					"1010" when (AluOp = "11" and mflo='1') else--mflo
					--for R-type
					"0010" when (AluOp = "10" and funct = "100000") else--add
					"0110" when (AluOp = "10" and funct = "100010") else--subtract
					"0000" when (AluOp = "10" and funct = "100100") else--and
					"0001" when (AluOp = "10" and funct = "100101") else--or
					"0011" when (AluOp = "10" and funct = "100111") else--xor
					"1100" when (AluOp = "10" and funct = "101000") else--nor
 					"0111" when (AluOp = "10" and funct = "101010") else--set-on-less-than
					"XXXX";
					
fpuControl	<=	"00" when (R_type = '1' and funct = "000000") else--addition
					"01" when (R_type = '1' and funct = "000010") else--subtraction
					"10" when (R_type = '1' and funct = "000001") else--multiplication
					"11" when (R_type = '1' and funct = "000011") else--division
					"XX";
end control;