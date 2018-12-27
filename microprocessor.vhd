--------------------------------------------------
--microprocessor implementation
--by Renan Picoli de Souza
--supports instructions on page 23 and 28 of chapter 4 slides
--I added support for addi
--(does not accept immediates for ALU operations)
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use work.my_types.all;

---------------------------------------------------

entity microprocessor is
port (CLK: in std_logic;
		data_memory_output: buffer std_logic_vector(31 downto 0);
		instruction_addr: out std_logic_vector (31 downto 0)--AKA read address
);
end entity;

architecture proc of microprocessor is
signal pc_in: 	std_logic_vector (31 downto 0);
signal pc_out: std_logic_vector (31 downto 0) := (others => '0');
--signal CLK: std_logic;
--signal count: std_logic_vector(25 downto 0);
component d_flip_flop
	port (D:	in std_logic_vector(31 downto 0);
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

component reg_file
	port (CLK: in std_logic;
			read_reg_1: in std_logic_vector (4 downto 0);--reg1 addr
			read_reg_2: in std_logic_vector (4 downto 0);--reg2 addr
			write_reg : in std_logic_vector (4 downto 0);--reg to be written
			write_data: in std_logic_vector (31 downto 0);--data to be written
			regWrite: in std_logic;--enables register write
			read_data_1:out std_logic_vector (31 downto 0);
			read_data_2:out std_logic_vector (31 downto 0)
			);
end component;

component mux5 is
	port(	A: in std_logic_vector (4 downto 0);
			B: in std_logic_vector (4 downto 0);
			sel: in std_logic;
			Q: out std_logic_vector (4 downto 0)
			);
end component;

component mux32 is
	port(	A: in std_logic_vector (31 downto 0);
			B: in std_logic_vector (31 downto 0);
			sel: in std_logic;
			Q: out std_logic_vector (31 downto 0)
			);
end component;

component alu is
	port(	A:	in std_logic_vector(31 downto 0);
			B:	in std_logic_vector(31 downto 0);
			Sel:	in std_logic_vector(3 downto 0);
			--ZF: out std_logic;
			flags: out eflags;
			Res:	buffer std_logic_vector(31 downto 0)  
			);
end component;

--component data_mem
--	port (	D:	in std_logic_vector(31 downto 0);--data to be written
--				CLK:	in std_logic;
--				ADDR: in std_logic_vector(31 downto 0);
--				MemWrite: in std_logic;
--				MemRead:  in std_logic;
--				Q:	out std_logic_vector(31 downto 0)
--				);
--end component;

--component ram
--	port (address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--			clock		: IN STD_LOGIC  := '1';
--			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
--			rden		: IN STD_LOGIC  := '1';
--			wren		: IN STD_LOGIC ;
--			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
--	);
--end component;

component mini_ram
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			write_data: in std_logic_vector(31 downto 0);
			rden: in std_logic;--habilita leitura
			wren: in std_logic;--habilita escrita
			Q:	out std_logic_vector(31 downto 0)
			);
end component;

--component instr_mem
--	port (CLK: in std_logic;
--			ADDR: in std_logic_vector(31 downto 0);
--			D: in std_logic_vector(31 downto 0);--para que algum código novo seja gravado nela, deixar em 0
--			--MEM_WRITE: in std_logic;--habilita escrita, se desativado, memória é lida a cada clock
--			Q:	out std_logic_vector(31 downto 0)
--			);
--end component;

--component rom
--	port (address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--			clock		: IN STD_LOGIC  := '1';
--			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
--	);
--end component;

component mini_rom
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(3 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end component;

component control_unit
	port (instruction: in std_logic_vector (31 downto 0);
			regDst: out std_logic;
			branch: out std_logic;
			jump: out std_logic;
			memRead: out std_logic;
			memtoReg: out std_logic;
			aluOp: buffer std_logic_vector (1  downto 0);--auxiliary signal for ALU control
			aluControl: out std_logic_vector (3 downto 0);--ALU operation selector
			memWrite: out std_logic;
			aluSrc: out std_logic;
			regWrite: out std_logic			
			);
end component;

--signals driven by control unit
signal regDst: std_logic;
signal branch: std_logic;
signal jump: std_logic;
signal memRead: std_logic;
signal memtoReg: std_logic;
signal aluOp: std_logic_vector (1  downto 0);--auxiliary signal for alu control
signal aluControl: std_logic_vector (3 downto 0);--ALU operation selector
signal memWrite: std_logic;
signal aluSrc: std_logic;
signal regWrite: std_logic;

signal writeLoc: std_logic_vector (4  downto 0);
signal write_data: std_logic_vector (31  downto 0);
signal aluOp2: std_logic_vector (31  downto 0);
signal read_data_1: std_logic_vector (31 downto 0);--from register_file
signal read_data_2: std_logic_vector (31 downto 0);--from register_file
signal alu_result: std_logic_vector (31 downto 0);

--Instruction fields
signal opcode: std_logic_vector (5 downto 0);
signal rs: std_logic_vector (4 downto 0);
signal rt: std_logic_vector (4 downto 0);
signal rd: std_logic_vector (4 downto 0);
signal shamt: std_logic_vector (4 downto 0);
signal funct: std_logic_vector (5 downto 0);
signal addressRelative: std_logic_vector (15 downto 0);--for load,store,branch
signal addressAbsolute: std_logic_vector (25 downto 0);--for jumps
signal addressRelativeExtended: std_logic_vector (31 downto 0);--addressRelative after sign extension

--instruction type indicators
signal R_type: std_logic;
signal jump_type: std_logic;
signal branch_type: std_logic;
signal load_type: std_logic;
signal store_type: std_logic;

--signal data_memory_output: std_logic_vector (31 downto 0);
signal instruction: std_logic_vector (31 downto 0);--next instruction to execute
--signal ZF: std_logic;--flag de zero da ALU
signal flags: eflags;--flags da ALU
signal muxNextInstrOutput: std_logic_vector (31 downto 0);
signal pc_incremented: std_logic_vector (31 downto 0);--pc+4
signal branch_address: std_logic_vector (31 downto 0);--(addressRelativeExtended(29 downto 0)&"00")+pc_out
signal branch_or_next: std_logic;--branch and ZF
signal jump_address	: std_logic_vector(31 downto 0);--pc_out(31 downto 28) & addressAbsolute & "00"

begin--note this: port map uses ',' while port uses ';'
	PC: d_flip_flop port map (	CLK => CLK,
										D => pc_in,
										Q => pc_out);
										
	instruction_addr <= pc_out;

	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);
	
	writeLoc <=	rd when regDst='1' else
					rt;

	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR NO REGISTRADOR NA BORDA DE DESCIDA	
	register_file: reg_file port map (	CLK => not CLK,
											read_reg_1 => rs,
											read_reg_2 => rt,
											write_reg  => writeLoc,
											write_data => write_data,
											regWrite => regWrite,
											read_data_1 => read_data_1,
											read_data_2 =>read_data_2
											);
											
	arith_logic_unity: alu port map ( 	A => read_data_1,
													B => aluOp2,
													sel => aluControl,
													flags => flags,
													Res => alu_result------------TODO
												);
								
--	data_memory: data_mem port map ( CLK => CLK,
--												MemWrite => memWrite,
--												MemRead => memRead,
--												ADDR => alu_result,
--												D => read_data_2, --store operations
--												Q => data_memory_output
--	);
	
--	data_memory: ram port map (	clock 	=> CLK,
--											wren		=> memWrite,
--											rden		=> memRead,
--											address	=> alu_result(9 downto 2),
--											data		=> read_data_2,
--											q			=> data_memory_output);
											
	data_memory: mini_ram port map(ADDR	=> alu_result(5 downto 2),
											write_data => read_data_2,
											rden	=> memRead,
											wren	=> memWrite,
											Q		=> data_memory_output);
	
	write_data <= 	data_memory_output when memtoReg='1' else
						alu_result;
												
	pc_incremented <= (pc_out+4);
	branch_address <= (addressRelativeExtended(29 downto 0)&"00")+pc_incremented;
	branch_or_next <= branch and flags.ZF;
	addressAbsolute <= instruction(25 downto 0);
	jump_address <= pc_out(31 downto 28) & addressAbsolute & "00";--TODO: é pc_incremented em vez de pc_out CHECAR
	pc_in <= jump_address when (jump='1') else
				branch_address when (branch_or_next='1') else
				pc_incremented;

--	instruction_memory: instr_mem port map (CLK => '0',--could be ROM, stores program, 0: read only
--														ADDR => pc_out,
--														D => (others=>'0'), --need define how to load program
--														--MEM_WRITE => '0',--a principio não vamos alterar o programa
--														Q => instruction);
														
--	instruction_memory: rom port map (address => pc_out(9 downto 2),
--												 --clock => CLK,
--												 q => instruction
--												 );

	instruction_memory: mini_rom port map(	--CLK => CLK,
														ADDR=> pc_out(5 downto 2),
														Q	 => instruction
	);
	
	addressRelative <= instruction(15 downto 0);--valid only on branch instruction
	addressRelativeExtended <= (31 downto 16 => addressRelative(15)) & addressRelative;
	
	aluOp2 <= 	addressRelativeExtended when AluSrc='1' else
					read_data_2;
										
	control: control_unit port map (	instruction => instruction,
												regDst => regDst,
												branch => branch,
												jump => jump,
												memRead => memRead,
												memtoReg => memtoReg,
												aluOp => aluOp,
												aluControl => aluControl,
												memWrite => memWrite,
												aluSrc => aluSrc,
												regWrite => regWrite);


--	prescaler: process(CLK_50M)
--	begin
--		if(CLK_50M'event and CLK_50M='1') then
--			count <= count + 1;
--		end if;
--	CLK <= count(25);
--	CLK <= CLK_50M;--no prescaler
--	end process;
end proc;

