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
33=> x"20A50056",
34=> x"AC850080",
35=> x"216B0000",
36=> x"AC8B0100",
37=> x"00A52827",
38=> x"016B5827",
39=> x"20A500DA",
40=> x"AC850084",
41=> x"216B0001",
42=> x"AC8B010C",
43=> x"00A52827",
44=> x"016B5827",
45=> x"20A50088",
46=> x"AC850088",
47=> x"216B0002",
48=> x"AC8B0104",
49=> x"00A52827",
50=> x"016B5827",
51=> x"20A5006A",
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
74=> x"D400008E",
75=> x"00631827",
76=> x"206301C8",
77=> x"8C650000",
78=> x"00A52827",
79=> x"20A50001",
80=> x"AC650000",
81=> x"18000000",
82=> x"00A52827",
83=> x"20A5FFFF",
84=> x"AC650010",
85=> x"08000051",
86=> x"1C000258",
87=> x"00631827",
88=> x"20630080",
89=> x"8C610040",
90=> x"00631827",
91=> x"20630040",
92=> x"8C660008",
93=> x"00C10803",
94=> x"CC400000",
95=> x"CC200000",
96=> x"D40000DF",
97=> x"D0200000",
98=> x"8C66000C",
99=> x"00260801",
100=> x"AC610010",
101=> x"00842027",
102=> x"208401C4",
103=> x"8C890000",
104=> x"AC690014",
105=> x"DC000000",
106=> x"00631827",
107=> x"206301C0",
108=> x"8C680000",
109=> x"00842027",
110=> x"20840040",
111=> x"8C890014",
112=> x"01285002",
113=> x"8C810010",
114=> x"002A0801",
115=> x"00842027",
116=> x"20840100",
117=> x"AC810040",
118=> x"1C000020",
119=> x"3C000000",
120=> x"1C000501",
121=> x"1C000002",
122=> x"00631827",
123=> x"206301CC",
124=> x"8C650000",
125=> x"00631827",
126=> x"206301A0",
127=> x"AC650004",
128=> x"AC650004",
129=> x"8C6B0000",
130=> x"018C6027",
131=> x"218C0001",
132=> x"016C5825",
133=> x"AC6B0000",
134=> x"18000000",
135=> x"DC000000",
136=> x"00631827",
137=> x"206301A0",
138=> x"016B5827",
139=> x"216BFFFE",
140=> x"AC6B0010",
141=> x"DC000000",
142=> x"00631827",
143=> x"20630180",
144=> x"00A52827",
145=> x"20A50134",
146=> x"AC650000",
147=> x"00421027",
148=> x"20420534",
149=> x"00A52827",
150=> x"20A51E00",
151=> x"CCA00000",
152=> x"CC400000",
153=> x"CC600000",
154=> x"D40000D2",
155=> x"00A52827",
156=> x"20A50C77",
157=> x"CCA00000",
158=> x"CC400000",
159=> x"CC600000",
160=> x"D40000D2",
161=> x"00A52827",
162=> x"20A50812",
163=> x"CCA00000",
164=> x"CC400000",
165=> x"CC600000",
166=> x"D40000D2",
167=> x"00A52827",
168=> x"20A50A00",
169=> x"CCA00000",
170=> x"CC400000",
171=> x"CC600000",
172=> x"D40000D2",
173=> x"00A52827",
174=> x"20A50E12",
175=> x"CCA00000",
176=> x"CC400000",
177=> x"CC600000",
178=> x"D40000D2",
179=> x"00A52827",
180=> x"20A51023",
181=> x"CCA00000",
182=> x"CC400000",
183=> x"CC600000",
184=> x"D40000D2",
185=> x"00A52827",
186=> x"20A50451",
187=> x"CCA00000",
188=> x"CC400000",
189=> x"CC600000",
190=> x"D40000D2",
191=> x"00A52827",
192=> x"20A50651",
193=> x"CCA00000",
194=> x"CC400000",
195=> x"CC600000",
196=> x"D40000D2",
197=> x"00A52827",
198=> x"20A51201",
199=> x"CCA00000",
200=> x"CC400000",
201=> x"CC600000",
202=> x"D40000D2",
203=> x"00A52827",
204=> x"20A50C67",
205=> x"CCA00000",
206=> x"CC400000",
207=> x"CC600000",
208=> x"D40000D2",
209=> x"D8000000",
210=> x"C0800000",
211=> x"8C800000",
212=> x"8C810004",
213=> x"8C820008",
214=> x"AC020004",
215=> x"AC010000",
216=> x"18000000",
217=> x"D8000000",
218=> x"00631827",
219=> x"20630180",
220=> x"016B5827",
221=> x"AC0B0010",
222=> x"DC000000",
223=> x"C0400000",
224=> x"8C400000",
225=> x"8C410004",
226=> x"00011802",
227=> x"00842027",
228=> x"20848000",
229=> x"14840000",
230=> x"94800000",
231=> x"00A52827",
232=> x"20A50002",
233=> x"14850000",
234=> x"94800000",
235=> x"00641824",
236=> x"10640002",
237=> x"CC200000",
238=> x"D8000000",
239=> x"CC000000",
240=> x"D8000000",
241=> x"D8000000",
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
