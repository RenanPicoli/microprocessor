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
33=> x"20A5005B",
34=> x"AC850080",
35=> x"216B0000",
36=> x"AC8B0100",
37=> x"00A52827",
38=> x"016B5827",
39=> x"20A500DF",
40=> x"AC850084",
41=> x"216B0001",
42=> x"AC8B010C",
43=> x"00A52827",
44=> x"016B5827",
45=> x"20A5008D",
46=> x"AC850088",
47=> x"216B0002",
48=> x"AC8B0104",
49=> x"00A52827",
50=> x"016B5827",
51=> x"20A5006F",
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
74=> x"D4000093",
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
85=> x"20C67FFF",
86=> x"00A62824",
87=> x"ADA50000",
88=> x"8DA50000",
89=> x"AC650008",
90=> x"08000051",
91=> x"1C000258",
92=> x"00631827",
93=> x"20630080",
94=> x"8C610040",
95=> x"00631827",
96=> x"20630040",
97=> x"8C660008",
98=> x"00C10803",
99=> x"CC400000",
100=> x"CC200000",
101=> x"D40000E4",
102=> x"D0200000",
103=> x"8C66000C",
104=> x"00260801",
105=> x"AC610010",
106=> x"00842027",
107=> x"208401C4",
108=> x"8C890000",
109=> x"AC690014",
110=> x"DC000000",
111=> x"00631827",
112=> x"206301C0",
113=> x"8C680000",
114=> x"00842027",
115=> x"20840040",
116=> x"8C890014",
117=> x"01285002",
118=> x"8C810010",
119=> x"002A0801",
120=> x"00842027",
121=> x"20840100",
122=> x"AC810040",
123=> x"1C000020",
124=> x"3C000000",
125=> x"1C000501",
126=> x"1C000002",
127=> x"00631827",
128=> x"206301CC",
129=> x"8C650000",
130=> x"00631827",
131=> x"206301A0",
132=> x"AC650004",
133=> x"AC650004",
134=> x"8C6B0000",
135=> x"018C6027",
136=> x"218C0001",
137=> x"016C5825",
138=> x"AC6B0000",
139=> x"18000000",
140=> x"DC000000",
141=> x"00631827",
142=> x"206301A0",
143=> x"016B5827",
144=> x"216BFFFE",
145=> x"AC6B0010",
146=> x"DC000000",
147=> x"00631827",
148=> x"20630180",
149=> x"00A52827",
150=> x"20A50134",
151=> x"AC650000",
152=> x"00421027",
153=> x"20420534",
154=> x"00A52827",
155=> x"20A51E00",
156=> x"CCA00000",
157=> x"CC400000",
158=> x"CC600000",
159=> x"D40000D7",
160=> x"00A52827",
161=> x"20A50C77",
162=> x"CCA00000",
163=> x"CC400000",
164=> x"CC600000",
165=> x"D40000D7",
166=> x"00A52827",
167=> x"20A50812",
168=> x"CCA00000",
169=> x"CC400000",
170=> x"CC600000",
171=> x"D40000D7",
172=> x"00A52827",
173=> x"20A50A00",
174=> x"CCA00000",
175=> x"CC400000",
176=> x"CC600000",
177=> x"D40000D7",
178=> x"00A52827",
179=> x"20A50E12",
180=> x"CCA00000",
181=> x"CC400000",
182=> x"CC600000",
183=> x"D40000D7",
184=> x"00A52827",
185=> x"20A51023",
186=> x"CCA00000",
187=> x"CC400000",
188=> x"CC600000",
189=> x"D40000D7",
190=> x"00A52827",
191=> x"20A50451",
192=> x"CCA00000",
193=> x"CC400000",
194=> x"CC600000",
195=> x"D40000D7",
196=> x"00A52827",
197=> x"20A50651",
198=> x"CCA00000",
199=> x"CC400000",
200=> x"CC600000",
201=> x"D40000D7",
202=> x"00A52827",
203=> x"20A51201",
204=> x"CCA00000",
205=> x"CC400000",
206=> x"CC600000",
207=> x"D40000D7",
208=> x"00A52827",
209=> x"20A50C67",
210=> x"CCA00000",
211=> x"CC400000",
212=> x"CC600000",
213=> x"D40000D7",
214=> x"D8000000",
215=> x"C0800000",
216=> x"8C800000",
217=> x"8C810004",
218=> x"8C820008",
219=> x"AC020004",
220=> x"AC010000",
221=> x"18000000",
222=> x"D8000000",
223=> x"00631827",
224=> x"20630180",
225=> x"016B5827",
226=> x"AC0B0010",
227=> x"DC000000",
228=> x"C0400000",
229=> x"8C400000",
230=> x"8C410004",
231=> x"00011802",
232=> x"00842027",
233=> x"20848000",
234=> x"14840000",
235=> x"94800000",
236=> x"00A52827",
237=> x"20A50002",
238=> x"14850000",
239=> x"94800000",
240=> x"00641824",
241=> x"10640002",
242=> x"CC200000",
243=> x"D8000000",
244=> x"CC000000",
245=> x"D8000000",
246=> x"D8000000",
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
