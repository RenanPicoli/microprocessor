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
0=> x"08000043",
1=> x"18000000",
2=> x"08000001",
3=> x"1C000258",
4=> x"00631827",
5=> x"20630020",
6=> x"8C610010",
7=> x"00631827",
8=> x"20630100",
9=> x"8C6600E9",
10=> x"00C10803",
11=> x"CC400000",
12=> x"CC200000",
13=> x"D4000019",
14=> x"D0200000",
15=> x"8C6600EA",
16=> x"00260801",
17=> x"00631827",
18=> x"20630010",
19=> x"AC610000",
20=> x"00842027",
21=> x"20840071",
22=> x"8C890000",
23=> x"AC690001",
24=> x"DC000000",
25=> x"C0400000",
26=> x"8C400000",
27=> x"8C410001",
28=> x"00011802",
29=> x"00A52827",
30=> x"20A50100",
31=> x"8CA400EC",
32=> x"00641824",
33=> x"10640002",
34=> x"CC200000",
35=> x"D8000000",
36=> x"CC000000",
37=> x"D8000000",
38=> x"00631827",
39=> x"20630070",
40=> x"8C680000",
41=> x"00842027",
42=> x"20840010",
43=> x"8C890001",
44=> x"01285002",
45=> x"8C810000",
46=> x"002A0801",
47=> x"00842027",
48=> x"20840040",
49=> x"AC810010",
50=> x"1C000020",
51=> x"3C000000",
52=> x"1C000501",
53=> x"1C000002",
54=> x"00631827",
55=> x"20630073",
56=> x"8C650000",
57=> x"00631827",
58=> x"20630068",
59=> x"AC650001",
60=> x"AC650001",
61=> x"8C6B0000",
62=> x"018C6027",
63=> x"218C0001",
64=> x"016C5825",
65=> x"AC6B0000",
66=> x"DC000000",
67=> x"00000027",
68=> x"00210827",
69=> x"00421027",
70=> x"00631827",
71=> x"00842027",
72=> x"00A52827",
73=> x"00C63027",
74=> x"00E73827",
75=> x"01084027",
76=> x"01294827",
77=> x"014A5027",
78=> x"016B5827",
79=> x"018C6027",
80=> x"01AD6827",
81=> x"01CE7027",
82=> x"01EF7827",
83=> x"02108027",
84=> x"02318827",
85=> x"02529027",
86=> x"02739827",
87=> x"0294A027",
88=> x"02B5A827",
89=> x"02D6B027",
90=> x"02F7B827",
91=> x"0318C027",
92=> x"0339C827",
93=> x"035AD027",
94=> x"037BD827",
95=> x"039CE027",
96=> x"03BDE827",
97=> x"03DEF027",
98=> x"03FFF827",
99=> x"20840080",
100=> x"20A50003",
101=> x"AC850020",
102=> x"216B0000",
103=> x"AC8B0040",
104=> x"00A52827",
105=> x"016B5827",
106=> x"20A500E3",
107=> x"AC850021",
108=> x"216B0001",
109=> x"AC8B0042",
110=> x"00A52827",
111=> x"016B5827",
112=> x"20A50026",
113=> x"AC850023",
114=> x"216B0003",
115=> x"AC8B0041",
116=> x"00A52827",
117=> x"016B5827",
118=> x"20000008",
119=> x"20630100",
120=> x"8C6200E8",
121=> x"20E70008",
122=> x"00631827",
123=> x"20630072",
124=> x"8C650000",
125=> x"00A52827",
126=> x"AC650000",
127=> x"00631827",
128=> x"20630068",
129=> x"00A52827",
130=> x"20A50034",
131=> x"AC650000",
132=> x"8C650002",
133=> x"0CA50080",
134=> x"10ABFFFD",
135=> x"D4000097",
136=> x"01AD6827",
137=> x"21AD0100",
138=> x"8DA50075",
139=> x"8DA600EB",
140=> x"00A62824",
141=> x"ADA50075",
142=> x"8DA50075",
143=> x"00631827",
144=> x"20630072",
145=> x"AC650002",
146=> x"8C650000",
147=> x"00A52827",
148=> x"20A50001",
149=> x"AC650000",
150=> x"08000001",
151=> x"00631827",
152=> x"20630060",
153=> x"00A52827",
154=> x"20A50134",
155=> x"AC650000",
156=> x"00421027",
157=> x"20420534",
158=> x"00A52827",
159=> x"20A51E00",
160=> x"CCA00000",
161=> x"CC400000",
162=> x"CC600000",
163=> x"D40000DB",
164=> x"00A52827",
165=> x"20A50C77",
166=> x"CCA00000",
167=> x"CC400000",
168=> x"CC600000",
169=> x"D40000DB",
170=> x"00A52827",
171=> x"20A50812",
172=> x"CCA00000",
173=> x"CC400000",
174=> x"CC600000",
175=> x"D40000DB",
176=> x"00A52827",
177=> x"20A50A00",
178=> x"CCA00000",
179=> x"CC400000",
180=> x"CC600000",
181=> x"D40000DB",
182=> x"00A52827",
183=> x"20A50E12",
184=> x"CCA00000",
185=> x"CC400000",
186=> x"CC600000",
187=> x"D40000DB",
188=> x"00A52827",
189=> x"20A51023",
190=> x"CCA00000",
191=> x"CC400000",
192=> x"CC600000",
193=> x"D40000DB",
194=> x"00A52827",
195=> x"20A50451",
196=> x"CCA00000",
197=> x"CC400000",
198=> x"CC600000",
199=> x"D40000DB",
200=> x"00A52827",
201=> x"20A50651",
202=> x"CCA00000",
203=> x"CC400000",
204=> x"CC600000",
205=> x"D40000DB",
206=> x"00A52827",
207=> x"20A51201",
208=> x"CCA00000",
209=> x"CC400000",
210=> x"CC600000",
211=> x"D40000DB",
212=> x"00A52827",
213=> x"20A50C67",
214=> x"CCA00000",
215=> x"CC400000",
216=> x"CC600000",
217=> x"D40000DB",
218=> x"D8000000",
219=> x"C0800000",
220=> x"8C800000",
221=> x"8C810001",
222=> x"8C820002",
223=> x"AC020001",
224=> x"AC010000",
225=> x"18000000",
226=> x"D8000000",
227=> x"00631827",
228=> x"20630060",
229=> x"016B5827",
230=> x"AC6B0004",
231=> x"DC000000",
232=> x"461C4000",
233=> x"3F000000",
234=> x"40000000",
235=> x"0000FFFF",
236=> x"80000000",
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
