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
port (CLK_IN: in std_logic;
		rst: in std_logic;
		ready: out std_logic;--processor is ready (for new IRQs), clk_enable, synchronized to falling edge of CLK_IN
		irq: in std_logic;--interrupt request
		iack: out std_logic;--interrupt acknowledgement
		ISR_addr: in std_logic_vector (31 downto 0);--address for interrupt handler, loaded when irq is asserted, it is valid one clock cycle after the IRQ detection
		------CPU DEBUG ITFC---------
        clk_out: out std_logic;--same as CPU clock (might be extended by processor during memory reading/writing)
        dbg_data_0: inout std_logic_vector(31 downto 0);-- instructions, value for writes, value for reading
        dbg_data_1: in std_logic_vector(31 downto 0);--address for memory access, register for reg_file access
		dbg_sr: in std_logic;-- set register enable
		dbg_gr: in std_logic;-- get register enable
		dbg_sm: in std_logic;-- set memory enable
		dbg_gm: in std_logic;-- get memory enable
		dbg_brk: in std_logic;--instruction break
		dbg_inj: in std_logic;--inject instruction
		dbg_nxt: in std_logic;--next instruction
		dbg_cont: in std_logic;--continue instruction
		dbg_irq: in std_logic;-- debug irq
		dbg_iack: out std_logic;--clears stop error/data_received/data_sent flags
		dbg_next_pc: out std_logic_vector(31 downto 0);-- TODO: monitor PC (pc_in) for breakpoints
		-----ROM----------
		ADDR_rom: out std_logic_vector(31 downto 0);--addr é endereço de word
		CLK_rom: out std_logic;--clock for mini_rom (is like moving a PC register duplicate to i_cache)
		Q_rom:	in std_logic_vector(31 downto 0);
		i_cache_ready: in std_logic;--indicates i_cache is ready (Q_rom is valid), synchronous to rising_edge(CLK_IN)
		-----RAM-----------
		ADDR_ram: out std_logic_vector(31 downto 0);--WORD ADDRESS
		write_data_ram: out std_logic_vector(31 downto 0);
		rden_ram: out std_logic;--enables read on ram
		wren_ram: out std_logic;--enables write on ram
		d_cache_ready: in std_logic;--indicates d_cache is ready (Q_ram is valid), synchronous to rising_edge(CLK_IN)
		wren_lvec: out std_logic;--enables load vector: loads vector of 8 std_logic_vector in parallel
		lvec_src: out std_logic_vector(2 downto 0);--a single source address for lvec
		lvec_dst_mask: out std_logic_vector(7 downto 0);--mask for destination(s) address(es) for lvec
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
			stack_CLK: in std_logic;--if a miss occurs, there will be no falling_edge(CLK) during the cycle of valid instruction
			RST: in std_logic;
			pop: in std_logic;--pops from ALL registers stacks
			push: in std_logic;--pushes to ALL registers stacks
			read_reg_1: in std_logic_vector (4 downto 0);--reg1 addr
			read_reg_2: in std_logic_vector (4 downto 0);--reg2 addr
			write_reg : in std_logic_vector (4 downto 0);--reg to be written like in R_type or pop
			write_data: in std_logic_vector (31 downto 0);--data to be written like in R_type or pop
			regWrite: in std_logic;--enables SINGLE register write like in R_type or pop (during clock rising edge)
			read_data_1:out std_logic_vector (31 downto 0);
			read_data_2:out std_logic_vector (31 downto 0)
			);
end component;

component alu is
	port(	A:	in std_logic_vector(31 downto 0);
			B:	in std_logic_vector(31 downto 0);
			shamt:	in std_logic_vector(4 downto 0);--unsigned
			Sel:	in std_logic_vector(3 downto 0);
			shift_direction: in std_logic;--'1': shift right (instead of shift left)
			shift_mode: in std_logic;--'1': arithmetic shift (instead of logic shift)
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
			lui: out std_logic;
			addsp: out std_logic;
			push: out std_logic;
			pop: out  std_logic;
			call: out std_logic;
			ret: out  std_logic;
			iret: out std_logic;
			callr: out std_logic;
			vmac: out std_logic;--multiply-accumulate
			lvec: out std_logic;--load vector: loads vector of 8 std_logic_vector in parallel
			lvecr: out std_logic;--variant of lvec, takes arguments from registers
			shift_src: out std_logic;--'1': use rt
			shift_direction: out std_logic;--'1': shift right (instead of shift left)
			shift_mode: out std_logic;--'1': arithmetic shift (instead of logic shift)
			aluSrc: out std_logic_vector(1 downto 0);
			regWrite: out std_logic
			);
end component;

--pure stack
component stack
generic(L: natural);--log2 of number of stored words
port (CLK: in std_logic;--active edge: rising_edge
		rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge of CLK)
		ready: buffer std_logic;
		--STACK INTERFACE
		pop: in std_logic;
		push: in std_logic;
		addsp: in std_logic;--sp <- sp + imm
		imm: in std_logic_vector(L-1 downto 0);--imm > 0: deletes vars, imm < 0: reserves space for vars
		stack_in: in std_logic_vector(31 downto 0);-- word to be pushed
		sp: buffer std_logic_vector(L-1 downto 0);-- points to last stacked item (address of a 32-bit word)
		stack_out: out std_logic_vector(31 downto 0)--data retrieved from stack
);
end component;

--memory-mapped stack
component mm_stack
generic(L: natural);--log2 of number of stored words
port (CLK: in std_logic;--active edge: rising_edge, there MUST be a falling_edge even when recovering from a cache miss
		rst: in std_logic;-- active high asynchronous reset (should be deasserted at rising_edge of CLK)
		ready: buffer std_logic;-- for both interfaces
		--STACK INTERFACE
		pop: in std_logic;
		push: in std_logic;
		addsp: in std_logic;--sp <- sp + imm
		imm: in std_logic_vector(L downto 0);--imm(L) > 0: deletes vars, imm(L) < 0: reserves space for vars
		stack_in: in std_logic_vector(31 downto 0);-- word to be pushed
		sp: buffer std_logic_vector(L-1 downto 0);-- points to last stacked item (address of a 32-bit word)
		stack_out: out std_logic_vector(31 downto 0);--data retrieved from stack
		--MEMORY-MAPPED INTERFACE
		D: in std_logic_vector(31 downto 0);-- data to be written by memory-mapped interface
		WREN: in std_logic;--write enable for memory-mapped interface
		RDEN: in std_logic;--read enable for memory-mapped interface
		ADDR: in std_logic_vector(L-1 downto 0);-- address to be written by memory-mapped interface
		Q:		out std_logic_vector(31 downto 0)-- data output for memory-mapped interface
);
end component;

component stack_protector
  generic(L: natural);--log2 of number of stored words
  port(
		CLK:in std_logic;--processor clock
		rst: in std_logic;
		---------------------------------
		--memory-mapped itfc monitoring--
		rs: in std_logic_vector(4 downto 0);
		full_ADDR_ram: in std_logic_vector(31 downto 0);--BYTE ADDRESS, addr_stack
		lw: in std_logic;
		sw: in std_logic;
		ldfp: in std_logic;
		call: in std_logic;
		ret: in std_logic;
		irq: in std_logic;
		iret: in std_logic;
		oor: out std_logic;--'1' address is out of range
		---------------------------------
		----stack specific monitoring----
		sp: in std_logic_vector(L-1 downto 0);--stack pointer, WORD address
		push: in std_logic;
		pop: in std_logic;
		addsp: in std_logic;
		imm: in std_logic_vector(L downto 0);--imm(L) > 0: deletes vars, imm(L) < 0: reserves space for vars
		ovf: out std_logic;--'1': stack overflow
		unf: out std_logic;--'1': stack underflow
		--------------------
		ready_stack: out std_logic--'0' will freeze cpu
);
end component;

signal CLK: std_logic;
signal CLK_rom_en: std_logic;--enables clock for i_cache
signal pc_in: 	std_logic_vector (31 downto 0);--next PC value
signal pc_en: std_logic;
signal pc_in_no_irq: std_logic_vector (31 downto 0);-- pc_in if there is no IRQin this cycle
signal pc_out: std_logic_vector (31 downto 0) := (others => '0');
signal fp_in: 	std_logic_vector (31 downto 0);
signal fp_en: 	std_logic;
signal fp_out: std_logic_vector (31 downto 0) := (others => '0');
signal fp_stack_pop: std_logic;
signal fp_stack_push:std_logic;
signal fp_stack_out: std_logic_vector (31 downto 0) := (others => '0');
signal lr_in: 	std_logic_vector (31 downto 0);
signal lr_en: 	std_logic;
signal lr_out: std_logic_vector (31 downto 0) := (others => '0');
signal lr_stack_pop: std_logic;
signal lr_stack_push: std_logic;
signal lr_stack_ready: std_logic;
signal lr_stack_out: std_logic_vector (31 downto 0) := (others => '0');
signal rv_in: 	std_logic_vector (31 downto 0);
signal rv_out: std_logic_vector (31 downto 0) := (others => '0');
signal sp: std_logic_vector(31 downto 0);
signal program_stack_out: std_logic_vector (31 downto 0) := (others => '0');
signal addr_stack: std_logic_vector (31 downto 0) := (others => '0');
signal wren_stack: std_logic;
signal rden_stack: std_logic;
signal accessing_stack: std_logic;
signal ready_stack: std_logic;
signal Q_stack: std_logic_vector (31 downto 0) := (others => '0');
constant STACK_LEVELS_LOG2: natural := 4;--for GPR's, FP and LR
constant PROGRAM_STACK_LEVELS_LOG2: natural := 10;--for program_stack

signal mm_stack_oor: std_logic;
signal mm_stack_ovf: std_logic;
signal mm_stack_unf: std_logic;
signal mm_stack_fault: std_logic;
signal mm_stack_CLK: std_logic;
signal mm_stack_CLK_en: std_logic;

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
signal lvec: std_logic;
signal lvecr: std_logic;
signal aluSrc: std_logic_vector(1 downto 0);
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
signal shamt_or_rt: std_logic_vector (4 downto 0);--shamt for ALU comes from shamt field or from rt(4:0)
signal shift_src: std_logic;--'1': use rt
signal shift_direction: std_logic;--'1': shift right (instead of shift left)
signal shift_mode: std_logic;--'1': arithmetic shift (instead of logic shift)
signal funct: std_logic_vector (5 downto 0);
signal addressRelative: std_logic_vector (15 downto 0);--for load,store,branch
signal addressAbsolute: std_logic_vector (25 downto 0);--for jumps
signal addressRelativeSignExtended: std_logic_vector (31 downto 0);--addressRelative after sign extension
signal addressRelativeZeroExtended: std_logic_vector (31 downto 0);--addressRelative after zero extension
signal lui_immediate: std_logic_vector (31 downto 0);--addressRelative after sll 16

signal data_memory_output: std_logic_vector (31 downto 0);
signal special_values: std_logic_vector (31 downto 0);
signal instruction: std_logic_vector (31 downto 0);--next instruction to execute
signal alu_flags: eflags;--flags da ALU
signal fpu_flags: std_logic_vector(31 downto 0);--flags da FPU
signal muxNextInstrOutput: std_logic_vector (31 downto 0);
signal pc_incremented: std_logic_vector (31 downto 0);--pc+4
signal branch_address: std_logic_vector (31 downto 0);--(addressRelativeSignExtended(29 downto 0)&"00")+pc_out
signal branch_or_next: std_logic;--branch and ZF
signal jump_address	: std_logic_vector(31 downto 0);--pc_out(31 downto 28) & addressAbsolute & "00"
signal full_ADDR_ram: std_logic_vector (31 downto 0);

signal ldfp: std_logic;
signal ldrv: std_logic;
signal lui: std_logic;
signal addsp:std_logic;
signal push: std_logic;
signal pop:  std_logic;
signal call: std_logic;
signal ret:  std_logic;
signal iret: std_logic;
signal callr: std_logic;

signal reg_clk: std_logic;--register file clock signal
signal alu_clk: std_logic;--alu clock signal
signal reg_push: std_logic;
signal reg_pop: std_logic;

signal dbg_nxt_delayed: std_logic;-- dbg_nxt delayed by one CLK_IN period
signal dbg_gm_extended: std_logic := '0';-- extended if there is a miss or acess to memory not ready
signal dbg_sm_extended: std_logic := '0';-- extended if there is a miss or acess to memory not ready
signal dbg_inj_extended: std_logic := '0';-- extended if there is a miss or acess to memory not ready

begin

	ready <= clk_enable;
	accessing_stack <= rden_stack or wren_stack or push or pop;
	
	process(rst,CLK_IN,dbg_nxt)
	begin
		if(rst='1')then
			dbg_nxt_delayed <='0';
		elsif(rising_edge(CLK_IN))then
			dbg_nxt_delayed <=dbg_nxt;
		end if;
	end process;
	
	process(rst,halt,irq, i_cache_ready,d_cache_ready,ready_stack,accessing_stack,
				CLK_IN,lr_stack_push,lr_stack_pop,lr_stack_ready,mm_stack_fault,
				dbg_irq,dbg_brk,dbg_cont,dbg_nxt,dbg_nxt_delayed,dbg_sr,dbg_gr,dbg_inj,
				dbg_gm,dbg_gm_extended,dbg_sm,dbg_sm_extended,dbg_inj_extended)
	begin--indicates cache is ready or rst => CLK must toggle
		if(rst='1')then
			clk_enable <= '1';
		elsif(falling_edge(CLK_IN))then--i_cache_ready,halt,irq are stable @ falling_edge(CLK_IN)
			if(dbg_irq='1')then
				if(dbg_brk='1' or dbg_nxt_delayed='1')then
					clk_enable <= '0';
				elsif(dbg_nxt='1' or dbg_cont='1' or dbg_gr='1' or dbg_sr='1')then
					clk_enable <= '1';
				end if;
			elsif(mm_stack_fault='1')then--mm_stack_fault='1' implies irrecoverable fault like overflow, invalid stack address
				--MUST REMAIN FROZEN UNTIL RESET
				clk_enable <= '0';
			elsif((d_cache_ready='0' and accessing_stack='0') or
				(ready_stack='0' and accessing_stack='1'))then
				clk_enable <= '0';
			--necessary to check if i_cache_ready='1' so that current instruction be executed
			--if i_cache_ready='0' and irq='1', interrupt controller must keep IRQ asserted
			elsif(i_cache_ready='1' and halt ='1' and (irq='1' or dbg_irq='1'))then
				clk_enable <= '1';--irq/dbg_irq wakes up processor from halt
			elsif(halt='1')then--halt='1' implies instruction valid (i_cache_ready='1')
				clk_enable <= '0';
			elsif(i_cache_ready='1' and ((d_cache_ready='1' and accessing_stack='0') or (ready_stack='1' and accessing_stack='1')))then
				clk_enable <= '1';
			elsif(lr_stack_ready='0' and (lr_stack_pop='1' or lr_stack_push='1'))then
				clk_enable <= '0';
			else--if(i_cache_ready='0' or d_cache_ready='0')then
				clk_enable <= '0';
			end if;
		end if;
	end process;
	
	CLK <= CLK_IN and clk_enable;
	clk_out <= CLK;
	
	process(rst,halt,irq,i_cache_ready,d_cache_ready,ready_stack,accessing_stack,
				CLK_IN,lr_stack_push,lr_stack_pop,lr_stack_ready,mm_stack_fault,
				dbg_irq,dbg_brk,dbg_cont,dbg_nxt,dbg_nxt_delayed,dbg_sr,dbg_gr,dbg_inj,
				dbg_gm,dbg_gm_extended,dbg_sm,dbg_sm_extended,dbg_inj_extended)
	begin--indicates cache is ready or rst => CLK must toggle
		if(rst='1')then
			CLK_rom_en <= '1';
		elsif(falling_edge(CLK_IN))then--i_cache_ready,halt,irq are stable @ falling_edge(CLK_IN)
			if(dbg_irq='1')then
				if(dbg_brk='1'or dbg_nxt_delayed='1')then
					CLK_rom_en <= '0';
				elsif(dbg_nxt='1' or dbg_cont='1')then
					CLK_rom_en <= '1';
				end if;
			elsif(mm_stack_fault='1')then--mm_stack_fault='1' implies irrecoverable fault like overflow, invalid stack address
				--MUST REMAIN FROZEN UNTIL RESET
				CLK_rom_en <= '0';
			elsif(i_cache_ready='1' and
				((d_cache_ready='0' and accessing_stack='0') or
				(ready_stack='0' and accessing_stack='1')))then--miss apenas no d_cache, esperar o dado para continuar o programa
				CLK_rom_en <= '0';
			--necessary to check if i_cache_ready='1' so that current instruction be executed
			--if i_cache_ready='0' and irq='1', interrupt controller must keep IRQ asserted
			elsif(i_cache_ready='1' and halt ='1' and irq='1')then
				CLK_rom_en <= '1';--irq wakes up processor from halt
			elsif(halt='1')then--halt='1' implies instruction valid (i_cache_ready='1')
				CLK_rom_en <= '0';
			elsif(i_cache_ready='1' and ((d_cache_ready='1' and accessing_stack='0') or (ready_stack='1' and accessing_stack='1')))then
				CLK_rom_en <= '1';
			elsif(lr_stack_ready='0' and (lr_stack_pop='1' or lr_stack_push='1'))then
				CLK_rom_en <= '0';
			elsif(i_cache_ready='0')then--miss no i_cache, continuar o CLK_rom para buscar a instruction
				CLK_rom_en <= '1';
--			else--miss apenas no d_cache, esperar o dado para continuar o programa
--				CLK_rom_en <= '0';
			end if;
		end if;
	end process;
	CLK_rom <= CLK_IN and CLK_rom_en;

	--special purpose registers:
	--FP (frame pointer)
	--PC (program counter)
	--SP (stack pointer, inside program stack)
	--RV (return value)
	--LR (link register)
	--FP must receive 0xfffffffc on reset (top of stack)
   FP: process(CLK,rst,fp_en,fp_in)
   begin
		if (rst='1') then
			fp_out <= x"FFFF_FFFC";
		elsif (rising_edge(CLK) and fp_en = '1') then
			fp_out <= fp_in;
		end if;
   end process;
--	FP: d_flip_flop port map (	CLK => CLK,
--										RST => rst,
--										ENA => fp_en,
--										D => fp_in,
--										Q => fp_out);
	fp_en <= call or callr or irq or ret or iret;
	fp_in <= sp when (call='1' or callr='1' or irq='1') else fp_stack_out;--this SP value was converted to byte address
										
	LR: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => lr_en,
										D => lr_in,
										Q => lr_out);
	lr_en <= call or callr or irq or ret or iret;
	lr_in <= lr_stack_out when (ret='1' or iret='1') else
				pc_incremented when (call='1' or callr='1') else
				pc_in_no_irq;--when irq='1', this points to the instruction that was "preempted" by IRQ
										
	RV: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => ret,-- DO NOT use iret, because ISR should not return values
										D => rv_in,
										Q => rv_out);
	rv_in <= program_stack_out;
	
	--PC should not update during i-cache misses or debug instructions to:
	--inject instruction, get memory, set memory, get register or set register
	pc_en <= i_cache_ready and (not dbg_gm_extended) and
				(not dbg_sm_extended) and (not dbg_inj_extended) and (not dbg_sr) and (not dbg_gr);
	PC: d_flip_flop port map (	CLK => CLK,
										RST => rst,
										ENA => pc_en,
										D => pc_in,
										Q => pc_out);
	
	mm_stack_CLK_en_p: process(rst,CLK_IN,mm_stack_fault)
	begin
		if(rst='1')then
			mm_stack_CLK_en <= '1';
		elsif(falling_edge(CLK_IN))then
			if(mm_stack_fault='1')then
				mm_stack_CLK_en <= '0';
			else
				mm_stack_CLK_en <= '1';
			end if;
		end if;
	end process;
	
	mm_stack_CLK <= CLK_IN and mm_stack_CLK_en;
	--mapped on last 2^L word addresses (0xffffffff-2^L+1)-0xffffffff (bit 9='1'=> stack,bit 9='0'=>external ram)
	program_stack: mm_stack
						generic map (L => PROGRAM_STACK_LEVELS_LOG2)
						--USING CLK_IN because if a miss occurs, there will be no falling_edge(CLK)
						--during the cycle of valid instruction (i_cache_ready='1')
						port map(CLK => mm_stack_CLK,--active edge: rising_edge, there MUST be a falling_edge even when recovering from a cache miss
															  --stack clock will be frozen only when a stack fault occurs
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									ready => ready_stack,
									--STACK INTERFACE
									pop => pop,--(pop: opcode(31..26) rs(25..21) (20..0=>X))
									push => push,--for argument passing (push: opcode(31..26) rs(25..21) (20..0=>X))
									addsp => addsp,
									--ignores 2 LSb of immediate in instruction, because sp is word address, processor deals with byte addresses
									imm => instruction(PROGRAM_STACK_LEVELS_LOG2+2 downto 2),--imm(L) > 0: deletes vars, imm(L) < 0: reserves space for vars
									stack_in => read_data_1,-- word to be pushed
									sp => sp(PROGRAM_STACK_LEVELS_LOG2+1 downto 2),-- points to last stacked item (address of a 32-bit word)
									stack_out => program_stack_out,--data retrieved from stack
									--MEMORY-MAPPED INTERFACE
									D => mem_write_data,-- data to be written by memory-mapped interface
									WREN => wren_stack,--write enable for memory-mapped interface
									RDEN => rden_stack,
									ADDR => addr_stack(PROGRAM_STACK_LEVELS_LOG2-1 downto 0),-- address to be written by memory-mapped interface
									Q    => Q_stack-- data output for memory-mapped interface
							);
	sp(1 downto 0) <= "00";
	sp(31 downto PROGRAM_STACK_LEVELS_LOG2+2) <= (others=>'1');--converte para a faixa de enderecos destinada a program_stack

	addr_stack <= (31 downto PROGRAM_STACK_LEVELS_LOG2=>'0') & full_ADDR_ram(PROGRAM_STACK_LEVELS_LOG2+1 downto 2);
	wren_stack <= '1' when (memWrite='1' and 
						full_ADDR_ram(31 downto PROGRAM_STACK_LEVELS_LOG2+2)=(31 downto PROGRAM_STACK_LEVELS_LOG2+2=>'1'))
						else '0';--ADDR_ram(N)='1' imply stack (ADDR_ram is generated by ALU)
	rden_stack <= '1' when (memRead='1' and 
						full_ADDR_ram(31 downto PROGRAM_STACK_LEVELS_LOG2+2)=(31 downto PROGRAM_STACK_LEVELS_LOG2+2=>'1'))
						else '0';--ADDR_ram(N)='1' imply stack (ADDR_ram is generated by ALU)

	sck_pu: stack_protector
	generic map(L=>PROGRAM_STACK_LEVELS_LOG2)--log2 of number of stored words
	port map(
		CLK=>CLK_IN,
		rst=>rst,
		---------------------------------
		--memory-mapped itfc monitoring--
		rs=>rs,
		full_ADDR_ram=>full_ADDR_ram,--BYTE ADDRESS
		lw=>memRead,
		sw=>memWrite,
		ldfp=>ldfp,
		call=>call or callr,
		ret=>ret,
		irq=>irq,
		iret=>iret,
		oor=>mm_stack_oor,--'1' address is out of range
		---------------------------------
		----stack specific monitoring----
		sp => sp(PROGRAM_STACK_LEVELS_LOG2+1 downto 2),--stack pointer, WORD address
		push => push,
		pop => pop,
		addsp => addsp,
		imm => instruction(PROGRAM_STACK_LEVELS_LOG2+2 downto 2),--imm(L) > 0: deletes vars, imm(L) < 0: reserves space for vars
		ovf => mm_stack_ovf,--'1': stack overflow
		unf => mm_stack_unf,--'1': stack underflow
		--------------------
		ready_stack=> open--'0' will freeze cpu
	);
	mm_stack_fault <= mm_stack_oor or mm_stack_ovf or mm_stack_unf;
  
	fp_stack_pop <= ret or iret;
	fp_stack_push<= call or callr or irq;
	fp_stack: stack
						generic map (L => STACK_LEVELS_LOG2)
						--USING CLK_IN because if a miss occurs, there will be no falling_edge(CLK)
						--during the cycle of valid instruction (i_cache_ready='1')
						port map(CLK => CLK_IN,--active edge: rising_edge
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									ready=> open,
									--STACK INTERFACE
									pop => fp_stack_pop,
									push => fp_stack_push,
									addsp => '0',
									imm => (others=>'0'),--imm > 0: deletes vars, imm < 0: reserves space for vars
									stack_in => fp_out,-- word to be pushed
									sp => open,-- points to last stacked item (address of a 32-bit word)
									stack_out => fp_stack_out--data retrieved from stack
							);

	lr_stack_pop <= ret or iret;
	lr_stack_push<= call or callr or irq;
	lr_stack: stack
						generic map (L => STACK_LEVELS_LOG2)
						--USING CLK_IN because if a miss occurs, there will be no falling_edge(CLK)
						--during the cycle of valid instruction (i_cache_ready='1')
						port map(CLK => CLK_IN,--active edge: rising_edge
									rst => rst,-- active high asynchronous reset (should be deasserted at rising_edge)
									ready => lr_stack_ready,
									--STACK INTERFACE
									pop => lr_stack_pop,
									push => lr_stack_push,
									addsp => '0',
									imm => (others=>'0'),--imm > 0: deletes vars, imm < 0: reserves space for vars
									stack_in => lr_out,-- word to be pushed
									sp => open,-- points to last stacked item (address of a 32-bit word)
									stack_out => lr_stack_out--data retrieved from stack
							);
						
	rs 	<= instruction(25 downto 21);
	rt 	<= instruction(20 downto 16);
	rd		<= instruction(15 downto 11);
	shamt	<= instruction(10 downto 6);

	writeLoc <=	rd when regDst="01" else
					rt when regDst="00" else
					rs;--only for mflo, mfhi, ldrv, ldfp

	--MINHA ESTRATEGIA É EXECUTAR CÁLCULOS NA SUBIDA DE CLK E GRAVAR NO REGISTRADOR NA BORDA DE DESCIDA
	reg_clk <= CLK;
	reg_pop <= ret or iret;--automatically restores context
	reg_push<= call or callr or irq;--automatically saves context
	register_file: reg_file generic map (L => STACK_LEVELS_LOG2)
									port map (	CLK => reg_clk,									
													stack_CLK=> CLK_IN,--if a miss occurs, there will be no falling_edge(CLK) during the cycle of valid instruction
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
											
	shamt_or_rt <= read_data_2(4 downto 0) when (shift_src='1') else shamt;--rt for sllv/srlv/srav, for shrl/shll/shra is shamt
	alu_clk <= CLK;
	arith_logic_unity: alu port map ( 	A => read_data_1,
													B => aluOp2,
													shamt => shamt_or_rt,--shamt for ALU comes from shamt field or from read_data_2(4:0) (rt)
													sel => aluControl,
													shift_direction=> shift_direction,
													shift_mode=> shift_mode,
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
	full_ADDR_ram <= read_data_1 + addressRelativeSignExtended;--byte address
	ADDR_ram <= "00" & full_ADDR_ram(31 downto 2);--WORD ADDRESS
	
	write_data_ram <= mem_write_data;
	rden_ram <= '1' when memRead='1' and
					full_ADDR_ram(31 downto PROGRAM_STACK_LEVELS_LOG2+2)/=(31 downto PROGRAM_STACK_LEVELS_LOG2+2=>'1')
					else '0';--ADDR_ram(N)='1' would imply stack (ADDR_ram is generated by ALU)
	wren_ram <= '1' when memWrite='1' and
					full_ADDR_ram(31 downto PROGRAM_STACK_LEVELS_LOG2+2)/=(31 downto PROGRAM_STACK_LEVELS_LOG2+2=>'1')
					else '0';--ADDR_ram(N)='1' would imply stack (ADDR_ram is generated by ALU)
	vmac_en <= vmac;
	data_memory_output	<= Q_ram when full_ADDR_ram(31 downto PROGRAM_STACK_LEVELS_LOG2+2)/=(31 downto PROGRAM_STACK_LEVELS_LOG2+2=>'1')
									else Q_stack;--ADDR_ram(N)='1' would imply stack (ADDR_ram is generated by ALU)
	
	reg_write_data <= data_memory_output when reg_data_src="01" else--for register write
							alu_result when reg_data_src="00" else
							fpu_result when reg_data_src="10" else
							special_values;
	special_values <= fp_out when ldfp='1' else
							rv_out when ldrv='1' else
							lui_immediate when lui='1' else
							program_stack_out;--when pop='1'
						
	mem_write_data <= read_data_2 when mem_data_src='1' else
							fpu_result;
												
	pc_incremented <= (pc_out+4);
	branch_address <=  (addressRelativeSignExtended(29 downto 0)&"00")+pc_incremented;
	branch_or_next <= branch and alu_flags.ZF;
	addressAbsolute <= instruction(25 downto 0);
	jump_address <= pc_out(31 downto 28) & addressAbsolute & "00";--TODO: é pc_incremented em vez de pc_out CHECAR
	
	pc_in_no_irq <=(others=>'0') when rst='1' else				
--						pc_out when (halt='1') else --repeat current instruction (halt) because i_cache won't stop
						jump_address when (jump='1') else--next pc_out if not reset
						branch_address when (branch_or_next='1') else
						pc_out(31 downto 28) & instruction(25 downto 0) & "00" when (call='1') else-- call: opcode(31..26) func_WORD_addr(25..0)
						read_data_1 when (callr='1') else
						lr_out when (ret='1' or iret='1') else
						pc_incremented;
				
	-- irq is equivalent to "call ISR_addr", EXCEPT that ISR_addr is a byte address
	pc_in <= pc_out(31 downto 26) & ISR_addr(25 downto 0) when (irq='1') else
				pc_in_no_irq;
				
--	ADDR_rom <= pc_out(7 downto 0);
	ADDR_rom <= "00" & pc_out(31 downto 2) when halt='1' and irq='0'else-- i_cache keeps running and need to repeat halt instruction
					"00" & pc_in(31 downto 2);-- when halt='0' or irq='1' because now mini_rom and i_cache are synchronous
					
					
	instruction <=	dbg_data_0 when dbg_inj_extended='1' else
					Q_rom when i_cache_ready='1' else
					x"FC00_0000";-- FC00_0000 => nop (bubble)
	
	addressRelative <= instruction(15 downto 0);--valid only on branch instruction
	addressRelativeSignExtended <= (31 downto 16 => addressRelative(15)) & addressRelative;
	addressRelativeZeroExtended <= (31 downto 16 => '0') & addressRelative;
	lui_immediate <= instruction(15 downto 0) & (15 downto 0 => '0');
	
	aluOp2 <= 	addressRelativeSignExtended when aluSrc="01" else
					addressRelativeZeroExtended when aluSrc="10" else
					read_data_2;--aluSrc="00"
										
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
												lui  => lui,
												addsp => addsp,
												push => push,
												pop => pop,
												call => call,
												ret => ret,
												iret => iret,
												callr => callr,
												vmac => vmac,
												lvec => lvec,
												lvecr=> lvecr,
												shift_src=> shift_src,
												shift_direction=> shift_direction,
												shift_mode=> shift_mode,
												aluSrc => aluSrc,
												regWrite => regWrite);

	wren_lvec <= lvec or lvecr;
	lvec_src <= 	instruction(10 downto 8) when lvec='1' else
					read_data_1(2 downto 0) when lvecr='1' else
					(others=>'0');
	lvec_dst_mask <= instruction(7 downto 0) when lvec='1' else
					read_data_2(7 downto 0) when lvecr='1' else
					(others=>'0');

end proc;

