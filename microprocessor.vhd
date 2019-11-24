-------------------------------------------------------------
--microprocessor implementation
--by Renan Picoli de Souza
--supports instructions on page 23 and 28 of chapter 4 slides
--I added support for addi,subi,andi,ori,xori,nori,slti
-------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

use work.my_types.all;

---------------------------------------------------

entity microprocessor is
port (CLK: in std_logic;
		rst: in std_logic;
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
			rst:	in std_logic;--synchronous reset
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

component reg_file
	port (CLK: in std_logic;
			RST: in std_logic;
			read_reg_1: in std_logic_vector (4 downto 0);--reg1 addr
			read_reg_2: in std_logic_vector (4 downto 0);--reg2 addr
			write_reg : in std_logic_vector (4 downto 0);--reg to be written
			write_data: in std_logic_vector (31 downto 0);--data to be written
			regWrite: in std_logic;--enables register write
			read_data_1:out std_logic_vector (31 downto 0);
			read_data_2:out std_logic_vector (31 downto 0)
			);
end component;

component alu is
	port(	A:	in std_logic_vector(31 downto 0);
			B:	in std_logic_vector(31 downto 0);
			Sel:	in std_logic_vector(3 downto 0);
			CLK: in std_logic;
			RST: in std_logic;
			--ZF: out std_logic;
			flags: out eflags;
			Res:	buffer std_logic_vector(31 downto 0)  
			);
end component;

component fpu is
port (
	A: in std_logic_vector(31 downto 0);--supposed to be normalized
	B: in std_logic_vector(31 downto 0);--supposed to be normalized
	op:in std_logic_vector(1  downto 0);--4 operations: add,subtract, multiply,divide
	divideByZero:	out std_logic;
	overflow:		out std_logic;
	underflow:		out std_logic;
	result:out std_logic_vector(31 downto 0)
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

--component mini_ram
--	port (CLK: in std_logic;--borda de subida para escrita, memória pode ser lida a qq momento desde que rden=1
--			ADDR: in std_logic_vector(4 downto 0);--addr é endereço de byte, mas os Lsb são 00
--			write_data: in std_logic_vector(31 downto 0);
--			rden: in std_logic;--habilita leitura
--			wren: in std_logic;--habilita escrita
--			Q:	out std_logic_vector(31 downto 0)
--			);
--end component;

component parallel_load_cache
	generic (N: integer);--size in bits of address 
	port (CLK: in std_logic;--borda de subida para escrita, memória pode ser lida a qq momento desde que rden=1
			ADDR: in std_logic_vector(N-1 downto 0);--addr é endereço de byte, mas os Lsb são 00
			write_data: in std_logic_vector(31 downto 0);
			parallel_write_data: in array32 (0 to 2**N-1);
			fill_cache: in std_logic;
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

component mini_rom
	port (--CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			ADDR: in std_logic_vector(4 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q:	out std_logic_vector(31 downto 0)
			);
end component;

component control_unit
	port (instruction: in std_logic_vector (31 downto 0);
			regDst: out std_logic_vector(1 downto 0);
			branch: out std_logic;
			jump: out std_logic;
			memRead: out std_logic;
			reg_data_src: out std_logic_vector(1 downto 0);--selects which data is to be written to reg file
			mem_data_src: out std_logic;--selects which data is to be written to data memory
			aluControl: out std_logic_vector (3 downto 0);--ALU operation selector
			fpuControl: out std_logic_vector (1 downto 0);--FPU operation selector
			memWrite: out std_logic;
			aluSrc: out std_logic;
			regWrite: out std_logic			
			);
end component;

--signals driven by control unit
signal regDst: std_logic_vector(1 downto 0);
signal branch: std_logic;
signal jump: std_logic;
signal memRead: std_logic;
signal reg_data_src: std_logic_vector(1 downto 0);
signal mem_data_src: std_logic;
signal aluControl: std_logic_vector (3 downto 0);--ALU operation selector
signal fpuControl: std_logic_vector (1 downto 0);--FPU operation selector
signal memWrite: std_logic;
signal aluSrc: std_logic;
signal regWrite: std_logic;

signal writeLoc: std_logic_vector (4  downto 0);
signal reg_write_data: std_logic_vector (31  downto 0);--data to be written to register file
signal mem_write_data: std_logic_vector (31  downto 0);--data to be written to data memory
signal aluOp2: std_logic_vector (31  downto 0);
signal read_data_1: std_logic_vector (31 downto 0);--from register_file
signal read_data_2: std_logic_vector (31 downto 0);--from register_file
signal alu_result: std_logic_vector (31 downto 0);
signal fpu_result: std_logic_vector (31 downto 0);

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
signal alu_flags: eflags;--flags da ALU
signal fpu_flags: std_logic_vector(31 downto 0);--flags da FPU
signal muxNextInstrOutput: std_logic_vector (31 downto 0);
signal pc_incremented: std_logic_vector (31 downto 0);--pc+4
signal branch_address: std_logic_vector (31 downto 0);--(addressRelativeExtended(29 downto 0)&"00")+pc_out
signal branch_or_next: std_logic;--branch and ZF
signal jump_address	: std_logic_vector(31 downto 0);--pc_out(31 downto 28) & addressAbsolute & "00"

signal reg_clk: std_logic;--register file clock signal
signal ram_clk: std_logic;--data memory clock signal
signal alu_clk: std_logic;--alu clock signal

begin--note this: port map uses ',' while port uses ';'
	PC: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										D => pc_in,
										Q => pc_out);
										
	instruction_addr <= pc_out;

	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);

	writeLoc <=	rd when regDst="01" else
					rt when regDst="00" else
					rs;--only for mflo, mfhi

	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR NO REGISTRADOR NA BORDA DE DESCIDA
	reg_clk <= not CLK;
	register_file: reg_file port map (	CLK => reg_clk,
													RST => rst,
													read_reg_1 => rs,
													read_reg_2 => rt,
													write_reg  => writeLoc,
													write_data => reg_write_data,
													regWrite => regWrite,
													read_data_1 => read_data_1,
													read_data_2 => read_data_2
											);
											
	alu_clk <= not CLK;
	arith_logic_unity: alu port map ( 	A => read_data_1,
													B => aluOp2,
													sel => aluControl,
													CLK => alu_clk,
													RST => rst,
													flags => alu_flags,
													Res => alu_result
												);
												
	floating_point_unity: fpu port map (A => read_data_1,
													B => read_data_2,
													op=> fpuControl,
													divideByZero => fpu_flags(0),
													overflow	=> fpu_flags(1),
													underflow=> fpu_flags(2),
													result	=> fpu_result
												);
	fpu_flags(31 downto 3) <= (others=>'0');
								
--	data_memory: data_mem port map ( CLK => CLK,
--												MemWrite => memWrite,
--												MemRead => memRead,
--												ADDR => alu_result,
--												D => read_data_2, --store operations
--												Q => data_memory_output
--	);

	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR Na MEMÓRIA NA BORDA DE DESCIDA
	ram_clk <= not CLK;											
	data_memory: parallel_load_cache generic map (N => 5)
												port map(CLK	=> ram_clk,
															ADDR	=> alu_result(6 downto 2),
															write_data => mem_write_data,
															parallel_write_data => (others=>(others=>'0')),
															fill_cache => '0',
															rden	=> memRead,
															wren	=> memWrite,
															Q		=> data_memory_output);
	
	reg_write_data <= data_memory_output when reg_data_src="01" else--for register write
							alu_result when reg_data_src="00" else
							fpu_result;
						
	mem_write_data <= read_data_2 when mem_data_src='1' else
							fpu_result;
												
	pc_incremented <= (pc_out+4);
	branch_address <= (addressRelativeExtended(29 downto 0)&"00")+pc_incremented;
	branch_or_next <= branch and alu_flags.ZF;
	addressAbsolute <= instruction(25 downto 0);
	jump_address <= pc_out(31 downto 28) & addressAbsolute & "00";--TODO: é pc_incremented em vez de pc_out CHECAR
	pc_in <= jump_address when (jump='1') else--next pc_out if not reset
				branch_address when (branch_or_next='1') else
				pc_incremented;

--	instruction_memory: instr_mem port map (CLK => '0',--could be ROM, stores program, 0: read only
--														ADDR => pc_out,
--														D => (others=>'0'), --need define how to load program
--														--MEM_WRITE => '0',--a principio não vamos alterar o programa
--														Q => instruction);

	instruction_memory: mini_rom port map(	--CLK => CLK,
														ADDR=> pc_out(6 downto 2),
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
												reg_data_src => reg_data_src,
												mem_data_src => mem_data_src,
--												aluOp => aluOp,
												aluControl => aluControl,
												fpuControl => fpuControl,
												memWrite => memWrite,
												aluSrc => aluSrc,
												regWrite => regWrite);

end proc;

