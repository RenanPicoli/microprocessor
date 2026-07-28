library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.all;

entity testbench is
end testbench;

architecture test of testbench is
-- "Time" that will elapse between test vectors we submit to the component.
constant TIME_DELTA : time := 250 ns;

signal  CLK_IN: std_logic := '0';
signal	rst: std_logic := '1';

signal	ready: std_logic;
signal	irq: std_logic := '0';
signal	iack: std_logic;
signal	ISR_addr: std_logic_vector(31 downto 0) := (others => '0');

signal	clk_out: std_logic;
signal	dbg_data_0: std_logic_vector(31 downto 0) := (others => '0');
signal	dbg_data_1: std_logic_vector(31 downto 0) := (others => '0');
signal	dbg_data_2: std_logic_vector(31 downto 0);
signal	dbg_sr: std_logic := '0';
signal	dbg_gr: std_logic := '0';
signal	dbg_sm: std_logic := '0';
signal	dbg_gm: std_logic := '0';
signal	dbg_brk: std_logic := '0';
signal	dbg_inj: std_logic := '0';
signal	dbg_nxt: std_logic := '0';
signal	dbg_cont: std_logic := '0';
signal	dbg_irq: std_logic := '0';
signal	dbg_iack: std_logic;
signal	dbg_next_pc: std_logic_vector(31 downto 0);

signal	ADDR_rom: std_logic_vector(31 downto 0);
signal	CLK_rom: std_logic;
signal	Q_rom: std_logic_vector(31 downto 0) := (others => '0');
signal	i_cache_ready: std_logic := '0';

signal	ADDR_ram: std_logic_vector(31 downto 0);
signal	write_data_ram: std_logic_vector(31 downto 0) := (others => '0');
signal	rden_ram: std_logic := '0';
signal	wren_ram: std_logic := '0';
signal	d_cache_ready: std_logic := '0';
signal	wren_lvec: std_logic := '0';
signal	lvec_src: std_logic_vector(2 downto 0) := (others => '0');
signal	lvec_dst_mask: std_logic_vector(7 downto 0) := (others => '0');
signal	vmac_en: std_logic := '0';
signal	Q_ram: std_logic_vector(31 downto 0) := (others => '0');

    type rom_array is array (0 to 1023) of std_logic_vector(31 downto 0);
    signal rom_mem : rom_array := (others => (others => '0'));

begin

	DUT: entity work.microprocessor
	port map(
		CLK_IN => CLK_IN,
		rst => rst,
		ready => ready,
		irq => irq,
		iack => iack,
		ISR_addr => ISR_addr,
		clk_out => clk_out,
		dbg_data_0 => dbg_data_0,
		dbg_data_1 => dbg_data_1,
		dbg_data_2 => dbg_data_2,
		dbg_sr => dbg_sr,
		dbg_gr => dbg_gr,
		dbg_sm => dbg_sm,
		dbg_gm => dbg_gm,
		dbg_brk => dbg_brk,
		dbg_inj => dbg_inj,
		dbg_nxt => dbg_nxt,
		dbg_cont => dbg_cont,
		dbg_irq => dbg_irq,
		dbg_iack => dbg_iack,
		dbg_next_pc => dbg_next_pc,
		ADDR_rom => ADDR_rom,
		CLK_rom => CLK_rom,
		Q_rom => Q_rom,
		i_cache_ready => i_cache_ready,
		ADDR_ram => ADDR_ram,
		write_data_ram => write_data_ram,
		rden_ram => rden_ram,
		wren_ram => wren_ram,
		d_cache_ready => d_cache_ready,
		wren_lvec => wren_lvec,
		lvec_src => lvec_src,
		lvec_dst_mask => lvec_dst_mask,
		vmac_en => vmac_en,
		Q_ram => Q_ram
	);

	ROM_FILE_LOAD: process
	    file instr_file : text open read_mode is "executable.bin";
	    variable instr_line : line;
	    variable instr_word : std_logic_vector(31 downto 0);
	    variable addr_idx : integer := 0;
	begin
	    wait for 0 ns;
	    while not endfile(instr_file) loop
	        readline(instr_file, instr_line);
	        hread(instr_line, instr_word);
	        if addr_idx <= rom_mem'high then
	            rom_mem(addr_idx) <= instr_word;
	        end if;
	        addr_idx := addr_idx + 1;
	    end loop;
	    wait;
	end process ROM_FILE_LOAD;

	ROM_READ: process(CLK_rom)
	    variable addr_idx : integer;
	begin
	    if rising_edge(CLK_rom) then
	        addr_idx := to_integer(unsigned(ADDR_rom));
	        if addr_idx >= 0 and addr_idx <= rom_mem'high then
	            Q_rom <= rom_mem(addr_idx);
	        else
	            Q_rom <= (others => '0');
	        end if;
	    end if;
	end process ROM_READ;

	CLOCK: process
	begin
		CLK_IN <= '0';
		wait for TIME_DELTA;
		CLK_IN <= '1';
		wait for TIME_DELTA;
	end process CLOCK;
	
	rst <= '1', '0' after 15 ns;
	
end architecture test;