-----------------------------
--control unity
-----------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity control_unit is
	port (instruction: in std_logic_vector (31 downto 0);
			regDst: out std_logic;
			branch: out std_logic;
			jump: out std_logic;
			memRead: out std_logic;
			memtoReg: out std_logic;
			aluOp: buffer std_logic_vector (1  downto 0);--auxiliary signal for alu control
			aluControl: out std_logic_vector (3 downto 0);--ALU operation selector
			memWrite: out std_logic;
			aluSrc: out std_logic;
			regWrite: out std_logic			
			);

end entity;

architecture control of control_unit is
--signals

--Instruction fields
signal opcode: std_logic_vector (5 downto 0);
signal rs: std_logic_vector (4 downto 0);
signal rt: std_logic_vector (4 downto 0);
signal rd: std_logic_vector (4 downto 0);
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

regDst 	<= R_type;--usa rd (para escrita) só em instrucao tipo R
memRead 	<= load_type;
memWrite <= store_type;
memtoReg <= load_type;
aluSrc 	<= load_type or store_type or addi;--'1' operando 2 da ALU é imediato com extensão de sinal
regWrite <= R_type or load_type or addi;--addi tambem escreve em registrador, como R-type

AluOp <= "00" when (load_type='1' or store_type='1' or addi='1') else--load/store/addi require addition
			"01" when (branch_type='1') else--branch requires subctration
			"10" when (R_type='1') else--R-type requires access to any arith operation
			"XX";

aluControl <= 	"0010" when (AluOp = "00") else--add
					"0110" when (AluOp = "01") else--subtract
					--for R-type
					"0010" when (AluOp = "10" and funct = "100000") else--add
					"0110" when (AluOp = "10" and funct = "100010") else--subtract
					"0000" when (AluOp = "10" and funct = "100100") else--and
					"0001" when (AluOp = "10" and funct = "100101") else--or
					"0011" when (AluOp = "10" and funct = "100111") else--xor
					"1100" when (AluOp = "10" and funct = "101000") else--nor
 					"0111" when (AluOp = "10" and funct = "101010") else--set-on-less-than
					"XXXX";
end control;