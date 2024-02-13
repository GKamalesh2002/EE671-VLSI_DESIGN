library IEEE;
use IEEE.std_logic_1164.all;

entity mac is 
    -- perform ab + c --
    port(
        a, b: in std_logic_vector(15 downto 0);
        c: in std_logic_vector(31 downto 0);
        s: out std_logic_vector(31 downto 0);
        cout: out std_logic
    );
end entity;

architecture behave of mac is
	 component andgate is
        port (a, b: in std_logic;
        prod: out std_logic);
    end component;

    component fa is 
        port(
            a,b,cin: in std_logic;
            s,cout: out std_logic
        );
    end component;

    component ha is
        port(
            a,b: in std_logic;
            s, c: out std_logic
        );
    end component;

    component brentkung is
        port(
            a,b: in std_logic_vector(31 downto 0);
            s: out std_logic_vector(31 downto 0);
            cout: out std_logic;
            cin: in std_logic
        );
    end component;
	 
	 -- LOW signal for carry in of Brent Kung Adder--
    signal gnd_sig: std_logic := '0';

    -- layer 1 signal declarations--
    -- we make rows corresponding to the first layer--
    signal layer1_r1: std_logic_vector(31 downto 0);
    signal layer1_r2: std_logic_vector(15 downto 0);
    signal layer1_r3: std_logic_vector(16 downto 1);
    signal layer1_r4: std_logic_vector(17 downto 2);
    signal layer1_r5: std_logic_vector(18 downto 3);
    signal layer1_r6: std_logic_vector(19 downto 4);
    signal layer1_r7: std_logic_vector(20 downto 5);
    signal layer1_r8: std_logic_vector(21 downto 6);
    signal layer1_r9: std_logic_vector(22 downto 7);
	 signal layer1_r10: std_logic_vector(23 downto 8);
	 signal layer1_r11: std_logic_vector(24 downto 9);
	 signal layer1_r12: std_logic_vector(25 downto 10);
	 signal layer1_r13: std_logic_vector(26 downto 11);
	 signal layer1_r14: std_logic_vector(27 downto 12);
	 signal layer1_r15: std_logic_vector(28 downto 13);
	 signal layer1_r16: std_logic_vector(29 downto 14);
	 signal layer1_r17: std_logic_vector(30 downto 15);

    -- signals for connections--
    signal wires: std_logic_vector(419 downto 0);
    
    -- final sum argument signals--
    -- first argument (top row of final layer)--
    signal arg1: std_logic_vector(31 downto 0);
    -- second argument (bottom row of final layer)--
    signal arg2: std_logic_vector(31 downto 0);

begin
    -- set first row as 32 bit sum--
    layer1_r1 <= c;

    -- [a1 a2 a3 ... a16] is the 16x16 array of AND gates--
    -- accordingly set the subsequent signals for other rows-- 
    a1: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(0), prod => layer1_r2(i)); 
    end generate a1;

    a2: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(1), prod => layer1_r3(i + 1)); 
    end generate a2;

    a3: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(2), prod => layer1_r4(i + 2)); 
    end generate a3;

    a4: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(3), prod => layer1_r5(i + 3)); 
    end generate a4;
    
    a5: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(4), prod => layer1_r6(i + 4)); 
    end generate a5;

    a6: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(5), prod => layer1_r7(i + 5)); 
    end generate a6;
    
    a7: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(6), prod => layer1_r8(i + 6)); 
    end generate a7;
    
    a8: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(7), prod => layer1_r9(i + 7)); 
    end generate a8;
	 
	 a9: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(8), prod => layer1_r10(i + 8)); 
    end generate a9;
	 
	 a10: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(9), prod => layer1_r11(i + 9)); 
    end generate a10;
	 
	 a11: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(10), prod => layer1_r12(i + 10)); 
    end generate a11;
	 
	 a12: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(11), prod => layer1_r13(i + 11)); 
    end generate a12;
	 
	 a13: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(12), prod => layer1_r14(i + 12)); 
    end generate a13;
	 
	 a14: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(13), prod => layer1_r15(i + 13)); 
    end generate a14;
	 
	 a15: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(14), prod => layer1_r16(i + 14)); 
    end generate a15;
	 
	 a16: for i in 0 to 15 generate
        and_i: andgate port map(a => b(i), b => a(15), prod => layer1_r17(i + 15)); 
    end generate a16;

    -- connections are made column wise as per the diagram--
	 --column 1--
	 arg1(0) <= layer1_r1(0);
	 arg2(0) <= layer1_r2(0);
	 
	 --Column 2--
	 ha1: ha port map(a => layer1_r1(1),b => layer1_r2(1),s => arg1(1),c => arg2(2));
	 arg2(1) <= layer1_r3(1);
	 
	 --Column 3--
	 ha2: ha port map(a => layer1_r1(2),b => layer1_r2(2),s => wires(0),c => wires(1));
	 fa1: fa port map(a => wires(0),b => layer1_r3(2),cin => layer1_r4(2),s => arg1(2),cout => arg2(3));
	 
	 --Column 4--
	 ha3: ha port map(a => layer1_r1(3),b => layer1_r2(3),s => wires(2),c => wires(3));
	 fa2: fa port map(a => wires(2),b => layer1_r3(3),cin => layer1_r4(3),s => wires(4),cout => wires(5));
	 fa3: fa port map(a => wires(4),b => wires(1),cin => layer1_r5(3),s => arg1(3),cout => arg2(4));
	 
	 --Column 5--
	 fa4: fa port map(a => layer1_r1(4),b => layer1_r2(4),cin => layer1_r3(4),s => wires(6),cout => wires(7));
	 ha4: ha port map(a => layer1_r4(4),b => layer1_r5(4),s => wires(8),c => wires(9));
	 fa5: fa port map(a => wires(6),b => wires(3),cin => wires(8),s => wires(10),cout => wires(11));
	 fa6: fa port map(a => wires(10),b => wires(5),cin => layer1_r6(4),s => arg1(4),cout => arg2(5));
	 
	 --Column 6--
	 ha5: ha port map(a => layer1_r1(5),b => layer1_r2(5),s => wires(12),c => wires(13));
	 fa7: fa port map(a => wires(12),b => layer1_r3(5),cin => layer1_r4(5),s => wires(14),cout => wires(15));
	 fa8: fa port map(a => layer1_r5(5),b => layer1_r6(5),cin => layer1_r7(5),s => wires(16),cout => wires(17));
	 fa9: fa port map(a => wires(14),b => wires(7),cin => wires(16),s => wires(18),cout => wires(19));
	 fa10: fa port map(a => wires(18),b => wires(11),cin => wires(9),s => arg1(5),cout => arg2(6));
	 
	 --Column 7--
	 fa11: fa port map(a => layer1_r1(6),b => layer1_r2(6),cin => layer1_r3(6),s => wires(20),cout => wires(21));
	 ha6: ha port map(a => layer1_r4(6),b => layer1_r5(6),s => wires(22),c => wires(23));
	 fa12: fa port map(a => wires(20),b => wires(13),cin => wires(22),s => wires(24),cout => wires(25));
	 fa13: fa port map(a => layer1_r6(6),b => layer1_r7(6),cin => layer1_r8(6),s => wires(26),cout => wires(27));
	 fa14: fa port map(a => wires(24),b => wires(15),cin => wires(26),s => wires(28),cout => wires(29));
	 fa15: fa port map(a => wires(28),b => wires(19),cin => wires(17),s => arg1(6),cout => arg2(7));
	 
	 --Column 8--
	 fa16: fa port map(a => layer1_r1(7),b => layer1_r2(7),cin => layer1_r3(7),s => wires(30),cout => wires(31));
	 fa17: fa port map(a => layer1_r4(7),b => layer1_r5(7),cin => layer1_r6(7),s => wires(32),cout => wires(33));
	 ha7: ha port map(a => layer1_r7(7), b => layer1_r8(7),s => wires(34),c => wires(35));
	 fa18: fa port map(a => wires(30),b => wires(21),cin => wires(32),s => wires(36),cout => wires(37));
	 fa19: fa port map(a => wires(23),b => wires(34),cin => layer1_r9(7),s => wires(38),cout => wires(39));
	 fa20: fa port map(a => wires(36),b => wires(25),cin => wires(38),s => wires(40),cout => wires(41));
	 fa21: fa port map(a => wires(40),b => wires(29),cin => wires(27),s => arg1(7),cout => arg2(8));
	 
	 --Column 9--
	 ha8: ha port map(a => layer1_r1(8),b => layer1_r2(8),s => wires(42),c => wires(43));
	 fa22: fa port map(a => wires(42),b => layer1_r3(8),cin => layer1_r4(8),s => wires(44),cout => wires(45));
	 fa23: fa port map(a => layer1_r5(8),b => layer1_r6(8),cin => layer1_r7(8),s => wires(46),cout => wires(47));
	 fa24: fa port map(a => layer1_r8(8),b => layer1_r9(8),cin => layer1_r10(8),s => wires(48),cout => wires(49));
	 fa25: fa port map(a => wires(44),b => wires(31),cin => wires(46),s => wires(50),cout => wires(51));
	 fa26: fa port map(a => wires(33),b => wires(48),cin => wires(35),s => wires(52),cout => wires(53));
	 fa27: fa port map(a => wires(50),b => wires(37),cin => wires(52),s => wires(54),cout => wires(55));
	 fa28: fa port map(a => wires(54),b => wires(41),cin => wires(39),s => arg1(8),cout => arg2(9));
	 
	 --Column 10--
	 fa29: fa port map(a => layer1_r1(9),b => layer1_r2(9),cin => layer1_r3(9),s => wires(56),cout => wires(57));
	 ha9: ha port map(a => layer1_r4(9),b => layer1_r5(9),s => wires(58),c => wires(59));
	 fa30: fa port map(a => wires(56),b => wires(43),cin => wires(58),s => wires(60),cout => wires(61));
	 fa31: fa port map(a => layer1_r6(9),b => layer1_r7(9),cin => layer1_r8(9),s => wires(62),cout => wires(63));
	 fa32: fa port map(a => layer1_r9(9),b => layer1_r10(9),cin => layer1_r11(9),s => wires(64),cout => wires(65));
	 fa33: fa port map(a => wires(60),b => wires(45),cin => wires(62),s => wires(66),cout => wires(67));
	 fa34: fa port map(a => wires(47),b => wires(64),cin => wires(49),s => wires(68),cout => wires(69));
	 fa35: fa port map(a => wires(66),b => wires(51),cin => wires(68),s => wires(70),cout => wires(71));
	 fa36: fa port map(a => wires(70),b => wires(55),cin => wires(53),s => arg1(9),cout => arg2(10));
	 
	 --Column 11--
	 --12 rows to start off--
	 fa37: fa port map(a => layer1_r1(10),b => layer1_r2(10),cin => layer1_r3(10),s => wires(72),cout => wires(73));
	 fa38: fa port map(a => layer1_r4(10),b => layer1_r5(10),cin => layer1_r6(10),s => wires(74),cout => wires(75));
	 ha10: ha port map(a => layer1_r7(10),b => layer1_r8(10),s => wires(76),c => wires(77));
	 
	 fa39: fa port map(a => wires(72),b => wires(57),cin => wires(74),s => wires(78),cout => wires(79));
	 fa40: fa port map(a => wires(59),b => wires(76),cin => layer1_r9(10),s => wires(80),cout => wires(81));
	 fa41: fa port map(a => layer1_r10(10),b => layer1_r11(10),cin => layer1_r12(10),s => wires(82),cout => wires(83));
	 
	 fa42: fa port map(a => wires(78),b => wires(61),cin => wires(80),s => wires(84),cout => wires(85));
	 fa43: fa port map(a => wires(63),b => wires(82),cin => wires(65),s => wires(86),cout => wires(87));
	 
	 fa44: fa port map(a => wires(84),b => wires(67),cin => wires(86),s => wires(88),cout => wires(89));
	 
	 fa45: fa port map(a => wires(88),b => wires(71),cin => wires(69),s => arg1(10),cout => arg2(11));
	 
	 --Column 12--
	 --13 rows to start off--
	 fa46: fa port map(a => layer1_r1(11),b => layer1_r2(11),cin => layer1_r3(11),s => wires(90),cout => wires(91));
	 fa47: fa port map(a => layer1_r4(11),b => layer1_r5(11),cin => layer1_r6(11),s => wires(92),cout => wires(93));
	 fa48: fa port map(a => layer1_r7(11),b => layer1_r8(11),cin => layer1_r9(11),s => wires(94),cout => wires(95));
	 ha11: ha port map(a => layer1_r10(11),b => layer1_r11(11),s => wires(96),c => wires(97));
	 
	 fa49: fa port map(a => wires(90),b => wires(73),cin => wires(92),s => wires(98),cout => wires(99));
	 fa50: fa port map(a => wires(75),b => wires(94),cin => wires(77),s => wires(100),cout => wires(101));
	 fa51: fa port map(a => wires(96),b => layer1_r12(11),cin => layer1_r13(11),s => wires(102),cout => wires(103));
	 
	 fa52: fa port map(a => wires(98),b => wires(79),cin => wires(100),s => wires(104),cout => wires(105));
	 fa53: fa port map(a => wires(81),b => wires(102),cin => wires(83),s => wires(106),cout => wires(107));
	 
	 fa54: fa port map(a => wires(104),b => wires(85),cin => wires(106),s => wires(108),cout => wires(109));
	 
	 fa55: fa port map(a => wires(108),b => wires(89),cin => wires(87),s => arg1(11),cout => arg2(12));
	 
	 --Column 13--
	 --14 rows to start off--
	 ha12: ha port map(a => layer1_r1(12),b => layer1_r2(12),s => wires(110),c => wires(111));
	 
	 fa56: fa port map(a => wires(110),b => layer1_r3(12),cin => layer1_r4(12),s => wires(112),cout => wires(113));
	 fa57: fa port map(a => layer1_r5(12),b => layer1_r6(12),cin => layer1_r7(12),s => wires(114),cout => wires(115));
	 fa58: fa port map(a => layer1_r8(12),b => layer1_r9(12),cin => layer1_r10(12),s => wires(116),cout => wires(117));
	 fa59: fa port map(a => layer1_r11(12),b => layer1_r12(12),cin => layer1_r13(12),s => wires(118),cout => wires(119));
	 
	 fa60: fa port map(a => wires(112),b => wires(91),cin => wires(114),s => wires(120),cout => wires(121));
	 fa61: fa port map(a => wires(93),b => wires(116),cin => wires(95),s => wires(122),cout => wires(123));
	 fa62: fa port map(a => wires(118),b => wires(97),cin => layer1_r14(12),s => wires(124),cout => wires(125));
	 
	 fa63: fa port map(a => wires(120),b => wires(99),cin => wires(122),s => wires(126),cout => wires(127));
	 fa64: fa port map(a => wires(101),b => wires(124),cin => wires(103),s => wires(128),cout => wires(129));
	 
	 fa65: fa port map(a => wires(126),b => wires(105),cin => wires(128),s => wires(130),cout => wires(131));
	 
	 fa66: fa port map(a => wires(130),b => wires(109),cin => wires(107),s => arg1(12),cout => arg2(13));
	 
	 --Column 14--
	 --15 wires to start off--
	 fa67: fa port map(a => layer1_r1(13),b => layer1_r2(13),cin => layer1_r3(13),s => wires(132),cout => wires(133));
	 ha13: ha port map(a => layer1_r4(13),b => layer1_r5(13),s => wires(134),c => wires(135));
	 
	 fa68: fa port map(a => wires(132),b => wires(111),cin => layer1_r6(13),s => wires(136),cout => wires(137));
	 fa69: fa port map(a => wires(134),b => layer1_r7(13),cin => layer1_r8(13),s => wires(138),cout => wires(139));
	 fa70: fa port map(a => layer1_r9(13),b => layer1_r10(13),cin => layer1_r11(13),s => wires(140),cout => wires(141));
	 fa71: fa port map(a => layer1_r12(13),b => layer1_r13(13),cin => layer1_r14(13),s => wires(142),cout => wires(143));
	 
	 fa72: fa port map(a => wires(136),b => wires(113),cin => wires(138),s => wires(144),cout => wires(145));
	 fa73: fa port map(a => wires(115),b => wires(140),cin => wires(117),s => wires(146),cout => wires(147));
	 fa74: fa port map(a => wires(142),b => wires(119),cin => layer1_r15(13),s => wires(148),cout => wires(149));
	 
	 fa75: fa port map(a => wires(144),b => wires(121),cin => wires(146),s => wires(150),cout => wires(151));
	 fa76: fa port map(a => wires(123),b => wires(148),cin => wires(125),s => wires(152),cout => wires(153));
	 
	 fa77: fa port map(a => wires(150),b => wires(127),cin => wires(152),s => wires(154),cout => wires(155));
	 
	 fa78: fa port map(a => wires(154),b => wires(131),cin => wires(129),s => arg1(13),cout => arg2(14));
	 
	 --Column 15--
	 --16 wires to start off--
	 fa79: fa port map(a => layer1_r1(14),b => layer1_r2(14),cin => layer1_r3(14),s => wires(156),cout => wires(157));
	 fa80: fa port map(a => layer1_r4(14),b => layer1_r5(14),cin => layer1_r6(14),s => wires(158),cout => wires(159));
	 ha14: ha port map(a => layer1_r7(14),b => layer1_r8(14),s => wires(160),c => wires(161));
	 
	 fa224: fa port map(a => wires(156),b => wires(133),cin => wires(158),s => wires(162),cout => wires(163));
	 fa81: fa port map(a => wires(135),b => wires(160),cin => layer1_r9(14),s => wires(164),cout => wires(165));
	 fa82: fa port map(a => layer1_r10(14),b => layer1_r11(14),cin => layer1_r12(14),s => wires(166),cout => wires(167));
	 fa83: fa port map(a => layer1_r13(14),b => layer1_r14(14),cin => layer1_r15(14),s => wires(168),cout => wires(169));
	 
	 fa84: fa port map(a => wires(162),b => wires(137),cin => wires(164),s => wires(170),cout => wires(171));
	 fa85: fa port map(a => wires(139),b => wires(166),cin => wires(141),s => wires(172),cout => wires(173));
	 fa86: fa port map(a => wires(168),b => wires(143),cin => layer1_r16(14),s => wires(174),cout => wires(175));
	 
	 fa87: fa port map(a => wires(170),b => wires(145),cin => wires(172),s => wires(176),cout => wires(177));
	 fa88: fa port map(a => wires(147),b => wires(174),cin => wires(149),s => wires(178),cout => wires(179));
	 
	 fa89: fa port map(a => wires(176),b => wires(151),cin => wires(178),s => wires(180),cout => wires(181));
	 
	 fa90: fa port map(a => wires(180),b => wires(155),cin => wires(153),s => arg1(14),cout => arg2(15));
	 
	 --Column 16--
	 --17 wires to start off--
	 fa91: fa port map(a => layer1_r1(15),b => layer1_r2(15),cin => layer1_r3(15),s => wires(182),cout => wires(183));
	 fa92: fa port map(a => layer1_r4(15),b => layer1_r5(15),cin => layer1_r6(15),s => wires(184),cout => wires(185));
	 fa93: fa port map(a => layer1_r7(15),b => layer1_r8(15),cin => layer1_r9(15),s => wires(186),cout => wires(187));
	 ha15: ha port map(a => layer1_r10(15),b => layer1_r11(15),s => wires(188),c => wires(189));
	 
	 fa94: fa port map(a => wires(182),b => wires(157),cin => wires(184),s => wires(190),cout => wires(191));
	 fa95: fa port map(a => wires(159),b => wires(186),cin => wires(161),s => wires(192),cout => wires(193));
	 fa96: fa port map(a => wires(188),b => layer1_r12(15),cin => layer1_r13(15),s => wires(194),cout => wires(195));
	 fa97: fa port map(a => layer1_r14(15),b => layer1_r15(15),cin => layer1_r16(15),s => wires(196),cout => wires(197));
	 
	 fa98: fa port map(a => wires(190),b => wires(163),cin => wires(192),s => wires(198),cout => wires(199));
	 fa99: fa port map(a => wires(165),b => wires(194),cin => wires(167),s => wires(200),cout => wires(201));
	 fa100: fa port map(a => wires(196),b => wires(169),cin => layer1_r17(15),s => wires(202),cout => wires(203));
	 
	 fa101: fa port map(a => wires(198),b => wires(171),cin => wires(200),s => wires(204),cout => wires(205));
	 fa102: fa port map(a => wires(173),b => wires(202),cin => wires(175),s => wires(206),cout => wires(207));
	 
	 fa103: fa port map(a => wires(204),b => wires(177),cin => wires(206),s => wires(208),cout => wires(209));
	 
	 fa104: fa port map(a => wires(208),b => wires(181),cin => wires(179),s => arg1(15),cout => arg2(16));
	 
	 --Column 17--
	 --16 wires to start off--
	 fa105: fa port map(a => layer1_r1(16),b => layer1_r3(16),cin => layer1_r4(16),s => wires(210),cout => wires(211));
	 fa106: fa port map(a => layer1_r5(16),b => layer1_r6(16),cin => layer1_r7(16),s => wires(212),cout => wires(213));
	 fa107: fa port map(a => layer1_r8(16),b => layer1_r9(16),cin => layer1_r10(16),s => wires(214),cout => wires(215));
	 ha16: ha port map(a => layer1_r11(16),b => layer1_r12(16),s => wires(216),c => wires(217));
	 
	 fa108: fa port map(a => wires(210),b => wires(183),cin => wires(212),s => wires(218),cout => wires(219));
	 fa109: fa port map(a => wires(185),b => wires(214),cin => wires(187),s => wires(220),cout => wires(221));
	 fa110: fa port map(a => wires(216),b => wires(189),cin => layer1_r13(16),s => wires(222),cout => wires(223));
	 fa111: fa port map(a => layer1_r14(16),b => layer1_r15(16),cin => layer1_r16(16),s => wires(224),cout => wires(225));
	 
	 fa112: fa port map(a => wires(218),b => wires(191),cin => wires(220),s => wires(226),cout => wires(227));
	 fa113: fa port map(a => wires(193),b => wires(222),cin => wires(195),s => wires(228),cout => wires(229));
	 fa114: fa port map(a => wires(224),b => wires(197),cin => layer1_r17(16),s => wires(230),cout => wires(231));
	 
	 fa115: fa port map(a => wires(226),b => wires(199),cin => wires(228),s => wires(232),cout => wires(233));
	 fa116: fa port map(a => wires(201),b => wires(230),cin => wires(203),s => wires(234),cout => wires(235));
	 
	 fa117: fa port map(a => wires(232),b => wires(205),cin => wires(234),s => wires(236),cout => wires(237));
	 
	 fa118: fa port map(a => wires(236),b => wires(209),cin => wires(207),s => arg1(16),cout => arg2(17));
	 
	 --Column 18--
	 --15 wires to start off--
	 fa119: fa port map(a => layer1_r1(17),b => layer1_r4(17),cin => layer1_r5(17),s => wires(238),cout => wires(239));
	 fa120: fa port map(a => layer1_r6(17),b => layer1_r7(17),cin => layer1_r8(17),s => wires(240),cout => wires(241));
	 fa121: fa port map(a => layer1_r9(17),b => layer1_r10(17),cin => layer1_r11(17),s => wires(242),cout => wires(243));
	 
	 fa122: fa port map(a => wires(238),b => wires(211),cin => wires(240),s => wires(244),cout => wires(245));
	 fa123: fa port map(a => wires(213),b => wires(242),cin => wires(215),s => wires(246),cout => wires(247));
	 fa124: fa port map(a => layer1_r12(17),b => wires(217),cin => layer1_r13(17),s => wires(248),cout => wires(249));
	 fa125: fa port map(a => layer1_r14(17),b => layer1_r15(17),cin => layer1_r16(17),s => wires(250),cout => wires(251));
	 
	 fa126: fa port map(a => wires(244),b => wires(219),cin => wires(246),s => wires(252),cout => wires(253));
	 fa127: fa port map(a => wires(221),b => wires(248),cin => wires(223),s => wires(254),cout => wires(255));
	 fa128: fa port map(a => wires(250),b => wires(225),cin => layer1_r17(17),s => wires(256),cout => wires(257));
	 
	 fa129: fa port map(a => wires(252),b => wires(227),cin =>wires(254),s => wires(258),cout => wires(259));
	 fa130: fa port map(a => wires(229),b => wires(256),cin => wires(231),s => wires(260),cout => wires(261));
	 
	 fa131: fa port map(a => wires(258),b => wires(233),cin => wires(260),s => wires(262),cout => wires(263));

	 fa132: fa port map(a => wires(262),b => wires(237),cin => wires(235),s => arg1(17),cout => arg2(18));
	 
	 --Column 19--
	 --14 wires to start off--
	 fa133: fa port map(a => layer1_r1(18),b => layer1_r5(18),cin => layer1_r6(18),s => wires(264),cout => wires(265));
	 fa134: fa port map(a => layer1_r7(18),b => layer1_r8(18),cin => layer1_r9(18),s => wires(266),cout => wires(267));
	 
	 fa135: fa port map(a => wires(264),b => wires(239),cin => wires(266),s => wires(268),cout => wires(269));
	 fa136: fa port map(a => wires(241),b => layer1_r10(18),cin => wires(243),s => wires(270),cout => wires(271));
	 fa137: fa port map(a => layer1_r11(18),b => layer1_r12(18),cin => layer1_r13(18),s => wires(272),cout => wires(273));
	 fa138: fa port map(a => layer1_r14(18),b => layer1_r15(18),cin => layer1_r16(18),s => wires(274),cout => wires(275));
	 
	 fa139: fa port map(a => wires(268),b => wires(245),cin => wires(270),s => wires(276),cout => wires(277));
	 fa140: fa port map(a => wires(247),b => wires(272),cin => wires(249),s => wires(278),cout => wires(279));
	 fa141: fa port map(a => wires(274),b => wires(251),cin => layer1_r17(18),s => wires(280),cout => wires(281));
	 
	 fa142: fa port map(a => wires(276),b => wires(253),cin => wires(278),s => wires(282),cout => wires(283));
	 fa143: fa port map(a => wires(255),b => wires(280),cin => wires(257),s => wires(284),cout => wires(285));

	 fa144: fa port map(a => wires(282),b => wires(259),cin => wires(284),s => wires(286),cout => wires(287));
	 
	 fa145: fa port map(a => wires(286),b => wires(263),cin => wires(261),s => arg1(18),cout => arg2(19));
	 
	 
	 --Column 20--
	 --13 wire to start off--
	 fa146: fa port map(a => layer1_r1(19),b => layer1_r6(19),cin => layer1_r7(19),s => wires(288),cout => wires(289));
	 
	 fa147: fa port map(a => wires(288),b => wires(265),cin => layer1_r8(19),s => wires(290),cout => wires(291));
	 fa148: fa port map(a => wires(267),b => layer1_r9(19),cin => layer1_r10(19),s => wires(292),cout => wires(293));
	 fa149: fa port map(a => layer1_r11(19),b => layer1_r12(19),cin => layer1_r13(19),s => wires(294),cout => wires(295));
	 fa150: fa port map(a => layer1_r14(19),b => layer1_r15(19),cin => layer1_r16(19),s => wires(296),cout => wires(297));
	 
	 fa151: fa port map(a => wires(290),b => wires(269),cin => wires(292),s => wires(298),cout => wires(299));
	 fa152: fa port map(a => wires(271),b => wires(294),cin => wires(273),s => wires(300),cout => wires(301));
	 fa153: fa port map(a => wires(296),b => wires(275),cin => layer1_r17(19),s => wires(302),cout => wires(303));
	 
	 fa154: fa port map(a => wires(298),b => wires(277),cin => wires(300),s => wires(304),cout => wires(305));
	 fa155: fa port map(a => wires(279),b => wires(302),cin => wires(281),s => wires(306),cout => wires(307));
	 
	 fa156: fa port map(a => wires(304),b => wires(283),cin => wires(306),s => wires(308),cout => wires(309));
	 
	 fa157: fa port map(a => wires(308),b => wires(287),cin => wires(285),s => arg1(19),cout => arg2(20));
	 
	 --Column 21--
	 --12 wires to start off--
	 fa158: fa port map(a => layer1_r1(20),b => wires(289),cin => layer1_r7(20),s => wires(310),cout => wires(311));
	 fa159: fa port map(a => layer1_r8(20),b => layer1_r9(20),cin => layer1_r10(20),s => wires(312),cout => wires(313));
	 fa160: fa port map(a => layer1_r11(20),b => layer1_r12(20),cin => layer1_r13(20),s => wires(314),cout => wires(315));
	 fa161: fa port map(a => layer1_r14(20),b => layer1_r15(20),cin => layer1_r16(20),s => wires(316),cout => wires(317));
	 
	 fa162: fa port map(a => wires(310),b => wires(291),cin => wires(312),s => wires(318),cout => wires(319));
	 fa163: fa port map(a => wires(293),b => wires(314),cin => wires(295),s => wires(320),cout => wires(321));
	 fa164: fa port map(a => wires(316),b => wires(297),cin => layer1_r17(20),s => wires(322),cout => wires(323));
	 
	 fa165: fa port map(a => wires(318),b => wires(299),cin => wires(320),s => wires(324),cout => wires(325));
	 fa166: fa port map(a => wires(301),b => wires(322),cin => wires(303),s => wires(326),cout => wires(327));
	 
	 fa167: fa port map(a => wires(324),b => wires(305),cin => wires(326),s => wires(328),cout => wires(329));
	 
	 fa168: fa port map(a => wires(328),b => wires(309),cin => wires(307),s => arg1(20),cout => arg2(21));
	 
	 --Column 22--
	 --11 wires to start off--
	 fa169: fa port map(a => layer1_r1(21),b => layer1_r8(21),cin => layer1_r9(21),s => wires(330),cout => wires(331));
	 fa170: fa port map(a => layer1_r10(21),b => layer1_r11(21),cin => layer1_r12(21),s => wires(332),cout => wires(333));
	 fa171: fa port map(a => layer1_r13(21),b => layer1_r14(21),cin => layer1_r15(21),s => wires(334),cout => wires(335));
	 
	 fa172: fa port map(a => wires(330),b => wires(311),cin => wires(332),s => wires(336),cout => wires(337));
	 fa173: fa port map(a => wires(313),b => wires(334),cin => wires(315),s => wires(338),cout => wires(339));
	 fa174: fa port map(a => layer1_r16(21),b => wires(317),cin => layer1_r17(21),s => wires(340),cout => wires(341));
	 
	 fa175: fa port map(a => wires(336),b => wires(319),cin => wires(338),s => wires(342),cout => wires(343));
	 fa176: fa port map(a => wires(321),b => wires(340),cin => wires(323),s => wires(344),cout => wires(345));
	 
	 fa177: fa port map(a => wires(342),b => wires(325),cin => wires(344),s => wires(346),cout => wires(347));
	 
	 fa178: fa port map(a => wires(346),b => wires(329),cin => wires(327),s => arg1(21),cout => arg2(22));
	 
	 --Column 23--
	 --10 wires to start off--
	 fa179: fa port map(a => layer1_r1(22),b => layer1_r9(22),cin => layer1_r10(22),s => wires(348),cout => wires(349));
	 fa180: fa port map(a => layer1_r11(22),b => layer1_r12(22),cin => layer1_r13(22),s => wires(350),cout => wires(351));
	 
	 fa181: fa port map(a => wires(348),b => wires(331),cin => wires(350),s => wires(352),cout => wires(353));
	 fa182: fa port map(a => wires(333),b => layer1_r14(22),cin => wires(335),s => wires(354),cout => wires(355));
	 fa183: fa port map(a => layer1_r15(22),b => layer1_r16(22),cin => layer1_r17(22),s => wires(356),cout => wires(357));
	 
	 fa184: fa port map(a => wires(352),b => wires(337),cin => wires(354),s => wires(358),cout => wires(359));
	 fa185: fa port map(a => wires(339),b => wires(356),cin => wires(341),s => wires(360),cout => wires(361));
	 
	 fa186: fa port map(a => wires(358),b => wires(343),cin => wires(360),s => wires(362),cout => wires(363));
	 
	 fa187: fa port map(a => wires(362),b => wires(347),cin => wires(345),s => arg1(22),cout => arg2(23));
	 
	 --Column 24--
	 --9 wires to start off--
	 fa188: fa port map(a => layer1_r1(23),b => layer1_r10(23),cin => layer1_r11(23),s => wires(364),cout => wires(365));
	 
	 fa189: fa port map(a => wires(364),b => wires(349),cin => layer1_r12(23),s => wires(366),cout => wires(367));
	 fa190: fa port map(a => wires(351),b => layer1_r13(23),cin => layer1_r14(23),s => wires(368),cout => wires(369));
	 fa191: fa port map(a => layer1_r15(23),b => layer1_r16(23),cin => layer1_r17(23),s => wires(370),cout => wires(371));
	 
	 fa192: fa port map(a => wires(366),b => wires(353),cin => wires(368),s => wires(372),cout => wires(373));
	 fa193: fa port map(a => wires(355),b => wires(370),cin => wires(357),s => wires(374),cout => wires(375));
	 
	 fa194: fa port map(a => wires(372),b => wires(359),cin => wires(374),s => wires(376),cout => wires(377));
	 
	 fa195: fa port map(a => wires(376),b => wires(363),cin => wires(361),s => arg1(23),cout => arg2(24));
	 
	 --Column 25--
	 --8 wires to start off--
	 fa196: fa port map(a => layer1_r1(24),b => wires(365),cin => layer1_r11(24),s => wires(378),cout => wires(379));
	 fa197: fa port map(a => layer1_r12(24),b => layer1_r13(24),cin => layer1_r14(24),s => wires(380),cout => wires(381));
	 fa198: fa port map(a => layer1_r15(24),b => layer1_r16(24),cin => layer1_r17(24),s => wires(382),cout => wires(383));
	 
	 fa199: fa port map(a => wires(378),b => wires(367),cin => wires(380),s => wires(384),cout => wires(385));
	 fa200: fa port map(a => wires(369),b => wires(382),cin => wires(371),s => wires(386),cout => wires(387));
	 
	 fa201: fa port map(a => wires(384),b => wires(373),cin => wires(386),s => wires(388),cout => wires(389));
	 
	 fa202: fa port map(a => wires(388),b => wires(377),cin => wires(375),s => arg1(24),cout => arg2(25));
	 
	 --Column 26--
	 --7 wires to start off--
	 fa203: fa port map(a => layer1_r1(25),b => layer1_r12(25),cin => layer1_r13(25),s => wires(390),cout => wires(391));
	 fa204: fa port map(a => layer1_r14(25),b => layer1_r15(25),cin => layer1_r16(25),s => wires(392),cout => wires(393));
	 
	 fa205: fa port map(a => wires(390),b => wires(379),cin => wires(392),s => wires(394),cout => wires(395));
	 fa206: fa port map(a => wires(381),b => layer1_r17(25),cin => wires(383),s => wires(396),cout => wires(397));
	 
	 fa207: fa port map(a => wires(394),b => wires(385),cin => wires(396),s => wires(398),cout => wires(399));
	 
	 fa208: fa port map(a => wires(398),b => wires(389),cin => wires(387),s => arg1(25),cout => arg2(26));
	 
	 --Column 27--
	 --6 wires to start off--
	 fa209: fa port map(a => layer1_r1(26),b => layer1_r13(26),cin => layer1_r14(26),s => wires(400),cout => wires(401));
	 
	 fa210: fa port map(a => wires(400),b => wires(391),cin => layer1_r15(26),s => wires(402),cout => wires(403));
	 fa211: fa port map(a => wires(393),b => layer1_r16(26),cin => layer1_r17(26),s => wires(404),cout => wires(405));
	 
	 fa212: fa port map(a => wires(402),b => wires(395),cin => wires(404),s => wires(406),cout => wires(407));
	 
	 fa213: fa port map(a => wires(406),b => wires(399),cin => wires(397),s => arg1(26),cout => arg2(27));
	 
	 --Column 28--
	 --5 wires to start off--
	 fa214: fa port map(a => layer1_r1(27),b => wires(401),cin => layer1_r14(27),s => wires(408),cout => wires(409));
	 fa215: fa port map(a => layer1_r15(27),b => layer1_r16(27),cin => layer1_r17(27),s => wires(410),cout => wires(411));
	 
	 fa216: fa port map(a => wires(408),b => wires(403),cin => wires(410),s => wires(412),cout => wires(413));
	 
	 fa217: fa port map(a => wires(412),b => wires(407),cin => wires(405),s => arg1(27),cout => arg2(28));
	 
	 --Column 29--
	 --4 wires to start off--
	 fa218: fa port map(a => layer1_r1(28),b => layer1_r15(28),cin => layer1_r16(28),s => wires(414),cout => wires(415));
	 
	 fa219: fa port map(a => wires(414),b => wires(409),cin => layer1_r17(28),s => wires(416),cout => wires(417));
	 
	 fa220: fa port map(a => wires(416),b => wires(413),cin => wires(411),s => arg1(28),cout => arg2(29));
	 
	 --Column 30--
	 --3 wires to start off--
	 fa221: fa port map(a => layer1_r1(29),b => layer1_r16(29),cin => wires(415),s => wires(418),cout => wires(419));
	 
	 fa222: fa port map(a => wires(418),b => wires(417),cin => layer1_r17(29),s => arg1(29),cout => arg2(30));
	 
	 --Column 31--
	 --2 wires to start off--
	 fa223: fa port map(a => layer1_r1(30),b => wires(419),cin => layer1_r17(30),s => arg1(30),cout => arg2(31));
	 
	 --Column 32--
	 --1 wire to start off--
	 arg1(31) <= layer1_r1(31);
	 
	 
	 bkadder: brentkung port map(a =>arg1, b=>arg2, cin=>gnd_sig, s=>s, cout=>cout);

end behave;
	 
	 
	 
	 
	 
	 
	 
	 
	 

	 

	 
	 
	 
	 
	
	 
	 

	 
	 
	 
	 
	 
	 

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	  
	 
	 
	 
