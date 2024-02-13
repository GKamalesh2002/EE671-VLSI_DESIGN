library IEEE;
use IEEE.std_logic_1164.all;
--library work;--
--use work.Gates.all;--

entity brentkung is
    port(
        a,b: in std_logic_vector(31 downto 0);
        s: out std_logic_vector(31 downto 0);
        cout: out std_logic;
        cin: in std_logic
    );
end entity;

architecture behave of brentkung is
	signal p0,g0: std_logic_vector(31 downto 0);
	signal p1,g1: std_logic_vector(15 downto 0);
	signal p2,g2: std_logic_vector(7 downto 0);
	signal p3,g3: std_logic_vector(3 downto 0);
	signal p4,g4: std_logic_vector(1 downto 0);
	signal p5,g5: std_logic;
   signal c: std_logic_vector(32 downto 0);
component andgate is
    port (A, B: in std_logic;
    prod: out std_logic);
end component;

component xorgate is
    port (A, B: in std_logic;
    uneq: out std_logic);
end component;

component abcgate is
    port (A, B, C: in std_logic;
    abc: out std_logic);
end component abcgate;

component Cin_map_G is
    port(A, B, Cin: in std_logic;
    Bit0_G: out std_logic);
end component Cin_map_G;

begin
	-- generate p0 signals--
	xor_gates_p0: for i in 0 to 31 generate
		xor_i: xorgate port map(A => a(i),B => b(i),uneq => p0(i));
	end generate xor_gates_p0;
	
	-- generate g0 signals--
	and_gates_g0: for i in 1 to 31 generate
		and_i: andgate port map(A => a(i),B => b(i),prod => g0(i));
	end generate and_gates_g0;

	--generate g for rightmost block from c0--
	cmapg: Cin_map_G port map(A => a(0),B => b(0),Cin => cin,Bit0_G => g0(0));
	
	--set the first carry as the value g1_0
    c(1) <= g0(0);
	 
	--generate g1 signals--
	abc_gates_g1: for i in 0 to 15 generate
		abc_i: abcgate port map(A => g0(2*i+1),B => p0(2*i+1),C => g0(2*i),abc => g1(i));
	end generate abc_gates_g1;
	
	--generate p1 signals--
	and_gates_p1: for i in 0 to 15 generate
		and_i: andgate port map(A => p0(2*i+1),B => p0(2*i),prod => p1(i));
	end generate and_gates_p1;
	
	--generate g2 signals--
	abc_gates_g2: for i in 0 to 7 generate
		abc_i: abcgate port map(A => g1(2*i+1),B => p1(2*i+1),C => g1(2*i),abc => g2(i));
	end generate abc_gates_g2;
	
	--generate p2 signals--
	and_gates_p2: for i in 0 to 7 generate
		and_i: andgate port map(A => p1(2*i+1),B => p1(2*i),prod => p2(i));
	end generate and_gates_p2;
	
	--generate g3 signals--
	abc_gates_g3: for i in 0 to 3 generate
		abc_i: abcgate port map(A => g2(2*i+1),B => p2(2*i+1),C => g2(2*i),abc => g3(i));
	end generate abc_gates_g3;
	
	--generate p3 signals--
	and_gates_p3: for i in 0 to 3 generate
		and_i: andgate port map(A => p2(2*i+1),B => p2(2*i),prod => p3(i));
	end generate and_gates_p3;
	
	--generate g4 signals--
	abc_gates_g4: for i in 0 to 1 generate
		abc_i: abcgate port map(A => g3(2*i+1),B => p3(2*i+1),C => g3(2*i),abc => g4(i));
	end generate abc_gates_g4;
	
	--generate p4 signals--
	and_gates_p4: for i in 0 to 1 generate
		and_i: andgate port map(A => p3(2*i+1),B => p3(2*i),prod => p4(i));
	end generate and_gates_p4;
	
	--generate g5 signals--
	abc_gates_g5: abcgate port map(A => g4(1),B => p4(1),C => g4(0), abc => g5);
	
	--generate p5 signal--
	and_gates_p5: andgate port map(A => p4(1),B => p4(0), prod => p5);
	
	--generate the carry outputs--
	--second slot--
	abc_c2: abcgate port map(A => g1(1),B => p1(1),C => cin,abc => c(2));
	--third slot
	abc_c3: abcgate port map(A => g0(2),B => p0(2),C => c(2),abc => c(3));
	abc_c4: abcgate port map(A => g2(0),B => p2(0),C => cin,abc => c(4));
	--fourth slot
	abc_c5: abcgate port map(A => g0(4),B => p0(4),C => c(4),abc => c(5));
	abc_c6: abcgate port map(A => g1(2),B => p0(2),C => c(4),abc => c(6));
	abc_c8: abcgate port map(A => g3(0),B => p3(0),C => cin,abc => c(8));
	--fifth slot
	abc_c7: abcgate port map(A => g0(6),B => p0(6),C => c(6),abc => c(7));
	abc_c9: abcgate port map(A => g0(8),B => p0(8),C => c(8),abc => c(9));
	abc_c10: abcgate port map(A => g1(4),B => p1(4),C => c(8),abc => c(10));
	abc_c12: abcgate port map(A => g2(2),B => p2(2), C => c(8),abc => c(12));
	abc_c16: abcgate port map(A => g4(0),B => p4(0),C => cin,abc => c(16));
	--sixth slot
	abc_c11: abcgate port map(A => g0(10),B => p0(10),C => c(10),abc => c(11));
	abc_c13: abcgate port map(A => g0(12),B => p0(12),C => c(12),abc => c(13));
	abc_c14: abcgate port map(A => g1(6),B => p1(6),C => c(12),abc => c(14));
	abc_c17: abcgate port map(A => g0(16),B => p0(16),C => c(16),abc => c(17));
	abc_c18: abcgate port map(A => g1(8),B => p1(8),C => c(16),abc => c(18));
	abc_c20: abcgate port map(A => g2(4),B => p2(4),C => c(16),abc => c(20));
	abc_c24: abcgate port map(A => g3(2),B => p3(2),C => c(16),abc => c(24));
	abc_c32: abcgate port map(A => g5,B => p5,C => cin,abc => c(32));
	--seventh slot--
	abc_c15: abcgate port map(A => g0(14),B => p0(14),C => c(14),abc => c(15));
	abc_c19: abcgate port map(A => g0(18),B => p0(18),C => c(18),abc => c(19));
	abc_c21: abcgate port map(A => g0(20),B => p0(20),C => c(20),abc => c(21));
	abc_c22: abcgate port map(A => g1(10),B => p1(10),C => c(20),abc => c(22));
	abc_c25: abcgate port map(A => g0(24),B => p0(24),C => c(24),abc => c(25));
	abc_c26: abcgate port map(A => g1(12),B => p1(12),C => c(24),abc => c(26));
	abc_c28: abcgate port map(A => g2(6),B => p2(6),C => c(24),abc => c(28));
	--eigth slot--
	abc_c23: abcgate port map(A => g0(22),B => p0(22),C => c(22),abc => c(23));
	abc_c27: abcgate port map(A => g0(26),B => p0(26),C => c(26),abc => c(27));
	abc_c29: abcgate port map(A => g0(28),B => p0(28),C => c(28),abc => c(29));
	abc_c30: abcgate port map(A => g1(14),B => p1(14),C => c(28),abc => c(30));
	--nineth slot:
	abc_c31: abcgate port map(A => g0(30),B => p0(30),C => c(30),abc => c(31));
	
	--Generating the sum signals--
	sum_xors: for i in 0 to 31 generate
		sum_xor_i: xorgate port map(A => p0(i),B => c(i),uneq => s(i));
	end generate sum_xors;
	
	    --carry out and carry in--
    c(0) <= cin;
    cout <= c(32);
end behave;
	
	
	
	
		
	
	
	
	
	
	
	