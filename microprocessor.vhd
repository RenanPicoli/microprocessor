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
generic (N: integer);--size in bits of data addresses 
port (CLK_IN: in std_logic;
		rst: in std_logic;
		irq: in std_logic;--interrupt request
		iack: out std_logic;--interrupt acknowledgement
		instruction_addr: out std_logic_vector (31 downto 0);--AKA read address
		-----ROM----------
		ADDR_rom: out std_logic_vector(7 downto 0);--addr é endereço de byte, mas os Lsb são 00
		CLK_rom: out std_logic;--clock for mini_rom (is like moving a PC register duplicate to mini_rom)
		Q_rom:	in std_logic_vector(31 downto 0);
		cache_ready: in std_logic;--indicates cache is ready (Q_rom is valid)
		-----RAM-----------
		ADDR_ram: out std_logic_vector(N-1 downto 0);--addr é endereço de byte, mas os Lsb são 00
		write_data_ram: out std_logic_vector(31 downto 0);
		rden_ram: out std_logic;--enables read on ram
		wren_ram: out std_logic;--enables write on ram
		wren_lvec: out std_logic;--enables load vector: loads vector of 8 std_logic_vector in parallel
		lvec_src: out std_logic_vector(2 downto 0);--a single source address for lvec
		lvec_dst_mask: out std_logic_vector(6 downto 0);--mask for destination(s) address(es) for lvec
		vmac_en: out std_logic;--multiply-accumulate enable
		Q_ram:in std_logic_vector(31 downto 0)
);
end entity;

architecture proc of microprocessor is

component d_flip_flop
	port (D:	in std_logic_vector(31 downto 0);
			rst:	in std_logic;--synchronous reset
			ENA:	in std_logic:='1';--enables writes
			CLK:in std_logic;
			Q:	out std_logic_vector(31 downto 0)  
			);
end component;

component reg_file
	generic (L: natural);--log2 of number of stack levels (one stack for each register)
	port (CLK: in std_logic;
			RST: in std_logic;
			pop: in std_logic;
			push: in std_logic;
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
			Res:	out std_logic_vector(31 downto 0)  
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

component control_unit
	port (instruction: in std_logic_vector (31 downto 0);
			regDst: out std_logic_vector(1 downto 0);
			halt: out std_logic;
			iack: buffer std_logic;
			imask: out std_logic;--interrupt mask: disables all interrupts
			branch: out std_logic;
			jump: out std_logic;
			memRead: out std_logic;
			reg_data_src: out std_logic_vector(1 downto 0);--selects which data is to be written to reg file
			mem_data_src: out std_logic;--selects which data is to be written to data memory
			aluControl: out std_logic_vector (3 downto 0);--ALU operation selector
			fpuControl: out std_logic_vector (1 downto 0);--FPU operation selector
			memWrite: out std_logic;
			ldfp: out std_logic;
			ldrv: out std_logic;
			addsp: out std_logic;
			push: out std_logic;
			pop: out  std_logic;
			call: out std_logic;
			ret: out  std_logic;
			iret: out std_logic;
			vmac: out std_logic;--multiply-accumulate
			lvec: out std_logic;--load vector: loads vector of 8 std_logic_vector in parallel
			lvec_src: out std_logic_vector(2 downto 0);--a single source address for lvec
			lvec_dst_mask: out std_logic_vector(6 downto 0);--mask for destination(s) address(es) for lvec
			aluSrc: out std_logic;
			regWrite: out std_logic
			);
end component;

component stack
	generic(L: natural);--log2 of number of stored words
	port (CLK: in std_logic;--active edge: rising_edge
			rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge of CLK)
			--STACK INTERFACE
			pop: in std_logic;
			push: in std_logic;
			addsp: in std_logic;--sp <- sp + imm
			imm: in std_logic_vector(L-1 downto 0);--imm > 0: deletes vars, imm < 0: reserves space for vars
			stack_in: in std_logic_vector(31 downto 0);-- word to be pushed
			sp: buffer std_logic_vector(L-1 downto 0);-- points to last stacked item (address of a 32-bit word)
			stack_out: out std_logic_vector(31 downto 0);--data retrieved from stack
			--MEMORY-MAPPED INTERFACE
			D: in std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
			WREN: in std_logic;--write enable for memory-mapped interface
			ADDR: in std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
			Q:		out std_logic_vector(31 downto 0)-- data output for memory-mapped interface
	);
end component;

signal CLK: std_logic;
signal pc_in: 	std_logic_vector (31 downto 0);
signal pc_out: std_logic_vector (31 downto 0) := (others => '0');
signal fp_in: 	std_logic_vector (31 downto 0);
signal fp_en: 	std_logic;
signal fp_out: std_logic_vector (31 downto 0) := (others => '0');
signal fp_stack_out: std_logic_vector (31 downto 0) := (others => '0');
signal lr_in: 	std_logic_vector (31 downto 0);
signal lr_out: std_logic_vector (31 downto 0) := (others => '0');
signal rv_in: 	std_logic_vector (31 downto 0);
signal rv_out: std_logic_vector (31 downto 0) := (others => '0');
signal sp: std_logic_vector(31 downto 0);
signal program_stack_out: std_logic_vector (31 downto 0) := (others => '0');
signal addr_stack: std_logic_vector (31 downto 0) := (others => '0');
signal wren_stack: std_logic;
signal Q_stack: std_logic_vector (31 downto 0) := (others => '0');
constant STACK_LEVELS_LOG2: natural := 6;--for GPR's, FP, and program_stack

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
signal vmac: std_logic;--enables multiply-accumulate
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

signal halt: std_logic;
signal clk_enable: std_logic;
signal gating_signal: std_logic;--for clock control ('1' will enable microprocessor clock)

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

signal data_memory_output: std_logic_vector (31 downto 0);
signal special_registers: std_logic_vector (31 downto 0);
signal instruction: std_logic_vector (31 downto 0);--next instruction to execute
signal alu_flags: eflags;--flags da ALU
signal fpu_flags: std_logic_vector(31 downto 0);--flags da FPU
signal muxNextInstrOutput: std_logic_vector (31 downto 0);
signal pc_incremented: std_logic_vector (31 downto 0);--pc+4
signal branch_address: std_logic_vector (31 downto 0);--(addressRelativeExtended(29 downto 0)&"00")+pc_out
signal branch_or_next: std_logic;--branch and ZF
signal jump_address	: std_logic_vector(31 downto 0);--pc_out(31 downto 28) & addressAbsolute & "00"

signal ldfp: std_logic;
signal ldrv: std_logic;
signal addsp:std_logic;
signal push: std_logic;
signal pop:  std_logic;
signal call: std_logic;
signal ret:  std_logic;
signal iret: std_logic;

signal reg_clk: std_logic;--register file clock signal
signal alu_clk: std_logic;--alu clock signal
signal reg_push: std_logic;
signal reg_pop: std_logic;

begin
	
	process(rst,halt,irq,cache_ready,CLK_IN,gating_signal)
	begin--indicates cache is ready or rst => CLK must toggle
		if(rst='1')then
			clk_enable <= '1';
		elsif(falling_edge(CLK_IN))then--cache_ready,halt are stable @ falling_edge(CLK_IN)
			if(cache_ready='1' and halt='1')then--necessary test cache_ready to prevent halt during cache miss (unknown instruction)
				if(irq='1')then
					clk_enable <= '1';
				else
					clk_enable <= '0';
				end if;
			elsif(cache_ready='1')then
				clk_enable <= '1';
			else--if(cache_ready='0')then
				clk_enable <= '0';
			end if;
		end if;
	end process;
	
	CLK <= CLK_IN and clk_enable;
	CLK_rom <= CLK;

	--special purpose registers:
	--FP (frame pointer)
	--PC (program counter)
	--SP (stack pointer, inside program stack)
	--RV (return value)
	--LR (link register)
	FP: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => fp_en,
										D => fp_in,
										Q => fp_out);
	fp_en <= call or ret;
	fp_in <= sp when call='1' else fp_stack_out;
										
	LR: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => call,
										D => lr_in,
										Q => lr_out);
	lr_in <= pc_incremented;
										
	RV: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => ret,
										D => rv_in,
										Q => rv_out);
	rv_in <= program_stack_out;								

	PC: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => '1',
										D => pc_in,
										Q => pc_out);
										
	--instruction_addr <= pc_out;
	instruction_addr <= pc_in;--because now mini_rom is synchronous
	
	--mapped on byte addresses 0x200-0x2ff (bit 9='1'=> stack,bit 9='0'=>external ram)
	program_stack: stack
						generic map (L => STACK_LEVELS_LOG2)
						port map(CLK => CLK,--active edge: rising_edge
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									--STACK INTERFACE
									pop => pop,--(pop: opcode(31..26) rs(25..21) (20..0=>X))
									push => push,--for argument passing (push: opcode(31..26) rs(25..21) (20..0=>X))
									addsp => addsp,
									imm => instruction(STACK_LEVELS_LOG2-1 downto 0),--imm > 0: deletes vars, imm < 0: reserves space for vars
									stack_in => read_data_1,-- word to be pushed
									sp => sp(STACK_LEVELS_LOG2-1 downto 0),-- points to last stacked item (address of a 32-bit word)
									stack_out => program_stack_out,--data retrieved from stack
									--MEMORY-MAPPED INTERFACE
									D => mem_write_data,-- data to be written by memory-mapped interface
									WREN => wren_stack,--write enable for memory-mapped interface
									ADDR => addr_stack(STACK_LEVELS_LOG2-1 downto 0),-- address to be written by memory-mapped interface
									Q    => Q_stack-- data output for memory-mapped interface
							);
	sp(31 downto STACK_LEVELS_LOG2) <= (others=>'0'); 
	addr_stack <= (31 downto STACK_LEVELS_LOG2=>'0') & alu_result(STACK_LEVELS_LOG2+1 downto 2);
	wren_stack <= memWrite and alu_result(N+2);--ADDR_ram(N+2)='1' imply stack (ADDR_ram is generated by ALU)

	fp_stack: stack
						generic map (L => STACK_LEVELS_LOG2)
						port map (CLK => CLK,--active edge: rising_edge
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									--STACK INTERFACE
									pop => ret,
									push => call,
									addsp => '0',
									imm => (others=>'0'),--imm > 0: deletes vars, imm < 0: reserves space for vars
									stack_in => fp_out,-- word to be pushed
									sp => open,-- points to last stacked item (address of a 32-bit word)
									stack_out => fp_stack_out,--data retrieved from stack
									--MEMORY-MAPPED INTERFACE
									D => (others=>'0'),-- data to be written by memory-mapped interface
									WREN => '0',--write enable for memory-mapped interface
									ADDR => (others=>'0'),-- address to be written by memory-mapped interface
									Q    => open-- data output for memory-mapped interface
							);
						
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
	rd <= instruction(15 downto 11);

	writeLoc <=	rd when regDst="01" else
					rt when regDst="00" else
					rs;--only for mflo, mfhi, ldrv, ldfp

	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR NO REGISTRADOR NA BORDA DE DESCIDA
	reg_clk <= CLK;
	reg_pop <= ret;--automatically restores context
	reg_push<= call;--automatically saves context
	register_file: reg_file generic map (L => STACK_LEVELS_LOG2)
									port map (	CLK => reg_clk,
													RST => rst,
													pop => reg_pop,
													push => reg_push,
													read_reg_1 => rs,
													read_reg_2 => rt,
													write_reg  => writeLoc,
													write_data => reg_write_data,
													regWrite => regWrite,
													read_data_1 => read_data_1,
													read_data_2 => read_data_2
											);
											
	alu_clk <= CLK;
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
								
	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR NA MEMÓRIA NA BORDA DE DESCIDA
	ADDR_ram <= alu_result(N+1 downto 2);
	write_data_ram <= mem_write_data;
	rden_ram <= memRead;
	wren_ram <= memWrite and (not alu_result(N+2));--ADDR_ram(N+2)='1' would imply stack (ADDR_ram is generated by ALU)
	vmac_en <= vmac;
	data_memory_output	<= Q_ram when alu_result(N+2)='0' else Q_stack;--ADDR_ram(N+2)='1' would imply stack (ADDR_ram is generated by ALU)
	
	reg_write_data <= data_memory_output when reg_data_src="01" else--for register write
							alu_result when reg_data_src="00" else
							fpu_result when reg_data_src="10" else
							special_registers;
	special_registers <= fp_out when ldfp='1' else
								rv_out when ldrv='1' else
								program_stack_out;--when pop='1'
						
	mem_write_data <= read_data_2 when mem_data_src='1' else
							fpu_result;
												
	pc_incremented <= (pc_out+4);
	branch_address <= (addressRelativeExtended(29 downto 0)&"00")+pc_incremented;
	branch_or_next <= branch and alu_flags.ZF;
	addressAbsolute <= instruction(25 downto 0);
	jump_address <= pc_out(31 downto 28) & addressAbsolute & "00";--TODO: é pc_incremented em vez de pc_out CHECAR
	pc_in <= pc_out when (halt='1' and irq='0') else --keep in current instruction of halt to allow clk_enable update
				jump_address when (jump='1') else--next pc_out if not reset
				branch_address when (branch_or_next='1') else
				pc_out(31 downto 28) & instruction(25 downto 0) & "00" when (call='1') else-- call: opcode(31..26) func_addr(25..0)
				lr_out when (ret='1') else
				pc_incremented;

	--ADDR_rom <= pc_out(9 downto 2);
	ADDR_rom <= pc_in(9 downto 2);--because now mini_rom is synchronous
	instruction <= Q_rom when cache_ready='1' else x"FC00_0000";-- FC00_0000 => nop (bubble)
	
	addressRelative <= instruction(15 downto 0);--valid only on branch instruction
	addressRelativeExtended <= (31 downto 16 => addressRelative(15)) & addressRelative;
	
	aluOp2 <= 	addressRelativeExtended when AluSrc='1' else
					read_data_2;
										
	control: control_unit port map (	instruction => instruction,
												regDst => regDst,
												halt => halt,
												iack => iack,
												branch => branch,
												jump => jump,
												memRead => memRead,
												reg_data_src => reg_data_src,
												mem_data_src => mem_data_src,
--												aluOp => aluOp,
												aluControl => aluControl,
												fpuControl => fpuControl,
												memWrite => memWrite,
												ldfp => ldfp,
												ldrv => ldrv,
												addsp => addsp,
												push => push,
												pop => pop,
												call => call,
												ret => ret,
												iret => iret,
												vmac => vmac,
												lvec => wren_lvec,
												lvec_src => lvec_src,
												lvec_dst_mask => lvec_dst_mask,
												aluSrc => aluSrc,
												regWrite => regWrite);

end proc;

