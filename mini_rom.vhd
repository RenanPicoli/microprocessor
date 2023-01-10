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
32=> x"20840080",
33=> x"20A5005B",
34=> x"AC850020",
35=> x"216B0000",
36=> x"AC8B0040",
37=> x"00A52827",
38=> x"016B5827",
39=> x"20A500E1",
40=> x"AC850021",
41=> x"216B0001",
42=> x"AC8B0043",
43=> x"00A52827",
44=> x"016B5827",
45=> x"20A5008F",
46=> x"AC850022",
47=> x"216B0002",
48=> x"AC8B0041",
49=> x"00A52827",
50=> x"016B5827",
51=> x"20A50071",
52=> x"AC850023",
53=> x"216B0003",
54=> x"AC8B0042",
55=> x"00A52827",
56=> x"016B5827",
57=> x"20000008",
58=> x"20630100",
59=> x"8C6200F3",
60=> x"20E70008",
61=> x"00631827",
62=> x"20630072",
63=> x"8C650000",
64=> x"00A52827",
65=> x"AC650000",
66=> x"00631827",
67=> x"20630068",
68=> x"00A52827",
69=> x"20A50034",
70=> x"AC650000",
71=> x"8C650002",
72=> x"0CA50080",
73=> x"10ABFFFD",
74=> x"D4000095",
75=> x"01AD6827",
76=> x"21AD0100",
77=> x"8DA50032",
78=> x"8DA600F6",
79=> x"00A62824",
80=> x"ADA50032",
81=> x"8DA50032",
82=> x"00631827",
83=> x"20630072",
84=> x"AC650002",
85=> x"8C650000",
86=> x"00A52827",
87=> x"20A50001",
88=> x"AC650000",
89=> x"18000000",
90=> x"08000059",
91=> x"1C000258",
92=> x"00631827",
93=> x"20630020",
94=> x"8C610010",
95=> x"00631827",
96=> x"20630100",
97=> x"8C6600F4",
98=> x"00C10803",
99=> x"CC400000",
100=> x"CC200000",
101=> x"D40000E6",
102=> x"D0200000",
103=> x"8C6600F5",
104=> x"00260801",
105=> x"00631827",
106=> x"20630010",
107=> x"AC610000",
108=> x"00842027",
109=> x"20840071",
110=> x"8C890000",
111=> x"AC690001",
112=> x"DC000000",
113=> x"00631827",
114=> x"20630070",
115=> x"8C680000",
116=> x"00842027",
117=> x"20840010",
118=> x"8C890001",
119=> x"01285002",
120=> x"8C810000",
121=> x"002A0801",
122=> x"00842027",
123=> x"20840040",
124=> x"AC810010",
125=> x"1C000020",
126=> x"3C000000",
127=> x"1C000501",
128=> x"1C000002",
129=> x"00631827",
130=> x"20630073",
131=> x"8C650000",
132=> x"00631827",
133=> x"20630068",
134=> x"AC650001",
135=> x"AC650001",
136=> x"8C6B0000",
137=> x"018C6027",
138=> x"218C0001",
139=> x"016C5825",
140=> x"AC6B0000",
141=> x"18000000",
142=> x"DC000000",
143=> x"00631827",
144=> x"20630068",
145=> x"016B5827",
146=> x"216BFFFE",
147=> x"AC6B0004",
148=> x"DC000000",
149=> x"00631827",
150=> x"20630060",
151=> x"00A52827",
152=> x"20A50134",
153=> x"AC650000",
154=> x"00421027",
155=> x"20420534",
156=> x"00A52827",
157=> x"20A51E00",
158=> x"CCA00000",
159=> x"CC400000",
160=> x"CC600000",
161=> x"D40000D9",
162=> x"00A52827",
163=> x"20A50C77",
164=> x"CCA00000",
165=> x"CC400000",
166=> x"CC600000",
167=> x"D40000D9",
168=> x"00A52827",
169=> x"20A50812",
170=> x"CCA00000",
171=> x"CC400000",
172=> x"CC600000",
173=> x"D40000D9",
174=> x"00A52827",
175=> x"20A50A00",
176=> x"CCA00000",
177=> x"CC400000",
178=> x"CC600000",
179=> x"D40000D9",
180=> x"00A52827",
181=> x"20A50E12",
182=> x"CCA00000",
183=> x"CC400000",
184=> x"CC600000",
185=> x"D40000D9",
186=> x"00A52827",
187=> x"20A51023",
188=> x"CCA00000",
189=> x"CC400000",
190=> x"CC600000",
191=> x"D40000D9",
192=> x"00A52827",
193=> x"20A50451",
194=> x"CCA00000",
195=> x"CC400000",
196=> x"CC600000",
197=> x"D40000D9",
198=> x"00A52827",
199=> x"20A50651",
200=> x"CCA00000",
201=> x"CC400000",
202=> x"CC600000",
203=> x"D40000D9",
204=> x"00A52827",
205=> x"20A51201",
206=> x"CCA00000",
207=> x"CC400000",
208=> x"CC600000",
209=> x"D40000D9",
210=> x"00A52827",
211=> x"20A50C67",
212=> x"CCA00000",
213=> x"CC400000",
214=> x"CC600000",
215=> x"D40000D9",
216=> x"D8000000",
217=> x"C0800000",
218=> x"8C800000",
219=> x"8C810001",
220=> x"8C820002",
221=> x"AC020001",
222=> x"AC010000",
223=> x"18000000",
224=> x"D8000000",
225=> x"00631827",
226=> x"20630060",
227=> x"016B5827",
228=> x"AC6B0004",
229=> x"DC000000",
230=> x"C0400000",
231=> x"8C400000",
232=> x"8C410001",
233=> x"00011802",
234=> x"00A52827",
235=> x"20A50100",
236=> x"8CA400F7",
237=> x"00641824",
238=> x"10640002",
239=> x"CC200000",
240=> x"D8000000",
241=> x"CC000000",
242=> x"D8000000",
243=> x"461C4000",
244=> x"3F000000",
245=> x"40000000",
246=> x"0000FFFF",
247=> x"80000000",
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
