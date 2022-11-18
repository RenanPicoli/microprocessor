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
33=> x"20A50057",
34=> x"AC850080",
35=> x"216B0000",
36=> x"AC8B0100",
37=> x"00A52827",
38=> x"016B5827",
39=> x"20A500DB",
40=> x"AC850084",
41=> x"216B0001",
42=> x"AC8B010C",
43=> x"00A52827",
44=> x"016B5827",
45=> x"20A50089",
46=> x"AC850088",
47=> x"216B0002",
48=> x"AC8B0104",
49=> x"00A52827",
50=> x"016B5827",
51=> x"20A5006B",
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
74=> x"D400008F",
75=> x"00631827",
76=> x"206301C8",
77=> x"8C650000",
78=> x"00A52827",
79=> x"20A50001",
80=> x"AC650000",
81=> x"18000000",
82=> x"00A52827",
83=> x"20A50132",
84=> x"8CA50000",
85=> x"AC650010",
86=> x"08000051",
87=> x"1C000258",
88=> x"00631827",
89=> x"20630080",
90=> x"8C610040",
91=> x"00631827",
92=> x"20630040",
93=> x"8C660008",
94=> x"00C10803",
95=> x"CC400000",
96=> x"CC200000",
97=> x"D40000E0",
98=> x"D0200000",
99=> x"8C66000C",
100=> x"00260801",
101=> x"AC610010",
102=> x"00842027",
103=> x"208401C4",
104=> x"8C890000",
105=> x"AC690014",
106=> x"DC000000",
107=> x"00631827",
108=> x"206301C0",
109=> x"8C680000",
110=> x"00842027",
111=> x"20840040",
112=> x"8C890014",
113=> x"01285002",
114=> x"8C810010",
115=> x"002A0801",
116=> x"00842027",
117=> x"20840100",
118=> x"AC810040",
119=> x"1C000020",
120=> x"3C000000",
121=> x"1C000501",
122=> x"1C000002",
123=> x"00631827",
124=> x"206301CC",
125=> x"8C650000",
126=> x"00631827",
127=> x"206301A0",
128=> x"AC650004",
129=> x"AC650004",
130=> x"8C6B0000",
131=> x"018C6027",
132=> x"218C0001",
133=> x"016C5825",
134=> x"AC6B0000",
135=> x"18000000",
136=> x"DC000000",
137=> x"00631827",
138=> x"206301A0",
139=> x"016B5827",
140=> x"216BFFFE",
141=> x"AC6B0010",
142=> x"DC000000",
143=> x"00631827",
144=> x"20630180",
145=> x"00A52827",
146=> x"20A50134",
147=> x"AC650000",
148=> x"00421027",
149=> x"20420534",
150=> x"00A52827",
151=> x"20A51E00",
152=> x"CCA00000",
153=> x"CC400000",
154=> x"CC600000",
155=> x"D40000D3",
156=> x"00A52827",
157=> x"20A50C77",
158=> x"CCA00000",
159=> x"CC400000",
160=> x"CC600000",
161=> x"D40000D3",
162=> x"00A52827",
163=> x"20A50812",
164=> x"CCA00000",
165=> x"CC400000",
166=> x"CC600000",
167=> x"D40000D3",
168=> x"00A52827",
169=> x"20A50A00",
170=> x"CCA00000",
171=> x"CC400000",
172=> x"CC600000",
173=> x"D40000D3",
174=> x"00A52827",
175=> x"20A50E12",
176=> x"CCA00000",
177=> x"CC400000",
178=> x"CC600000",
179=> x"D40000D3",
180=> x"00A52827",
181=> x"20A51023",
182=> x"CCA00000",
183=> x"CC400000",
184=> x"CC600000",
185=> x"D40000D3",
186=> x"00A52827",
187=> x"20A50451",
188=> x"CCA00000",
189=> x"CC400000",
190=> x"CC600000",
191=> x"D40000D3",
192=> x"00A52827",
193=> x"20A50651",
194=> x"CCA00000",
195=> x"CC400000",
196=> x"CC600000",
197=> x"D40000D3",
198=> x"00A52827",
199=> x"20A51201",
200=> x"CCA00000",
201=> x"CC400000",
202=> x"CC600000",
203=> x"D40000D3",
204=> x"00A52827",
205=> x"20A50C67",
206=> x"CCA00000",
207=> x"CC400000",
208=> x"CC600000",
209=> x"D40000D3",
210=> x"D8000000",
211=> x"C0800000",
212=> x"8C800000",
213=> x"8C810004",
214=> x"8C820008",
215=> x"AC020004",
216=> x"AC010000",
217=> x"18000000",
218=> x"D8000000",
219=> x"00631827",
220=> x"20630180",
221=> x"016B5827",
222=> x"AC0B0010",
223=> x"DC000000",
224=> x"C0400000",
225=> x"8C400000",
226=> x"8C410004",
227=> x"00011802",
228=> x"00842027",
229=> x"20848000",
230=> x"14840000",
231=> x"94800000",
232=> x"00A52827",
233=> x"20A50002",
234=> x"14850000",
235=> x"94800000",
236=> x"00641824",
237=> x"10640002",
238=> x"CC200000",
239=> x"D8000000",
240=> x"CC000000",
241=> x"D8000000",
242=> x"D8000000",
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
