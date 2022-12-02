--------------------------------------------------
--instruction memory implementation
--by Renan Picoli de Souza
--supports only 32 bit instructions
--(all instructions are word-aligned)
--1024 bytes de ROM (como um I-cache)
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;--to_integer

use std.textio.all;--for file reading
use ieee.std_logic_textio.all;--for reading of std_logic_vectors

use work.my_types.all;--opcode and register "defines"

entity mini_rom is
	port (CLK: in std_logic;--borda de subida para escrita, se desativado, memória é lida
			RST: in std_logic;--asynchronous reset
			--interface de instrução (read-only)
			ADDR_A: in std_logic_vector(7 downto 0);--addr é endereço de byte, mas os Lsb são 00
			Q_A:	out std_logic_vector(31 downto 0);
			--interface de dados (read-write)
			D_B:	in std_logic_vector(31 downto 0);
			ADDR_B: in std_logic_vector(7 downto 0);--addr é endereço de byte, mas os Lsb são 00
			WREN_B: std_logic;
			Q_B:	out std_logic_vector(31 downto 0)
			);
end mini_rom;

architecture memArch of mini_rom is

	signal ADDR_reg_A: std_logic_vector(7 downto 0);--ADDR_A is registered, then it is used to select instruction
	signal ADDR_reg_B: std_logic_vector(7 downto 0);--ADDR_B is registered, then it is used to select instruction

	type memory is array (0 to 255) of std_logic_vector(31 downto 0);
	constant initial_value: memory := (
0=> x"00000027",
1=> x"00210827",
2=> x"00421027",
3=> x"00631827",
4=> x"00842027",
5=> x"00A52827",
6=> x"00C63027",
7=> x"00E73827",
8=> x"01084027",
9=> x"01294827",
10=> x"014A5027",
11=> x"016B5827",
12=> x"018C6027",
13=> x"01AD6827",
14=> x"01CE7027",
15=> x"01EF7827",
16=> x"02108027",
17=> x"02318827",
18=> x"02529027",
19=> x"02739827",
20=> x"0294A027",
21=> x"02B5A827",
22=> x"02D6B027",
23=> x"02F7B827",
24=> x"0318C027",
25=> x"0339C827",
26=> x"035AD027",
27=> x"037BD827",
28=> x"039CE027",
29=> x"03BDE827",
30=> x"03DEF027",
31=> x"03FFF827",
32=> x"20840200",
33=> x"20A5005C",
34=> x"AC850080",
35=> x"216B0000",
36=> x"AC8B0100",
37=> x"00A52827",
38=> x"016B5827",
39=> x"20A500E0",
40=> x"AC850084",
41=> x"216B0001",
42=> x"AC8B010C",
43=> x"00A52827",
44=> x"016B5827",
45=> x"20A5008E",
46=> x"AC850088",
47=> x"216B0002",
48=> x"AC8B0104",
49=> x"00A52827",
50=> x"016B5827",
51=> x"20A50070",
52=> x"AC85008C",
53=> x"216B0003",
54=> x"AC8B0108",
55=> x"00A52827",
56=> x"016B5827",
57=> x"20000008",
58=> x"20630040",
59=> x"8C620000",
60=> x"20E70008",
61=> x"00631827",
62=> x"206301C8",
63=> x"8C650000",
64=> x"00A52827",
65=> x"AC650000",
66=> x"00631827",
67=> x"206301A0",
68=> x"00A52827",
69=> x"20A50034",
70=> x"AC650000",
71=> x"8C650008",
72=> x"0CA50080",
73=> x"10ABFFFD",
74=> x"D4000094",
75=> x"00631827",
76=> x"206301C8",
77=> x"8C650000",
78=> x"00A52827",
79=> x"20A50001",
80=> x"AC650000",
81=> x"18000000",
82=> x"01AD6827",
83=> x"21AD04C8",
84=> x"8DA50000",
85=> x"00C63027",
86=> x"20C67FFF",
87=> x"00A62824",
88=> x"ADA50000",
89=> x"8DA50000",
90=> x"AC650008",
91=> x"08000051",
92=> x"1C000258",
93=> x"00631827",
94=> x"20630080",
95=> x"8C610040",
96=> x"00631827",
97=> x"20630040",
98=> x"8C660008",
99=> x"00C10803",
100=> x"CC400000",
101=> x"CC200000",
102=> x"D40000E5",
103=> x"D0200000",
104=> x"8C66000C",
105=> x"00260801",
106=> x"AC610010",
107=> x"00842027",
108=> x"208401C4",
109=> x"8C890000",
110=> x"AC690014",
111=> x"DC000000",
112=> x"00631827",
113=> x"206301C0",
114=> x"8C680000",
115=> x"00842027",
116=> x"20840040",
117=> x"8C890014",
118=> x"01285002",
119=> x"8C810010",
120=> x"002A0801",
121=> x"00842027",
122=> x"20840100",
123=> x"AC810040",
124=> x"1C000020",
125=> x"3C000000",
126=> x"1C000501",
127=> x"1C000002",
128=> x"00631827",
129=> x"206301CC",
130=> x"8C650000",
131=> x"00631827",
132=> x"206301A0",
133=> x"AC650004",
134=> x"AC650004",
135=> x"8C6B0000",
136=> x"018C6027",
137=> x"218C0001",
138=> x"016C5825",
139=> x"AC6B0000",
140=> x"18000000",
141=> x"DC000000",
142=> x"00631827",
143=> x"206301A0",
144=> x"016B5827",
145=> x"216BFFFE",
146=> x"AC6B0010",
147=> x"DC000000",
148=> x"00631827",
149=> x"20630180",
150=> x"00A52827",
151=> x"20A50134",
152=> x"AC650000",
153=> x"00421027",
154=> x"20420534",
155=> x"00A52827",
156=> x"20A51E00",
157=> x"CCA00000",
158=> x"CC400000",
159=> x"CC600000",
160=> x"D40000D8",
161=> x"00A52827",
162=> x"20A50C77",
163=> x"CCA00000",
164=> x"CC400000",
165=> x"CC600000",
166=> x"D40000D8",
167=> x"00A52827",
168=> x"20A50812",
169=> x"CCA00000",
170=> x"CC400000",
171=> x"CC600000",
172=> x"D40000D8",
173=> x"00A52827",
174=> x"20A50A00",
175=> x"CCA00000",
176=> x"CC400000",
177=> x"CC600000",
178=> x"D40000D8",
179=> x"00A52827",
180=> x"20A50E12",
181=> x"CCA00000",
182=> x"CC400000",
183=> x"CC600000",
184=> x"D40000D8",
185=> x"00A52827",
186=> x"20A51023",
187=> x"CCA00000",
188=> x"CC400000",
189=> x"CC600000",
190=> x"D40000D8",
191=> x"00A52827",
192=> x"20A50451",
193=> x"CCA00000",
194=> x"CC400000",
195=> x"CC600000",
196=> x"D40000D8",
197=> x"00A52827",
198=> x"20A50651",
199=> x"CCA00000",
200=> x"CC400000",
201=> x"CC600000",
202=> x"D40000D8",
203=> x"00A52827",
204=> x"20A51201",
205=> x"CCA00000",
206=> x"CC400000",
207=> x"CC600000",
208=> x"D40000D8",
209=> x"00A52827",
210=> x"20A50C67",
211=> x"CCA00000",
212=> x"CC400000",
213=> x"CC600000",
214=> x"D40000D8",
215=> x"D8000000",
216=> x"C0800000",
217=> x"8C800000",
218=> x"8C810004",
219=> x"8C820008",
220=> x"AC020004",
221=> x"AC010000",
222=> x"18000000",
223=> x"D8000000",
224=> x"00631827",
225=> x"20630180",
226=> x"016B5827",
227=> x"AC0B0010",
228=> x"DC000000",
229=> x"C0400000",
230=> x"8C400000",
231=> x"8C410004",
232=> x"00011802",
233=> x"00842027",
234=> x"20848000",
235=> x"14840000",
236=> x"94800000",
237=> x"00A52827",
238=> x"20A50002",
239=> x"14850000",
240=> x"94800000",
241=> x"00641824",
242=> x"10640002",
243=> x"CC200000",
244=> x"D8000000",
245=> x"CC000000",
246=> x"D8000000",
247=> x"D8000000",
others=> x"00000000"
	);
	signal rom: memory := initial_value;

	begin
		--output behaviour:
		--necessary turn Auto ROM Replacement on
		process(CLK,RST,ADDR_A)
		begin
--			if(RST='1')then
--				ADDR_reg_A <= (others=>'0');
			if(rising_edge(CLK))then
--				ADDR_reg_A <= ADDR_A;				
				Q_A <= rom(to_integer(unsigned(ADDR_A)));
			end if;
		end process;
		--surprisingly, the design also works with the synchronous reading logic (ram inferrence)
--		Q_A <= rom(to_integer(unsigned(ADDR_reg_A)));
--		Q_A <= rom(to_integer(unsigned(ADDR_A)));
		
		process(CLK,RST,ADDR_B,WREN_B)
		begin
--			if(RST='1')then
--				ADDR_reg_B <= (others=>'0');
--				rom <= initial_value;
--			elsif(rising_edge(CLK) and WREN_B='1')then
			if(rising_edge(CLK))then
--				ADDR_reg_B <= ADDR_B;
				if(WREN_B='1')then
					rom(to_integer(unsigned(ADDR_B))) <= D_B;
				end if;
				Q_B <= rom(to_integer(unsigned(ADDR_B)));
			end if;
		end process;		
		--surprisingly, the design also works with the synchronous reading logic (ram inferrence)
--		Q_B <= rom(to_integer(unsigned(ADDR_reg_B)));
--		Q_B <= rom(to_integer(unsigned(ADDR_B)));
end memArch;
