--------------------------------------------------
--data memory implementation
--by Renan Picoli de Souza
--(all data are 32bits wide)
--16KB de RAM matricial (como um D-cache)
--(2x32)x(2x32) registradores de 4 bytes (32 bits)
---------------------------------------------------
--don't know what they are, I'm only including them
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

---------------------------------------------------

entity data_mem is
	port (	D:	in std_logic_vector(31 downto 0);--data to be written
				CLK:	in std_logic;
				ADDR: in std_logic_vector(31 downto 0);
				MemWrite: in std_logic;
				MemRead:  in std_logic;
				Q:	out std_logic_vector(31 downto 0)
			);
end data_mem;

architecture memArch of data_mem is
	component d_flip_flop
		port (D:	in std_logic_vector(31 downto 0);
				CLK:in std_logic;
				Q:	out std_logic_vector(31 downto 0)  
				);
	end component;

--	component mux32x32--escolhe qual registrador é lido
--		port(	A: in array32 (0 to 31);
--				sel: in std_logic_vector(4 downto 0);--5 bits to select one in 32 registers
--				Q: out std_logic_vector (31 downto 0)
--				);
--	end component;
	
	component demux1x32 is--permite rotear o chip select para o elemento correto com base no endereco
		port(	Q: out std_logic_vector (31 downto 0) := (others => '0');--sinais que habilitam escrita para cada registrador
				sel: in std_logic_vector(4 downto 0);--5 bits to select 32 channels
				A: in std_logic--sinal regWrite
				);
	end component;

	type memory is array (integer range <>,integer range <>) of std_logic_vector(31 downto 0);
	signal register_Q: memory (0 to 63, 0 to 63) := (others => (others => (others => 'Z')));
	signal out_demux_column_0: std_logic_vector (31 downto 0);
	signal out_demux_column_1: std_logic_vector (31 downto 0);
	signal out_demux_column:	std_logic_vector (63 downto 0);
	signal out_demux_line_0: 	std_logic_vector (31 downto 0);
	signal out_demux_line_1: 	std_logic_vector (31 downto 0);
	signal out_demux_line:		std_logic_vector (63 downto 0);

	begin
	--estrutura matricial
	--bits 1:0 de ADDR não são usados (palavras de 32 bits)
	--6 bits de ADDR selecionam 64 colunas (bits 7:2)
	--6 bits de ADDR selecionam 64 linhas (bits 13:8)
	--demais bits não devem ser usados
	demux_column_0: demux1x32 port map (Q => out_demux_column_0, sel => ADDR(6 downto 2), A => CLK and MemWrite and not ADDR(7));
	demux_column_1: demux1x32 port map (Q => out_demux_column_1, sel => ADDR(6 downto 2), A => CLK and MemWrite and ADDR(7));
	demux_line_0: demux1x32 port map (Q => out_demux_line_0, sel => ADDR(12 downto 8), A => CLK and MemWrite and not ADDR(13));
	demux_line_1: demux1x32 port map (Q => out_demux_line_1, sel => ADDR(12 downto 8), A => CLK and MemWrite and ADDR(13));

	out_demux_column <= out_demux_column_1 & out_demux_column_0;
	out_demux_line <= out_demux_line_1 & out_demux_line_0;
	
	lines: for i in 0 to 63 generate
		columns: for j in 0 to 63 generate
			regx: d_flip_flop port map(D => D,
												CLK =>out_demux_line(i) and 
														out_demux_column(j),
												Q => register_Q(i,j));
		end generate columns;	
	end generate lines;
	
	--output behaviour:
	Q <= register_Q(to_integer(unsigned(ADDR(13 downto 8))),to_integer(unsigned(ADDR(7 downto 2)))) when (MemRead='1')
			else (others=>'Z');
end memArch;