/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5-1
// Date      : Mon Nov 15 20:00:41 2021
/////////////////////////////////////////////////////////////


module async_fifo_36_4_0_0_test_1 ( wr_clk, wr_reset_n, wr_en, wr_data, full, 
        afull, rd_clk, rd_reset_n, rd_en, empty, aempty, rd_data, test_si9, 
        test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, 
        test_si1, test_so7, test_so6, test_so5, test_so4, test_so3, test_so2, 
        test_so1, test_se );
  input [35:0] wr_data;
  output [35:0] rd_data;
  input wr_clk, wr_reset_n, wr_en, rd_clk, rd_reset_n, rd_en, test_si9,
         test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2,
         test_si1, test_se;
  output full, afull, empty, aempty, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
  wire   N45, N46, mem_3__35_, mem_3__34_, mem_3__33_, mem_3__32_, mem_3__31_,
         mem_3__30_, mem_3__29_, mem_3__28_, mem_3__27_, mem_3__26_,
         mem_3__25_, mem_3__24_, mem_3__23_, mem_3__22_, mem_3__21_,
         mem_3__20_, mem_3__19_, mem_3__18_, mem_3__17_, mem_3__16_,
         mem_3__15_, mem_3__14_, mem_3__13_, mem_3__12_, mem_3__10_, mem_3__9_,
         mem_3__8_, mem_3__7_, mem_3__6_, mem_3__5_, mem_3__4_, mem_3__3_,
         mem_3__2_, mem_3__1_, mem_3__0_, mem_2__35_, mem_2__34_, mem_2__33_,
         mem_2__32_, mem_2__31_, mem_2__30_, mem_2__29_, mem_2__28_,
         mem_2__27_, mem_2__26_, mem_2__25_, mem_2__24_, mem_2__23_,
         mem_2__21_, mem_2__20_, mem_2__19_, mem_2__18_, mem_2__17_,
         mem_2__16_, mem_2__15_, mem_2__14_, mem_2__13_, mem_2__12_,
         mem_2__11_, mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_, mem_2__6_,
         mem_2__5_, mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_,
         mem_1__35_, mem_1__34_, mem_1__32_, mem_1__31_, mem_1__30_,
         mem_1__29_, mem_1__28_, mem_1__27_, mem_1__26_, mem_1__25_,
         mem_1__24_, mem_1__23_, mem_1__22_, mem_1__21_, mem_1__20_,
         mem_1__19_, mem_1__18_, mem_1__17_, mem_1__16_, mem_1__15_,
         mem_1__14_, mem_1__13_, mem_1__12_, mem_1__11_, mem_1__10_, mem_1__9_,
         mem_1__7_, mem_1__6_, mem_1__5_, mem_1__4_, mem_1__3_, mem_1__2_,
         mem_1__1_, mem_1__0_, mem_0__35_, mem_0__34_, mem_0__33_, mem_0__32_,
         mem_0__31_, mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_,
         mem_0__26_, mem_0__25_, mem_0__24_, mem_0__23_, mem_0__22_,
         mem_0__21_, mem_0__20_, mem_0__18_, mem_0__17_, mem_0__16_,
         mem_0__15_, mem_0__14_, mem_0__13_, mem_0__12_, mem_0__11_,
         mem_0__10_, mem_0__9_, mem_0__8_, mem_0__7_, mem_0__6_, mem_0__5_,
         mem_0__4_, mem_0__3_, mem_0__2_, mem_0__1_, mem_0__0_,
         sync_rd_ptr_0_2_, sync_rd_ptr_0_1_, n246, n248, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n247, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n711, n712, n713, n714;
  wire   [1:0] wr_ptr;
  wire   [2:0] grey_wr_ptr;
  wire   [2:0] grey_rd_ptr_dly;
  wire   [2:0] sync_rd_ptr_1;
  wire   [35:0] rd_data_c;
  wire   [2:0] sync_wr_ptr_1;
  wire   [2:0] sync_wr_ptr_0;

  FD2S sync_wr_ptr_1_reg_1_ ( .D(sync_wr_ptr_0[1]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(rd_reset_n), .QN(n713) );
  FD1S mem_reg_3__35_ ( .D(n373), .TI(mem_3__34_), .TE(test_se), .CP(n17), .Q(
        mem_3__35_), .QN(n598) );
  FD1S mem_reg_3__34_ ( .D(n372), .TI(mem_3__33_), .TE(test_se), .CP(n17), .Q(
        mem_3__34_), .QN(n597) );
  FD1S mem_reg_3__33_ ( .D(n371), .TI(mem_3__32_), .TE(test_se), .CP(n17), .Q(
        mem_3__33_), .QN(n596) );
  FD1S mem_reg_3__32_ ( .D(n370), .TI(mem_3__31_), .TE(test_se), .CP(n17), .Q(
        mem_3__32_), .QN(n595) );
  FD1S mem_reg_3__31_ ( .D(n369), .TI(mem_3__30_), .TE(test_se), .CP(n17), .Q(
        mem_3__31_), .QN(n594) );
  FD1S mem_reg_3__30_ ( .D(n368), .TI(mem_3__29_), .TE(test_se), .CP(n16), .Q(
        mem_3__30_), .QN(n593) );
  FD1S mem_reg_3__29_ ( .D(n367), .TI(mem_3__28_), .TE(test_se), .CP(n16), .Q(
        mem_3__29_), .QN(n592) );
  FD1S mem_reg_3__28_ ( .D(n366), .TI(mem_3__27_), .TE(test_se), .CP(n16), .Q(
        mem_3__28_), .QN(n591) );
  FD1S mem_reg_3__27_ ( .D(n365), .TI(mem_3__26_), .TE(test_se), .CP(n16), .Q(
        mem_3__27_), .QN(n590) );
  FD1S mem_reg_3__26_ ( .D(n364), .TI(mem_3__25_), .TE(test_se), .CP(n16), .Q(
        mem_3__26_), .QN(n589) );
  FD1S mem_reg_3__25_ ( .D(n363), .TI(mem_3__24_), .TE(test_se), .CP(n16), .Q(
        mem_3__25_), .QN(n588) );
  FD1S mem_reg_3__24_ ( .D(n362), .TI(mem_3__23_), .TE(test_se), .CP(n16), .Q(
        mem_3__24_), .QN(n587) );
  FD1S mem_reg_3__23_ ( .D(n361), .TI(mem_3__22_), .TE(test_se), .CP(n16), .Q(
        mem_3__23_), .QN(n586) );
  FD1S mem_reg_3__22_ ( .D(n360), .TI(mem_3__21_), .TE(test_se), .CP(n16), .Q(
        mem_3__22_), .QN(n585) );
  FD1S mem_reg_3__21_ ( .D(n359), .TI(mem_3__20_), .TE(test_se), .CP(n16), .Q(
        mem_3__21_), .QN(n584) );
  FD1S mem_reg_3__20_ ( .D(n358), .TI(mem_3__19_), .TE(test_se), .CP(n16), .Q(
        mem_3__20_), .QN(n583) );
  FD1S mem_reg_3__19_ ( .D(n357), .TI(mem_3__18_), .TE(test_se), .CP(n16), .Q(
        mem_3__19_), .QN(n582) );
  FD1S mem_reg_3__18_ ( .D(n356), .TI(mem_3__17_), .TE(test_se), .CP(n15), .Q(
        mem_3__18_), .QN(n581) );
  FD1S mem_reg_3__17_ ( .D(n355), .TI(mem_3__16_), .TE(test_se), .CP(n15), .Q(
        mem_3__17_), .QN(n580) );
  FD1S mem_reg_3__16_ ( .D(n354), .TI(mem_3__15_), .TE(test_se), .CP(n15), .Q(
        mem_3__16_), .QN(n579) );
  FD1S mem_reg_3__15_ ( .D(n353), .TI(mem_3__14_), .TE(test_se), .CP(n15), .Q(
        mem_3__15_), .QN(n578) );
  FD1S mem_reg_3__14_ ( .D(n352), .TI(mem_3__13_), .TE(test_se), .CP(n15), .Q(
        mem_3__14_), .QN(n577) );
  FD1S mem_reg_3__13_ ( .D(n351), .TI(mem_3__12_), .TE(test_se), .CP(n15), .Q(
        mem_3__13_), .QN(n576) );
  FD1S mem_reg_3__12_ ( .D(n350), .TI(test_si6), .TE(test_se), .CP(n15), .Q(
        mem_3__12_), .QN(n575) );
  FD1S mem_reg_3__11_ ( .D(n349), .TI(mem_3__10_), .TE(test_se), .CP(n15), .Q(
        test_so5), .QN(n574) );
  FD1S mem_reg_3__10_ ( .D(n348), .TI(mem_3__9_), .TE(test_se), .CP(n15), .Q(
        mem_3__10_), .QN(n573) );
  FD1S mem_reg_3__9_ ( .D(n347), .TI(mem_3__8_), .TE(test_se), .CP(n15), .Q(
        mem_3__9_), .QN(n572) );
  FD1S mem_reg_3__8_ ( .D(n346), .TI(mem_3__7_), .TE(test_se), .CP(n15), .Q(
        mem_3__8_), .QN(n571) );
  FD1S mem_reg_3__7_ ( .D(n345), .TI(mem_3__6_), .TE(test_se), .CP(n15), .Q(
        mem_3__7_), .QN(n570) );
  FD1S mem_reg_3__6_ ( .D(n344), .TI(mem_3__5_), .TE(test_se), .CP(n14), .Q(
        mem_3__6_), .QN(n569) );
  FD1S mem_reg_3__5_ ( .D(n343), .TI(mem_3__4_), .TE(test_se), .CP(n14), .Q(
        mem_3__5_), .QN(n568) );
  FD1S mem_reg_3__4_ ( .D(n342), .TI(mem_3__3_), .TE(test_se), .CP(n14), .Q(
        mem_3__4_), .QN(n567) );
  FD1S mem_reg_3__3_ ( .D(n341), .TI(mem_3__2_), .TE(test_se), .CP(n14), .Q(
        mem_3__3_), .QN(n566) );
  FD1S mem_reg_3__2_ ( .D(n340), .TI(mem_3__1_), .TE(test_se), .CP(n14), .Q(
        mem_3__2_), .QN(n565) );
  FD1S mem_reg_3__1_ ( .D(n339), .TI(mem_3__0_), .TE(test_se), .CP(n14), .Q(
        mem_3__1_), .QN(n564) );
  FD1S mem_reg_3__0_ ( .D(n374), .TI(mem_2__35_), .TE(test_se), .CP(n17), .Q(
        mem_3__0_), .QN(n599) );
  FD1S mem_reg_2__35_ ( .D(n409), .TI(mem_2__34_), .TE(test_se), .CP(n20), .Q(
        mem_2__35_), .QN(n634) );
  FD1S mem_reg_2__34_ ( .D(n408), .TI(mem_2__33_), .TE(test_se), .CP(n20), .Q(
        mem_2__34_), .QN(n633) );
  FD1S mem_reg_2__33_ ( .D(n407), .TI(mem_2__32_), .TE(test_se), .CP(n20), .Q(
        mem_2__33_), .QN(n632) );
  FD1S mem_reg_2__32_ ( .D(n406), .TI(mem_2__31_), .TE(test_se), .CP(n20), .Q(
        mem_2__32_), .QN(n631) );
  FD1S mem_reg_2__31_ ( .D(n405), .TI(mem_2__30_), .TE(test_se), .CP(n20), .Q(
        mem_2__31_), .QN(n630) );
  FD1S mem_reg_2__30_ ( .D(n404), .TI(mem_2__29_), .TE(test_se), .CP(n19), .Q(
        mem_2__30_), .QN(n629) );
  FD1S mem_reg_2__29_ ( .D(n403), .TI(mem_2__28_), .TE(test_se), .CP(n19), .Q(
        mem_2__29_), .QN(n628) );
  FD1S mem_reg_2__28_ ( .D(n402), .TI(mem_2__27_), .TE(test_se), .CP(n19), .Q(
        mem_2__28_), .QN(n627) );
  FD1S mem_reg_2__27_ ( .D(n401), .TI(mem_2__26_), .TE(test_se), .CP(n19), .Q(
        mem_2__27_), .QN(n626) );
  FD1S mem_reg_2__26_ ( .D(n400), .TI(mem_2__25_), .TE(test_se), .CP(n19), .Q(
        mem_2__26_), .QN(n625) );
  FD1S mem_reg_2__25_ ( .D(n399), .TI(mem_2__24_), .TE(test_se), .CP(n19), .Q(
        mem_2__25_), .QN(n624) );
  FD1S mem_reg_2__24_ ( .D(n398), .TI(mem_2__23_), .TE(test_se), .CP(n19), .Q(
        mem_2__24_), .QN(n623) );
  FD1S mem_reg_2__23_ ( .D(n397), .TI(test_si5), .TE(test_se), .CP(n19), .Q(
        mem_2__23_), .QN(n622) );
  FD1S mem_reg_2__22_ ( .D(n396), .TI(mem_2__21_), .TE(test_se), .CP(n19), .Q(
        test_so4), .QN(n621) );
  FD1S mem_reg_2__21_ ( .D(n395), .TI(mem_2__20_), .TE(test_se), .CP(n19), .Q(
        mem_2__21_), .QN(n620) );
  FD1S mem_reg_2__20_ ( .D(n394), .TI(mem_2__19_), .TE(test_se), .CP(n19), .Q(
        mem_2__20_), .QN(n619) );
  FD1S mem_reg_2__19_ ( .D(n393), .TI(mem_2__18_), .TE(test_se), .CP(n19), .Q(
        mem_2__19_), .QN(n618) );
  FD1S mem_reg_2__18_ ( .D(n392), .TI(mem_2__17_), .TE(test_se), .CP(n18), .Q(
        mem_2__18_), .QN(n617) );
  FD1S mem_reg_2__17_ ( .D(n391), .TI(mem_2__16_), .TE(test_se), .CP(n18), .Q(
        mem_2__17_), .QN(n616) );
  FD1S mem_reg_2__16_ ( .D(n390), .TI(mem_2__15_), .TE(test_se), .CP(n18), .Q(
        mem_2__16_), .QN(n615) );
  FD1S mem_reg_2__15_ ( .D(n389), .TI(mem_2__14_), .TE(test_se), .CP(n18), .Q(
        mem_2__15_), .QN(n614) );
  FD1S mem_reg_2__14_ ( .D(n388), .TI(mem_2__13_), .TE(test_se), .CP(n18), .Q(
        mem_2__14_), .QN(n613) );
  FD1S mem_reg_2__13_ ( .D(n387), .TI(mem_2__12_), .TE(test_se), .CP(n18), .Q(
        mem_2__13_), .QN(n612) );
  FD1S mem_reg_2__12_ ( .D(n386), .TI(mem_2__11_), .TE(test_se), .CP(n18), .Q(
        mem_2__12_), .QN(n611) );
  FD1S mem_reg_2__11_ ( .D(n385), .TI(mem_2__10_), .TE(test_se), .CP(n18), .Q(
        mem_2__11_), .QN(n610) );
  FD1S mem_reg_2__10_ ( .D(n384), .TI(mem_2__9_), .TE(test_se), .CP(n18), .Q(
        mem_2__10_), .QN(n609) );
  FD1S mem_reg_2__9_ ( .D(n383), .TI(mem_2__8_), .TE(test_se), .CP(n18), .Q(
        mem_2__9_), .QN(n608) );
  FD1S mem_reg_2__8_ ( .D(n382), .TI(mem_2__7_), .TE(test_se), .CP(n18), .Q(
        mem_2__8_), .QN(n607) );
  FD1S mem_reg_2__7_ ( .D(n381), .TI(mem_2__6_), .TE(test_se), .CP(n18), .Q(
        mem_2__7_), .QN(n606) );
  FD1S mem_reg_2__6_ ( .D(n380), .TI(mem_2__5_), .TE(test_se), .CP(n17), .Q(
        mem_2__6_), .QN(n605) );
  FD1S mem_reg_2__5_ ( .D(n379), .TI(mem_2__4_), .TE(test_se), .CP(n17), .Q(
        mem_2__5_), .QN(n604) );
  FD1S mem_reg_2__4_ ( .D(n378), .TI(mem_2__3_), .TE(test_se), .CP(n17), .Q(
        mem_2__4_), .QN(n603) );
  FD1S mem_reg_2__3_ ( .D(n377), .TI(mem_2__2_), .TE(test_se), .CP(n17), .Q(
        mem_2__3_), .QN(n602) );
  FD1S mem_reg_2__2_ ( .D(n376), .TI(mem_2__1_), .TE(test_se), .CP(n17), .Q(
        mem_2__2_), .QN(n601) );
  FD1S mem_reg_2__1_ ( .D(n375), .TI(mem_2__0_), .TE(test_se), .CP(n17), .Q(
        mem_2__1_), .QN(n600) );
  FD1S mem_reg_2__0_ ( .D(n410), .TI(mem_1__35_), .TE(test_se), .CP(n20), .Q(
        mem_2__0_), .QN(n635) );
  FD1S mem_reg_1__35_ ( .D(n445), .TI(mem_1__34_), .TE(test_se), .CP(n23), .Q(
        mem_1__35_), .QN(n670) );
  FD1S mem_reg_1__34_ ( .D(n444), .TI(test_si4), .TE(test_se), .CP(n23), .Q(
        mem_1__34_), .QN(n669) );
  FD1S mem_reg_1__33_ ( .D(n443), .TI(mem_1__32_), .TE(test_se), .CP(n23), .Q(
        test_so3), .QN(n668) );
  FD1S mem_reg_1__32_ ( .D(n442), .TI(mem_1__31_), .TE(test_se), .CP(n23), .Q(
        mem_1__32_), .QN(n667) );
  FD1S mem_reg_1__31_ ( .D(n441), .TI(mem_1__30_), .TE(test_se), .CP(n23), .Q(
        mem_1__31_), .QN(n666) );
  FD1S mem_reg_1__30_ ( .D(n440), .TI(mem_1__29_), .TE(test_se), .CP(n22), .Q(
        mem_1__30_), .QN(n665) );
  FD1S mem_reg_1__29_ ( .D(n439), .TI(mem_1__28_), .TE(test_se), .CP(n22), .Q(
        mem_1__29_), .QN(n664) );
  FD1S mem_reg_1__28_ ( .D(n438), .TI(mem_1__27_), .TE(test_se), .CP(n22), .Q(
        mem_1__28_), .QN(n663) );
  FD1S mem_reg_1__27_ ( .D(n437), .TI(mem_1__26_), .TE(test_se), .CP(n22), .Q(
        mem_1__27_), .QN(n662) );
  FD1S mem_reg_1__26_ ( .D(n436), .TI(mem_1__25_), .TE(test_se), .CP(n22), .Q(
        mem_1__26_), .QN(n661) );
  FD1S mem_reg_1__25_ ( .D(n435), .TI(mem_1__24_), .TE(test_se), .CP(n22), .Q(
        mem_1__25_), .QN(n660) );
  FD1S mem_reg_1__24_ ( .D(n434), .TI(mem_1__23_), .TE(test_se), .CP(n22), .Q(
        mem_1__24_), .QN(n659) );
  FD1S mem_reg_1__23_ ( .D(n433), .TI(mem_1__22_), .TE(test_se), .CP(n22), .Q(
        mem_1__23_), .QN(n658) );
  FD1S mem_reg_1__22_ ( .D(n432), .TI(mem_1__21_), .TE(test_se), .CP(n22), .Q(
        mem_1__22_), .QN(n657) );
  FD1S mem_reg_1__21_ ( .D(n431), .TI(mem_1__20_), .TE(test_se), .CP(n22), .Q(
        mem_1__21_), .QN(n656) );
  FD1S mem_reg_1__20_ ( .D(n430), .TI(mem_1__19_), .TE(test_se), .CP(n22), .Q(
        mem_1__20_), .QN(n655) );
  FD1S mem_reg_1__19_ ( .D(n429), .TI(mem_1__18_), .TE(test_se), .CP(n22), .Q(
        mem_1__19_), .QN(n654) );
  FD1S mem_reg_1__18_ ( .D(n428), .TI(mem_1__17_), .TE(test_se), .CP(n21), .Q(
        mem_1__18_), .QN(n653) );
  FD1S mem_reg_1__17_ ( .D(n427), .TI(mem_1__16_), .TE(test_se), .CP(n21), .Q(
        mem_1__17_), .QN(n652) );
  FD1S mem_reg_1__16_ ( .D(n426), .TI(mem_1__15_), .TE(test_se), .CP(n21), .Q(
        mem_1__16_), .QN(n651) );
  FD1S mem_reg_1__15_ ( .D(n425), .TI(mem_1__14_), .TE(test_se), .CP(n21), .Q(
        mem_1__15_), .QN(n650) );
  FD1S mem_reg_1__14_ ( .D(n424), .TI(mem_1__13_), .TE(test_se), .CP(n21), .Q(
        mem_1__14_), .QN(n649) );
  FD1S mem_reg_1__13_ ( .D(n423), .TI(mem_1__12_), .TE(test_se), .CP(n21), .Q(
        mem_1__13_), .QN(n648) );
  FD1S mem_reg_1__12_ ( .D(n422), .TI(mem_1__11_), .TE(test_se), .CP(n21), .Q(
        mem_1__12_), .QN(n647) );
  FD1S mem_reg_1__11_ ( .D(n421), .TI(mem_1__10_), .TE(test_se), .CP(n21), .Q(
        mem_1__11_), .QN(n646) );
  FD1S mem_reg_1__10_ ( .D(n420), .TI(mem_1__9_), .TE(test_se), .CP(n21), .Q(
        mem_1__10_), .QN(n645) );
  FD1S mem_reg_1__9_ ( .D(n419), .TI(test_si3), .TE(test_se), .CP(n21), .Q(
        mem_1__9_), .QN(n644) );
  FD1S mem_reg_1__8_ ( .D(n418), .TI(mem_1__7_), .TE(test_se), .CP(n21), .Q(
        test_so2), .QN(n643) );
  FD1S mem_reg_1__7_ ( .D(n417), .TI(mem_1__6_), .TE(test_se), .CP(n21), .Q(
        mem_1__7_), .QN(n642) );
  FD1S mem_reg_1__6_ ( .D(n416), .TI(mem_1__5_), .TE(test_se), .CP(n20), .Q(
        mem_1__6_), .QN(n641) );
  FD1S mem_reg_1__5_ ( .D(n415), .TI(mem_1__4_), .TE(test_se), .CP(n20), .Q(
        mem_1__5_), .QN(n640) );
  FD1S mem_reg_1__4_ ( .D(n414), .TI(mem_1__3_), .TE(test_se), .CP(n20), .Q(
        mem_1__4_), .QN(n639) );
  FD1S mem_reg_1__3_ ( .D(n413), .TI(mem_1__2_), .TE(test_se), .CP(n20), .Q(
        mem_1__3_), .QN(n638) );
  FD1S mem_reg_1__2_ ( .D(n412), .TI(mem_1__1_), .TE(test_se), .CP(n20), .Q(
        mem_1__2_), .QN(n637) );
  FD1S mem_reg_1__1_ ( .D(n411), .TI(mem_1__0_), .TE(test_se), .CP(n20), .Q(
        mem_1__1_), .QN(n636) );
  FD1S mem_reg_1__0_ ( .D(n446), .TI(mem_0__35_), .TE(test_se), .CP(n23), .Q(
        mem_1__0_), .QN(n671) );
  FD1S mem_reg_0__35_ ( .D(n481), .TI(mem_0__34_), .TE(test_se), .CP(n26), .Q(
        mem_0__35_), .QN(n706) );
  FD1S mem_reg_0__34_ ( .D(n480), .TI(mem_0__33_), .TE(test_se), .CP(n26), .Q(
        mem_0__34_), .QN(n705) );
  FD1S mem_reg_0__33_ ( .D(n479), .TI(mem_0__32_), .TE(test_se), .CP(n26), .Q(
        mem_0__33_), .QN(n704) );
  FD1S mem_reg_0__32_ ( .D(n478), .TI(mem_0__31_), .TE(test_se), .CP(n26), .Q(
        mem_0__32_), .QN(n703) );
  FD1S mem_reg_0__31_ ( .D(n477), .TI(mem_0__30_), .TE(test_se), .CP(n26), .Q(
        mem_0__31_), .QN(n702) );
  FD1S mem_reg_0__30_ ( .D(n476), .TI(mem_0__29_), .TE(test_se), .CP(n25), .Q(
        mem_0__30_), .QN(n701) );
  FD1S mem_reg_0__29_ ( .D(n475), .TI(mem_0__28_), .TE(test_se), .CP(n25), .Q(
        mem_0__29_), .QN(n700) );
  FD1S mem_reg_0__28_ ( .D(n474), .TI(mem_0__27_), .TE(test_se), .CP(n25), .Q(
        mem_0__28_), .QN(n699) );
  FD1S mem_reg_0__27_ ( .D(n473), .TI(mem_0__26_), .TE(test_se), .CP(n25), .Q(
        mem_0__27_), .QN(n698) );
  FD1S mem_reg_0__26_ ( .D(n472), .TI(mem_0__25_), .TE(test_se), .CP(n25), .Q(
        mem_0__26_), .QN(n697) );
  FD1S mem_reg_0__25_ ( .D(n471), .TI(mem_0__24_), .TE(test_se), .CP(n25), .Q(
        mem_0__25_), .QN(n696) );
  FD1S mem_reg_0__24_ ( .D(n470), .TI(mem_0__23_), .TE(test_se), .CP(n25), .Q(
        mem_0__24_), .QN(n695) );
  FD1S mem_reg_0__23_ ( .D(n469), .TI(mem_0__22_), .TE(test_se), .CP(n25), .Q(
        mem_0__23_), .QN(n694) );
  FD1S mem_reg_0__22_ ( .D(n468), .TI(mem_0__21_), .TE(test_se), .CP(n25), .Q(
        mem_0__22_), .QN(n693) );
  FD1S mem_reg_0__21_ ( .D(n467), .TI(mem_0__20_), .TE(test_se), .CP(n25), .Q(
        mem_0__21_), .QN(n692) );
  FD1S mem_reg_0__20_ ( .D(n466), .TI(test_si2), .TE(test_se), .CP(n25), .Q(
        mem_0__20_), .QN(n691) );
  FD1S mem_reg_0__19_ ( .D(n465), .TI(mem_0__18_), .TE(test_se), .CP(n25), .Q(
        test_so1), .QN(n690) );
  FD1S mem_reg_0__18_ ( .D(n464), .TI(mem_0__17_), .TE(test_se), .CP(n24), .Q(
        mem_0__18_), .QN(n689) );
  FD1S mem_reg_0__17_ ( .D(n463), .TI(mem_0__16_), .TE(test_se), .CP(n24), .Q(
        mem_0__17_), .QN(n688) );
  FD1S mem_reg_0__16_ ( .D(n462), .TI(mem_0__15_), .TE(test_se), .CP(n24), .Q(
        mem_0__16_), .QN(n687) );
  FD1S mem_reg_0__15_ ( .D(n461), .TI(mem_0__14_), .TE(test_se), .CP(n24), .Q(
        mem_0__15_), .QN(n686) );
  FD1S mem_reg_0__14_ ( .D(n460), .TI(mem_0__13_), .TE(test_se), .CP(n24), .Q(
        mem_0__14_), .QN(n685) );
  FD1S mem_reg_0__13_ ( .D(n459), .TI(mem_0__12_), .TE(test_se), .CP(n24), .Q(
        mem_0__13_), .QN(n684) );
  FD1S mem_reg_0__12_ ( .D(n458), .TI(mem_0__11_), .TE(test_se), .CP(n24), .Q(
        mem_0__12_), .QN(n683) );
  FD1S mem_reg_0__11_ ( .D(n457), .TI(mem_0__10_), .TE(test_se), .CP(n24), .Q(
        mem_0__11_), .QN(n682) );
  FD1S mem_reg_0__10_ ( .D(n456), .TI(mem_0__9_), .TE(test_se), .CP(n24), .Q(
        mem_0__10_), .QN(n681) );
  FD1S mem_reg_0__9_ ( .D(n455), .TI(mem_0__8_), .TE(test_se), .CP(n24), .Q(
        mem_0__9_), .QN(n680) );
  FD1S mem_reg_0__8_ ( .D(n454), .TI(mem_0__7_), .TE(test_se), .CP(n24), .Q(
        mem_0__8_), .QN(n679) );
  FD1S mem_reg_0__7_ ( .D(n453), .TI(mem_0__6_), .TE(test_se), .CP(n24), .Q(
        mem_0__7_), .QN(n678) );
  FD1S mem_reg_0__6_ ( .D(n452), .TI(mem_0__5_), .TE(test_se), .CP(n23), .Q(
        mem_0__6_), .QN(n677) );
  FD1S mem_reg_0__5_ ( .D(n451), .TI(mem_0__4_), .TE(test_se), .CP(n23), .Q(
        mem_0__5_), .QN(n676) );
  FD1S mem_reg_0__4_ ( .D(n450), .TI(mem_0__3_), .TE(test_se), .CP(n23), .Q(
        mem_0__4_), .QN(n675) );
  FD1S mem_reg_0__3_ ( .D(n449), .TI(mem_0__2_), .TE(test_se), .CP(n23), .Q(
        mem_0__3_), .QN(n674) );
  FD1S mem_reg_0__2_ ( .D(n448), .TI(mem_0__1_), .TE(test_se), .CP(n23), .Q(
        mem_0__2_), .QN(n673) );
  FD1S mem_reg_0__1_ ( .D(n447), .TI(mem_0__0_), .TE(test_se), .CP(n23), .Q(
        mem_0__1_), .QN(n672) );
  FD1S mem_reg_0__0_ ( .D(n482), .TI(grey_wr_ptr[2]), .TE(test_se), .CP(n26), 
        .Q(mem_0__0_), .QN(n707) );
  FD1S rd_data_q_reg_25_ ( .D(rd_data_c[25]), .TI(rd_data[24]), .TE(test_se), 
        .CP(n7), .Q(rd_data[25]) );
  FD1S rd_data_q_reg_6_ ( .D(rd_data_c[6]), .TI(rd_data[5]), .TE(test_se), 
        .CP(n6), .Q(rd_data[6]) );
  FD4S empty_q_reg ( .D(n333), .TI(1'b0), .TE(1'b0), .CP(n9), .SD(rd_reset_n), 
        .Q(empty), .QN(n561) );
  FD2S grey_wr_ptr_reg_2_ ( .D(n337), .TI(grey_wr_ptr[1]), .TE(test_se), .CP(
        n14), .CD(wr_reset_n), .Q(grey_wr_ptr[2]), .QN(n563) );
  FD2S grey_rd_ptr_reg_2_ ( .D(n486), .TI(1'b0), .TE(1'b0), .CP(n8), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[2]), .QN(n709) );
  FD2S grey_rd_ptr_reg_1_ ( .D(n484), .TI(1'b0), .TE(1'b0), .CP(n8), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[1]), .QN(n708) );
  FD1S rd_data_q_reg_35_ ( .D(rd_data_c[35]), .TI(rd_data[34]), .TE(test_se), 
        .CP(n8), .Q(rd_data[35]) );
  FD1S rd_data_q_reg_30_ ( .D(rd_data_c[30]), .TI(rd_data[29]), .TE(test_se), 
        .CP(n8), .Q(rd_data[30]) );
  FD1S rd_data_q_reg_28_ ( .D(rd_data_c[28]), .TI(rd_data[27]), .TE(test_se), 
        .CP(n8), .Q(rd_data[28]) );
  FD1S rd_data_q_reg_26_ ( .D(rd_data_c[26]), .TI(rd_data[25]), .TE(test_se), 
        .CP(n7), .Q(rd_data[26]) );
  FD1S rd_data_q_reg_24_ ( .D(rd_data_c[24]), .TI(rd_data[23]), .TE(test_se), 
        .CP(n7), .Q(rd_data[24]) );
  FD1S rd_data_q_reg_3_ ( .D(rd_data_c[3]), .TI(rd_data[2]), .TE(test_se), 
        .CP(n5), .Q(rd_data[3]) );
  FD1S rd_data_q_reg_2_ ( .D(rd_data_c[2]), .TI(rd_data[1]), .TE(test_se), 
        .CP(n5), .Q(rd_data[2]) );
  FD2S grey_wr_ptr_reg_1_ ( .D(n335), .TI(grey_wr_ptr[0]), .TE(test_se), .CP(
        n14), .CD(wr_reset_n), .Q(grey_wr_ptr[1]) );
  FD2S rd_ptr_reg_2_ ( .D(n487), .TI(1'b0), .TE(1'b0), .CP(n8), .CD(rd_reset_n), .Q(n712), .QN(n3) );
  FD2S sync_rd_ptr_1_reg_1_ ( .D(sync_rd_ptr_0_1_), .TI(sync_rd_ptr_1[0]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[1]), .QN(
        n711) );
  FD2S sync_rd_ptr_1_reg_0_ ( .D(test_so6), .TI(sync_rd_ptr_0_2_), .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[0]) );
  FD2S full_q_reg ( .D(n334), .TI(test_si1), .TE(test_se), .CP(n27), .CD(
        wr_reset_n), .Q(full), .QN(n562) );
  FD2S sync_wr_ptr_1_reg_0_ ( .D(sync_wr_ptr_0[0]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(rd_reset_n), .Q(sync_wr_ptr_1[0]) );
  FD1S rd_data_q_reg_34_ ( .D(rd_data_c[34]), .TI(rd_data[33]), .TE(test_se), 
        .CP(n8), .Q(rd_data[34]) );
  FD1S rd_data_q_reg_33_ ( .D(rd_data_c[33]), .TI(rd_data[32]), .TE(test_se), 
        .CP(n8), .Q(rd_data[33]) );
  FD1S rd_data_q_reg_32_ ( .D(rd_data_c[32]), .TI(rd_data[31]), .TE(test_se), 
        .CP(n8), .Q(rd_data[32]) );
  FD1S rd_data_q_reg_29_ ( .D(rd_data_c[29]), .TI(rd_data[28]), .TE(test_se), 
        .CP(n8), .Q(rd_data[29]) );
  FD1S rd_data_q_reg_27_ ( .D(rd_data_c[27]), .TI(rd_data[26]), .TE(test_se), 
        .CP(n7), .Q(rd_data[27]) );
  FD1S rd_data_q_reg_23_ ( .D(rd_data_c[23]), .TI(rd_data[22]), .TE(test_se), 
        .CP(n7), .Q(rd_data[23]) );
  FD1S rd_data_q_reg_22_ ( .D(rd_data_c[22]), .TI(rd_data[21]), .TE(test_se), 
        .CP(n7), .Q(rd_data[22]) );
  FD1S rd_data_q_reg_21_ ( .D(rd_data_c[21]), .TI(rd_data[20]), .TE(test_se), 
        .CP(n7), .Q(rd_data[21]) );
  FD1S rd_data_q_reg_20_ ( .D(rd_data_c[20]), .TI(rd_data[19]), .TE(test_se), 
        .CP(n7), .Q(rd_data[20]) );
  FD1S rd_data_q_reg_19_ ( .D(rd_data_c[19]), .TI(test_si9), .TE(test_se), 
        .CP(n7), .Q(rd_data[19]) );
  FD1S rd_data_q_reg_18_ ( .D(rd_data_c[18]), .TI(rd_data[17]), .TE(test_se), 
        .CP(n7), .Q(rd_data[18]) );
  FD1S rd_data_q_reg_17_ ( .D(rd_data_c[17]), .TI(rd_data[16]), .TE(test_se), 
        .CP(n7), .Q(rd_data[17]) );
  FD1S rd_data_q_reg_16_ ( .D(rd_data_c[16]), .TI(rd_data[15]), .TE(test_se), 
        .CP(n7), .Q(rd_data[16]) );
  FD1S rd_data_q_reg_15_ ( .D(rd_data_c[15]), .TI(rd_data[14]), .TE(test_se), 
        .CP(n6), .Q(rd_data[15]) );
  FD1S rd_data_q_reg_14_ ( .D(rd_data_c[14]), .TI(rd_data[13]), .TE(test_se), 
        .CP(n6), .Q(rd_data[14]) );
  FD1S rd_data_q_reg_13_ ( .D(rd_data_c[13]), .TI(rd_data[12]), .TE(test_se), 
        .CP(n6), .Q(rd_data[13]) );
  FD1S rd_data_q_reg_12_ ( .D(rd_data_c[12]), .TI(rd_data[11]), .TE(test_se), 
        .CP(n6), .Q(rd_data[12]) );
  FD1S rd_data_q_reg_11_ ( .D(rd_data_c[11]), .TI(rd_data[10]), .TE(test_se), 
        .CP(n6), .Q(rd_data[11]) );
  FD1S rd_data_q_reg_10_ ( .D(rd_data_c[10]), .TI(rd_data[9]), .TE(test_se), 
        .CP(n6), .Q(rd_data[10]) );
  FD1S rd_data_q_reg_9_ ( .D(rd_data_c[9]), .TI(rd_data[8]), .TE(test_se), 
        .CP(n6), .Q(rd_data[9]) );
  FD1S rd_data_q_reg_7_ ( .D(rd_data_c[7]), .TI(rd_data[6]), .TE(test_se), 
        .CP(n6), .Q(rd_data[7]) );
  FD1S rd_data_q_reg_5_ ( .D(rd_data_c[5]), .TI(rd_data[4]), .TE(test_se), 
        .CP(n6), .Q(rd_data[5]) );
  FD1S rd_data_q_reg_4_ ( .D(rd_data_c[4]), .TI(rd_data[3]), .TE(test_se), 
        .CP(n6), .Q(rd_data[4]) );
  FD1S rd_data_q_reg_1_ ( .D(rd_data_c[1]), .TI(rd_data[0]), .TE(test_se), 
        .CP(n5), .Q(rd_data[1]) );
  FD1S rd_data_q_reg_0_ ( .D(rd_data_c[0]), .TI(test_si8), .TE(test_se), .CP(
        n5), .Q(rd_data[0]) );
  FD2S wr_ptr_reg_2_ ( .D(n338), .TI(wr_ptr[1]), .TE(test_se), .CP(n14), .CD(
        wr_reset_n), .Q(test_so7), .QN(n2) );
  FD2S grey_wr_ptr_reg_0_ ( .D(n336), .TI(full), .TE(test_se), .CP(n14), .CD(
        wr_reset_n), .Q(grey_wr_ptr[0]) );
  FD2S grey_rd_ptr_reg_0_ ( .D(n485), .TI(1'b0), .TE(1'b0), .CP(n8), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[0]) );
  FD1S rd_data_q_reg_31_ ( .D(rd_data_c[31]), .TI(rd_data[30]), .TE(test_se), 
        .CP(n8), .Q(rd_data[31]) );
  FD1S rd_data_q_reg_8_ ( .D(rd_data_c[8]), .TI(rd_data[7]), .TE(test_se), 
        .CP(n6), .Q(rd_data[8]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0_2_), .TI(sync_rd_ptr_1[1]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]) );
  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(rd_reset_n), .Q(sync_wr_ptr_1[2]) );
  FD2S wr_ptr_reg_1_ ( .D(n483), .TI(wr_ptr[0]), .TE(test_se), .CP(n14), .CD(
        wr_reset_n), .Q(wr_ptr[1]), .QN(n1) );
  FD2S rd_ptr_reg_0_ ( .D(n489), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(N45), .QN(n248) );
  FD2S rd_ptr_reg_1_ ( .D(n488), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(N46), .QN(n246) );
  FD2S wr_ptr_reg_0_ ( .D(n714), .TI(sync_rd_ptr_1[2]), .TE(test_se), .CP(n14), 
        .CD(wr_reset_n), .Q(wr_ptr[0]), .QN(n4) );
  FD2S sync_rd_ptr_0_reg_2_ ( .D(grey_rd_ptr_dly[2]), .TI(sync_rd_ptr_0_1_), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_0_2_) );
  FD2S sync_rd_ptr_0_reg_1_ ( .D(grey_rd_ptr_dly[1]), .TI(test_si7), .TE(
        test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_0_1_) );
  FD2S sync_rd_ptr_0_reg_0_ ( .D(grey_rd_ptr_dly[0]), .TI(mem_3__35_), .TE(
        test_se), .CP(n26), .CD(wr_reset_n), .Q(test_so6) );
  FD2S sync_wr_ptr_0_reg_2_ ( .D(grey_wr_ptr[2]), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(sync_wr_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_1_ ( .D(grey_wr_ptr[1]), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(sync_wr_ptr_0[1]) );
  FD2S sync_wr_ptr_0_reg_0_ ( .D(grey_wr_ptr[0]), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(sync_wr_ptr_0[0]) );
  IVP U209 ( .A(n29), .Z(n24) );
  IVP U210 ( .A(n28), .Z(n25) );
  IVP U211 ( .A(n28), .Z(n26) );
  IVP U212 ( .A(n30), .Z(n21) );
  IVP U213 ( .A(n29), .Z(n22) );
  IVP U214 ( .A(n29), .Z(n23) );
  IVP U215 ( .A(n237), .Z(n18) );
  IVP U216 ( .A(n30), .Z(n19) );
  IVP U217 ( .A(n30), .Z(n20) );
  IVP U218 ( .A(n238), .Z(n15) );
  IVP U219 ( .A(n237), .Z(n16) );
  IVP U220 ( .A(n237), .Z(n17) );
  IVP U221 ( .A(n238), .Z(n14) );
  IVP U222 ( .A(n28), .Z(n27) );
  IVP U223 ( .A(n240), .Z(n28) );
  IVP U224 ( .A(n240), .Z(n29) );
  IVP U225 ( .A(n239), .Z(n30) );
  IVP U226 ( .A(n239), .Z(n237) );
  IVP U227 ( .A(n239), .Z(n238) );
  IVP U228 ( .A(n11), .Z(n6) );
  IVP U229 ( .A(n10), .Z(n7) );
  IVP U230 ( .A(n10), .Z(n8) );
  IVP U231 ( .A(n11), .Z(n5) );
  IVP U232 ( .A(n10), .Z(n9) );
  IVP U233 ( .A(n241), .Z(n239) );
  IVP U234 ( .A(n12), .Z(n10) );
  IVP U235 ( .A(n241), .Z(n240) );
  IVP U236 ( .A(n12), .Z(n11) );
  IVP U237 ( .A(wr_clk), .Z(n241) );
  IVP U238 ( .A(n13), .Z(n12) );
  IVP U239 ( .A(rd_clk), .Z(n13) );
  NR2 U240 ( .A(n246), .B(N45), .Z(n315) );
  NR2 U241 ( .A(n246), .B(n248), .Z(n314) );
  AO2 U242 ( .A(mem_2__0_), .B(n315), .C(mem_3__0_), .D(n314), .Z(n243) );
  NR2 U243 ( .A(N45), .B(N46), .Z(n317) );
  NR2 U244 ( .A(n248), .B(N46), .Z(n316) );
  AO2 U245 ( .A(mem_0__0_), .B(n317), .C(mem_1__0_), .D(n316), .Z(n242) );
  ND2 U246 ( .A(n243), .B(n242), .Z(rd_data_c[0]) );
  AO2 U247 ( .A(mem_2__1_), .B(n315), .C(mem_3__1_), .D(n314), .Z(n245) );
  AO2 U248 ( .A(mem_0__1_), .B(n317), .C(mem_1__1_), .D(n316), .Z(n244) );
  ND2 U249 ( .A(n245), .B(n244), .Z(rd_data_c[1]) );
  AO2 U250 ( .A(mem_2__2_), .B(n315), .C(mem_3__2_), .D(n314), .Z(n249) );
  AO2 U251 ( .A(mem_0__2_), .B(n317), .C(mem_1__2_), .D(n316), .Z(n247) );
  ND2 U252 ( .A(n249), .B(n247), .Z(rd_data_c[2]) );
  AO2 U253 ( .A(mem_2__3_), .B(n315), .C(mem_3__3_), .D(n314), .Z(n251) );
  AO2 U254 ( .A(mem_0__3_), .B(n317), .C(mem_1__3_), .D(n316), .Z(n250) );
  ND2 U255 ( .A(n251), .B(n250), .Z(rd_data_c[3]) );
  AO2 U256 ( .A(mem_2__4_), .B(n315), .C(mem_3__4_), .D(n314), .Z(n253) );
  AO2 U257 ( .A(mem_0__4_), .B(n317), .C(mem_1__4_), .D(n316), .Z(n252) );
  ND2 U258 ( .A(n253), .B(n252), .Z(rd_data_c[4]) );
  AO2 U259 ( .A(mem_2__5_), .B(n315), .C(mem_3__5_), .D(n314), .Z(n255) );
  AO2 U260 ( .A(mem_0__5_), .B(n317), .C(mem_1__5_), .D(n316), .Z(n254) );
  ND2 U261 ( .A(n255), .B(n254), .Z(rd_data_c[5]) );
  AO2 U262 ( .A(mem_2__6_), .B(n315), .C(mem_3__6_), .D(n314), .Z(n257) );
  AO2 U263 ( .A(mem_0__6_), .B(n317), .C(mem_1__6_), .D(n316), .Z(n256) );
  ND2 U264 ( .A(n257), .B(n256), .Z(rd_data_c[6]) );
  AO2 U265 ( .A(mem_2__7_), .B(n315), .C(mem_3__7_), .D(n314), .Z(n259) );
  AO2 U266 ( .A(mem_0__7_), .B(n317), .C(mem_1__7_), .D(n316), .Z(n258) );
  ND2 U267 ( .A(n259), .B(n258), .Z(rd_data_c[7]) );
  AO2 U268 ( .A(mem_2__8_), .B(n315), .C(mem_3__8_), .D(n314), .Z(n261) );
  AO2 U269 ( .A(mem_0__8_), .B(n317), .C(test_so2), .D(n316), .Z(n260) );
  ND2 U270 ( .A(n261), .B(n260), .Z(rd_data_c[8]) );
  AO2 U271 ( .A(mem_2__9_), .B(n315), .C(mem_3__9_), .D(n314), .Z(n263) );
  AO2 U272 ( .A(mem_0__9_), .B(n317), .C(mem_1__9_), .D(n316), .Z(n262) );
  ND2 U273 ( .A(n263), .B(n262), .Z(rd_data_c[9]) );
  AO2 U274 ( .A(mem_2__10_), .B(n315), .C(mem_3__10_), .D(n314), .Z(n265) );
  AO2 U275 ( .A(mem_0__10_), .B(n317), .C(mem_1__10_), .D(n316), .Z(n264) );
  ND2 U276 ( .A(n265), .B(n264), .Z(rd_data_c[10]) );
  AO2 U277 ( .A(mem_2__11_), .B(n315), .C(test_so5), .D(n314), .Z(n267) );
  AO2 U278 ( .A(mem_0__11_), .B(n317), .C(mem_1__11_), .D(n316), .Z(n266) );
  ND2 U279 ( .A(n267), .B(n266), .Z(rd_data_c[11]) );
  AO2 U280 ( .A(mem_2__12_), .B(n315), .C(mem_3__12_), .D(n314), .Z(n269) );
  AO2 U281 ( .A(mem_0__12_), .B(n317), .C(mem_1__12_), .D(n316), .Z(n268) );
  ND2 U282 ( .A(n269), .B(n268), .Z(rd_data_c[12]) );
  AO2 U283 ( .A(mem_2__13_), .B(n315), .C(mem_3__13_), .D(n314), .Z(n271) );
  AO2 U284 ( .A(mem_0__13_), .B(n317), .C(mem_1__13_), .D(n316), .Z(n270) );
  ND2 U285 ( .A(n271), .B(n270), .Z(rd_data_c[13]) );
  AO2 U286 ( .A(mem_2__14_), .B(n315), .C(mem_3__14_), .D(n314), .Z(n273) );
  AO2 U287 ( .A(mem_0__14_), .B(n317), .C(mem_1__14_), .D(n316), .Z(n272) );
  ND2 U288 ( .A(n273), .B(n272), .Z(rd_data_c[14]) );
  AO2 U289 ( .A(mem_2__15_), .B(n315), .C(mem_3__15_), .D(n314), .Z(n275) );
  AO2 U290 ( .A(mem_0__15_), .B(n317), .C(mem_1__15_), .D(n316), .Z(n274) );
  ND2 U291 ( .A(n275), .B(n274), .Z(rd_data_c[15]) );
  AO2 U292 ( .A(mem_2__16_), .B(n315), .C(mem_3__16_), .D(n314), .Z(n277) );
  AO2 U293 ( .A(mem_0__16_), .B(n317), .C(mem_1__16_), .D(n316), .Z(n276) );
  ND2 U294 ( .A(n277), .B(n276), .Z(rd_data_c[16]) );
  AO2 U295 ( .A(mem_2__17_), .B(n315), .C(mem_3__17_), .D(n314), .Z(n279) );
  AO2 U296 ( .A(mem_0__17_), .B(n317), .C(mem_1__17_), .D(n316), .Z(n278) );
  ND2 U297 ( .A(n279), .B(n278), .Z(rd_data_c[17]) );
  AO2 U298 ( .A(mem_2__18_), .B(n315), .C(mem_3__18_), .D(n314), .Z(n281) );
  AO2 U299 ( .A(mem_0__18_), .B(n317), .C(mem_1__18_), .D(n316), .Z(n280) );
  ND2 U300 ( .A(n281), .B(n280), .Z(rd_data_c[18]) );
  AO2 U301 ( .A(mem_2__19_), .B(n315), .C(mem_3__19_), .D(n314), .Z(n283) );
  AO2 U302 ( .A(test_so1), .B(n317), .C(mem_1__19_), .D(n316), .Z(n282) );
  ND2 U303 ( .A(n283), .B(n282), .Z(rd_data_c[19]) );
  AO2 U304 ( .A(mem_2__20_), .B(n315), .C(mem_3__20_), .D(n314), .Z(n285) );
  AO2 U305 ( .A(mem_0__20_), .B(n317), .C(mem_1__20_), .D(n316), .Z(n284) );
  ND2 U306 ( .A(n285), .B(n284), .Z(rd_data_c[20]) );
  AO2 U307 ( .A(mem_2__21_), .B(n315), .C(mem_3__21_), .D(n314), .Z(n287) );
  AO2 U308 ( .A(mem_0__21_), .B(n317), .C(mem_1__21_), .D(n316), .Z(n286) );
  ND2 U309 ( .A(n287), .B(n286), .Z(rd_data_c[21]) );
  AO2 U310 ( .A(test_so4), .B(n315), .C(mem_3__22_), .D(n314), .Z(n289) );
  AO2 U311 ( .A(mem_0__22_), .B(n317), .C(mem_1__22_), .D(n316), .Z(n288) );
  ND2 U312 ( .A(n289), .B(n288), .Z(rd_data_c[22]) );
  AO2 U313 ( .A(mem_2__23_), .B(n315), .C(mem_3__23_), .D(n314), .Z(n291) );
  AO2 U314 ( .A(mem_0__23_), .B(n317), .C(mem_1__23_), .D(n316), .Z(n290) );
  ND2 U315 ( .A(n291), .B(n290), .Z(rd_data_c[23]) );
  AO2 U316 ( .A(mem_2__24_), .B(n315), .C(mem_3__24_), .D(n314), .Z(n293) );
  AO2 U317 ( .A(mem_0__24_), .B(n317), .C(mem_1__24_), .D(n316), .Z(n292) );
  ND2 U318 ( .A(n293), .B(n292), .Z(rd_data_c[24]) );
  AO2 U319 ( .A(mem_2__25_), .B(n315), .C(mem_3__25_), .D(n314), .Z(n295) );
  AO2 U320 ( .A(mem_0__25_), .B(n317), .C(mem_1__25_), .D(n316), .Z(n294) );
  ND2 U321 ( .A(n295), .B(n294), .Z(rd_data_c[25]) );
  AO2 U322 ( .A(mem_2__26_), .B(n315), .C(mem_3__26_), .D(n314), .Z(n297) );
  AO2 U323 ( .A(mem_0__26_), .B(n317), .C(mem_1__26_), .D(n316), .Z(n296) );
  ND2 U324 ( .A(n297), .B(n296), .Z(rd_data_c[26]) );
  AO2 U325 ( .A(mem_2__27_), .B(n315), .C(mem_3__27_), .D(n314), .Z(n299) );
  AO2 U326 ( .A(mem_0__27_), .B(n317), .C(mem_1__27_), .D(n316), .Z(n298) );
  ND2 U327 ( .A(n299), .B(n298), .Z(rd_data_c[27]) );
  AO2 U328 ( .A(mem_2__28_), .B(n315), .C(mem_3__28_), .D(n314), .Z(n301) );
  AO2 U329 ( .A(mem_0__28_), .B(n317), .C(mem_1__28_), .D(n316), .Z(n300) );
  ND2 U330 ( .A(n301), .B(n300), .Z(rd_data_c[28]) );
  AO2 U331 ( .A(mem_2__29_), .B(n315), .C(mem_3__29_), .D(n314), .Z(n303) );
  AO2 U332 ( .A(mem_0__29_), .B(n317), .C(mem_1__29_), .D(n316), .Z(n302) );
  ND2 U333 ( .A(n303), .B(n302), .Z(rd_data_c[29]) );
  AO2 U334 ( .A(mem_2__30_), .B(n315), .C(mem_3__30_), .D(n314), .Z(n305) );
  AO2 U335 ( .A(mem_0__30_), .B(n317), .C(mem_1__30_), .D(n316), .Z(n304) );
  ND2 U336 ( .A(n305), .B(n304), .Z(rd_data_c[30]) );
  AO2 U337 ( .A(mem_2__31_), .B(n315), .C(mem_3__31_), .D(n314), .Z(n307) );
  AO2 U338 ( .A(mem_0__31_), .B(n317), .C(mem_1__31_), .D(n316), .Z(n306) );
  ND2 U339 ( .A(n307), .B(n306), .Z(rd_data_c[31]) );
  AO2 U340 ( .A(mem_2__32_), .B(n315), .C(mem_3__32_), .D(n314), .Z(n309) );
  AO2 U341 ( .A(mem_0__32_), .B(n317), .C(mem_1__32_), .D(n316), .Z(n308) );
  ND2 U342 ( .A(n309), .B(n308), .Z(rd_data_c[32]) );
  AO2 U343 ( .A(mem_2__33_), .B(n315), .C(mem_3__33_), .D(n314), .Z(n311) );
  AO2 U344 ( .A(mem_0__33_), .B(n317), .C(test_so3), .D(n316), .Z(n310) );
  ND2 U345 ( .A(n311), .B(n310), .Z(rd_data_c[33]) );
  AO2 U346 ( .A(mem_2__34_), .B(n315), .C(mem_3__34_), .D(n314), .Z(n313) );
  AO2 U347 ( .A(mem_0__34_), .B(n317), .C(mem_1__34_), .D(n316), .Z(n312) );
  ND2 U348 ( .A(n313), .B(n312), .Z(rd_data_c[34]) );
  AO2 U349 ( .A(mem_2__35_), .B(n315), .C(mem_3__35_), .D(n314), .Z(n319) );
  AO2 U350 ( .A(mem_0__35_), .B(n317), .C(mem_1__35_), .D(n316), .Z(n318) );
  ND2 U351 ( .A(n319), .B(n318), .Z(rd_data_c[35]) );
  EO U352 ( .A(wr_ptr[0]), .B(wr_en), .Z(n714) );
  EO U353 ( .A(N45), .B(rd_en), .Z(n489) );
  AO7 U354 ( .A(rd_en), .B(n246), .C(n320), .Z(n488) );
  AO7 U355 ( .A(rd_en), .B(n3), .C(n321), .Z(n487) );
  AO7 U356 ( .A(rd_en), .B(n709), .C(n321), .Z(n486) );
  AO7 U357 ( .A(n248), .B(n320), .C(n322), .Z(n485) );
  MUX21L U358 ( .A(grey_rd_ptr_dly[0]), .B(n323), .S(rd_en), .Z(n322) );
  NR2 U359 ( .A(n324), .B(N45), .Z(n323) );
  AO7 U360 ( .A(rd_en), .B(n708), .C(n325), .Z(n484) );
  IV U361 ( .A(n326), .Z(n325) );
  AO4 U362 ( .A(n327), .B(n320), .C(n321), .D(n324), .Z(n326) );
  ND2 U363 ( .A(rd_en), .B(n327), .Z(n321) );
  ND2 U364 ( .A(rd_en), .B(n324), .Z(n320) );
  EO U365 ( .A(n246), .B(n248), .Z(n324) );
  EN U366 ( .A(n3), .B(n328), .Z(n327) );
  NR2 U367 ( .A(n246), .B(n248), .Z(n328) );
  AO7 U368 ( .A(wr_en), .B(n1), .C(n329), .Z(n483) );
  MUX21L U369 ( .A(n707), .B(n330), .S(n331), .Z(n482) );
  MUX21L U370 ( .A(n706), .B(n332), .S(n331), .Z(n481) );
  MUX21L U371 ( .A(n705), .B(n490), .S(n331), .Z(n480) );
  MUX21L U372 ( .A(n704), .B(n491), .S(n331), .Z(n479) );
  MUX21L U373 ( .A(n703), .B(n492), .S(n331), .Z(n478) );
  MUX21L U374 ( .A(n702), .B(n493), .S(n331), .Z(n477) );
  MUX21L U375 ( .A(n701), .B(n494), .S(n331), .Z(n476) );
  MUX21L U376 ( .A(n700), .B(n495), .S(n331), .Z(n475) );
  MUX21L U377 ( .A(n699), .B(n496), .S(n331), .Z(n474) );
  MUX21L U378 ( .A(n698), .B(n497), .S(n331), .Z(n473) );
  MUX21L U379 ( .A(n697), .B(n498), .S(n331), .Z(n472) );
  MUX21L U380 ( .A(n696), .B(n499), .S(n331), .Z(n471) );
  MUX21L U381 ( .A(n695), .B(n500), .S(n331), .Z(n470) );
  MUX21L U382 ( .A(n694), .B(n501), .S(n331), .Z(n469) );
  MUX21L U383 ( .A(n693), .B(n502), .S(n331), .Z(n468) );
  MUX21L U384 ( .A(n692), .B(n503), .S(n331), .Z(n467) );
  MUX21L U385 ( .A(n691), .B(n504), .S(n331), .Z(n466) );
  MUX21L U386 ( .A(n690), .B(n505), .S(n331), .Z(n465) );
  MUX21L U387 ( .A(n689), .B(n506), .S(n331), .Z(n464) );
  MUX21L U388 ( .A(n688), .B(n507), .S(n331), .Z(n463) );
  MUX21L U389 ( .A(n687), .B(n508), .S(n331), .Z(n462) );
  MUX21L U390 ( .A(n686), .B(n509), .S(n331), .Z(n461) );
  MUX21L U391 ( .A(n685), .B(n510), .S(n331), .Z(n460) );
  MUX21L U392 ( .A(n684), .B(n511), .S(n331), .Z(n459) );
  MUX21L U393 ( .A(n683), .B(n512), .S(n331), .Z(n458) );
  MUX21L U394 ( .A(n682), .B(n513), .S(n331), .Z(n457) );
  MUX21L U395 ( .A(n681), .B(n514), .S(n331), .Z(n456) );
  MUX21L U396 ( .A(n680), .B(n515), .S(n331), .Z(n455) );
  MUX21L U397 ( .A(n679), .B(n516), .S(n331), .Z(n454) );
  MUX21L U398 ( .A(n678), .B(n517), .S(n331), .Z(n453) );
  MUX21L U399 ( .A(n677), .B(n518), .S(n331), .Z(n452) );
  MUX21L U400 ( .A(n676), .B(n519), .S(n331), .Z(n451) );
  MUX21L U401 ( .A(n675), .B(n520), .S(n331), .Z(n450) );
  MUX21L U402 ( .A(n674), .B(n521), .S(n331), .Z(n449) );
  MUX21L U403 ( .A(n673), .B(n522), .S(n331), .Z(n448) );
  MUX21L U404 ( .A(n672), .B(n523), .S(n331), .Z(n447) );
  NR3 U405 ( .A(wr_ptr[0]), .B(wr_ptr[1]), .C(n524), .Z(n331) );
  MUX21L U406 ( .A(n671), .B(n330), .S(n525), .Z(n446) );
  MUX21L U407 ( .A(n670), .B(n332), .S(n525), .Z(n445) );
  MUX21L U408 ( .A(n669), .B(n490), .S(n525), .Z(n444) );
  MUX21L U409 ( .A(n668), .B(n491), .S(n525), .Z(n443) );
  MUX21L U410 ( .A(n667), .B(n492), .S(n525), .Z(n442) );
  MUX21L U411 ( .A(n666), .B(n493), .S(n525), .Z(n441) );
  MUX21L U412 ( .A(n665), .B(n494), .S(n525), .Z(n440) );
  MUX21L U413 ( .A(n664), .B(n495), .S(n525), .Z(n439) );
  MUX21L U414 ( .A(n663), .B(n496), .S(n525), .Z(n438) );
  MUX21L U415 ( .A(n662), .B(n497), .S(n525), .Z(n437) );
  MUX21L U416 ( .A(n661), .B(n498), .S(n525), .Z(n436) );
  MUX21L U417 ( .A(n660), .B(n499), .S(n525), .Z(n435) );
  MUX21L U418 ( .A(n659), .B(n500), .S(n525), .Z(n434) );
  MUX21L U419 ( .A(n658), .B(n501), .S(n525), .Z(n433) );
  MUX21L U420 ( .A(n657), .B(n502), .S(n525), .Z(n432) );
  MUX21L U421 ( .A(n656), .B(n503), .S(n525), .Z(n431) );
  MUX21L U422 ( .A(n655), .B(n504), .S(n525), .Z(n430) );
  MUX21L U423 ( .A(n654), .B(n505), .S(n525), .Z(n429) );
  MUX21L U424 ( .A(n653), .B(n506), .S(n525), .Z(n428) );
  MUX21L U425 ( .A(n652), .B(n507), .S(n525), .Z(n427) );
  MUX21L U426 ( .A(n651), .B(n508), .S(n525), .Z(n426) );
  MUX21L U427 ( .A(n650), .B(n509), .S(n525), .Z(n425) );
  MUX21L U428 ( .A(n649), .B(n510), .S(n525), .Z(n424) );
  MUX21L U429 ( .A(n648), .B(n511), .S(n525), .Z(n423) );
  MUX21L U430 ( .A(n647), .B(n512), .S(n525), .Z(n422) );
  MUX21L U431 ( .A(n646), .B(n513), .S(n525), .Z(n421) );
  MUX21L U432 ( .A(n645), .B(n514), .S(n525), .Z(n420) );
  MUX21L U433 ( .A(n644), .B(n515), .S(n525), .Z(n419) );
  MUX21L U434 ( .A(n643), .B(n516), .S(n525), .Z(n418) );
  MUX21L U435 ( .A(n642), .B(n517), .S(n525), .Z(n417) );
  MUX21L U436 ( .A(n641), .B(n518), .S(n525), .Z(n416) );
  MUX21L U437 ( .A(n640), .B(n519), .S(n525), .Z(n415) );
  MUX21L U438 ( .A(n639), .B(n520), .S(n525), .Z(n414) );
  MUX21L U439 ( .A(n638), .B(n521), .S(n525), .Z(n413) );
  MUX21L U440 ( .A(n637), .B(n522), .S(n525), .Z(n412) );
  MUX21L U441 ( .A(n636), .B(n523), .S(n525), .Z(n411) );
  NR3 U442 ( .A(n4), .B(wr_ptr[1]), .C(n524), .Z(n525) );
  MUX21L U443 ( .A(n635), .B(n330), .S(n526), .Z(n410) );
  MUX21L U444 ( .A(n634), .B(n332), .S(n526), .Z(n409) );
  MUX21L U445 ( .A(n633), .B(n490), .S(n526), .Z(n408) );
  MUX21L U446 ( .A(n632), .B(n491), .S(n526), .Z(n407) );
  MUX21L U447 ( .A(n631), .B(n492), .S(n526), .Z(n406) );
  MUX21L U448 ( .A(n630), .B(n493), .S(n526), .Z(n405) );
  MUX21L U449 ( .A(n629), .B(n494), .S(n526), .Z(n404) );
  MUX21L U450 ( .A(n628), .B(n495), .S(n526), .Z(n403) );
  MUX21L U451 ( .A(n627), .B(n496), .S(n526), .Z(n402) );
  MUX21L U452 ( .A(n626), .B(n497), .S(n526), .Z(n401) );
  MUX21L U453 ( .A(n625), .B(n498), .S(n526), .Z(n400) );
  MUX21L U454 ( .A(n624), .B(n499), .S(n526), .Z(n399) );
  MUX21L U455 ( .A(n623), .B(n500), .S(n526), .Z(n398) );
  MUX21L U456 ( .A(n622), .B(n501), .S(n526), .Z(n397) );
  MUX21L U457 ( .A(n621), .B(n502), .S(n526), .Z(n396) );
  MUX21L U458 ( .A(n620), .B(n503), .S(n526), .Z(n395) );
  MUX21L U459 ( .A(n619), .B(n504), .S(n526), .Z(n394) );
  MUX21L U460 ( .A(n618), .B(n505), .S(n526), .Z(n393) );
  MUX21L U461 ( .A(n617), .B(n506), .S(n526), .Z(n392) );
  MUX21L U462 ( .A(n616), .B(n507), .S(n526), .Z(n391) );
  MUX21L U463 ( .A(n615), .B(n508), .S(n526), .Z(n390) );
  MUX21L U464 ( .A(n614), .B(n509), .S(n526), .Z(n389) );
  MUX21L U465 ( .A(n613), .B(n510), .S(n526), .Z(n388) );
  MUX21L U466 ( .A(n612), .B(n511), .S(n526), .Z(n387) );
  MUX21L U467 ( .A(n611), .B(n512), .S(n526), .Z(n386) );
  MUX21L U468 ( .A(n610), .B(n513), .S(n526), .Z(n385) );
  MUX21L U469 ( .A(n609), .B(n514), .S(n526), .Z(n384) );
  MUX21L U470 ( .A(n608), .B(n515), .S(n526), .Z(n383) );
  MUX21L U471 ( .A(n607), .B(n516), .S(n526), .Z(n382) );
  MUX21L U472 ( .A(n606), .B(n517), .S(n526), .Z(n381) );
  MUX21L U473 ( .A(n605), .B(n518), .S(n526), .Z(n380) );
  MUX21L U474 ( .A(n604), .B(n519), .S(n526), .Z(n379) );
  MUX21L U475 ( .A(n603), .B(n520), .S(n526), .Z(n378) );
  MUX21L U476 ( .A(n602), .B(n521), .S(n526), .Z(n377) );
  MUX21L U477 ( .A(n601), .B(n522), .S(n526), .Z(n376) );
  MUX21L U478 ( .A(n600), .B(n523), .S(n526), .Z(n375) );
  NR3 U479 ( .A(n524), .B(wr_ptr[0]), .C(n1), .Z(n526) );
  MUX21L U480 ( .A(n599), .B(n330), .S(n527), .Z(n374) );
  IV U481 ( .A(wr_data[0]), .Z(n330) );
  MUX21L U482 ( .A(n598), .B(n332), .S(n527), .Z(n373) );
  IV U483 ( .A(wr_data[35]), .Z(n332) );
  MUX21L U484 ( .A(n597), .B(n490), .S(n527), .Z(n372) );
  IV U485 ( .A(wr_data[34]), .Z(n490) );
  MUX21L U486 ( .A(n596), .B(n491), .S(n527), .Z(n371) );
  IV U487 ( .A(wr_data[33]), .Z(n491) );
  MUX21L U488 ( .A(n595), .B(n492), .S(n527), .Z(n370) );
  IV U489 ( .A(wr_data[32]), .Z(n492) );
  MUX21L U490 ( .A(n594), .B(n493), .S(n527), .Z(n369) );
  IV U491 ( .A(wr_data[31]), .Z(n493) );
  MUX21L U492 ( .A(n593), .B(n494), .S(n527), .Z(n368) );
  IV U493 ( .A(wr_data[30]), .Z(n494) );
  MUX21L U494 ( .A(n592), .B(n495), .S(n527), .Z(n367) );
  IV U495 ( .A(wr_data[29]), .Z(n495) );
  MUX21L U496 ( .A(n591), .B(n496), .S(n527), .Z(n366) );
  IV U497 ( .A(wr_data[28]), .Z(n496) );
  MUX21L U498 ( .A(n590), .B(n497), .S(n527), .Z(n365) );
  IV U499 ( .A(wr_data[27]), .Z(n497) );
  MUX21L U500 ( .A(n589), .B(n498), .S(n527), .Z(n364) );
  IV U501 ( .A(wr_data[26]), .Z(n498) );
  MUX21L U502 ( .A(n588), .B(n499), .S(n527), .Z(n363) );
  IV U503 ( .A(wr_data[25]), .Z(n499) );
  MUX21L U504 ( .A(n587), .B(n500), .S(n527), .Z(n362) );
  IV U505 ( .A(wr_data[24]), .Z(n500) );
  MUX21L U506 ( .A(n586), .B(n501), .S(n527), .Z(n361) );
  IV U507 ( .A(wr_data[23]), .Z(n501) );
  MUX21L U508 ( .A(n585), .B(n502), .S(n527), .Z(n360) );
  IV U509 ( .A(wr_data[22]), .Z(n502) );
  MUX21L U510 ( .A(n584), .B(n503), .S(n527), .Z(n359) );
  IV U511 ( .A(wr_data[21]), .Z(n503) );
  MUX21L U512 ( .A(n583), .B(n504), .S(n527), .Z(n358) );
  IV U513 ( .A(wr_data[20]), .Z(n504) );
  MUX21L U514 ( .A(n582), .B(n505), .S(n527), .Z(n357) );
  IV U515 ( .A(wr_data[19]), .Z(n505) );
  MUX21L U516 ( .A(n581), .B(n506), .S(n527), .Z(n356) );
  IV U517 ( .A(wr_data[18]), .Z(n506) );
  MUX21L U518 ( .A(n580), .B(n507), .S(n527), .Z(n355) );
  IV U519 ( .A(wr_data[17]), .Z(n507) );
  MUX21L U520 ( .A(n579), .B(n508), .S(n527), .Z(n354) );
  IV U521 ( .A(wr_data[16]), .Z(n508) );
  MUX21L U522 ( .A(n578), .B(n509), .S(n527), .Z(n353) );
  IV U523 ( .A(wr_data[15]), .Z(n509) );
  MUX21L U524 ( .A(n577), .B(n510), .S(n527), .Z(n352) );
  IV U525 ( .A(wr_data[14]), .Z(n510) );
  MUX21L U526 ( .A(n576), .B(n511), .S(n527), .Z(n351) );
  IV U527 ( .A(wr_data[13]), .Z(n511) );
  MUX21L U528 ( .A(n575), .B(n512), .S(n527), .Z(n350) );
  IV U529 ( .A(wr_data[12]), .Z(n512) );
  MUX21L U530 ( .A(n574), .B(n513), .S(n527), .Z(n349) );
  IV U531 ( .A(wr_data[11]), .Z(n513) );
  MUX21L U532 ( .A(n573), .B(n514), .S(n527), .Z(n348) );
  IV U533 ( .A(wr_data[10]), .Z(n514) );
  MUX21L U534 ( .A(n572), .B(n515), .S(n527), .Z(n347) );
  IV U535 ( .A(wr_data[9]), .Z(n515) );
  MUX21L U536 ( .A(n571), .B(n516), .S(n527), .Z(n346) );
  IV U537 ( .A(wr_data[8]), .Z(n516) );
  MUX21L U538 ( .A(n570), .B(n517), .S(n527), .Z(n345) );
  IV U539 ( .A(wr_data[7]), .Z(n517) );
  MUX21L U540 ( .A(n569), .B(n518), .S(n527), .Z(n344) );
  IV U541 ( .A(wr_data[6]), .Z(n518) );
  MUX21L U542 ( .A(n568), .B(n519), .S(n527), .Z(n343) );
  IV U543 ( .A(wr_data[5]), .Z(n519) );
  MUX21L U544 ( .A(n567), .B(n520), .S(n527), .Z(n342) );
  IV U545 ( .A(wr_data[4]), .Z(n520) );
  MUX21L U546 ( .A(n566), .B(n521), .S(n527), .Z(n341) );
  IV U547 ( .A(wr_data[3]), .Z(n521) );
  MUX21L U548 ( .A(n565), .B(n522), .S(n527), .Z(n340) );
  IV U549 ( .A(wr_data[2]), .Z(n522) );
  MUX21L U550 ( .A(n564), .B(n523), .S(n527), .Z(n339) );
  NR2 U551 ( .A(n528), .B(n524), .Z(n527) );
  IV U552 ( .A(wr_data[1]), .Z(n523) );
  AO7 U553 ( .A(wr_en), .B(n2), .C(n529), .Z(n338) );
  AO7 U554 ( .A(wr_en), .B(n563), .C(n529), .Z(n337) );
  AO7 U555 ( .A(n4), .B(n329), .C(n530), .Z(n336) );
  MUX21L U556 ( .A(grey_wr_ptr[0]), .B(n531), .S(wr_en), .Z(n530) );
  NR2 U557 ( .A(wr_ptr[0]), .B(n532), .Z(n531) );
  AO7 U558 ( .A(test_so7), .B(n329), .C(n533), .Z(n335) );
  EO1 U559 ( .A(grey_wr_ptr[1]), .B(n524), .C(n529), .D(n532), .Z(n533) );
  ND2 U560 ( .A(wr_en), .B(n534), .Z(n529) );
  EN U561 ( .A(test_so7), .B(n528), .Z(n534) );
  ND2 U562 ( .A(wr_ptr[1]), .B(wr_ptr[0]), .Z(n528) );
  ND2 U563 ( .A(wr_en), .B(n532), .Z(n329) );
  EN U564 ( .A(n1), .B(wr_ptr[0]), .Z(n532) );
  AO4 U565 ( .A(n535), .B(n524), .C(n562), .D(n536), .Z(n334) );
  IV U566 ( .A(wr_en), .Z(n524) );
  AN2 U567 ( .A(n537), .B(n562), .Z(n535) );
  MUX21L U568 ( .A(n538), .B(n561), .S(n539), .Z(n333) );
  NR2 U569 ( .A(aempty), .B(n540), .Z(n539) );
  AO6 U570 ( .A(n541), .B(n542), .C(n561), .Z(n540) );
  IV U571 ( .A(rd_en), .Z(n538) );
  IV U572 ( .A(n537), .Z(afull) );
  AO3 U573 ( .A(n543), .B(n544), .C(n545), .D(n536), .Z(n537) );
  EO U574 ( .A(n546), .B(n547), .Z(n536) );
  EN U575 ( .A(sync_rd_ptr_1[2]), .B(n2), .Z(n547) );
  AO5 U576 ( .A(n544), .B(n548), .C(n1), .Z(n546) );
  EO U577 ( .A(sync_rd_ptr_1[2]), .B(sync_rd_ptr_1[1]), .Z(n548) );
  EO U578 ( .A(n549), .B(n550), .Z(n545) );
  EO U579 ( .A(wr_ptr[1]), .B(n544), .Z(n550) );
  NR2 U580 ( .A(wr_ptr[0]), .B(n551), .Z(n544) );
  AN2 U581 ( .A(wr_ptr[0]), .B(n551), .Z(n543) );
  EN U582 ( .A(n549), .B(sync_rd_ptr_1[0]), .Z(n551) );
  EN U583 ( .A(n711), .B(sync_rd_ptr_1[2]), .Z(n549) );
  IV U584 ( .A(n552), .Z(aempty) );
  AO3 U585 ( .A(n553), .B(n554), .C(n542), .D(n541), .Z(n552) );
  EO U586 ( .A(n555), .B(n556), .Z(n541) );
  NR2 U587 ( .A(n246), .B(n557), .Z(n556) );
  EN U588 ( .A(n712), .B(sync_wr_ptr_1[2]), .Z(n555) );
  EN U589 ( .A(n558), .B(n559), .Z(n542) );
  EO U590 ( .A(n557), .B(n246), .Z(n558) );
  IV U591 ( .A(n557), .Z(n554) );
  ND2 U592 ( .A(n560), .B(N45), .Z(n557) );
  NR2 U593 ( .A(n560), .B(N45), .Z(n553) );
  EN U594 ( .A(n559), .B(sync_wr_ptr_1[0]), .Z(n560) );
  EN U595 ( .A(n713), .B(sync_wr_ptr_1[2]), .Z(n559) );
endmodule


module async_fifo_33_4_0_1_test_1 ( wr_clk, wr_reset_n, wr_en, wr_data, full, 
        afull, rd_clk, rd_reset_n, rd_en, empty, aempty, rd_data, test_si7, 
        test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, test_so7, 
        test_so6, test_so5, test_so4, test_so3, test_so2, test_so1, test_se );
  input [32:0] wr_data;
  output [32:0] rd_data;
  input wr_clk, wr_reset_n, wr_en, rd_clk, rd_reset_n, rd_en, test_si7,
         test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, test_se;
  output full, afull, empty, aempty, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
  wire   N45, N46, mem_3__31_, mem_3__30_, mem_3__29_, mem_3__28_, mem_3__27_,
         mem_3__26_, mem_3__25_, mem_3__24_, mem_3__23_, mem_3__22_,
         mem_3__21_, mem_3__20_, mem_3__19_, mem_3__18_, mem_3__17_,
         mem_3__16_, mem_3__15_, mem_3__14_, mem_3__13_, mem_3__12_,
         mem_3__11_, mem_3__10_, mem_3__9_, mem_3__7_, mem_3__6_, mem_3__5_,
         mem_3__4_, mem_3__3_, mem_3__2_, mem_3__1_, mem_3__0_, mem_2__32_,
         mem_2__31_, mem_2__30_, mem_2__29_, mem_2__28_, mem_2__27_,
         mem_2__26_, mem_2__25_, mem_2__24_, mem_2__23_, mem_2__22_,
         mem_2__21_, mem_2__20_, mem_2__19_, mem_2__18_, mem_2__17_,
         mem_2__15_, mem_2__14_, mem_2__13_, mem_2__12_, mem_2__11_,
         mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_, mem_2__6_, mem_2__5_,
         mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_, mem_1__32_,
         mem_1__31_, mem_1__30_, mem_1__29_, mem_1__28_, mem_1__27_,
         mem_1__26_, mem_1__25_, mem_1__23_, mem_1__22_, mem_1__21_,
         mem_1__20_, mem_1__19_, mem_1__18_, mem_1__17_, mem_1__16_,
         mem_1__15_, mem_1__14_, mem_1__13_, mem_1__12_, mem_1__11_,
         mem_1__10_, mem_1__9_, mem_1__8_, mem_1__7_, mem_1__6_, mem_1__5_,
         mem_1__4_, mem_1__3_, mem_1__2_, mem_1__1_, mem_1__0_, mem_0__31_,
         mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_, mem_0__26_,
         mem_0__25_, mem_0__24_, mem_0__23_, mem_0__22_, mem_0__21_,
         mem_0__20_, mem_0__19_, mem_0__18_, mem_0__17_, mem_0__16_,
         mem_0__15_, mem_0__14_, mem_0__13_, mem_0__12_, mem_0__11_,
         mem_0__10_, mem_0__9_, mem_0__8_, mem_0__6_, mem_0__5_, mem_0__4_,
         mem_0__3_, mem_0__2_, mem_0__1_, mem_0__0_, sync_wr_ptr_1_0_, n196,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n188, n189, n190, n191, n192, n193, n194, n195, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n619, n620;
  wire   [1:0] wr_ptr;
  wire   [2:0] grey_wr_ptr;
  wire   [2:0] grey_rd_ptr_dly;
  wire   [2:0] sync_rd_ptr_1;
  wire   [2:0] sync_rd_ptr_0;
  wire   [2:0] sync_wr_ptr_0;

  FD2S full_q_reg ( .D(n278), .TI(1'b0), .TE(1'b0), .CP(n6), .CD(wr_reset_n), 
        .Q(full), .QN(n477) );
  FD2S sync_wr_ptr_1_reg_1_ ( .D(sync_wr_ptr_0[1]), .TI(sync_wr_ptr_1_0_), 
        .TE(test_se), .CP(n26), .CD(rd_reset_n), .Q(n619), .QN(n616) );
  FD1S mem_reg_3__32_ ( .D(n314), .TI(mem_3__31_), .TE(test_se), .CP(n8), .Q(
        test_so7), .QN(n510) );
  FD1S mem_reg_3__31_ ( .D(n313), .TI(mem_3__30_), .TE(test_se), .CP(n8), .Q(
        mem_3__31_), .QN(n509) );
  FD1S mem_reg_3__30_ ( .D(n312), .TI(mem_3__29_), .TE(test_se), .CP(n8), .Q(
        mem_3__30_), .QN(n508) );
  FD1S mem_reg_3__29_ ( .D(n311), .TI(mem_3__28_), .TE(test_se), .CP(n8), .Q(
        mem_3__29_), .QN(n507) );
  FD1S mem_reg_3__28_ ( .D(n310), .TI(mem_3__27_), .TE(test_se), .CP(n8), .Q(
        mem_3__28_), .QN(n506) );
  FD1S mem_reg_3__27_ ( .D(n309), .TI(mem_3__26_), .TE(test_se), .CP(n8), .Q(
        mem_3__27_), .QN(n505) );
  FD1S mem_reg_3__26_ ( .D(n308), .TI(mem_3__25_), .TE(test_se), .CP(n8), .Q(
        mem_3__26_), .QN(n504) );
  FD1S mem_reg_3__25_ ( .D(n307), .TI(mem_3__24_), .TE(test_se), .CP(n8), .Q(
        mem_3__25_), .QN(n503) );
  FD1S mem_reg_3__24_ ( .D(n306), .TI(mem_3__23_), .TE(test_se), .CP(n8), .Q(
        mem_3__24_), .QN(n502) );
  FD1S mem_reg_3__23_ ( .D(n305), .TI(mem_3__22_), .TE(test_se), .CP(n7), .Q(
        mem_3__23_), .QN(n501) );
  FD1S mem_reg_3__22_ ( .D(n304), .TI(mem_3__21_), .TE(test_se), .CP(n7), .Q(
        mem_3__22_), .QN(n500) );
  FD1S mem_reg_3__21_ ( .D(n303), .TI(mem_3__20_), .TE(test_se), .CP(n7), .Q(
        mem_3__21_), .QN(n499) );
  FD1S mem_reg_3__20_ ( .D(n302), .TI(mem_3__19_), .TE(test_se), .CP(n7), .Q(
        mem_3__20_), .QN(n498) );
  FD1S mem_reg_3__19_ ( .D(n301), .TI(mem_3__18_), .TE(test_se), .CP(n7), .Q(
        mem_3__19_), .QN(n497) );
  FD1S mem_reg_3__18_ ( .D(n300), .TI(mem_3__17_), .TE(test_se), .CP(n7), .Q(
        mem_3__18_), .QN(n496) );
  FD1S mem_reg_3__17_ ( .D(n299), .TI(mem_3__16_), .TE(test_se), .CP(n7), .Q(
        mem_3__17_), .QN(n495) );
  FD1S mem_reg_3__16_ ( .D(n298), .TI(mem_3__15_), .TE(test_se), .CP(n7), .Q(
        mem_3__16_), .QN(n494) );
  FD1S mem_reg_3__15_ ( .D(n297), .TI(mem_3__14_), .TE(test_se), .CP(n7), .Q(
        mem_3__15_), .QN(n493) );
  FD1S mem_reg_3__14_ ( .D(n296), .TI(mem_3__13_), .TE(test_se), .CP(n7), .Q(
        mem_3__14_), .QN(n492) );
  FD1S mem_reg_3__13_ ( .D(n295), .TI(mem_3__12_), .TE(test_se), .CP(n7), .Q(
        mem_3__13_), .QN(n491) );
  FD1S mem_reg_3__12_ ( .D(n294), .TI(mem_3__11_), .TE(test_se), .CP(n7), .Q(
        mem_3__12_), .QN(n490) );
  FD1S mem_reg_3__11_ ( .D(n293), .TI(mem_3__10_), .TE(test_se), .CP(n6), .Q(
        mem_3__11_), .QN(n489) );
  FD1S mem_reg_3__10_ ( .D(n292), .TI(mem_3__9_), .TE(test_se), .CP(n6), .Q(
        mem_3__10_), .QN(n488) );
  FD1S mem_reg_3__9_ ( .D(n291), .TI(test_si7), .TE(test_se), .CP(n6), .Q(
        mem_3__9_), .QN(n487) );
  FD1S mem_reg_3__8_ ( .D(n290), .TI(mem_3__7_), .TE(test_se), .CP(n6), .Q(
        test_so6), .QN(n486) );
  FD1S mem_reg_3__7_ ( .D(n289), .TI(mem_3__6_), .TE(test_se), .CP(n6), .Q(
        mem_3__7_), .QN(n485) );
  FD1S mem_reg_3__6_ ( .D(n288), .TI(mem_3__5_), .TE(test_se), .CP(n6), .Q(
        mem_3__6_), .QN(n484) );
  FD1S mem_reg_3__5_ ( .D(n287), .TI(mem_3__4_), .TE(test_se), .CP(n6), .Q(
        mem_3__5_), .QN(n483) );
  FD1S mem_reg_3__4_ ( .D(n286), .TI(mem_3__3_), .TE(test_se), .CP(n6), .Q(
        mem_3__4_), .QN(n482) );
  FD1S mem_reg_3__3_ ( .D(n285), .TI(mem_3__2_), .TE(test_se), .CP(n6), .Q(
        mem_3__3_), .QN(n481) );
  FD1S mem_reg_3__2_ ( .D(n284), .TI(mem_3__1_), .TE(test_se), .CP(n6), .Q(
        mem_3__2_), .QN(n480) );
  FD1S mem_reg_3__1_ ( .D(n283), .TI(mem_3__0_), .TE(test_se), .CP(n6), .Q(
        mem_3__1_), .QN(n479) );
  FD1S mem_reg_3__0_ ( .D(n315), .TI(mem_2__32_), .TE(test_se), .CP(n8), .Q(
        mem_3__0_), .QN(n511) );
  FD1S mem_reg_2__32_ ( .D(n347), .TI(mem_2__31_), .TE(test_se), .CP(n11), .Q(
        mem_2__32_), .QN(n543) );
  FD1S mem_reg_2__31_ ( .D(n346), .TI(mem_2__30_), .TE(test_se), .CP(n11), .Q(
        mem_2__31_), .QN(n542) );
  FD1S mem_reg_2__30_ ( .D(n345), .TI(mem_2__29_), .TE(test_se), .CP(n11), .Q(
        mem_2__30_), .QN(n541) );
  FD1S mem_reg_2__29_ ( .D(n344), .TI(mem_2__28_), .TE(test_se), .CP(n11), .Q(
        mem_2__29_), .QN(n540) );
  FD1S mem_reg_2__28_ ( .D(n343), .TI(mem_2__27_), .TE(test_se), .CP(n11), .Q(
        mem_2__28_), .QN(n539) );
  FD1S mem_reg_2__27_ ( .D(n342), .TI(mem_2__26_), .TE(test_se), .CP(n11), .Q(
        mem_2__27_), .QN(n538) );
  FD1S mem_reg_2__26_ ( .D(n341), .TI(mem_2__25_), .TE(test_se), .CP(n10), .Q(
        mem_2__26_), .QN(n537) );
  FD1S mem_reg_2__25_ ( .D(n340), .TI(mem_2__24_), .TE(test_se), .CP(n10), .Q(
        mem_2__25_), .QN(n536) );
  FD1S mem_reg_2__24_ ( .D(n339), .TI(mem_2__23_), .TE(test_se), .CP(n10), .Q(
        mem_2__24_), .QN(n535) );
  FD1S mem_reg_2__23_ ( .D(n338), .TI(mem_2__22_), .TE(test_se), .CP(n10), .Q(
        mem_2__23_), .QN(n534) );
  FD1S mem_reg_2__22_ ( .D(n337), .TI(mem_2__21_), .TE(test_se), .CP(n10), .Q(
        mem_2__22_), .QN(n533) );
  FD1S mem_reg_2__21_ ( .D(n336), .TI(mem_2__20_), .TE(test_se), .CP(n10), .Q(
        mem_2__21_), .QN(n532) );
  FD1S mem_reg_2__20_ ( .D(n335), .TI(mem_2__19_), .TE(test_se), .CP(n10), .Q(
        mem_2__20_), .QN(n531) );
  FD1S mem_reg_2__19_ ( .D(n334), .TI(mem_2__18_), .TE(test_se), .CP(n10), .Q(
        mem_2__19_), .QN(n530) );
  FD1S mem_reg_2__18_ ( .D(n333), .TI(mem_2__17_), .TE(test_se), .CP(n10), .Q(
        mem_2__18_), .QN(n529) );
  FD1S mem_reg_2__17_ ( .D(n332), .TI(test_si6), .TE(test_se), .CP(n10), .Q(
        mem_2__17_), .QN(n528) );
  FD1S mem_reg_2__16_ ( .D(n331), .TI(mem_2__15_), .TE(test_se), .CP(n10), .Q(
        test_so5), .QN(n527) );
  FD1S mem_reg_2__15_ ( .D(n330), .TI(mem_2__14_), .TE(test_se), .CP(n10), .Q(
        mem_2__15_), .QN(n526) );
  FD1S mem_reg_2__14_ ( .D(n329), .TI(mem_2__13_), .TE(test_se), .CP(n9), .Q(
        mem_2__14_), .QN(n525) );
  FD1S mem_reg_2__13_ ( .D(n328), .TI(mem_2__12_), .TE(test_se), .CP(n9), .Q(
        mem_2__13_), .QN(n524) );
  FD1S mem_reg_2__12_ ( .D(n327), .TI(mem_2__11_), .TE(test_se), .CP(n9), .Q(
        mem_2__12_), .QN(n523) );
  FD1S mem_reg_2__11_ ( .D(n326), .TI(mem_2__10_), .TE(test_se), .CP(n9), .Q(
        mem_2__11_), .QN(n522) );
  FD1S mem_reg_2__10_ ( .D(n325), .TI(mem_2__9_), .TE(test_se), .CP(n9), .Q(
        mem_2__10_), .QN(n521) );
  FD1S mem_reg_2__9_ ( .D(n324), .TI(mem_2__8_), .TE(test_se), .CP(n9), .Q(
        mem_2__9_), .QN(n520) );
  FD1S mem_reg_2__8_ ( .D(n323), .TI(mem_2__7_), .TE(test_se), .CP(n9), .Q(
        mem_2__8_), .QN(n519) );
  FD1S mem_reg_2__7_ ( .D(n322), .TI(mem_2__6_), .TE(test_se), .CP(n9), .Q(
        mem_2__7_), .QN(n518) );
  FD1S mem_reg_2__6_ ( .D(n321), .TI(mem_2__5_), .TE(test_se), .CP(n9), .Q(
        mem_2__6_), .QN(n517) );
  FD1S mem_reg_2__5_ ( .D(n320), .TI(mem_2__4_), .TE(test_se), .CP(n9), .Q(
        mem_2__5_), .QN(n516) );
  FD1S mem_reg_2__4_ ( .D(n319), .TI(mem_2__3_), .TE(test_se), .CP(n9), .Q(
        mem_2__4_), .QN(n515) );
  FD1S mem_reg_2__3_ ( .D(n318), .TI(mem_2__2_), .TE(test_se), .CP(n9), .Q(
        mem_2__3_), .QN(n514) );
  FD1S mem_reg_2__2_ ( .D(n317), .TI(mem_2__1_), .TE(test_se), .CP(n8), .Q(
        mem_2__2_), .QN(n513) );
  FD1S mem_reg_2__1_ ( .D(n316), .TI(mem_2__0_), .TE(test_se), .CP(n8), .Q(
        mem_2__1_), .QN(n512) );
  FD1S mem_reg_2__0_ ( .D(n348), .TI(mem_1__32_), .TE(test_se), .CP(n11), .Q(
        mem_2__0_), .QN(n544) );
  FD1S mem_reg_1__32_ ( .D(n380), .TI(mem_1__31_), .TE(test_se), .CP(n14), .Q(
        mem_1__32_), .QN(n576) );
  FD1S mem_reg_1__31_ ( .D(n379), .TI(mem_1__30_), .TE(test_se), .CP(n14), .Q(
        mem_1__31_), .QN(n575) );
  FD1S mem_reg_1__30_ ( .D(n378), .TI(mem_1__29_), .TE(test_se), .CP(n14), .Q(
        mem_1__30_), .QN(n574) );
  FD1S mem_reg_1__29_ ( .D(n377), .TI(mem_1__28_), .TE(test_se), .CP(n13), .Q(
        mem_1__29_), .QN(n573) );
  FD1S mem_reg_1__28_ ( .D(n376), .TI(mem_1__27_), .TE(test_se), .CP(n13), .Q(
        mem_1__28_), .QN(n572) );
  FD1S mem_reg_1__27_ ( .D(n375), .TI(mem_1__26_), .TE(test_se), .CP(n13), .Q(
        mem_1__27_), .QN(n571) );
  FD1S mem_reg_1__26_ ( .D(n374), .TI(mem_1__25_), .TE(test_se), .CP(n13), .Q(
        mem_1__26_), .QN(n570) );
  FD1S mem_reg_1__25_ ( .D(n373), .TI(test_si5), .TE(test_se), .CP(n13), .Q(
        mem_1__25_), .QN(n569) );
  FD1S mem_reg_1__24_ ( .D(n372), .TI(mem_1__23_), .TE(test_se), .CP(n13), .Q(
        test_so4), .QN(n568) );
  FD1S mem_reg_1__23_ ( .D(n371), .TI(mem_1__22_), .TE(test_se), .CP(n13), .Q(
        mem_1__23_), .QN(n567) );
  FD1S mem_reg_1__22_ ( .D(n370), .TI(mem_1__21_), .TE(test_se), .CP(n13), .Q(
        mem_1__22_), .QN(n566) );
  FD1S mem_reg_1__21_ ( .D(n369), .TI(mem_1__20_), .TE(test_se), .CP(n13), .Q(
        mem_1__21_), .QN(n565) );
  FD1S mem_reg_1__20_ ( .D(n368), .TI(mem_1__19_), .TE(test_se), .CP(n13), .Q(
        mem_1__20_), .QN(n564) );
  FD1S mem_reg_1__19_ ( .D(n367), .TI(mem_1__18_), .TE(test_se), .CP(n13), .Q(
        mem_1__19_), .QN(n563) );
  FD1S mem_reg_1__18_ ( .D(n366), .TI(mem_1__17_), .TE(test_se), .CP(n13), .Q(
        mem_1__18_), .QN(n562) );
  FD1S mem_reg_1__17_ ( .D(n365), .TI(mem_1__16_), .TE(test_se), .CP(n12), .Q(
        mem_1__17_), .QN(n561) );
  FD1S mem_reg_1__16_ ( .D(n364), .TI(mem_1__15_), .TE(test_se), .CP(n12), .Q(
        mem_1__16_), .QN(n560) );
  FD1S mem_reg_1__15_ ( .D(n363), .TI(mem_1__14_), .TE(test_se), .CP(n12), .Q(
        mem_1__15_), .QN(n559) );
  FD1S mem_reg_1__14_ ( .D(n362), .TI(mem_1__13_), .TE(test_se), .CP(n12), .Q(
        mem_1__14_), .QN(n558) );
  FD1S mem_reg_1__13_ ( .D(n361), .TI(mem_1__12_), .TE(test_se), .CP(n12), .Q(
        mem_1__13_), .QN(n557) );
  FD1S mem_reg_1__12_ ( .D(n360), .TI(mem_1__11_), .TE(test_se), .CP(n12), .Q(
        mem_1__12_), .QN(n556) );
  FD1S mem_reg_1__11_ ( .D(n359), .TI(mem_1__10_), .TE(test_se), .CP(n12), .Q(
        mem_1__11_), .QN(n555) );
  FD1S mem_reg_1__10_ ( .D(n358), .TI(mem_1__9_), .TE(test_se), .CP(n12), .Q(
        mem_1__10_), .QN(n554) );
  FD1S mem_reg_1__9_ ( .D(n357), .TI(mem_1__8_), .TE(test_se), .CP(n12), .Q(
        mem_1__9_), .QN(n553) );
  FD1S mem_reg_1__8_ ( .D(n356), .TI(mem_1__7_), .TE(test_se), .CP(n12), .Q(
        mem_1__8_), .QN(n552) );
  FD1S mem_reg_1__7_ ( .D(n355), .TI(mem_1__6_), .TE(test_se), .CP(n12), .Q(
        mem_1__7_), .QN(n551) );
  FD1S mem_reg_1__6_ ( .D(n354), .TI(mem_1__5_), .TE(test_se), .CP(n12), .Q(
        mem_1__6_), .QN(n550) );
  FD1S mem_reg_1__5_ ( .D(n353), .TI(mem_1__4_), .TE(test_se), .CP(n11), .Q(
        mem_1__5_), .QN(n549) );
  FD1S mem_reg_1__4_ ( .D(n352), .TI(mem_1__3_), .TE(test_se), .CP(n11), .Q(
        mem_1__4_), .QN(n548) );
  FD1S mem_reg_1__3_ ( .D(n351), .TI(mem_1__2_), .TE(test_se), .CP(n11), .Q(
        mem_1__3_), .QN(n547) );
  FD1S mem_reg_1__2_ ( .D(n350), .TI(mem_1__1_), .TE(test_se), .CP(n11), .Q(
        mem_1__2_), .QN(n546) );
  FD1S mem_reg_1__1_ ( .D(n349), .TI(mem_1__0_), .TE(test_se), .CP(n11), .Q(
        mem_1__1_), .QN(n545) );
  FD1S mem_reg_1__0_ ( .D(n381), .TI(test_si4), .TE(test_se), .CP(n14), .Q(
        mem_1__0_), .QN(n577) );
  FD1S mem_reg_0__32_ ( .D(n413), .TI(mem_0__31_), .TE(test_se), .CP(n16), .Q(
        test_so3), .QN(n609) );
  FD1S mem_reg_0__31_ ( .D(n412), .TI(mem_0__30_), .TE(test_se), .CP(n16), .Q(
        mem_0__31_), .QN(n608) );
  FD1S mem_reg_0__30_ ( .D(n411), .TI(mem_0__29_), .TE(test_se), .CP(n16), .Q(
        mem_0__30_), .QN(n607) );
  FD1S mem_reg_0__29_ ( .D(n410), .TI(mem_0__28_), .TE(test_se), .CP(n16), .Q(
        mem_0__29_), .QN(n606) );
  FD1S mem_reg_0__28_ ( .D(n409), .TI(mem_0__27_), .TE(test_se), .CP(n16), .Q(
        mem_0__28_), .QN(n605) );
  FD1S mem_reg_0__27_ ( .D(n408), .TI(mem_0__26_), .TE(test_se), .CP(n16), .Q(
        mem_0__27_), .QN(n604) );
  FD1S mem_reg_0__26_ ( .D(n407), .TI(mem_0__25_), .TE(test_se), .CP(n16), .Q(
        mem_0__26_), .QN(n603) );
  FD1S mem_reg_0__25_ ( .D(n406), .TI(mem_0__24_), .TE(test_se), .CP(n16), .Q(
        mem_0__25_), .QN(n602) );
  FD1S mem_reg_0__24_ ( .D(n405), .TI(mem_0__23_), .TE(test_se), .CP(n16), .Q(
        mem_0__24_), .QN(n601) );
  FD1S mem_reg_0__23_ ( .D(n404), .TI(mem_0__22_), .TE(test_se), .CP(n16), .Q(
        mem_0__23_), .QN(n600) );
  FD1S mem_reg_0__22_ ( .D(n403), .TI(mem_0__21_), .TE(test_se), .CP(n16), .Q(
        mem_0__22_), .QN(n599) );
  FD1S mem_reg_0__21_ ( .D(n402), .TI(mem_0__20_), .TE(test_se), .CP(n16), .Q(
        mem_0__21_), .QN(n598) );
  FD1S mem_reg_0__20_ ( .D(n401), .TI(mem_0__19_), .TE(test_se), .CP(n15), .Q(
        mem_0__20_), .QN(n597) );
  FD1S mem_reg_0__19_ ( .D(n400), .TI(mem_0__18_), .TE(test_se), .CP(n15), .Q(
        mem_0__19_), .QN(n596) );
  FD1S mem_reg_0__18_ ( .D(n399), .TI(mem_0__17_), .TE(test_se), .CP(n15), .Q(
        mem_0__18_), .QN(n595) );
  FD1S mem_reg_0__17_ ( .D(n398), .TI(mem_0__16_), .TE(test_se), .CP(n15), .Q(
        mem_0__17_), .QN(n594) );
  FD1S mem_reg_0__16_ ( .D(n397), .TI(mem_0__15_), .TE(test_se), .CP(n15), .Q(
        mem_0__16_), .QN(n593) );
  FD1S mem_reg_0__15_ ( .D(n396), .TI(mem_0__14_), .TE(test_se), .CP(n15), .Q(
        mem_0__15_), .QN(n592) );
  FD1S mem_reg_0__14_ ( .D(n395), .TI(mem_0__13_), .TE(test_se), .CP(n15), .Q(
        mem_0__14_), .QN(n591) );
  FD1S mem_reg_0__13_ ( .D(n394), .TI(mem_0__12_), .TE(test_se), .CP(n15), .Q(
        mem_0__13_), .QN(n590) );
  FD1S mem_reg_0__12_ ( .D(n393), .TI(mem_0__11_), .TE(test_se), .CP(n15), .Q(
        mem_0__12_), .QN(n589) );
  FD1S mem_reg_0__11_ ( .D(n392), .TI(mem_0__10_), .TE(test_se), .CP(n15), .Q(
        mem_0__11_), .QN(n588) );
  FD1S mem_reg_0__10_ ( .D(n391), .TI(mem_0__9_), .TE(test_se), .CP(n15), .Q(
        mem_0__10_), .QN(n587) );
  FD1S mem_reg_0__9_ ( .D(n390), .TI(mem_0__8_), .TE(test_se), .CP(n15), .Q(
        mem_0__9_), .QN(n586) );
  FD1S mem_reg_0__8_ ( .D(n389), .TI(test_si3), .TE(test_se), .CP(n14), .Q(
        mem_0__8_), .QN(n585) );
  FD1S mem_reg_0__7_ ( .D(n388), .TI(mem_0__6_), .TE(test_se), .CP(n14), .Q(
        test_so2), .QN(n584) );
  FD1S mem_reg_0__6_ ( .D(n387), .TI(mem_0__5_), .TE(test_se), .CP(n14), .Q(
        mem_0__6_), .QN(n583) );
  FD1S mem_reg_0__5_ ( .D(n386), .TI(mem_0__4_), .TE(test_se), .CP(n14), .Q(
        mem_0__5_), .QN(n582) );
  FD1S mem_reg_0__4_ ( .D(n385), .TI(mem_0__3_), .TE(test_se), .CP(n14), .Q(
        mem_0__4_), .QN(n581) );
  FD1S mem_reg_0__3_ ( .D(n384), .TI(mem_0__2_), .TE(test_se), .CP(n14), .Q(
        mem_0__3_), .QN(n580) );
  FD1S mem_reg_0__2_ ( .D(n383), .TI(mem_0__1_), .TE(test_se), .CP(n14), .Q(
        mem_0__2_), .QN(n579) );
  FD1S mem_reg_0__1_ ( .D(n382), .TI(mem_0__0_), .TE(test_se), .CP(n14), .Q(
        mem_0__1_), .QN(n578) );
  FD1S mem_reg_0__0_ ( .D(n414), .TI(test_si2), .TE(test_se), .CP(n17), .Q(
        mem_0__0_), .QN(n610) );
  FD2S grey_wr_ptr_reg_2_ ( .D(n281), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr[2]), .QN(n478) );
  FD2S grey_rd_ptr_reg_1_ ( .D(n416), .TI(grey_rd_ptr_dly[0]), .TE(test_se), 
        .CP(n26), .CD(rd_reset_n), .Q(grey_rd_ptr_dly[1]), .QN(n611) );
  FD2S grey_rd_ptr_reg_2_ ( .D(n418), .TI(grey_rd_ptr_dly[1]), .TE(test_se), 
        .CP(n26), .CD(rd_reset_n), .Q(grey_rd_ptr_dly[2]), .QN(n612) );
  FD2S rd_ptr_reg_2_ ( .D(n419), .TI(N46), .TE(test_se), .CP(n26), .CD(
        rd_reset_n), .Q(n620), .QN(n3) );
  FD2S grey_wr_ptr_reg_1_ ( .D(n279), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr[1]) );
  FD2S sync_rd_ptr_1_reg_0_ ( .D(sync_rd_ptr_0[0]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[0]) );
  FD2S sync_rd_ptr_1_reg_1_ ( .D(sync_rd_ptr_0[1]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[1]), .QN(n614) );
  FD2S sync_wr_ptr_1_reg_0_ ( .D(sync_wr_ptr_0[0]), .TI(sync_wr_ptr_0[2]), 
        .TE(test_se), .CP(n26), .CD(rd_reset_n), .Q(sync_wr_ptr_1_0_) );
  FD2S wr_ptr_reg_2_ ( .D(n282), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(wr_reset_n), .Q(n613), .QN(n2) );
  FD2S grey_wr_ptr_reg_0_ ( .D(n280), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr[0]) );
  FD2S grey_rd_ptr_reg_0_ ( .D(n417), .TI(test_si1), .TE(test_se), .CP(n26), 
        .CD(rd_reset_n), .Q(grey_rd_ptr_dly[0]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]) );
  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(n619), .TE(test_se), 
        .CP(n26), .CD(rd_reset_n), .Q(test_so1) );
  FD2S wr_ptr_reg_1_ ( .D(n415), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(wr_reset_n), .Q(wr_ptr[1]), .QN(n1) );
  FD2S rd_ptr_reg_0_ ( .D(n421), .TI(grey_rd_ptr_dly[2]), .TE(test_se), .CP(
        n26), .CD(rd_reset_n), .Q(N45), .QN(n615) );
  FD2S rd_ptr_reg_1_ ( .D(n420), .TI(N45), .TE(test_se), .CP(n26), .CD(
        rd_reset_n), .Q(N46), .QN(n196) );
  FD2S wr_ptr_reg_0_ ( .D(n617), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(wr_reset_n), .Q(wr_ptr[0]), .QN(n4) );
  FD2S sync_wr_ptr_0_reg_2_ ( .D(grey_wr_ptr[2]), .TI(sync_wr_ptr_0[1]), .TE(
        test_se), .CP(n26), .CD(rd_reset_n), .Q(sync_wr_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_1_ ( .D(grey_wr_ptr[1]), .TI(sync_wr_ptr_0[0]), .TE(
        test_se), .CP(n26), .CD(rd_reset_n), .Q(sync_wr_ptr_0[1]) );
  FD2S sync_wr_ptr_0_reg_0_ ( .D(grey_wr_ptr[0]), .TI(n620), .TE(test_se), 
        .CP(n26), .CD(rd_reset_n), .Q(sync_wr_ptr_0[0]) );
  FD2S sync_rd_ptr_0_reg_0_ ( .D(grey_rd_ptr_dly[0]), .TI(1'b0), .TE(1'b0), 
        .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[0]) );
  FD2S sync_rd_ptr_0_reg_1_ ( .D(grey_rd_ptr_dly[1]), .TI(1'b0), .TE(1'b0), 
        .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[1]) );
  FD2S sync_rd_ptr_0_reg_2_ ( .D(grey_rd_ptr_dly[2]), .TI(1'b0), .TE(1'b0), 
        .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[2]) );
  IVP U160 ( .A(n18), .Z(n15) );
  IVP U161 ( .A(n18), .Z(n16) );
  IVP U162 ( .A(n19), .Z(n12) );
  IVP U163 ( .A(n19), .Z(n13) );
  IVP U164 ( .A(n19), .Z(n14) );
  IVP U165 ( .A(n20), .Z(n9) );
  IVP U166 ( .A(n20), .Z(n10) );
  IVP U167 ( .A(n20), .Z(n11) );
  IVP U168 ( .A(n21), .Z(n6) );
  IVP U169 ( .A(n21), .Z(n7) );
  IVP U170 ( .A(n21), .Z(n8) );
  IVP U171 ( .A(n18), .Z(n17) );
  IVP U172 ( .A(n24), .Z(n18) );
  IVP U173 ( .A(n24), .Z(n19) );
  IVP U174 ( .A(n23), .Z(n20) );
  IVP U175 ( .A(n23), .Z(n21) );
  IVP U176 ( .A(n22), .Z(n5) );
  IVP U177 ( .A(n23), .Z(n22) );
  IVP U178 ( .A(n25), .Z(n23) );
  IVP U179 ( .A(n25), .Z(n24) );
  IVP U180 ( .A(wr_clk), .Z(n25) );
  IVP U181 ( .A(n27), .Z(n26) );
  IVP U182 ( .A(rd_clk), .Z(n27) );
  NR2 U183 ( .A(n196), .B(N45), .Z(n251) );
  NR2 U184 ( .A(n196), .B(n615), .Z(n250) );
  AO2 U185 ( .A(mem_2__0_), .B(n251), .C(mem_3__0_), .D(n250), .Z(n29) );
  NR2 U186 ( .A(N45), .B(N46), .Z(n253) );
  NR2 U187 ( .A(n615), .B(N46), .Z(n252) );
  AO2 U188 ( .A(mem_0__0_), .B(n253), .C(mem_1__0_), .D(n252), .Z(n28) );
  ND2 U189 ( .A(n29), .B(n28), .Z(rd_data[0]) );
  AO2 U190 ( .A(mem_2__1_), .B(n251), .C(mem_3__1_), .D(n250), .Z(n188) );
  AO2 U191 ( .A(mem_0__1_), .B(n253), .C(mem_1__1_), .D(n252), .Z(n30) );
  ND2 U192 ( .A(n188), .B(n30), .Z(rd_data[1]) );
  AO2 U193 ( .A(mem_2__2_), .B(n251), .C(mem_3__2_), .D(n250), .Z(n190) );
  AO2 U194 ( .A(mem_0__2_), .B(n253), .C(mem_1__2_), .D(n252), .Z(n189) );
  ND2 U195 ( .A(n190), .B(n189), .Z(rd_data[2]) );
  AO2 U196 ( .A(mem_2__3_), .B(n251), .C(mem_3__3_), .D(n250), .Z(n192) );
  AO2 U197 ( .A(mem_0__3_), .B(n253), .C(mem_1__3_), .D(n252), .Z(n191) );
  ND2 U198 ( .A(n192), .B(n191), .Z(rd_data[3]) );
  AO2 U199 ( .A(mem_2__4_), .B(n251), .C(mem_3__4_), .D(n250), .Z(n194) );
  AO2 U200 ( .A(mem_0__4_), .B(n253), .C(mem_1__4_), .D(n252), .Z(n193) );
  ND2 U201 ( .A(n194), .B(n193), .Z(rd_data[4]) );
  AO2 U202 ( .A(mem_2__5_), .B(n251), .C(mem_3__5_), .D(n250), .Z(n197) );
  AO2 U203 ( .A(mem_0__5_), .B(n253), .C(mem_1__5_), .D(n252), .Z(n195) );
  ND2 U204 ( .A(n197), .B(n195), .Z(rd_data[5]) );
  AO2 U205 ( .A(mem_2__6_), .B(n251), .C(mem_3__6_), .D(n250), .Z(n199) );
  AO2 U206 ( .A(mem_0__6_), .B(n253), .C(mem_1__6_), .D(n252), .Z(n198) );
  ND2 U207 ( .A(n199), .B(n198), .Z(rd_data[6]) );
  AO2 U208 ( .A(mem_2__7_), .B(n251), .C(mem_3__7_), .D(n250), .Z(n201) );
  AO2 U209 ( .A(test_so2), .B(n253), .C(mem_1__7_), .D(n252), .Z(n200) );
  ND2 U210 ( .A(n201), .B(n200), .Z(rd_data[7]) );
  AO2 U211 ( .A(mem_2__8_), .B(n251), .C(test_so6), .D(n250), .Z(n203) );
  AO2 U212 ( .A(mem_0__8_), .B(n253), .C(mem_1__8_), .D(n252), .Z(n202) );
  ND2 U213 ( .A(n203), .B(n202), .Z(rd_data[8]) );
  AO2 U214 ( .A(mem_2__9_), .B(n251), .C(mem_3__9_), .D(n250), .Z(n205) );
  AO2 U215 ( .A(mem_0__9_), .B(n253), .C(mem_1__9_), .D(n252), .Z(n204) );
  ND2 U216 ( .A(n205), .B(n204), .Z(rd_data[9]) );
  AO2 U217 ( .A(mem_2__10_), .B(n251), .C(mem_3__10_), .D(n250), .Z(n207) );
  AO2 U218 ( .A(mem_0__10_), .B(n253), .C(mem_1__10_), .D(n252), .Z(n206) );
  ND2 U219 ( .A(n207), .B(n206), .Z(rd_data[10]) );
  AO2 U220 ( .A(mem_2__11_), .B(n251), .C(mem_3__11_), .D(n250), .Z(n209) );
  AO2 U221 ( .A(mem_0__11_), .B(n253), .C(mem_1__11_), .D(n252), .Z(n208) );
  ND2 U222 ( .A(n209), .B(n208), .Z(rd_data[11]) );
  AO2 U223 ( .A(mem_2__12_), .B(n251), .C(mem_3__12_), .D(n250), .Z(n211) );
  AO2 U224 ( .A(mem_0__12_), .B(n253), .C(mem_1__12_), .D(n252), .Z(n210) );
  ND2 U225 ( .A(n211), .B(n210), .Z(rd_data[12]) );
  AO2 U226 ( .A(mem_2__13_), .B(n251), .C(mem_3__13_), .D(n250), .Z(n213) );
  AO2 U227 ( .A(mem_0__13_), .B(n253), .C(mem_1__13_), .D(n252), .Z(n212) );
  ND2 U228 ( .A(n213), .B(n212), .Z(rd_data[13]) );
  AO2 U229 ( .A(mem_2__14_), .B(n251), .C(mem_3__14_), .D(n250), .Z(n215) );
  AO2 U230 ( .A(mem_0__14_), .B(n253), .C(mem_1__14_), .D(n252), .Z(n214) );
  ND2 U231 ( .A(n215), .B(n214), .Z(rd_data[14]) );
  AO2 U232 ( .A(mem_2__15_), .B(n251), .C(mem_3__15_), .D(n250), .Z(n217) );
  AO2 U233 ( .A(mem_0__15_), .B(n253), .C(mem_1__15_), .D(n252), .Z(n216) );
  ND2 U234 ( .A(n217), .B(n216), .Z(rd_data[15]) );
  AO2 U235 ( .A(test_so5), .B(n251), .C(mem_3__16_), .D(n250), .Z(n219) );
  AO2 U236 ( .A(mem_0__16_), .B(n253), .C(mem_1__16_), .D(n252), .Z(n218) );
  ND2 U237 ( .A(n219), .B(n218), .Z(rd_data[16]) );
  AO2 U238 ( .A(mem_2__17_), .B(n251), .C(mem_3__17_), .D(n250), .Z(n221) );
  AO2 U239 ( .A(mem_0__17_), .B(n253), .C(mem_1__17_), .D(n252), .Z(n220) );
  ND2 U240 ( .A(n221), .B(n220), .Z(rd_data[17]) );
  AO2 U241 ( .A(mem_2__18_), .B(n251), .C(mem_3__18_), .D(n250), .Z(n223) );
  AO2 U242 ( .A(mem_0__18_), .B(n253), .C(mem_1__18_), .D(n252), .Z(n222) );
  ND2 U243 ( .A(n223), .B(n222), .Z(rd_data[18]) );
  AO2 U244 ( .A(mem_2__19_), .B(n251), .C(mem_3__19_), .D(n250), .Z(n225) );
  AO2 U245 ( .A(mem_0__19_), .B(n253), .C(mem_1__19_), .D(n252), .Z(n224) );
  ND2 U246 ( .A(n225), .B(n224), .Z(rd_data[19]) );
  AO2 U247 ( .A(mem_2__20_), .B(n251), .C(mem_3__20_), .D(n250), .Z(n227) );
  AO2 U248 ( .A(mem_0__20_), .B(n253), .C(mem_1__20_), .D(n252), .Z(n226) );
  ND2 U249 ( .A(n227), .B(n226), .Z(rd_data[20]) );
  AO2 U250 ( .A(mem_2__21_), .B(n251), .C(mem_3__21_), .D(n250), .Z(n229) );
  AO2 U251 ( .A(mem_0__21_), .B(n253), .C(mem_1__21_), .D(n252), .Z(n228) );
  ND2 U252 ( .A(n229), .B(n228), .Z(rd_data[21]) );
  AO2 U253 ( .A(mem_2__22_), .B(n251), .C(mem_3__22_), .D(n250), .Z(n231) );
  AO2 U254 ( .A(mem_0__22_), .B(n253), .C(mem_1__22_), .D(n252), .Z(n230) );
  ND2 U255 ( .A(n231), .B(n230), .Z(rd_data[22]) );
  AO2 U256 ( .A(mem_2__23_), .B(n251), .C(mem_3__23_), .D(n250), .Z(n233) );
  AO2 U257 ( .A(mem_0__23_), .B(n253), .C(mem_1__23_), .D(n252), .Z(n232) );
  ND2 U258 ( .A(n233), .B(n232), .Z(rd_data[23]) );
  AO2 U259 ( .A(mem_2__24_), .B(n251), .C(mem_3__24_), .D(n250), .Z(n235) );
  AO2 U260 ( .A(mem_0__24_), .B(n253), .C(test_so4), .D(n252), .Z(n234) );
  ND2 U261 ( .A(n235), .B(n234), .Z(rd_data[24]) );
  AO2 U262 ( .A(mem_2__25_), .B(n251), .C(mem_3__25_), .D(n250), .Z(n237) );
  AO2 U263 ( .A(mem_0__25_), .B(n253), .C(mem_1__25_), .D(n252), .Z(n236) );
  ND2 U264 ( .A(n237), .B(n236), .Z(rd_data[25]) );
  AO2 U265 ( .A(mem_2__26_), .B(n251), .C(mem_3__26_), .D(n250), .Z(n239) );
  AO2 U266 ( .A(mem_0__26_), .B(n253), .C(mem_1__26_), .D(n252), .Z(n238) );
  ND2 U267 ( .A(n239), .B(n238), .Z(rd_data[26]) );
  AO2 U268 ( .A(mem_2__27_), .B(n251), .C(mem_3__27_), .D(n250), .Z(n241) );
  AO2 U269 ( .A(mem_0__27_), .B(n253), .C(mem_1__27_), .D(n252), .Z(n240) );
  ND2 U270 ( .A(n241), .B(n240), .Z(rd_data[27]) );
  AO2 U271 ( .A(mem_2__28_), .B(n251), .C(mem_3__28_), .D(n250), .Z(n243) );
  AO2 U272 ( .A(mem_0__28_), .B(n253), .C(mem_1__28_), .D(n252), .Z(n242) );
  ND2 U273 ( .A(n243), .B(n242), .Z(rd_data[28]) );
  AO2 U274 ( .A(mem_2__29_), .B(n251), .C(mem_3__29_), .D(n250), .Z(n245) );
  AO2 U275 ( .A(mem_0__29_), .B(n253), .C(mem_1__29_), .D(n252), .Z(n244) );
  ND2 U276 ( .A(n245), .B(n244), .Z(rd_data[29]) );
  AO2 U277 ( .A(mem_2__30_), .B(n251), .C(mem_3__30_), .D(n250), .Z(n247) );
  AO2 U278 ( .A(mem_0__30_), .B(n253), .C(mem_1__30_), .D(n252), .Z(n246) );
  ND2 U279 ( .A(n247), .B(n246), .Z(rd_data[30]) );
  AO2 U280 ( .A(mem_2__31_), .B(n251), .C(mem_3__31_), .D(n250), .Z(n249) );
  AO2 U281 ( .A(mem_0__31_), .B(n253), .C(mem_1__31_), .D(n252), .Z(n248) );
  ND2 U282 ( .A(n249), .B(n248), .Z(rd_data[31]) );
  AO2 U283 ( .A(mem_2__32_), .B(n251), .C(test_so7), .D(n250), .Z(n255) );
  AO2 U284 ( .A(test_so3), .B(n253), .C(mem_1__32_), .D(n252), .Z(n254) );
  ND2 U285 ( .A(n255), .B(n254), .Z(rd_data[32]) );
  EO U286 ( .A(wr_ptr[0]), .B(wr_en), .Z(n617) );
  EO U287 ( .A(N45), .B(rd_en), .Z(n421) );
  AO7 U288 ( .A(rd_en), .B(n196), .C(n256), .Z(n420) );
  AO7 U289 ( .A(rd_en), .B(n3), .C(n257), .Z(n419) );
  AO7 U290 ( .A(rd_en), .B(n612), .C(n257), .Z(n418) );
  AO7 U291 ( .A(n615), .B(n256), .C(n258), .Z(n417) );
  MUX21L U292 ( .A(grey_rd_ptr_dly[0]), .B(n259), .S(rd_en), .Z(n258) );
  NR2 U293 ( .A(n260), .B(N45), .Z(n259) );
  AO7 U294 ( .A(rd_en), .B(n611), .C(n261), .Z(n416) );
  IV U295 ( .A(n262), .Z(n261) );
  AO4 U296 ( .A(n263), .B(n256), .C(n257), .D(n260), .Z(n262) );
  ND2 U297 ( .A(rd_en), .B(n263), .Z(n257) );
  ND2 U298 ( .A(rd_en), .B(n260), .Z(n256) );
  EO U299 ( .A(n196), .B(n615), .Z(n260) );
  EN U300 ( .A(n3), .B(n264), .Z(n263) );
  NR2 U301 ( .A(n196), .B(n615), .Z(n264) );
  AO7 U302 ( .A(wr_en), .B(n1), .C(n265), .Z(n415) );
  MUX21L U303 ( .A(n610), .B(n266), .S(n267), .Z(n414) );
  MUX21L U304 ( .A(n609), .B(n268), .S(n267), .Z(n413) );
  MUX21L U305 ( .A(n608), .B(n269), .S(n267), .Z(n412) );
  MUX21L U306 ( .A(n607), .B(n270), .S(n267), .Z(n411) );
  MUX21L U307 ( .A(n606), .B(n271), .S(n267), .Z(n410) );
  MUX21L U308 ( .A(n605), .B(n272), .S(n267), .Z(n409) );
  MUX21L U309 ( .A(n604), .B(n273), .S(n267), .Z(n408) );
  MUX21L U310 ( .A(n603), .B(n274), .S(n267), .Z(n407) );
  MUX21L U311 ( .A(n602), .B(n275), .S(n267), .Z(n406) );
  MUX21L U312 ( .A(n601), .B(n276), .S(n267), .Z(n405) );
  MUX21L U313 ( .A(n600), .B(n277), .S(n267), .Z(n404) );
  MUX21L U314 ( .A(n599), .B(n422), .S(n267), .Z(n403) );
  MUX21L U315 ( .A(n598), .B(n423), .S(n267), .Z(n402) );
  MUX21L U316 ( .A(n597), .B(n424), .S(n267), .Z(n401) );
  MUX21L U317 ( .A(n596), .B(n425), .S(n267), .Z(n400) );
  MUX21L U318 ( .A(n595), .B(n426), .S(n267), .Z(n399) );
  MUX21L U319 ( .A(n594), .B(n427), .S(n267), .Z(n398) );
  MUX21L U320 ( .A(n593), .B(n428), .S(n267), .Z(n397) );
  MUX21L U321 ( .A(n592), .B(n429), .S(n267), .Z(n396) );
  MUX21L U322 ( .A(n591), .B(n430), .S(n267), .Z(n395) );
  MUX21L U323 ( .A(n590), .B(n431), .S(n267), .Z(n394) );
  MUX21L U324 ( .A(n589), .B(n432), .S(n267), .Z(n393) );
  MUX21L U325 ( .A(n588), .B(n433), .S(n267), .Z(n392) );
  MUX21L U326 ( .A(n587), .B(n434), .S(n267), .Z(n391) );
  MUX21L U327 ( .A(n586), .B(n435), .S(n267), .Z(n390) );
  MUX21L U328 ( .A(n585), .B(n436), .S(n267), .Z(n389) );
  MUX21L U329 ( .A(n584), .B(n437), .S(n267), .Z(n388) );
  MUX21L U330 ( .A(n583), .B(n438), .S(n267), .Z(n387) );
  MUX21L U331 ( .A(n582), .B(n439), .S(n267), .Z(n386) );
  MUX21L U332 ( .A(n581), .B(n440), .S(n267), .Z(n385) );
  MUX21L U333 ( .A(n580), .B(n441), .S(n267), .Z(n384) );
  MUX21L U334 ( .A(n579), .B(n442), .S(n267), .Z(n383) );
  MUX21L U335 ( .A(n578), .B(n443), .S(n267), .Z(n382) );
  NR3 U336 ( .A(wr_ptr[0]), .B(wr_ptr[1]), .C(n444), .Z(n267) );
  MUX21L U337 ( .A(n577), .B(n266), .S(n445), .Z(n381) );
  MUX21L U338 ( .A(n576), .B(n268), .S(n445), .Z(n380) );
  MUX21L U339 ( .A(n575), .B(n269), .S(n445), .Z(n379) );
  MUX21L U340 ( .A(n574), .B(n270), .S(n445), .Z(n378) );
  MUX21L U341 ( .A(n573), .B(n271), .S(n445), .Z(n377) );
  MUX21L U342 ( .A(n572), .B(n272), .S(n445), .Z(n376) );
  MUX21L U343 ( .A(n571), .B(n273), .S(n445), .Z(n375) );
  MUX21L U344 ( .A(n570), .B(n274), .S(n445), .Z(n374) );
  MUX21L U345 ( .A(n569), .B(n275), .S(n445), .Z(n373) );
  MUX21L U346 ( .A(n568), .B(n276), .S(n445), .Z(n372) );
  MUX21L U347 ( .A(n567), .B(n277), .S(n445), .Z(n371) );
  MUX21L U348 ( .A(n566), .B(n422), .S(n445), .Z(n370) );
  MUX21L U349 ( .A(n565), .B(n423), .S(n445), .Z(n369) );
  MUX21L U350 ( .A(n564), .B(n424), .S(n445), .Z(n368) );
  MUX21L U351 ( .A(n563), .B(n425), .S(n445), .Z(n367) );
  MUX21L U352 ( .A(n562), .B(n426), .S(n445), .Z(n366) );
  MUX21L U353 ( .A(n561), .B(n427), .S(n445), .Z(n365) );
  MUX21L U354 ( .A(n560), .B(n428), .S(n445), .Z(n364) );
  MUX21L U355 ( .A(n559), .B(n429), .S(n445), .Z(n363) );
  MUX21L U356 ( .A(n558), .B(n430), .S(n445), .Z(n362) );
  MUX21L U357 ( .A(n557), .B(n431), .S(n445), .Z(n361) );
  MUX21L U358 ( .A(n556), .B(n432), .S(n445), .Z(n360) );
  MUX21L U359 ( .A(n555), .B(n433), .S(n445), .Z(n359) );
  MUX21L U360 ( .A(n554), .B(n434), .S(n445), .Z(n358) );
  MUX21L U361 ( .A(n553), .B(n435), .S(n445), .Z(n357) );
  MUX21L U362 ( .A(n552), .B(n436), .S(n445), .Z(n356) );
  MUX21L U363 ( .A(n551), .B(n437), .S(n445), .Z(n355) );
  MUX21L U364 ( .A(n550), .B(n438), .S(n445), .Z(n354) );
  MUX21L U365 ( .A(n549), .B(n439), .S(n445), .Z(n353) );
  MUX21L U366 ( .A(n548), .B(n440), .S(n445), .Z(n352) );
  MUX21L U367 ( .A(n547), .B(n441), .S(n445), .Z(n351) );
  MUX21L U368 ( .A(n546), .B(n442), .S(n445), .Z(n350) );
  MUX21L U369 ( .A(n545), .B(n443), .S(n445), .Z(n349) );
  NR3 U370 ( .A(n4), .B(wr_ptr[1]), .C(n444), .Z(n445) );
  MUX21L U371 ( .A(n544), .B(n266), .S(n446), .Z(n348) );
  MUX21L U372 ( .A(n543), .B(n268), .S(n446), .Z(n347) );
  MUX21L U373 ( .A(n542), .B(n269), .S(n446), .Z(n346) );
  MUX21L U374 ( .A(n541), .B(n270), .S(n446), .Z(n345) );
  MUX21L U375 ( .A(n540), .B(n271), .S(n446), .Z(n344) );
  MUX21L U376 ( .A(n539), .B(n272), .S(n446), .Z(n343) );
  MUX21L U377 ( .A(n538), .B(n273), .S(n446), .Z(n342) );
  MUX21L U378 ( .A(n537), .B(n274), .S(n446), .Z(n341) );
  MUX21L U379 ( .A(n536), .B(n275), .S(n446), .Z(n340) );
  MUX21L U380 ( .A(n535), .B(n276), .S(n446), .Z(n339) );
  MUX21L U381 ( .A(n534), .B(n277), .S(n446), .Z(n338) );
  MUX21L U382 ( .A(n533), .B(n422), .S(n446), .Z(n337) );
  MUX21L U383 ( .A(n532), .B(n423), .S(n446), .Z(n336) );
  MUX21L U384 ( .A(n531), .B(n424), .S(n446), .Z(n335) );
  MUX21L U385 ( .A(n530), .B(n425), .S(n446), .Z(n334) );
  MUX21L U386 ( .A(n529), .B(n426), .S(n446), .Z(n333) );
  MUX21L U387 ( .A(n528), .B(n427), .S(n446), .Z(n332) );
  MUX21L U388 ( .A(n527), .B(n428), .S(n446), .Z(n331) );
  MUX21L U389 ( .A(n526), .B(n429), .S(n446), .Z(n330) );
  MUX21L U390 ( .A(n525), .B(n430), .S(n446), .Z(n329) );
  MUX21L U391 ( .A(n524), .B(n431), .S(n446), .Z(n328) );
  MUX21L U392 ( .A(n523), .B(n432), .S(n446), .Z(n327) );
  MUX21L U393 ( .A(n522), .B(n433), .S(n446), .Z(n326) );
  MUX21L U394 ( .A(n521), .B(n434), .S(n446), .Z(n325) );
  MUX21L U395 ( .A(n520), .B(n435), .S(n446), .Z(n324) );
  MUX21L U396 ( .A(n519), .B(n436), .S(n446), .Z(n323) );
  MUX21L U397 ( .A(n518), .B(n437), .S(n446), .Z(n322) );
  MUX21L U398 ( .A(n517), .B(n438), .S(n446), .Z(n321) );
  MUX21L U399 ( .A(n516), .B(n439), .S(n446), .Z(n320) );
  MUX21L U400 ( .A(n515), .B(n440), .S(n446), .Z(n319) );
  MUX21L U401 ( .A(n514), .B(n441), .S(n446), .Z(n318) );
  MUX21L U402 ( .A(n513), .B(n442), .S(n446), .Z(n317) );
  MUX21L U403 ( .A(n512), .B(n443), .S(n446), .Z(n316) );
  NR3 U404 ( .A(n444), .B(wr_ptr[0]), .C(n1), .Z(n446) );
  MUX21L U405 ( .A(n511), .B(n266), .S(n447), .Z(n315) );
  IV U406 ( .A(wr_data[0]), .Z(n266) );
  MUX21L U407 ( .A(n510), .B(n268), .S(n447), .Z(n314) );
  IV U408 ( .A(wr_data[32]), .Z(n268) );
  MUX21L U409 ( .A(n509), .B(n269), .S(n447), .Z(n313) );
  IV U410 ( .A(wr_data[31]), .Z(n269) );
  MUX21L U411 ( .A(n508), .B(n270), .S(n447), .Z(n312) );
  IV U412 ( .A(wr_data[30]), .Z(n270) );
  MUX21L U413 ( .A(n507), .B(n271), .S(n447), .Z(n311) );
  IV U414 ( .A(wr_data[29]), .Z(n271) );
  MUX21L U415 ( .A(n506), .B(n272), .S(n447), .Z(n310) );
  IV U416 ( .A(wr_data[28]), .Z(n272) );
  MUX21L U417 ( .A(n505), .B(n273), .S(n447), .Z(n309) );
  IV U418 ( .A(wr_data[27]), .Z(n273) );
  MUX21L U419 ( .A(n504), .B(n274), .S(n447), .Z(n308) );
  IV U420 ( .A(wr_data[26]), .Z(n274) );
  MUX21L U421 ( .A(n503), .B(n275), .S(n447), .Z(n307) );
  IV U422 ( .A(wr_data[25]), .Z(n275) );
  MUX21L U423 ( .A(n502), .B(n276), .S(n447), .Z(n306) );
  IV U424 ( .A(wr_data[24]), .Z(n276) );
  MUX21L U425 ( .A(n501), .B(n277), .S(n447), .Z(n305) );
  IV U426 ( .A(wr_data[23]), .Z(n277) );
  MUX21L U427 ( .A(n500), .B(n422), .S(n447), .Z(n304) );
  IV U428 ( .A(wr_data[22]), .Z(n422) );
  MUX21L U429 ( .A(n499), .B(n423), .S(n447), .Z(n303) );
  IV U430 ( .A(wr_data[21]), .Z(n423) );
  MUX21L U431 ( .A(n498), .B(n424), .S(n447), .Z(n302) );
  IV U432 ( .A(wr_data[20]), .Z(n424) );
  MUX21L U433 ( .A(n497), .B(n425), .S(n447), .Z(n301) );
  IV U434 ( .A(wr_data[19]), .Z(n425) );
  MUX21L U435 ( .A(n496), .B(n426), .S(n447), .Z(n300) );
  IV U436 ( .A(wr_data[18]), .Z(n426) );
  MUX21L U437 ( .A(n495), .B(n427), .S(n447), .Z(n299) );
  IV U438 ( .A(wr_data[17]), .Z(n427) );
  MUX21L U439 ( .A(n494), .B(n428), .S(n447), .Z(n298) );
  IV U440 ( .A(wr_data[16]), .Z(n428) );
  MUX21L U441 ( .A(n493), .B(n429), .S(n447), .Z(n297) );
  IV U442 ( .A(wr_data[15]), .Z(n429) );
  MUX21L U443 ( .A(n492), .B(n430), .S(n447), .Z(n296) );
  IV U444 ( .A(wr_data[14]), .Z(n430) );
  MUX21L U445 ( .A(n491), .B(n431), .S(n447), .Z(n295) );
  IV U446 ( .A(wr_data[13]), .Z(n431) );
  MUX21L U447 ( .A(n490), .B(n432), .S(n447), .Z(n294) );
  IV U448 ( .A(wr_data[12]), .Z(n432) );
  MUX21L U449 ( .A(n489), .B(n433), .S(n447), .Z(n293) );
  IV U450 ( .A(wr_data[11]), .Z(n433) );
  MUX21L U451 ( .A(n488), .B(n434), .S(n447), .Z(n292) );
  IV U452 ( .A(wr_data[10]), .Z(n434) );
  MUX21L U453 ( .A(n487), .B(n435), .S(n447), .Z(n291) );
  IV U454 ( .A(wr_data[9]), .Z(n435) );
  MUX21L U455 ( .A(n486), .B(n436), .S(n447), .Z(n290) );
  IV U456 ( .A(wr_data[8]), .Z(n436) );
  MUX21L U457 ( .A(n485), .B(n437), .S(n447), .Z(n289) );
  IV U458 ( .A(wr_data[7]), .Z(n437) );
  MUX21L U459 ( .A(n484), .B(n438), .S(n447), .Z(n288) );
  IV U460 ( .A(wr_data[6]), .Z(n438) );
  MUX21L U461 ( .A(n483), .B(n439), .S(n447), .Z(n287) );
  IV U462 ( .A(wr_data[5]), .Z(n439) );
  MUX21L U463 ( .A(n482), .B(n440), .S(n447), .Z(n286) );
  IV U464 ( .A(wr_data[4]), .Z(n440) );
  MUX21L U465 ( .A(n481), .B(n441), .S(n447), .Z(n285) );
  IV U466 ( .A(wr_data[3]), .Z(n441) );
  MUX21L U467 ( .A(n480), .B(n442), .S(n447), .Z(n284) );
  IV U468 ( .A(wr_data[2]), .Z(n442) );
  MUX21L U469 ( .A(n479), .B(n443), .S(n447), .Z(n283) );
  NR2 U470 ( .A(n448), .B(n444), .Z(n447) );
  IV U471 ( .A(wr_data[1]), .Z(n443) );
  AO7 U472 ( .A(wr_en), .B(n2), .C(n449), .Z(n282) );
  AO7 U473 ( .A(wr_en), .B(n478), .C(n449), .Z(n281) );
  AO7 U474 ( .A(n4), .B(n265), .C(n450), .Z(n280) );
  MUX21L U475 ( .A(grey_wr_ptr[0]), .B(n451), .S(wr_en), .Z(n450) );
  NR2 U476 ( .A(wr_ptr[0]), .B(n452), .Z(n451) );
  AO7 U477 ( .A(n613), .B(n265), .C(n453), .Z(n279) );
  EO1 U478 ( .A(grey_wr_ptr[1]), .B(n444), .C(n449), .D(n452), .Z(n453) );
  ND2 U479 ( .A(wr_en), .B(n454), .Z(n449) );
  EN U480 ( .A(n613), .B(n448), .Z(n454) );
  ND2 U481 ( .A(wr_ptr[1]), .B(wr_ptr[0]), .Z(n448) );
  ND2 U482 ( .A(wr_en), .B(n452), .Z(n265) );
  EN U483 ( .A(n1), .B(wr_ptr[0]), .Z(n452) );
  AO4 U484 ( .A(n455), .B(n444), .C(n477), .D(n456), .Z(n278) );
  IV U485 ( .A(wr_en), .Z(n444) );
  AN2 U486 ( .A(n457), .B(n477), .Z(n455) );
  AN3 U487 ( .A(n458), .B(n459), .C(n460), .Z(empty) );
  IV U488 ( .A(n461), .Z(n460) );
  IV U489 ( .A(n457), .Z(afull) );
  AO3 U490 ( .A(n462), .B(n463), .C(n464), .D(n456), .Z(n457) );
  EO U491 ( .A(n465), .B(n466), .Z(n456) );
  EN U492 ( .A(sync_rd_ptr_1[2]), .B(n2), .Z(n466) );
  AO5 U493 ( .A(n463), .B(n467), .C(n1), .Z(n465) );
  EO U494 ( .A(sync_rd_ptr_1[2]), .B(sync_rd_ptr_1[1]), .Z(n467) );
  EO U495 ( .A(n468), .B(n469), .Z(n464) );
  EO U496 ( .A(wr_ptr[1]), .B(n463), .Z(n469) );
  NR2 U497 ( .A(wr_ptr[0]), .B(n470), .Z(n463) );
  AN2 U498 ( .A(wr_ptr[0]), .B(n470), .Z(n462) );
  EN U499 ( .A(n468), .B(sync_rd_ptr_1[0]), .Z(n470) );
  EN U500 ( .A(n614), .B(sync_rd_ptr_1[2]), .Z(n468) );
  AN3 U501 ( .A(n459), .B(n461), .C(n458), .Z(aempty) );
  EO U502 ( .A(n471), .B(n472), .Z(n458) );
  NR2 U503 ( .A(n196), .B(n473), .Z(n472) );
  EO U504 ( .A(n3), .B(test_so1), .Z(n471) );
  AO7 U505 ( .A(n474), .B(N45), .C(n473), .Z(n461) );
  EN U506 ( .A(n475), .B(n476), .Z(n459) );
  EO U507 ( .A(n473), .B(n196), .Z(n475) );
  ND2 U508 ( .A(n474), .B(N45), .Z(n473) );
  EN U509 ( .A(n476), .B(sync_wr_ptr_1_0_), .Z(n474) );
  EN U510 ( .A(n616), .B(test_so1), .Z(n476) );
endmodule


module async_fifo_36_8_0_1_test_1 ( wr_clk, wr_reset_n, wr_en, wr_data, full, 
        afull, rd_clk, rd_reset_n, rd_en, empty, aempty, rd_data, test_si13, 
        test_si12, test_si11, test_si10, test_si9, test_si8, test_si7, 
        test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, test_so13, 
        test_so12, test_so11, test_so10, test_so9, test_so8, test_so7, 
        test_so6, test_so5, test_so4, test_so3, test_so2, test_so1, test_se );
  input [35:0] wr_data;
  output [35:0] rd_data;
  input wr_clk, wr_reset_n, wr_en, rd_clk, rd_reset_n, rd_en, test_si13,
         test_si12, test_si11, test_si10, test_si9, test_si8, test_si7,
         test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, test_se;
  output full, afull, empty, aempty, test_so13, test_so12, test_so11,
         test_so10, test_so9, test_so8, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
  wire   N69, N70, N71, wr_ptr_2_, wr_ptr_1_, grey_wr_ptr_2_, grey_wr_ptr_1_,
         grey_wr_ptr_0_, mem_7__35_, mem_7__34_, mem_7__33_, mem_7__32_,
         mem_7__31_, mem_7__30_, mem_7__29_, mem_7__28_, mem_7__27_,
         mem_7__26_, mem_7__25_, mem_7__24_, mem_7__23_, mem_7__21_,
         mem_7__20_, mem_7__19_, mem_7__18_, mem_7__17_, mem_7__16_,
         mem_7__15_, mem_7__14_, mem_7__13_, mem_7__12_, mem_7__11_,
         mem_7__10_, mem_7__9_, mem_7__8_, mem_7__7_, mem_7__6_, mem_7__5_,
         mem_7__4_, mem_7__3_, mem_7__2_, mem_7__1_, mem_7__0_, mem_6__35_,
         mem_6__34_, mem_6__32_, mem_6__31_, mem_6__30_, mem_6__29_,
         mem_6__28_, mem_6__27_, mem_6__26_, mem_6__25_, mem_6__24_,
         mem_6__23_, mem_6__22_, mem_6__21_, mem_6__20_, mem_6__19_,
         mem_6__18_, mem_6__17_, mem_6__16_, mem_6__15_, mem_6__14_,
         mem_6__13_, mem_6__12_, mem_6__11_, mem_6__10_, mem_6__9_, mem_6__7_,
         mem_6__6_, mem_6__5_, mem_6__4_, mem_6__3_, mem_6__2_, mem_6__1_,
         mem_6__0_, mem_5__35_, mem_5__34_, mem_5__33_, mem_5__32_, mem_5__31_,
         mem_5__30_, mem_5__29_, mem_5__28_, mem_5__27_, mem_5__26_,
         mem_5__25_, mem_5__24_, mem_5__23_, mem_5__22_, mem_5__21_,
         mem_5__20_, mem_5__18_, mem_5__17_, mem_5__16_, mem_5__15_,
         mem_5__14_, mem_5__13_, mem_5__12_, mem_5__11_, mem_5__10_, mem_5__9_,
         mem_5__8_, mem_5__7_, mem_5__6_, mem_5__5_, mem_5__4_, mem_5__3_,
         mem_5__2_, mem_5__1_, mem_5__0_, mem_4__35_, mem_4__34_, mem_4__33_,
         mem_4__32_, mem_4__31_, mem_4__29_, mem_4__28_, mem_4__27_,
         mem_4__26_, mem_4__25_, mem_4__24_, mem_4__23_, mem_4__22_,
         mem_4__21_, mem_4__20_, mem_4__19_, mem_4__18_, mem_4__17_,
         mem_4__16_, mem_4__15_, mem_4__14_, mem_4__13_, mem_4__12_,
         mem_4__11_, mem_4__10_, mem_4__9_, mem_4__8_, mem_4__7_, mem_4__6_,
         mem_4__4_, mem_4__3_, mem_4__2_, mem_4__1_, mem_4__0_, mem_3__35_,
         mem_3__34_, mem_3__33_, mem_3__32_, mem_3__31_, mem_3__30_,
         mem_3__29_, mem_3__28_, mem_3__27_, mem_3__26_, mem_3__25_,
         mem_3__24_, mem_3__23_, mem_3__22_, mem_3__21_, mem_3__20_,
         mem_3__19_, mem_3__18_, mem_3__17_, mem_3__15_, mem_3__14_,
         mem_3__13_, mem_3__12_, mem_3__11_, mem_3__10_, mem_3__9_, mem_3__8_,
         mem_3__7_, mem_3__6_, mem_3__5_, mem_3__4_, mem_3__3_, mem_3__2_,
         mem_3__1_, mem_3__0_, mem_2__35_, mem_2__34_, mem_2__33_, mem_2__32_,
         mem_2__31_, mem_2__30_, mem_2__29_, mem_2__28_, mem_2__26_,
         mem_2__25_, mem_2__24_, mem_2__23_, mem_2__22_, mem_2__21_,
         mem_2__20_, mem_2__19_, mem_2__18_, mem_2__17_, mem_2__16_,
         mem_2__15_, mem_2__14_, mem_2__13_, mem_2__12_, mem_2__11_,
         mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_, mem_2__6_, mem_2__5_,
         mem_2__4_, mem_2__3_, mem_2__1_, mem_2__0_, mem_1__35_, mem_1__34_,
         mem_1__33_, mem_1__32_, mem_1__31_, mem_1__30_, mem_1__29_,
         mem_1__28_, mem_1__27_, mem_1__26_, mem_1__25_, mem_1__24_,
         mem_1__23_, mem_1__22_, mem_1__21_, mem_1__20_, mem_1__19_,
         mem_1__18_, mem_1__17_, mem_1__16_, mem_1__15_, mem_1__14_,
         mem_1__12_, mem_1__11_, mem_1__10_, mem_1__9_, mem_1__8_, mem_1__7_,
         mem_1__6_, mem_1__5_, mem_1__4_, mem_1__3_, mem_1__2_, mem_1__1_,
         mem_1__0_, mem_0__35_, mem_0__34_, mem_0__33_, mem_0__32_, mem_0__31_,
         mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_, mem_0__26_,
         mem_0__25_, mem_0__23_, mem_0__22_, mem_0__21_, mem_0__20_,
         mem_0__19_, mem_0__18_, mem_0__17_, mem_0__16_, mem_0__15_,
         mem_0__14_, mem_0__13_, mem_0__12_, mem_0__11_, mem_0__10_, mem_0__9_,
         mem_0__8_, mem_0__7_, mem_0__6_, mem_0__5_, mem_0__4_, mem_0__3_,
         mem_0__2_, mem_0__1_, mem_0__0_, rd_ptr_3_1, n361, n362, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n356,
         n357, n358, n359, n360, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242;
  wire   [3:0] grey_rd_ptr_dly;
  wire   [3:0] sync_rd_ptr_1;
  wire   [3:0] sync_rd_ptr_0;
  wire   [3:0] sync_wr_ptr_1;
  wire   [3:0] sync_wr_ptr_0;

  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .QN(n943) );
  FD1S mem_reg_7__35_ ( .D(n500), .TI(mem_7__34_), .TE(test_se), .CP(n15), .Q(
        mem_7__35_), .QN(n984) );
  FD1S mem_reg_7__34_ ( .D(n499), .TI(mem_7__33_), .TE(test_se), .CP(n15), .Q(
        mem_7__34_), .QN(n983) );
  FD1S mem_reg_7__33_ ( .D(n498), .TI(mem_7__32_), .TE(test_se), .CP(n14), .Q(
        mem_7__33_), .QN(n982) );
  FD1S mem_reg_7__32_ ( .D(n497), .TI(mem_7__31_), .TE(test_se), .CP(n14), .Q(
        mem_7__32_), .QN(n981) );
  FD1S mem_reg_7__31_ ( .D(n496), .TI(mem_7__30_), .TE(test_se), .CP(n14), .Q(
        mem_7__31_), .QN(n980) );
  FD1S mem_reg_7__30_ ( .D(n495), .TI(mem_7__29_), .TE(test_se), .CP(n14), .Q(
        mem_7__30_), .QN(n979) );
  FD1S mem_reg_7__29_ ( .D(n494), .TI(mem_7__28_), .TE(test_se), .CP(n14), .Q(
        mem_7__29_), .QN(n978) );
  FD1S mem_reg_7__28_ ( .D(n493), .TI(mem_7__27_), .TE(test_se), .CP(n14), .Q(
        mem_7__28_), .QN(n977) );
  FD1S mem_reg_7__27_ ( .D(n492), .TI(mem_7__26_), .TE(test_se), .CP(n14), .Q(
        mem_7__27_), .QN(n976) );
  FD1S mem_reg_7__26_ ( .D(n491), .TI(mem_7__25_), .TE(test_se), .CP(n14), .Q(
        mem_7__26_), .QN(n975) );
  FD1S mem_reg_7__25_ ( .D(n490), .TI(mem_7__24_), .TE(test_se), .CP(n14), .Q(
        mem_7__25_), .QN(n974) );
  FD1S mem_reg_7__24_ ( .D(n489), .TI(mem_7__23_), .TE(test_se), .CP(n14), .Q(
        mem_7__24_), .QN(n973) );
  FD1S mem_reg_7__23_ ( .D(n488), .TI(test_si13), .TE(test_se), .CP(n14), .Q(
        mem_7__23_), .QN(n972) );
  FD1S mem_reg_7__22_ ( .D(n487), .TI(mem_7__21_), .TE(test_se), .CP(n14), .Q(
        test_so12), .QN(n971) );
  FD1S mem_reg_7__21_ ( .D(n486), .TI(mem_7__20_), .TE(test_se), .CP(n13), .Q(
        mem_7__21_), .QN(n970) );
  FD1S mem_reg_7__20_ ( .D(n485), .TI(mem_7__19_), .TE(test_se), .CP(n13), .Q(
        mem_7__20_), .QN(n969) );
  FD1S mem_reg_7__19_ ( .D(n484), .TI(mem_7__18_), .TE(test_se), .CP(n13), .Q(
        mem_7__19_), .QN(n968) );
  FD1S mem_reg_7__18_ ( .D(n483), .TI(mem_7__17_), .TE(test_se), .CP(n13), .Q(
        mem_7__18_), .QN(n967) );
  FD1S mem_reg_7__17_ ( .D(n482), .TI(mem_7__16_), .TE(test_se), .CP(n13), .Q(
        mem_7__17_), .QN(n966) );
  FD1S mem_reg_7__16_ ( .D(n481), .TI(mem_7__15_), .TE(test_se), .CP(n13), .Q(
        mem_7__16_), .QN(n965) );
  FD1S mem_reg_7__15_ ( .D(n480), .TI(mem_7__14_), .TE(test_se), .CP(n13), .Q(
        mem_7__15_), .QN(n964) );
  FD1S mem_reg_7__14_ ( .D(n479), .TI(mem_7__13_), .TE(test_se), .CP(n13), .Q(
        mem_7__14_), .QN(n963) );
  FD1S mem_reg_7__13_ ( .D(n478), .TI(mem_7__12_), .TE(test_se), .CP(n13), .Q(
        mem_7__13_), .QN(n962) );
  FD1S mem_reg_7__12_ ( .D(n477), .TI(mem_7__11_), .TE(test_se), .CP(n13), .Q(
        mem_7__12_), .QN(n961) );
  FD1S mem_reg_7__11_ ( .D(n476), .TI(mem_7__10_), .TE(test_se), .CP(n13), .Q(
        mem_7__11_), .QN(n960) );
  FD1S mem_reg_7__10_ ( .D(n475), .TI(mem_7__9_), .TE(test_se), .CP(n13), .Q(
        mem_7__10_), .QN(n959) );
  FD1S mem_reg_7__9_ ( .D(n474), .TI(mem_7__8_), .TE(test_se), .CP(n12), .Q(
        mem_7__9_), .QN(n958) );
  FD1S mem_reg_7__8_ ( .D(n473), .TI(mem_7__7_), .TE(test_se), .CP(n12), .Q(
        mem_7__8_), .QN(n957) );
  FD1S mem_reg_7__7_ ( .D(n472), .TI(mem_7__6_), .TE(test_se), .CP(n12), .Q(
        mem_7__7_), .QN(n956) );
  FD1S mem_reg_7__6_ ( .D(n471), .TI(mem_7__5_), .TE(test_se), .CP(n12), .Q(
        mem_7__6_), .QN(n955) );
  FD1S mem_reg_7__5_ ( .D(n470), .TI(mem_7__4_), .TE(test_se), .CP(n12), .Q(
        mem_7__5_), .QN(n954) );
  FD1S mem_reg_7__4_ ( .D(n469), .TI(mem_7__3_), .TE(test_se), .CP(n12), .Q(
        mem_7__4_), .QN(n953) );
  FD1S mem_reg_7__3_ ( .D(n468), .TI(mem_7__2_), .TE(test_se), .CP(n12), .Q(
        mem_7__3_), .QN(n952) );
  FD1S mem_reg_7__2_ ( .D(n467), .TI(mem_7__1_), .TE(test_se), .CP(n12), .Q(
        mem_7__2_), .QN(n951) );
  FD1S mem_reg_7__1_ ( .D(n466), .TI(mem_7__0_), .TE(test_se), .CP(n12), .Q(
        mem_7__1_), .QN(n950) );
  FD1S mem_reg_7__0_ ( .D(n501), .TI(mem_6__35_), .TE(test_se), .CP(n15), .Q(
        mem_7__0_), .QN(n985) );
  FD1S mem_reg_6__35_ ( .D(n536), .TI(mem_6__34_), .TE(test_se), .CP(n11), .Q(
        mem_6__35_), .QN(n1020) );
  FD1S mem_reg_6__34_ ( .D(n535), .TI(test_si12), .TE(test_se), .CP(n11), .Q(
        mem_6__34_), .QN(n1019) );
  FD1S mem_reg_6__33_ ( .D(n534), .TI(mem_6__32_), .TE(test_se), .CP(n11), .Q(
        test_so11), .QN(n1018) );
  FD1S mem_reg_6__32_ ( .D(n533), .TI(mem_6__31_), .TE(test_se), .CP(n11), .Q(
        mem_6__32_), .QN(n1017) );
  FD1S mem_reg_6__31_ ( .D(n532), .TI(mem_6__30_), .TE(test_se), .CP(n11), .Q(
        mem_6__31_), .QN(n1016) );
  FD1S mem_reg_6__30_ ( .D(n531), .TI(mem_6__29_), .TE(test_se), .CP(n11), .Q(
        mem_6__30_), .QN(n1015) );
  FD1S mem_reg_6__29_ ( .D(n530), .TI(mem_6__28_), .TE(test_se), .CP(n11), .Q(
        mem_6__29_), .QN(n1014) );
  FD1S mem_reg_6__28_ ( .D(n529), .TI(mem_6__27_), .TE(test_se), .CP(n11), .Q(
        mem_6__28_), .QN(n1013) );
  FD1S mem_reg_6__27_ ( .D(n528), .TI(mem_6__26_), .TE(test_se), .CP(n11), .Q(
        mem_6__27_), .QN(n1012) );
  FD1S mem_reg_6__26_ ( .D(n527), .TI(mem_6__25_), .TE(test_se), .CP(n11), .Q(
        mem_6__26_), .QN(n1011) );
  FD1S mem_reg_6__25_ ( .D(n526), .TI(mem_6__24_), .TE(test_se), .CP(n11), .Q(
        mem_6__25_), .QN(n1010) );
  FD1S mem_reg_6__24_ ( .D(n525), .TI(mem_6__23_), .TE(test_se), .CP(n11), .Q(
        mem_6__24_), .QN(n1009) );
  FD1S mem_reg_6__23_ ( .D(n524), .TI(mem_6__22_), .TE(test_se), .CP(n10), .Q(
        mem_6__23_), .QN(n1008) );
  FD1S mem_reg_6__22_ ( .D(n523), .TI(mem_6__21_), .TE(test_se), .CP(n10), .Q(
        mem_6__22_), .QN(n1007) );
  FD1S mem_reg_6__21_ ( .D(n522), .TI(mem_6__20_), .TE(test_se), .CP(n10), .Q(
        mem_6__21_), .QN(n1006) );
  FD1S mem_reg_6__20_ ( .D(n521), .TI(mem_6__19_), .TE(test_se), .CP(n10), .Q(
        mem_6__20_), .QN(n1005) );
  FD1S mem_reg_6__19_ ( .D(n520), .TI(mem_6__18_), .TE(test_se), .CP(n10), .Q(
        mem_6__19_), .QN(n1004) );
  FD1S mem_reg_6__18_ ( .D(n519), .TI(mem_6__17_), .TE(test_se), .CP(n10), .Q(
        mem_6__18_), .QN(n1003) );
  FD1S mem_reg_6__17_ ( .D(n518), .TI(mem_6__16_), .TE(test_se), .CP(n10), .Q(
        mem_6__17_), .QN(n1002) );
  FD1S mem_reg_6__16_ ( .D(n517), .TI(mem_6__15_), .TE(test_se), .CP(n10), .Q(
        mem_6__16_), .QN(n1001) );
  FD1S mem_reg_6__15_ ( .D(n516), .TI(mem_6__14_), .TE(test_se), .CP(n10), .Q(
        mem_6__15_), .QN(n1000) );
  FD1S mem_reg_6__14_ ( .D(n515), .TI(mem_6__13_), .TE(test_se), .CP(n10), .Q(
        mem_6__14_), .QN(n999) );
  FD1S mem_reg_6__13_ ( .D(n514), .TI(mem_6__12_), .TE(test_se), .CP(n10), .Q(
        mem_6__13_), .QN(n998) );
  FD1S mem_reg_6__12_ ( .D(n513), .TI(mem_6__11_), .TE(test_se), .CP(n10), .Q(
        mem_6__12_), .QN(n997) );
  FD1S mem_reg_6__11_ ( .D(n512), .TI(mem_6__10_), .TE(test_se), .CP(n9), .Q(
        mem_6__11_), .QN(n996) );
  FD1S mem_reg_6__10_ ( .D(n511), .TI(mem_6__9_), .TE(test_se), .CP(n9), .Q(
        mem_6__10_), .QN(n995) );
  FD1S mem_reg_6__9_ ( .D(n510), .TI(test_si11), .TE(test_se), .CP(n9), .Q(
        mem_6__9_), .QN(n994) );
  FD1S mem_reg_6__8_ ( .D(n509), .TI(mem_6__7_), .TE(test_se), .CP(n9), .Q(
        test_so10), .QN(n993) );
  FD1S mem_reg_6__7_ ( .D(n508), .TI(mem_6__6_), .TE(test_se), .CP(n9), .Q(
        mem_6__7_), .QN(n992) );
  FD1S mem_reg_6__6_ ( .D(n507), .TI(mem_6__5_), .TE(test_se), .CP(n9), .Q(
        mem_6__6_), .QN(n991) );
  FD1S mem_reg_6__5_ ( .D(n506), .TI(mem_6__4_), .TE(test_se), .CP(n9), .Q(
        mem_6__5_), .QN(n990) );
  FD1S mem_reg_6__4_ ( .D(n505), .TI(mem_6__3_), .TE(test_se), .CP(n9), .Q(
        mem_6__4_), .QN(n989) );
  FD1S mem_reg_6__3_ ( .D(n504), .TI(mem_6__2_), .TE(test_se), .CP(n9), .Q(
        mem_6__3_), .QN(n988) );
  FD1S mem_reg_6__2_ ( .D(n503), .TI(mem_6__1_), .TE(test_se), .CP(n9), .Q(
        mem_6__2_), .QN(n987) );
  FD1S mem_reg_6__1_ ( .D(n502), .TI(mem_6__0_), .TE(test_se), .CP(n9), .Q(
        mem_6__1_), .QN(n986) );
  FD1S mem_reg_6__0_ ( .D(n537), .TI(mem_5__35_), .TE(test_se), .CP(n12), .Q(
        mem_6__0_), .QN(n1021) );
  FD1S mem_reg_5__35_ ( .D(n572), .TI(mem_5__34_), .TE(test_se), .CP(n8), .Q(
        mem_5__35_), .QN(n1056) );
  FD1S mem_reg_5__34_ ( .D(n571), .TI(mem_5__33_), .TE(test_se), .CP(n8), .Q(
        mem_5__34_), .QN(n1055) );
  FD1S mem_reg_5__33_ ( .D(n570), .TI(mem_5__32_), .TE(test_se), .CP(n8), .Q(
        mem_5__33_), .QN(n1054) );
  FD1S mem_reg_5__32_ ( .D(n569), .TI(mem_5__31_), .TE(test_se), .CP(n8), .Q(
        mem_5__32_), .QN(n1053) );
  FD1S mem_reg_5__31_ ( .D(n568), .TI(mem_5__30_), .TE(test_se), .CP(n8), .Q(
        mem_5__31_), .QN(n1052) );
  FD1S mem_reg_5__30_ ( .D(n567), .TI(mem_5__29_), .TE(test_se), .CP(n8), .Q(
        mem_5__30_), .QN(n1051) );
  FD1S mem_reg_5__29_ ( .D(n566), .TI(mem_5__28_), .TE(test_se), .CP(n8), .Q(
        mem_5__29_), .QN(n1050) );
  FD1S mem_reg_5__28_ ( .D(n565), .TI(mem_5__27_), .TE(test_se), .CP(n8), .Q(
        mem_5__28_), .QN(n1049) );
  FD1S mem_reg_5__27_ ( .D(n564), .TI(mem_5__26_), .TE(test_se), .CP(n8), .Q(
        mem_5__27_), .QN(n1048) );
  FD1S mem_reg_5__26_ ( .D(n563), .TI(mem_5__25_), .TE(test_se), .CP(n8), .Q(
        mem_5__26_), .QN(n1047) );
  FD1S mem_reg_5__25_ ( .D(n562), .TI(mem_5__24_), .TE(test_se), .CP(n8), .Q(
        mem_5__25_), .QN(n1046) );
  FD1S mem_reg_5__24_ ( .D(n561), .TI(mem_5__23_), .TE(test_se), .CP(n8), .Q(
        mem_5__24_), .QN(n1045) );
  FD1S mem_reg_5__23_ ( .D(n560), .TI(mem_5__22_), .TE(test_se), .CP(n7), .Q(
        mem_5__23_), .QN(n1044) );
  FD1S mem_reg_5__22_ ( .D(n559), .TI(mem_5__21_), .TE(test_se), .CP(n7), .Q(
        mem_5__22_), .QN(n1043) );
  FD1S mem_reg_5__21_ ( .D(n558), .TI(mem_5__20_), .TE(test_se), .CP(n7), .Q(
        mem_5__21_), .QN(n1042) );
  FD1S mem_reg_5__20_ ( .D(n557), .TI(test_si10), .TE(test_se), .CP(n7), .Q(
        mem_5__20_), .QN(n1041) );
  FD1S mem_reg_5__19_ ( .D(n556), .TI(mem_5__18_), .TE(test_se), .CP(n7), .Q(
        test_so9), .QN(n1040) );
  FD1S mem_reg_5__18_ ( .D(n555), .TI(mem_5__17_), .TE(test_se), .CP(n7), .Q(
        mem_5__18_), .QN(n1039) );
  FD1S mem_reg_5__17_ ( .D(n554), .TI(mem_5__16_), .TE(test_se), .CP(n7), .Q(
        mem_5__17_), .QN(n1038) );
  FD1S mem_reg_5__16_ ( .D(n553), .TI(mem_5__15_), .TE(test_se), .CP(n7), .Q(
        mem_5__16_), .QN(n1037) );
  FD1S mem_reg_5__15_ ( .D(n552), .TI(mem_5__14_), .TE(test_se), .CP(n7), .Q(
        mem_5__15_), .QN(n1036) );
  FD1S mem_reg_5__14_ ( .D(n551), .TI(mem_5__13_), .TE(test_se), .CP(n7), .Q(
        mem_5__14_), .QN(n1035) );
  FD1S mem_reg_5__13_ ( .D(n550), .TI(mem_5__12_), .TE(test_se), .CP(n7), .Q(
        mem_5__13_), .QN(n1034) );
  FD1S mem_reg_5__12_ ( .D(n549), .TI(mem_5__11_), .TE(test_se), .CP(n7), .Q(
        mem_5__12_), .QN(n1033) );
  FD1S mem_reg_5__11_ ( .D(n548), .TI(mem_5__10_), .TE(test_se), .CP(n6), .Q(
        mem_5__11_), .QN(n1032) );
  FD1S mem_reg_5__10_ ( .D(n547), .TI(mem_5__9_), .TE(test_se), .CP(n6), .Q(
        mem_5__10_), .QN(n1031) );
  FD1S mem_reg_5__9_ ( .D(n546), .TI(mem_5__8_), .TE(test_se), .CP(n6), .Q(
        mem_5__9_), .QN(n1030) );
  FD1S mem_reg_5__8_ ( .D(n545), .TI(mem_5__7_), .TE(test_se), .CP(n6), .Q(
        mem_5__8_), .QN(n1029) );
  FD1S mem_reg_5__7_ ( .D(n544), .TI(mem_5__6_), .TE(test_se), .CP(n6), .Q(
        mem_5__7_), .QN(n1028) );
  FD1S mem_reg_5__6_ ( .D(n543), .TI(mem_5__5_), .TE(test_se), .CP(n6), .Q(
        mem_5__6_), .QN(n1027) );
  FD1S mem_reg_5__5_ ( .D(n542), .TI(mem_5__4_), .TE(test_se), .CP(n6), .Q(
        mem_5__5_), .QN(n1026) );
  FD1S mem_reg_5__4_ ( .D(n541), .TI(mem_5__3_), .TE(test_se), .CP(n6), .Q(
        mem_5__4_), .QN(n1025) );
  FD1S mem_reg_5__3_ ( .D(n540), .TI(mem_5__2_), .TE(test_se), .CP(n6), .Q(
        mem_5__3_), .QN(n1024) );
  FD1S mem_reg_5__2_ ( .D(n539), .TI(mem_5__1_), .TE(test_se), .CP(n6), .Q(
        mem_5__2_), .QN(n1023) );
  FD1S mem_reg_5__1_ ( .D(n538), .TI(mem_5__0_), .TE(test_se), .CP(n6), .Q(
        mem_5__1_), .QN(n1022) );
  FD1S mem_reg_5__0_ ( .D(n573), .TI(mem_4__35_), .TE(test_se), .CP(n9), .Q(
        mem_5__0_), .QN(n1057) );
  FD1S mem_reg_4__35_ ( .D(n608), .TI(mem_4__34_), .TE(test_se), .CP(n27), .Q(
        mem_4__35_), .QN(n1092) );
  FD1S mem_reg_4__34_ ( .D(n607), .TI(mem_4__33_), .TE(test_se), .CP(n27), .Q(
        mem_4__34_), .QN(n1091) );
  FD1S mem_reg_4__33_ ( .D(n606), .TI(mem_4__32_), .TE(test_se), .CP(n27), .Q(
        mem_4__33_), .QN(n1090) );
  FD1S mem_reg_4__32_ ( .D(n605), .TI(mem_4__31_), .TE(test_se), .CP(n27), .Q(
        mem_4__32_), .QN(n1089) );
  FD1S mem_reg_4__31_ ( .D(n604), .TI(test_si9), .TE(test_se), .CP(n26), .Q(
        mem_4__31_), .QN(n1088) );
  FD1S mem_reg_4__30_ ( .D(n603), .TI(mem_4__29_), .TE(test_se), .CP(n26), .Q(
        test_so8), .QN(n1087) );
  FD1S mem_reg_4__29_ ( .D(n602), .TI(mem_4__28_), .TE(test_se), .CP(n26), .Q(
        mem_4__29_), .QN(n1086) );
  FD1S mem_reg_4__28_ ( .D(n601), .TI(mem_4__27_), .TE(test_se), .CP(n26), .Q(
        mem_4__28_), .QN(n1085) );
  FD1S mem_reg_4__27_ ( .D(n600), .TI(mem_4__26_), .TE(test_se), .CP(n26), .Q(
        mem_4__27_), .QN(n1084) );
  FD1S mem_reg_4__26_ ( .D(n599), .TI(mem_4__25_), .TE(test_se), .CP(n26), .Q(
        mem_4__26_), .QN(n1083) );
  FD1S mem_reg_4__25_ ( .D(n598), .TI(mem_4__24_), .TE(test_se), .CP(n26), .Q(
        mem_4__25_), .QN(n1082) );
  FD1S mem_reg_4__24_ ( .D(n597), .TI(mem_4__23_), .TE(test_se), .CP(n26), .Q(
        mem_4__24_), .QN(n1081) );
  FD1S mem_reg_4__23_ ( .D(n596), .TI(mem_4__22_), .TE(test_se), .CP(n26), .Q(
        mem_4__23_), .QN(n1080) );
  FD1S mem_reg_4__22_ ( .D(n595), .TI(mem_4__21_), .TE(test_se), .CP(n26), .Q(
        mem_4__22_), .QN(n1079) );
  FD1S mem_reg_4__21_ ( .D(n594), .TI(mem_4__20_), .TE(test_se), .CP(n26), .Q(
        mem_4__21_), .QN(n1078) );
  FD1S mem_reg_4__20_ ( .D(n593), .TI(mem_4__19_), .TE(test_se), .CP(n26), .Q(
        mem_4__20_), .QN(n1077) );
  FD1S mem_reg_4__19_ ( .D(n592), .TI(mem_4__18_), .TE(test_se), .CP(n25), .Q(
        mem_4__19_), .QN(n1076) );
  FD1S mem_reg_4__18_ ( .D(n591), .TI(mem_4__17_), .TE(test_se), .CP(n25), .Q(
        mem_4__18_), .QN(n1075) );
  FD1S mem_reg_4__17_ ( .D(n590), .TI(mem_4__16_), .TE(test_se), .CP(n25), .Q(
        mem_4__17_), .QN(n1074) );
  FD1S mem_reg_4__16_ ( .D(n589), .TI(mem_4__15_), .TE(test_se), .CP(n25), .Q(
        mem_4__16_), .QN(n1073) );
  FD1S mem_reg_4__15_ ( .D(n588), .TI(mem_4__14_), .TE(test_se), .CP(n25), .Q(
        mem_4__15_), .QN(n1072) );
  FD1S mem_reg_4__14_ ( .D(n587), .TI(mem_4__13_), .TE(test_se), .CP(n25), .Q(
        mem_4__14_), .QN(n1071) );
  FD1S mem_reg_4__13_ ( .D(n586), .TI(mem_4__12_), .TE(test_se), .CP(n25), .Q(
        mem_4__13_), .QN(n1070) );
  FD1S mem_reg_4__12_ ( .D(n585), .TI(mem_4__11_), .TE(test_se), .CP(n25), .Q(
        mem_4__12_), .QN(n1069) );
  FD1S mem_reg_4__11_ ( .D(n584), .TI(mem_4__10_), .TE(test_se), .CP(n25), .Q(
        mem_4__11_), .QN(n1068) );
  FD1S mem_reg_4__10_ ( .D(n583), .TI(mem_4__9_), .TE(test_se), .CP(n25), .Q(
        mem_4__10_), .QN(n1067) );
  FD1S mem_reg_4__9_ ( .D(n582), .TI(mem_4__8_), .TE(test_se), .CP(n25), .Q(
        mem_4__9_), .QN(n1066) );
  FD1S mem_reg_4__8_ ( .D(n581), .TI(mem_4__7_), .TE(test_se), .CP(n25), .Q(
        mem_4__8_), .QN(n1065) );
  FD1S mem_reg_4__7_ ( .D(n580), .TI(mem_4__6_), .TE(test_se), .CP(n24), .Q(
        mem_4__7_), .QN(n1064) );
  FD1S mem_reg_4__6_ ( .D(n579), .TI(test_si8), .TE(test_se), .CP(n24), .Q(
        mem_4__6_), .QN(n1063) );
  FD1S mem_reg_4__5_ ( .D(n578), .TI(mem_4__4_), .TE(test_se), .CP(n24), .Q(
        test_so7), .QN(n1062) );
  FD1S mem_reg_4__4_ ( .D(n577), .TI(mem_4__3_), .TE(test_se), .CP(n24), .Q(
        mem_4__4_), .QN(n1061) );
  FD1S mem_reg_4__3_ ( .D(n576), .TI(mem_4__2_), .TE(test_se), .CP(n24), .Q(
        mem_4__3_), .QN(n1060) );
  FD1S mem_reg_4__2_ ( .D(n575), .TI(mem_4__1_), .TE(test_se), .CP(n24), .Q(
        mem_4__2_), .QN(n1059) );
  FD1S mem_reg_4__1_ ( .D(n574), .TI(mem_4__0_), .TE(test_se), .CP(n24), .Q(
        mem_4__1_), .QN(n1058) );
  FD1S mem_reg_4__0_ ( .D(n609), .TI(mem_3__35_), .TE(test_se), .CP(n27), .Q(
        mem_4__0_), .QN(n1093) );
  FD1S mem_reg_3__35_ ( .D(n644), .TI(mem_3__34_), .TE(test_se), .CP(n24), .Q(
        mem_3__35_), .QN(n1128) );
  FD1S mem_reg_3__34_ ( .D(n643), .TI(mem_3__33_), .TE(test_se), .CP(n24), .Q(
        mem_3__34_), .QN(n1127) );
  FD1S mem_reg_3__33_ ( .D(n642), .TI(mem_3__32_), .TE(test_se), .CP(n24), .Q(
        mem_3__33_), .QN(n1126) );
  FD1S mem_reg_3__32_ ( .D(n641), .TI(mem_3__31_), .TE(test_se), .CP(n24), .Q(
        mem_3__32_), .QN(n1125) );
  FD1S mem_reg_3__31_ ( .D(n640), .TI(mem_3__30_), .TE(test_se), .CP(n23), .Q(
        mem_3__31_), .QN(n1124) );
  FD1S mem_reg_3__30_ ( .D(n639), .TI(mem_3__29_), .TE(test_se), .CP(n23), .Q(
        mem_3__30_), .QN(n1123) );
  FD1S mem_reg_3__29_ ( .D(n638), .TI(mem_3__28_), .TE(test_se), .CP(n23), .Q(
        mem_3__29_), .QN(n1122) );
  FD1S mem_reg_3__28_ ( .D(n637), .TI(mem_3__27_), .TE(test_se), .CP(n23), .Q(
        mem_3__28_), .QN(n1121) );
  FD1S mem_reg_3__27_ ( .D(n636), .TI(mem_3__26_), .TE(test_se), .CP(n23), .Q(
        mem_3__27_), .QN(n1120) );
  FD1S mem_reg_3__26_ ( .D(n635), .TI(mem_3__25_), .TE(test_se), .CP(n23), .Q(
        mem_3__26_), .QN(n1119) );
  FD1S mem_reg_3__25_ ( .D(n634), .TI(mem_3__24_), .TE(test_se), .CP(n23), .Q(
        mem_3__25_), .QN(n1118) );
  FD1S mem_reg_3__24_ ( .D(n633), .TI(mem_3__23_), .TE(test_se), .CP(n23), .Q(
        mem_3__24_), .QN(n1117) );
  FD1S mem_reg_3__23_ ( .D(n632), .TI(mem_3__22_), .TE(test_se), .CP(n23), .Q(
        mem_3__23_), .QN(n1116) );
  FD1S mem_reg_3__22_ ( .D(n631), .TI(mem_3__21_), .TE(test_se), .CP(n23), .Q(
        mem_3__22_), .QN(n1115) );
  FD1S mem_reg_3__21_ ( .D(n630), .TI(mem_3__20_), .TE(test_se), .CP(n23), .Q(
        mem_3__21_), .QN(n1114) );
  FD1S mem_reg_3__20_ ( .D(n629), .TI(mem_3__19_), .TE(test_se), .CP(n23), .Q(
        mem_3__20_), .QN(n1113) );
  FD1S mem_reg_3__19_ ( .D(n628), .TI(mem_3__18_), .TE(test_se), .CP(n22), .Q(
        mem_3__19_), .QN(n1112) );
  FD1S mem_reg_3__18_ ( .D(n627), .TI(mem_3__17_), .TE(test_se), .CP(n22), .Q(
        mem_3__18_), .QN(n1111) );
  FD1S mem_reg_3__17_ ( .D(n626), .TI(test_si7), .TE(test_se), .CP(n22), .Q(
        mem_3__17_), .QN(n1110) );
  FD1S mem_reg_3__16_ ( .D(n625), .TI(mem_3__15_), .TE(test_se), .CP(n22), .Q(
        test_so6), .QN(n1109) );
  FD1S mem_reg_3__15_ ( .D(n624), .TI(mem_3__14_), .TE(test_se), .CP(n22), .Q(
        mem_3__15_), .QN(n1108) );
  FD1S mem_reg_3__14_ ( .D(n623), .TI(mem_3__13_), .TE(test_se), .CP(n22), .Q(
        mem_3__14_), .QN(n1107) );
  FD1S mem_reg_3__13_ ( .D(n622), .TI(mem_3__12_), .TE(test_se), .CP(n22), .Q(
        mem_3__13_), .QN(n1106) );
  FD1S mem_reg_3__12_ ( .D(n621), .TI(mem_3__11_), .TE(test_se), .CP(n22), .Q(
        mem_3__12_), .QN(n1105) );
  FD1S mem_reg_3__11_ ( .D(n620), .TI(mem_3__10_), .TE(test_se), .CP(n22), .Q(
        mem_3__11_), .QN(n1104) );
  FD1S mem_reg_3__10_ ( .D(n619), .TI(mem_3__9_), .TE(test_se), .CP(n22), .Q(
        mem_3__10_), .QN(n1103) );
  FD1S mem_reg_3__9_ ( .D(n618), .TI(mem_3__8_), .TE(test_se), .CP(n22), .Q(
        mem_3__9_), .QN(n1102) );
  FD1S mem_reg_3__8_ ( .D(n617), .TI(mem_3__7_), .TE(test_se), .CP(n22), .Q(
        mem_3__8_), .QN(n1101) );
  FD1S mem_reg_3__7_ ( .D(n616), .TI(mem_3__6_), .TE(test_se), .CP(n21), .Q(
        mem_3__7_), .QN(n1100) );
  FD1S mem_reg_3__6_ ( .D(n615), .TI(mem_3__5_), .TE(test_se), .CP(n21), .Q(
        mem_3__6_), .QN(n1099) );
  FD1S mem_reg_3__5_ ( .D(n614), .TI(mem_3__4_), .TE(test_se), .CP(n21), .Q(
        mem_3__5_), .QN(n1098) );
  FD1S mem_reg_3__4_ ( .D(n613), .TI(mem_3__3_), .TE(test_se), .CP(n21), .Q(
        mem_3__4_), .QN(n1097) );
  FD1S mem_reg_3__3_ ( .D(n612), .TI(mem_3__2_), .TE(test_se), .CP(n21), .Q(
        mem_3__3_), .QN(n1096) );
  FD1S mem_reg_3__2_ ( .D(n611), .TI(mem_3__1_), .TE(test_se), .CP(n21), .Q(
        mem_3__2_), .QN(n1095) );
  FD1S mem_reg_3__1_ ( .D(n610), .TI(mem_3__0_), .TE(test_se), .CP(n21), .Q(
        mem_3__1_), .QN(n1094) );
  FD1S mem_reg_3__0_ ( .D(n645), .TI(mem_2__35_), .TE(test_se), .CP(n24), .Q(
        mem_3__0_), .QN(n1129) );
  FD1S mem_reg_2__35_ ( .D(n680), .TI(mem_2__34_), .TE(test_se), .CP(n18), .Q(
        mem_2__35_), .QN(n1164) );
  FD1S mem_reg_2__34_ ( .D(n679), .TI(mem_2__33_), .TE(test_se), .CP(n18), .Q(
        mem_2__34_), .QN(n1163) );
  FD1S mem_reg_2__33_ ( .D(n678), .TI(mem_2__32_), .TE(test_se), .CP(n17), .Q(
        mem_2__33_), .QN(n1162) );
  FD1S mem_reg_2__32_ ( .D(n677), .TI(mem_2__31_), .TE(test_se), .CP(n17), .Q(
        mem_2__32_), .QN(n1161) );
  FD1S mem_reg_2__31_ ( .D(n676), .TI(mem_2__30_), .TE(test_se), .CP(n17), .Q(
        mem_2__31_), .QN(n1160) );
  FD1S mem_reg_2__30_ ( .D(n675), .TI(mem_2__29_), .TE(test_se), .CP(n17), .Q(
        mem_2__30_), .QN(n1159) );
  FD1S mem_reg_2__29_ ( .D(n674), .TI(mem_2__28_), .TE(test_se), .CP(n17), .Q(
        mem_2__29_), .QN(n1158) );
  FD1S mem_reg_2__28_ ( .D(n673), .TI(test_si6), .TE(test_se), .CP(n17), .Q(
        mem_2__28_), .QN(n1157) );
  FD1S mem_reg_2__27_ ( .D(n672), .TI(mem_2__26_), .TE(test_se), .CP(n17), .Q(
        test_so5), .QN(n1156) );
  FD1S mem_reg_2__26_ ( .D(n671), .TI(mem_2__25_), .TE(test_se), .CP(n17), .Q(
        mem_2__26_), .QN(n1155) );
  FD1S mem_reg_2__25_ ( .D(n670), .TI(mem_2__24_), .TE(test_se), .CP(n17), .Q(
        mem_2__25_), .QN(n1154) );
  FD1S mem_reg_2__24_ ( .D(n669), .TI(mem_2__23_), .TE(test_se), .CP(n17), .Q(
        mem_2__24_), .QN(n1153) );
  FD1S mem_reg_2__23_ ( .D(n668), .TI(mem_2__22_), .TE(test_se), .CP(n17), .Q(
        mem_2__23_), .QN(n1152) );
  FD1S mem_reg_2__22_ ( .D(n667), .TI(mem_2__21_), .TE(test_se), .CP(n17), .Q(
        mem_2__22_), .QN(n1151) );
  FD1S mem_reg_2__21_ ( .D(n666), .TI(mem_2__20_), .TE(test_se), .CP(n16), .Q(
        mem_2__21_), .QN(n1150) );
  FD1S mem_reg_2__20_ ( .D(n665), .TI(mem_2__19_), .TE(test_se), .CP(n16), .Q(
        mem_2__20_), .QN(n1149) );
  FD1S mem_reg_2__19_ ( .D(n664), .TI(mem_2__18_), .TE(test_se), .CP(n16), .Q(
        mem_2__19_), .QN(n1148) );
  FD1S mem_reg_2__18_ ( .D(n663), .TI(mem_2__17_), .TE(test_se), .CP(n16), .Q(
        mem_2__18_), .QN(n1147) );
  FD1S mem_reg_2__17_ ( .D(n662), .TI(mem_2__16_), .TE(test_se), .CP(n16), .Q(
        mem_2__17_), .QN(n1146) );
  FD1S mem_reg_2__16_ ( .D(n661), .TI(mem_2__15_), .TE(test_se), .CP(n16), .Q(
        mem_2__16_), .QN(n1145) );
  FD1S mem_reg_2__15_ ( .D(n660), .TI(mem_2__14_), .TE(test_se), .CP(n16), .Q(
        mem_2__15_), .QN(n1144) );
  FD1S mem_reg_2__14_ ( .D(n659), .TI(mem_2__13_), .TE(test_se), .CP(n16), .Q(
        mem_2__14_), .QN(n1143) );
  FD1S mem_reg_2__13_ ( .D(n658), .TI(mem_2__12_), .TE(test_se), .CP(n16), .Q(
        mem_2__13_), .QN(n1142) );
  FD1S mem_reg_2__12_ ( .D(n657), .TI(mem_2__11_), .TE(test_se), .CP(n16), .Q(
        mem_2__12_), .QN(n1141) );
  FD1S mem_reg_2__11_ ( .D(n656), .TI(mem_2__10_), .TE(test_se), .CP(n16), .Q(
        mem_2__11_), .QN(n1140) );
  FD1S mem_reg_2__10_ ( .D(n655), .TI(mem_2__9_), .TE(test_se), .CP(n16), .Q(
        mem_2__10_), .QN(n1139) );
  FD1S mem_reg_2__9_ ( .D(n654), .TI(mem_2__8_), .TE(test_se), .CP(n15), .Q(
        mem_2__9_), .QN(n1138) );
  FD1S mem_reg_2__8_ ( .D(n653), .TI(mem_2__7_), .TE(test_se), .CP(n15), .Q(
        mem_2__8_), .QN(n1137) );
  FD1S mem_reg_2__7_ ( .D(n652), .TI(mem_2__6_), .TE(test_se), .CP(n15), .Q(
        mem_2__7_), .QN(n1136) );
  FD1S mem_reg_2__6_ ( .D(n651), .TI(mem_2__5_), .TE(test_se), .CP(n15), .Q(
        mem_2__6_), .QN(n1135) );
  FD1S mem_reg_2__5_ ( .D(n650), .TI(mem_2__4_), .TE(test_se), .CP(n15), .Q(
        mem_2__5_), .QN(n1134) );
  FD1S mem_reg_2__4_ ( .D(n649), .TI(mem_2__3_), .TE(test_se), .CP(n15), .Q(
        mem_2__4_), .QN(n1133) );
  FD1S mem_reg_2__3_ ( .D(n648), .TI(test_si5), .TE(test_se), .CP(n15), .Q(
        mem_2__3_), .QN(n1132) );
  FD1S mem_reg_2__2_ ( .D(n647), .TI(mem_2__1_), .TE(test_se), .CP(n15), .Q(
        test_so4), .QN(n1131) );
  FD1S mem_reg_2__1_ ( .D(n646), .TI(mem_2__0_), .TE(test_se), .CP(n15), .Q(
        mem_2__1_), .QN(n1130) );
  FD1S mem_reg_2__0_ ( .D(n681), .TI(mem_1__35_), .TE(test_se), .CP(n18), .Q(
        mem_2__0_), .QN(n1165) );
  FD1S mem_reg_1__35_ ( .D(n716), .TI(mem_1__34_), .TE(test_se), .CP(n21), .Q(
        mem_1__35_), .QN(n1200) );
  FD1S mem_reg_1__34_ ( .D(n715), .TI(mem_1__33_), .TE(test_se), .CP(n21), .Q(
        mem_1__34_), .QN(n1199) );
  FD1S mem_reg_1__33_ ( .D(n714), .TI(mem_1__32_), .TE(test_se), .CP(n20), .Q(
        mem_1__33_), .QN(n1198) );
  FD1S mem_reg_1__32_ ( .D(n713), .TI(mem_1__31_), .TE(test_se), .CP(n20), .Q(
        mem_1__32_), .QN(n1197) );
  FD1S mem_reg_1__31_ ( .D(n712), .TI(mem_1__30_), .TE(test_se), .CP(n20), .Q(
        mem_1__31_), .QN(n1196) );
  FD1S mem_reg_1__30_ ( .D(n711), .TI(mem_1__29_), .TE(test_se), .CP(n20), .Q(
        mem_1__30_), .QN(n1195) );
  FD1S mem_reg_1__29_ ( .D(n710), .TI(mem_1__28_), .TE(test_se), .CP(n20), .Q(
        mem_1__29_), .QN(n1194) );
  FD1S mem_reg_1__28_ ( .D(n709), .TI(mem_1__27_), .TE(test_se), .CP(n20), .Q(
        mem_1__28_), .QN(n1193) );
  FD1S mem_reg_1__27_ ( .D(n708), .TI(mem_1__26_), .TE(test_se), .CP(n20), .Q(
        mem_1__27_), .QN(n1192) );
  FD1S mem_reg_1__26_ ( .D(n707), .TI(mem_1__25_), .TE(test_se), .CP(n20), .Q(
        mem_1__26_), .QN(n1191) );
  FD1S mem_reg_1__25_ ( .D(n706), .TI(mem_1__24_), .TE(test_se), .CP(n20), .Q(
        mem_1__25_), .QN(n1190) );
  FD1S mem_reg_1__24_ ( .D(n705), .TI(mem_1__23_), .TE(test_se), .CP(n20), .Q(
        mem_1__24_), .QN(n1189) );
  FD1S mem_reg_1__23_ ( .D(n704), .TI(mem_1__22_), .TE(test_se), .CP(n20), .Q(
        mem_1__23_), .QN(n1188) );
  FD1S mem_reg_1__22_ ( .D(n703), .TI(mem_1__21_), .TE(test_se), .CP(n20), .Q(
        mem_1__22_), .QN(n1187) );
  FD1S mem_reg_1__21_ ( .D(n702), .TI(mem_1__20_), .TE(test_se), .CP(n19), .Q(
        mem_1__21_), .QN(n1186) );
  FD1S mem_reg_1__20_ ( .D(n701), .TI(mem_1__19_), .TE(test_se), .CP(n19), .Q(
        mem_1__20_), .QN(n1185) );
  FD1S mem_reg_1__19_ ( .D(n700), .TI(mem_1__18_), .TE(test_se), .CP(n19), .Q(
        mem_1__19_), .QN(n1184) );
  FD1S mem_reg_1__18_ ( .D(n699), .TI(mem_1__17_), .TE(test_se), .CP(n19), .Q(
        mem_1__18_), .QN(n1183) );
  FD1S mem_reg_1__17_ ( .D(n698), .TI(mem_1__16_), .TE(test_se), .CP(n19), .Q(
        mem_1__17_), .QN(n1182) );
  FD1S mem_reg_1__16_ ( .D(n697), .TI(mem_1__15_), .TE(test_se), .CP(n19), .Q(
        mem_1__16_), .QN(n1181) );
  FD1S mem_reg_1__15_ ( .D(n696), .TI(mem_1__14_), .TE(test_se), .CP(n19), .Q(
        mem_1__15_), .QN(n1180) );
  FD1S mem_reg_1__14_ ( .D(n695), .TI(test_si4), .TE(test_se), .CP(n19), .Q(
        mem_1__14_), .QN(n1179) );
  FD1S mem_reg_1__13_ ( .D(n694), .TI(mem_1__12_), .TE(test_se), .CP(n19), .Q(
        test_so3), .QN(n1178) );
  FD1S mem_reg_1__12_ ( .D(n693), .TI(mem_1__11_), .TE(test_se), .CP(n19), .Q(
        mem_1__12_), .QN(n1177) );
  FD1S mem_reg_1__11_ ( .D(n692), .TI(mem_1__10_), .TE(test_se), .CP(n19), .Q(
        mem_1__11_), .QN(n1176) );
  FD1S mem_reg_1__10_ ( .D(n691), .TI(mem_1__9_), .TE(test_se), .CP(n19), .Q(
        mem_1__10_), .QN(n1175) );
  FD1S mem_reg_1__9_ ( .D(n690), .TI(mem_1__8_), .TE(test_se), .CP(n18), .Q(
        mem_1__9_), .QN(n1174) );
  FD1S mem_reg_1__8_ ( .D(n689), .TI(mem_1__7_), .TE(test_se), .CP(n18), .Q(
        mem_1__8_), .QN(n1173) );
  FD1S mem_reg_1__7_ ( .D(n688), .TI(mem_1__6_), .TE(test_se), .CP(n18), .Q(
        mem_1__7_), .QN(n1172) );
  FD1S mem_reg_1__6_ ( .D(n687), .TI(mem_1__5_), .TE(test_se), .CP(n18), .Q(
        mem_1__6_), .QN(n1171) );
  FD1S mem_reg_1__5_ ( .D(n686), .TI(mem_1__4_), .TE(test_se), .CP(n18), .Q(
        mem_1__5_), .QN(n1170) );
  FD1S mem_reg_1__4_ ( .D(n685), .TI(mem_1__3_), .TE(test_se), .CP(n18), .Q(
        mem_1__4_), .QN(n1169) );
  FD1S mem_reg_1__3_ ( .D(n684), .TI(mem_1__2_), .TE(test_se), .CP(n18), .Q(
        mem_1__3_), .QN(n1168) );
  FD1S mem_reg_1__2_ ( .D(n683), .TI(mem_1__1_), .TE(test_se), .CP(n18), .Q(
        mem_1__2_), .QN(n1167) );
  FD1S mem_reg_1__1_ ( .D(n682), .TI(mem_1__0_), .TE(test_se), .CP(n18), .Q(
        mem_1__1_), .QN(n1166) );
  FD1S mem_reg_1__0_ ( .D(n717), .TI(mem_0__35_), .TE(test_se), .CP(n21), .Q(
        mem_1__0_), .QN(n1201) );
  FD1S mem_reg_0__35_ ( .D(n752), .TI(mem_0__34_), .TE(test_se), .CP(n30), .Q(
        mem_0__35_), .QN(n1236) );
  FD1S mem_reg_0__34_ ( .D(n751), .TI(mem_0__33_), .TE(test_se), .CP(n30), .Q(
        mem_0__34_), .QN(n1235) );
  FD1S mem_reg_0__33_ ( .D(n750), .TI(mem_0__32_), .TE(test_se), .CP(n30), .Q(
        mem_0__33_), .QN(n1234) );
  FD1S mem_reg_0__32_ ( .D(n749), .TI(mem_0__31_), .TE(test_se), .CP(n30), .Q(
        mem_0__32_), .QN(n1233) );
  FD1S mem_reg_0__31_ ( .D(n748), .TI(mem_0__30_), .TE(test_se), .CP(n29), .Q(
        mem_0__31_), .QN(n1232) );
  FD1S mem_reg_0__30_ ( .D(n747), .TI(mem_0__29_), .TE(test_se), .CP(n29), .Q(
        mem_0__30_), .QN(n1231) );
  FD1S mem_reg_0__29_ ( .D(n746), .TI(mem_0__28_), .TE(test_se), .CP(n29), .Q(
        mem_0__29_), .QN(n1230) );
  FD1S mem_reg_0__28_ ( .D(n745), .TI(mem_0__27_), .TE(test_se), .CP(n29), .Q(
        mem_0__28_), .QN(n1229) );
  FD1S mem_reg_0__27_ ( .D(n744), .TI(mem_0__26_), .TE(test_se), .CP(n29), .Q(
        mem_0__27_), .QN(n1228) );
  FD1S mem_reg_0__26_ ( .D(n743), .TI(mem_0__25_), .TE(test_se), .CP(n29), .Q(
        mem_0__26_), .QN(n1227) );
  FD1S mem_reg_0__25_ ( .D(n742), .TI(test_si3), .TE(test_se), .CP(n29), .Q(
        mem_0__25_), .QN(n1226) );
  FD1S mem_reg_0__24_ ( .D(n741), .TI(mem_0__23_), .TE(test_se), .CP(n29), .Q(
        test_so2), .QN(n1225) );
  FD1S mem_reg_0__23_ ( .D(n740), .TI(mem_0__22_), .TE(test_se), .CP(n29), .Q(
        mem_0__23_), .QN(n1224) );
  FD1S mem_reg_0__22_ ( .D(n739), .TI(mem_0__21_), .TE(test_se), .CP(n29), .Q(
        mem_0__22_), .QN(n1223) );
  FD1S mem_reg_0__21_ ( .D(n738), .TI(mem_0__20_), .TE(test_se), .CP(n29), .Q(
        mem_0__21_), .QN(n1222) );
  FD1S mem_reg_0__20_ ( .D(n737), .TI(mem_0__19_), .TE(test_se), .CP(n29), .Q(
        mem_0__20_), .QN(n1221) );
  FD1S mem_reg_0__19_ ( .D(n736), .TI(mem_0__18_), .TE(test_se), .CP(n28), .Q(
        mem_0__19_), .QN(n1220) );
  FD1S mem_reg_0__18_ ( .D(n735), .TI(mem_0__17_), .TE(test_se), .CP(n28), .Q(
        mem_0__18_), .QN(n1219) );
  FD1S mem_reg_0__17_ ( .D(n734), .TI(mem_0__16_), .TE(test_se), .CP(n28), .Q(
        mem_0__17_), .QN(n1218) );
  FD1S mem_reg_0__16_ ( .D(n733), .TI(mem_0__15_), .TE(test_se), .CP(n28), .Q(
        mem_0__16_), .QN(n1217) );
  FD1S mem_reg_0__15_ ( .D(n732), .TI(mem_0__14_), .TE(test_se), .CP(n28), .Q(
        mem_0__15_), .QN(n1216) );
  FD1S mem_reg_0__14_ ( .D(n731), .TI(mem_0__13_), .TE(test_se), .CP(n28), .Q(
        mem_0__14_), .QN(n1215) );
  FD1S mem_reg_0__13_ ( .D(n730), .TI(mem_0__12_), .TE(test_se), .CP(n28), .Q(
        mem_0__13_), .QN(n1214) );
  FD1S mem_reg_0__12_ ( .D(n729), .TI(mem_0__11_), .TE(test_se), .CP(n28), .Q(
        mem_0__12_), .QN(n1213) );
  FD1S mem_reg_0__11_ ( .D(n728), .TI(mem_0__10_), .TE(test_se), .CP(n28), .Q(
        mem_0__11_), .QN(n1212) );
  FD1S mem_reg_0__10_ ( .D(n727), .TI(mem_0__9_), .TE(test_se), .CP(n28), .Q(
        mem_0__10_), .QN(n1211) );
  FD1S mem_reg_0__9_ ( .D(n726), .TI(mem_0__8_), .TE(test_se), .CP(n28), .Q(
        mem_0__9_), .QN(n1210) );
  FD1S mem_reg_0__8_ ( .D(n725), .TI(mem_0__7_), .TE(test_se), .CP(n28), .Q(
        mem_0__8_), .QN(n1209) );
  FD1S mem_reg_0__7_ ( .D(n724), .TI(mem_0__6_), .TE(test_se), .CP(n27), .Q(
        mem_0__7_), .QN(n1208) );
  FD1S mem_reg_0__6_ ( .D(n723), .TI(mem_0__5_), .TE(test_se), .CP(n27), .Q(
        mem_0__6_), .QN(n1207) );
  FD1S mem_reg_0__5_ ( .D(n722), .TI(mem_0__4_), .TE(test_se), .CP(n27), .Q(
        mem_0__5_), .QN(n1206) );
  FD1S mem_reg_0__4_ ( .D(n721), .TI(mem_0__3_), .TE(test_se), .CP(n27), .Q(
        mem_0__4_), .QN(n1205) );
  FD1S mem_reg_0__3_ ( .D(n720), .TI(mem_0__2_), .TE(test_se), .CP(n27), .Q(
        mem_0__3_), .QN(n1204) );
  FD1S mem_reg_0__2_ ( .D(n719), .TI(mem_0__1_), .TE(test_se), .CP(n27), .Q(
        mem_0__2_), .QN(n1203) );
  FD1S mem_reg_0__1_ ( .D(n718), .TI(mem_0__0_), .TE(test_se), .CP(n27), .Q(
        mem_0__1_), .QN(n1202) );
  FD1S mem_reg_0__0_ ( .D(n753), .TI(test_si2), .TE(test_se), .CP(n30), .Q(
        mem_0__0_), .QN(n1237) );
  FD2S grey_wr_ptr_reg_0_ ( .D(n462), .TI(full), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr_0_), .QN(n947) );
  FD2S grey_wr_ptr_reg_1_ ( .D(n461), .TI(grey_wr_ptr_0_), .TE(test_se), .CP(
        n21), .CD(wr_reset_n), .Q(grey_wr_ptr_1_), .QN(n946) );
  FD2S grey_wr_ptr_reg_3_ ( .D(n463), .TI(grey_wr_ptr_2_), .TE(test_se), .CP(
        n12), .CD(wr_reset_n), .Q(test_so1), .QN(n948) );
  FD2S grey_wr_ptr_reg_2_ ( .D(n464), .TI(grey_wr_ptr_1_), .TE(test_se), .CP(
        n21), .CD(wr_reset_n), .Q(grey_wr_ptr_2_), .QN(n949) );
  FD2S grey_rd_ptr_reg_1_ ( .D(n757), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[1]), .QN(n1239) );
  FD2S grey_rd_ptr_reg_3_ ( .D(n759), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[3]), .QN(n1240) );
  FD2S grey_rd_ptr_reg_2_ ( .D(n760), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[2]), .QN(n1241) );
  FD2S full_q_reg ( .D(n460), .TI(test_si1), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(full), .QN(n944) );
  FD2S sync_rd_ptr_1_reg_0_ ( .D(sync_rd_ptr_0[0]), .TI(sync_rd_ptr_0[3]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[0]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0[2]), .TI(sync_rd_ptr_1[1]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]), .QN(n945) );
  FD2S sync_wr_ptr_1_reg_1_ ( .D(sync_wr_ptr_0[1]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[1]) );
  FD2S sync_wr_ptr_1_reg_0_ ( .D(sync_wr_ptr_0[0]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[0]) );
  FD2S wr_ptr_reg_0_ ( .D(n756), .TI(sync_rd_ptr_1[3]), .TE(test_se), .CP(n5), 
        .CD(wr_reset_n), .Q(n1238), .QN(n1) );
  FD2S wr_ptr_reg_3_ ( .D(n465), .TI(wr_ptr_2_), .TE(test_se), .CP(n12), .CD(
        wr_reset_n), .Q(test_so13) );
  FD2S grey_rd_ptr_reg_0_ ( .D(n758), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[0]) );
  FD2S sync_rd_ptr_1_reg_1_ ( .D(sync_rd_ptr_0[1]), .TI(sync_rd_ptr_1[0]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[1]) );
  FD2S rd_ptr_reg_3_ ( .D(n761), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(rd_ptr_3_1), .QN(n4) );
  FD2S sync_wr_ptr_1_reg_3_ ( .D(sync_wr_ptr_0[3]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[3]) );
  FD2S rd_ptr_reg_1_ ( .D(n763), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N70), .QN(n362) );
  FD2S rd_ptr_reg_2_ ( .D(n762), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N71), .QN(n361) );
  FD2S sync_rd_ptr_1_reg_3_ ( .D(sync_rd_ptr_0[3]), .TI(sync_rd_ptr_1[2]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[3]) );
  FD2S rd_ptr_reg_0_ ( .D(n764), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N69), .QN(n1242) );
  FD2S wr_ptr_reg_1_ ( .D(n755), .TI(n1238), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(wr_ptr_1_), .QN(n3) );
  FD2S wr_ptr_reg_2_ ( .D(n754), .TI(wr_ptr_1_), .TE(test_se), .CP(n6), .CD(
        wr_reset_n), .Q(wr_ptr_2_), .QN(n2) );
  FD2S sync_rd_ptr_0_reg_0_ ( .D(grey_rd_ptr_dly[0]), .TI(mem_7__35_), .TE(
        test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[0]) );
  FD2S sync_rd_ptr_0_reg_1_ ( .D(grey_rd_ptr_dly[1]), .TI(sync_rd_ptr_0[0]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[1]) );
  FD2S sync_rd_ptr_0_reg_3_ ( .D(grey_rd_ptr_dly[3]), .TI(sync_rd_ptr_0[2]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[3]) );
  FD2S sync_rd_ptr_0_reg_2_ ( .D(grey_rd_ptr_dly[2]), .TI(sync_rd_ptr_0[1]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_3_ ( .D(test_so1), .TI(1'b0), .TE(1'b0), .CP(rd_clk), 
        .CD(rd_reset_n), .Q(sync_wr_ptr_0[3]) );
  FD2S sync_wr_ptr_0_reg_2_ ( .D(grey_wr_ptr_2_), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_1_ ( .D(grey_wr_ptr_1_), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[1]) );
  FD2S sync_wr_ptr_0_reg_0_ ( .D(grey_wr_ptr_0_), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[0]) );
  IVP U324 ( .A(n31), .Z(n28) );
  IVP U325 ( .A(n31), .Z(n29) );
  IVP U326 ( .A(n34), .Z(n19) );
  IVP U327 ( .A(n34), .Z(n20) );
  IVP U328 ( .A(n356), .Z(n16) );
  IVP U329 ( .A(n356), .Z(n17) );
  IVP U330 ( .A(n356), .Z(n18) );
  IVP U331 ( .A(n33), .Z(n22) );
  IVP U332 ( .A(n33), .Z(n23) );
  IVP U333 ( .A(n33), .Z(n24) );
  IVP U334 ( .A(n32), .Z(n25) );
  IVP U335 ( .A(n32), .Z(n26) );
  IVP U336 ( .A(n32), .Z(n27) );
  IVP U337 ( .A(n359), .Z(n7) );
  IVP U338 ( .A(n359), .Z(n8) );
  IVP U339 ( .A(n359), .Z(n9) );
  IVP U340 ( .A(n358), .Z(n10) );
  IVP U341 ( .A(n358), .Z(n11) );
  IVP U342 ( .A(n357), .Z(n13) );
  IVP U343 ( .A(n357), .Z(n14) );
  IVP U344 ( .A(n357), .Z(n15) );
  IVP U345 ( .A(n358), .Z(n12) );
  IVP U346 ( .A(n360), .Z(n6) );
  IVP U347 ( .A(n34), .Z(n21) );
  IVP U348 ( .A(n360), .Z(n5) );
  IVP U349 ( .A(n31), .Z(n30) );
  IVP U350 ( .A(n365), .Z(n31) );
  IVP U351 ( .A(n364), .Z(n356) );
  IVP U352 ( .A(n365), .Z(n33) );
  IVP U353 ( .A(n365), .Z(n32) );
  IVP U354 ( .A(n363), .Z(n359) );
  IVP U355 ( .A(n364), .Z(n357) );
  IVP U356 ( .A(n363), .Z(n358) );
  IVP U357 ( .A(n364), .Z(n34) );
  IVP U358 ( .A(n363), .Z(n360) );
  IVP U359 ( .A(n366), .Z(n365) );
  IVP U360 ( .A(n366), .Z(n364) );
  IVP U361 ( .A(n366), .Z(n363) );
  IVP U362 ( .A(wr_clk), .Z(n366) );
  ND2 U363 ( .A(N71), .B(n362), .Z(n367) );
  NR2 U364 ( .A(n367), .B(n1242), .Z(n817) );
  ND2 U365 ( .A(N71), .B(N70), .Z(n368) );
  NR2 U366 ( .A(n1242), .B(n368), .Z(n816) );
  AO2 U367 ( .A(mem_5__0_), .B(n817), .C(mem_7__0_), .D(n816), .Z(n374) );
  ND2 U368 ( .A(n362), .B(n361), .Z(n369) );
  NR2 U369 ( .A(n369), .B(n1242), .Z(n819) );
  ND2 U370 ( .A(N70), .B(n361), .Z(n370) );
  NR2 U371 ( .A(n370), .B(n1242), .Z(n818) );
  AO2 U372 ( .A(mem_1__0_), .B(n819), .C(mem_3__0_), .D(n818), .Z(n373) );
  NR2 U373 ( .A(n367), .B(N69), .Z(n821) );
  NR2 U374 ( .A(n368), .B(N69), .Z(n820) );
  AO2 U375 ( .A(mem_4__0_), .B(n821), .C(mem_6__0_), .D(n820), .Z(n372) );
  NR2 U376 ( .A(n369), .B(N69), .Z(n823) );
  NR2 U377 ( .A(n370), .B(N69), .Z(n822) );
  AO2 U378 ( .A(mem_0__0_), .B(n823), .C(mem_2__0_), .D(n822), .Z(n371) );
  ND4 U379 ( .A(n374), .B(n373), .C(n372), .D(n371), .Z(rd_data[0]) );
  AO2 U380 ( .A(mem_5__1_), .B(n817), .C(mem_7__1_), .D(n816), .Z(n378) );
  AO2 U381 ( .A(mem_1__1_), .B(n819), .C(mem_3__1_), .D(n818), .Z(n377) );
  AO2 U382 ( .A(mem_4__1_), .B(n821), .C(mem_6__1_), .D(n820), .Z(n376) );
  AO2 U383 ( .A(mem_0__1_), .B(n823), .C(mem_2__1_), .D(n822), .Z(n375) );
  ND4 U384 ( .A(n378), .B(n377), .C(n376), .D(n375), .Z(rd_data[1]) );
  AO2 U385 ( .A(mem_5__2_), .B(n817), .C(mem_7__2_), .D(n816), .Z(n382) );
  AO2 U386 ( .A(mem_1__2_), .B(n819), .C(mem_3__2_), .D(n818), .Z(n381) );
  AO2 U387 ( .A(mem_4__2_), .B(n821), .C(mem_6__2_), .D(n820), .Z(n380) );
  AO2 U388 ( .A(mem_0__2_), .B(n823), .C(test_so4), .D(n822), .Z(n379) );
  ND4 U389 ( .A(n382), .B(n381), .C(n380), .D(n379), .Z(rd_data[2]) );
  AO2 U390 ( .A(mem_5__3_), .B(n817), .C(mem_7__3_), .D(n816), .Z(n386) );
  AO2 U391 ( .A(mem_1__3_), .B(n819), .C(mem_3__3_), .D(n818), .Z(n385) );
  AO2 U392 ( .A(mem_4__3_), .B(n821), .C(mem_6__3_), .D(n820), .Z(n384) );
  AO2 U393 ( .A(mem_0__3_), .B(n823), .C(mem_2__3_), .D(n822), .Z(n383) );
  ND4 U394 ( .A(n386), .B(n385), .C(n384), .D(n383), .Z(rd_data[3]) );
  AO2 U395 ( .A(mem_5__4_), .B(n817), .C(mem_7__4_), .D(n816), .Z(n390) );
  AO2 U396 ( .A(mem_1__4_), .B(n819), .C(mem_3__4_), .D(n818), .Z(n389) );
  AO2 U397 ( .A(mem_4__4_), .B(n821), .C(mem_6__4_), .D(n820), .Z(n388) );
  AO2 U398 ( .A(mem_0__4_), .B(n823), .C(mem_2__4_), .D(n822), .Z(n387) );
  ND4 U399 ( .A(n390), .B(n389), .C(n388), .D(n387), .Z(rd_data[4]) );
  AO2 U400 ( .A(mem_5__5_), .B(n817), .C(mem_7__5_), .D(n816), .Z(n394) );
  AO2 U401 ( .A(mem_1__5_), .B(n819), .C(mem_3__5_), .D(n818), .Z(n393) );
  AO2 U402 ( .A(test_so7), .B(n821), .C(mem_6__5_), .D(n820), .Z(n392) );
  AO2 U403 ( .A(mem_0__5_), .B(n823), .C(mem_2__5_), .D(n822), .Z(n391) );
  ND4 U404 ( .A(n394), .B(n393), .C(n392), .D(n391), .Z(rd_data[5]) );
  AO2 U405 ( .A(mem_5__6_), .B(n817), .C(mem_7__6_), .D(n816), .Z(n398) );
  AO2 U406 ( .A(mem_1__6_), .B(n819), .C(mem_3__6_), .D(n818), .Z(n397) );
  AO2 U407 ( .A(mem_4__6_), .B(n821), .C(mem_6__6_), .D(n820), .Z(n396) );
  AO2 U408 ( .A(mem_0__6_), .B(n823), .C(mem_2__6_), .D(n822), .Z(n395) );
  ND4 U409 ( .A(n398), .B(n397), .C(n396), .D(n395), .Z(rd_data[6]) );
  AO2 U410 ( .A(mem_5__7_), .B(n817), .C(mem_7__7_), .D(n816), .Z(n402) );
  AO2 U411 ( .A(mem_1__7_), .B(n819), .C(mem_3__7_), .D(n818), .Z(n401) );
  AO2 U412 ( .A(mem_4__7_), .B(n821), .C(mem_6__7_), .D(n820), .Z(n400) );
  AO2 U413 ( .A(mem_0__7_), .B(n823), .C(mem_2__7_), .D(n822), .Z(n399) );
  ND4 U414 ( .A(n402), .B(n401), .C(n400), .D(n399), .Z(rd_data[7]) );
  AO2 U415 ( .A(mem_5__8_), .B(n817), .C(mem_7__8_), .D(n816), .Z(n406) );
  AO2 U416 ( .A(mem_1__8_), .B(n819), .C(mem_3__8_), .D(n818), .Z(n405) );
  AO2 U417 ( .A(mem_4__8_), .B(n821), .C(test_so10), .D(n820), .Z(n404) );
  AO2 U418 ( .A(mem_0__8_), .B(n823), .C(mem_2__8_), .D(n822), .Z(n403) );
  ND4 U419 ( .A(n406), .B(n405), .C(n404), .D(n403), .Z(rd_data[8]) );
  AO2 U420 ( .A(mem_5__9_), .B(n817), .C(mem_7__9_), .D(n816), .Z(n410) );
  AO2 U421 ( .A(mem_1__9_), .B(n819), .C(mem_3__9_), .D(n818), .Z(n409) );
  AO2 U422 ( .A(mem_4__9_), .B(n821), .C(mem_6__9_), .D(n820), .Z(n408) );
  AO2 U423 ( .A(mem_0__9_), .B(n823), .C(mem_2__9_), .D(n822), .Z(n407) );
  ND4 U424 ( .A(n410), .B(n409), .C(n408), .D(n407), .Z(rd_data[9]) );
  AO2 U425 ( .A(mem_5__10_), .B(n817), .C(mem_7__10_), .D(n816), .Z(n414) );
  AO2 U426 ( .A(mem_1__10_), .B(n819), .C(mem_3__10_), .D(n818), .Z(n413) );
  AO2 U427 ( .A(mem_4__10_), .B(n821), .C(mem_6__10_), .D(n820), .Z(n412) );
  AO2 U428 ( .A(mem_0__10_), .B(n823), .C(mem_2__10_), .D(n822), .Z(n411) );
  ND4 U429 ( .A(n414), .B(n413), .C(n412), .D(n411), .Z(rd_data[10]) );
  AO2 U430 ( .A(mem_5__11_), .B(n817), .C(mem_7__11_), .D(n816), .Z(n418) );
  AO2 U431 ( .A(mem_1__11_), .B(n819), .C(mem_3__11_), .D(n818), .Z(n417) );
  AO2 U432 ( .A(mem_4__11_), .B(n821), .C(mem_6__11_), .D(n820), .Z(n416) );
  AO2 U433 ( .A(mem_0__11_), .B(n823), .C(mem_2__11_), .D(n822), .Z(n415) );
  ND4 U434 ( .A(n418), .B(n417), .C(n416), .D(n415), .Z(rd_data[11]) );
  AO2 U435 ( .A(mem_5__12_), .B(n817), .C(mem_7__12_), .D(n816), .Z(n422) );
  AO2 U436 ( .A(mem_1__12_), .B(n819), .C(mem_3__12_), .D(n818), .Z(n421) );
  AO2 U437 ( .A(mem_4__12_), .B(n821), .C(mem_6__12_), .D(n820), .Z(n420) );
  AO2 U438 ( .A(mem_0__12_), .B(n823), .C(mem_2__12_), .D(n822), .Z(n419) );
  ND4 U439 ( .A(n422), .B(n421), .C(n420), .D(n419), .Z(rd_data[12]) );
  AO2 U440 ( .A(mem_5__13_), .B(n817), .C(mem_7__13_), .D(n816), .Z(n426) );
  AO2 U441 ( .A(test_so3), .B(n819), .C(mem_3__13_), .D(n818), .Z(n425) );
  AO2 U442 ( .A(mem_4__13_), .B(n821), .C(mem_6__13_), .D(n820), .Z(n424) );
  AO2 U443 ( .A(mem_0__13_), .B(n823), .C(mem_2__13_), .D(n822), .Z(n423) );
  ND4 U444 ( .A(n426), .B(n425), .C(n424), .D(n423), .Z(rd_data[13]) );
  AO2 U445 ( .A(mem_5__14_), .B(n817), .C(mem_7__14_), .D(n816), .Z(n430) );
  AO2 U446 ( .A(mem_1__14_), .B(n819), .C(mem_3__14_), .D(n818), .Z(n429) );
  AO2 U447 ( .A(mem_4__14_), .B(n821), .C(mem_6__14_), .D(n820), .Z(n428) );
  AO2 U448 ( .A(mem_0__14_), .B(n823), .C(mem_2__14_), .D(n822), .Z(n427) );
  ND4 U449 ( .A(n430), .B(n429), .C(n428), .D(n427), .Z(rd_data[14]) );
  AO2 U450 ( .A(mem_5__15_), .B(n817), .C(mem_7__15_), .D(n816), .Z(n434) );
  AO2 U451 ( .A(mem_1__15_), .B(n819), .C(mem_3__15_), .D(n818), .Z(n433) );
  AO2 U452 ( .A(mem_4__15_), .B(n821), .C(mem_6__15_), .D(n820), .Z(n432) );
  AO2 U453 ( .A(mem_0__15_), .B(n823), .C(mem_2__15_), .D(n822), .Z(n431) );
  ND4 U454 ( .A(n434), .B(n433), .C(n432), .D(n431), .Z(rd_data[15]) );
  AO2 U455 ( .A(mem_5__16_), .B(n817), .C(mem_7__16_), .D(n816), .Z(n438) );
  AO2 U456 ( .A(mem_1__16_), .B(n819), .C(test_so6), .D(n818), .Z(n437) );
  AO2 U457 ( .A(mem_4__16_), .B(n821), .C(mem_6__16_), .D(n820), .Z(n436) );
  AO2 U458 ( .A(mem_0__16_), .B(n823), .C(mem_2__16_), .D(n822), .Z(n435) );
  ND4 U459 ( .A(n438), .B(n437), .C(n436), .D(n435), .Z(rd_data[16]) );
  AO2 U460 ( .A(mem_5__17_), .B(n817), .C(mem_7__17_), .D(n816), .Z(n442) );
  AO2 U461 ( .A(mem_1__17_), .B(n819), .C(mem_3__17_), .D(n818), .Z(n441) );
  AO2 U462 ( .A(mem_4__17_), .B(n821), .C(mem_6__17_), .D(n820), .Z(n440) );
  AO2 U463 ( .A(mem_0__17_), .B(n823), .C(mem_2__17_), .D(n822), .Z(n439) );
  ND4 U464 ( .A(n442), .B(n441), .C(n440), .D(n439), .Z(rd_data[17]) );
  AO2 U465 ( .A(mem_5__18_), .B(n817), .C(mem_7__18_), .D(n816), .Z(n446) );
  AO2 U466 ( .A(mem_1__18_), .B(n819), .C(mem_3__18_), .D(n818), .Z(n445) );
  AO2 U467 ( .A(mem_4__18_), .B(n821), .C(mem_6__18_), .D(n820), .Z(n444) );
  AO2 U468 ( .A(mem_0__18_), .B(n823), .C(mem_2__18_), .D(n822), .Z(n443) );
  ND4 U469 ( .A(n446), .B(n445), .C(n444), .D(n443), .Z(rd_data[18]) );
  AO2 U470 ( .A(test_so9), .B(n817), .C(mem_7__19_), .D(n816), .Z(n450) );
  AO2 U471 ( .A(mem_1__19_), .B(n819), .C(mem_3__19_), .D(n818), .Z(n449) );
  AO2 U472 ( .A(mem_4__19_), .B(n821), .C(mem_6__19_), .D(n820), .Z(n448) );
  AO2 U473 ( .A(mem_0__19_), .B(n823), .C(mem_2__19_), .D(n822), .Z(n447) );
  ND4 U474 ( .A(n450), .B(n449), .C(n448), .D(n447), .Z(rd_data[19]) );
  AO2 U475 ( .A(mem_5__20_), .B(n817), .C(mem_7__20_), .D(n816), .Z(n454) );
  AO2 U476 ( .A(mem_1__20_), .B(n819), .C(mem_3__20_), .D(n818), .Z(n453) );
  AO2 U477 ( .A(mem_4__20_), .B(n821), .C(mem_6__20_), .D(n820), .Z(n452) );
  AO2 U478 ( .A(mem_0__20_), .B(n823), .C(mem_2__20_), .D(n822), .Z(n451) );
  ND4 U479 ( .A(n454), .B(n453), .C(n452), .D(n451), .Z(rd_data[20]) );
  AO2 U480 ( .A(mem_5__21_), .B(n817), .C(mem_7__21_), .D(n816), .Z(n458) );
  AO2 U481 ( .A(mem_1__21_), .B(n819), .C(mem_3__21_), .D(n818), .Z(n457) );
  AO2 U482 ( .A(mem_4__21_), .B(n821), .C(mem_6__21_), .D(n820), .Z(n456) );
  AO2 U483 ( .A(mem_0__21_), .B(n823), .C(mem_2__21_), .D(n822), .Z(n455) );
  ND4 U484 ( .A(n458), .B(n457), .C(n456), .D(n455), .Z(rd_data[21]) );
  AO2 U485 ( .A(mem_5__22_), .B(n817), .C(test_so12), .D(n816), .Z(n767) );
  AO2 U486 ( .A(mem_1__22_), .B(n819), .C(mem_3__22_), .D(n818), .Z(n766) );
  AO2 U487 ( .A(mem_4__22_), .B(n821), .C(mem_6__22_), .D(n820), .Z(n765) );
  AO2 U488 ( .A(mem_0__22_), .B(n823), .C(mem_2__22_), .D(n822), .Z(n459) );
  ND4 U489 ( .A(n767), .B(n766), .C(n765), .D(n459), .Z(rd_data[22]) );
  AO2 U490 ( .A(mem_5__23_), .B(n817), .C(mem_7__23_), .D(n816), .Z(n771) );
  AO2 U491 ( .A(mem_1__23_), .B(n819), .C(mem_3__23_), .D(n818), .Z(n770) );
  AO2 U492 ( .A(mem_4__23_), .B(n821), .C(mem_6__23_), .D(n820), .Z(n769) );
  AO2 U493 ( .A(mem_0__23_), .B(n823), .C(mem_2__23_), .D(n822), .Z(n768) );
  ND4 U494 ( .A(n771), .B(n770), .C(n769), .D(n768), .Z(rd_data[23]) );
  AO2 U495 ( .A(mem_5__24_), .B(n817), .C(mem_7__24_), .D(n816), .Z(n775) );
  AO2 U496 ( .A(mem_1__24_), .B(n819), .C(mem_3__24_), .D(n818), .Z(n774) );
  AO2 U497 ( .A(mem_4__24_), .B(n821), .C(mem_6__24_), .D(n820), .Z(n773) );
  AO2 U498 ( .A(test_so2), .B(n823), .C(mem_2__24_), .D(n822), .Z(n772) );
  ND4 U499 ( .A(n775), .B(n774), .C(n773), .D(n772), .Z(rd_data[24]) );
  AO2 U500 ( .A(mem_5__25_), .B(n817), .C(mem_7__25_), .D(n816), .Z(n779) );
  AO2 U501 ( .A(mem_1__25_), .B(n819), .C(mem_3__25_), .D(n818), .Z(n778) );
  AO2 U502 ( .A(mem_4__25_), .B(n821), .C(mem_6__25_), .D(n820), .Z(n777) );
  AO2 U503 ( .A(mem_0__25_), .B(n823), .C(mem_2__25_), .D(n822), .Z(n776) );
  ND4 U504 ( .A(n779), .B(n778), .C(n777), .D(n776), .Z(rd_data[25]) );
  AO2 U505 ( .A(mem_5__26_), .B(n817), .C(mem_7__26_), .D(n816), .Z(n783) );
  AO2 U506 ( .A(mem_1__26_), .B(n819), .C(mem_3__26_), .D(n818), .Z(n782) );
  AO2 U507 ( .A(mem_4__26_), .B(n821), .C(mem_6__26_), .D(n820), .Z(n781) );
  AO2 U508 ( .A(mem_0__26_), .B(n823), .C(mem_2__26_), .D(n822), .Z(n780) );
  ND4 U509 ( .A(n783), .B(n782), .C(n781), .D(n780), .Z(rd_data[26]) );
  AO2 U510 ( .A(mem_5__27_), .B(n817), .C(mem_7__27_), .D(n816), .Z(n787) );
  AO2 U511 ( .A(mem_1__27_), .B(n819), .C(mem_3__27_), .D(n818), .Z(n786) );
  AO2 U512 ( .A(mem_4__27_), .B(n821), .C(mem_6__27_), .D(n820), .Z(n785) );
  AO2 U513 ( .A(mem_0__27_), .B(n823), .C(test_so5), .D(n822), .Z(n784) );
  ND4 U514 ( .A(n787), .B(n786), .C(n785), .D(n784), .Z(rd_data[27]) );
  AO2 U515 ( .A(mem_5__28_), .B(n817), .C(mem_7__28_), .D(n816), .Z(n791) );
  AO2 U516 ( .A(mem_1__28_), .B(n819), .C(mem_3__28_), .D(n818), .Z(n790) );
  AO2 U517 ( .A(mem_4__28_), .B(n821), .C(mem_6__28_), .D(n820), .Z(n789) );
  AO2 U518 ( .A(mem_0__28_), .B(n823), .C(mem_2__28_), .D(n822), .Z(n788) );
  ND4 U519 ( .A(n791), .B(n790), .C(n789), .D(n788), .Z(rd_data[28]) );
  AO2 U520 ( .A(mem_5__29_), .B(n817), .C(mem_7__29_), .D(n816), .Z(n795) );
  AO2 U521 ( .A(mem_1__29_), .B(n819), .C(mem_3__29_), .D(n818), .Z(n794) );
  AO2 U522 ( .A(mem_4__29_), .B(n821), .C(mem_6__29_), .D(n820), .Z(n793) );
  AO2 U523 ( .A(mem_0__29_), .B(n823), .C(mem_2__29_), .D(n822), .Z(n792) );
  ND4 U524 ( .A(n795), .B(n794), .C(n793), .D(n792), .Z(rd_data[29]) );
  AO2 U525 ( .A(mem_5__30_), .B(n817), .C(mem_7__30_), .D(n816), .Z(n799) );
  AO2 U526 ( .A(mem_1__30_), .B(n819), .C(mem_3__30_), .D(n818), .Z(n798) );
  AO2 U527 ( .A(test_so8), .B(n821), .C(mem_6__30_), .D(n820), .Z(n797) );
  AO2 U528 ( .A(mem_0__30_), .B(n823), .C(mem_2__30_), .D(n822), .Z(n796) );
  ND4 U529 ( .A(n799), .B(n798), .C(n797), .D(n796), .Z(rd_data[30]) );
  AO2 U530 ( .A(mem_5__31_), .B(n817), .C(mem_7__31_), .D(n816), .Z(n803) );
  AO2 U531 ( .A(mem_1__31_), .B(n819), .C(mem_3__31_), .D(n818), .Z(n802) );
  AO2 U532 ( .A(mem_4__31_), .B(n821), .C(mem_6__31_), .D(n820), .Z(n801) );
  AO2 U533 ( .A(mem_0__31_), .B(n823), .C(mem_2__31_), .D(n822), .Z(n800) );
  ND4 U534 ( .A(n803), .B(n802), .C(n801), .D(n800), .Z(rd_data[31]) );
  AO2 U535 ( .A(mem_5__32_), .B(n817), .C(mem_7__32_), .D(n816), .Z(n807) );
  AO2 U536 ( .A(mem_1__32_), .B(n819), .C(mem_3__32_), .D(n818), .Z(n806) );
  AO2 U537 ( .A(mem_4__32_), .B(n821), .C(mem_6__32_), .D(n820), .Z(n805) );
  AO2 U538 ( .A(mem_0__32_), .B(n823), .C(mem_2__32_), .D(n822), .Z(n804) );
  ND4 U539 ( .A(n807), .B(n806), .C(n805), .D(n804), .Z(rd_data[32]) );
  AO2 U540 ( .A(mem_5__33_), .B(n817), .C(mem_7__33_), .D(n816), .Z(n811) );
  AO2 U541 ( .A(mem_1__33_), .B(n819), .C(mem_3__33_), .D(n818), .Z(n810) );
  AO2 U542 ( .A(mem_4__33_), .B(n821), .C(test_so11), .D(n820), .Z(n809) );
  AO2 U543 ( .A(mem_0__33_), .B(n823), .C(mem_2__33_), .D(n822), .Z(n808) );
  ND4 U544 ( .A(n811), .B(n810), .C(n809), .D(n808), .Z(rd_data[33]) );
  AO2 U545 ( .A(mem_5__34_), .B(n817), .C(mem_7__34_), .D(n816), .Z(n815) );
  AO2 U546 ( .A(mem_1__34_), .B(n819), .C(mem_3__34_), .D(n818), .Z(n814) );
  AO2 U547 ( .A(mem_4__34_), .B(n821), .C(mem_6__34_), .D(n820), .Z(n813) );
  AO2 U548 ( .A(mem_0__34_), .B(n823), .C(mem_2__34_), .D(n822), .Z(n812) );
  ND4 U549 ( .A(n815), .B(n814), .C(n813), .D(n812), .Z(rd_data[34]) );
  AO2 U550 ( .A(mem_5__35_), .B(n817), .C(mem_7__35_), .D(n816), .Z(n827) );
  AO2 U551 ( .A(mem_1__35_), .B(n819), .C(mem_3__35_), .D(n818), .Z(n826) );
  AO2 U552 ( .A(mem_4__35_), .B(n821), .C(mem_6__35_), .D(n820), .Z(n825) );
  AO2 U553 ( .A(mem_0__35_), .B(n823), .C(mem_2__35_), .D(n822), .Z(n824) );
  ND4 U554 ( .A(n827), .B(n826), .C(n825), .D(n824), .Z(rd_data[35]) );
  EN U555 ( .A(n1242), .B(rd_en), .Z(n764) );
  AO7 U556 ( .A(rd_en), .B(n362), .C(n828), .Z(n763) );
  IV U557 ( .A(n829), .Z(n762) );
  AO6 U558 ( .A(n830), .B(N71), .C(n831), .Z(n829) );
  AO7 U559 ( .A(rd_en), .B(n4), .C(n832), .Z(n761) );
  AO7 U560 ( .A(rd_en), .B(n1241), .C(n833), .Z(n760) );
  AO2 U561 ( .A(n834), .B(n835), .C(n831), .D(n836), .Z(n833) );
  AO7 U562 ( .A(rd_en), .B(n1240), .C(n832), .Z(n759) );
  IV U563 ( .A(n834), .Z(n832) );
  NR2 U564 ( .A(n830), .B(n836), .Z(n834) );
  EO U565 ( .A(n837), .B(rd_ptr_3_1), .Z(n836) );
  ND2 U566 ( .A(n838), .B(N71), .Z(n837) );
  AO7 U567 ( .A(n1242), .B(n828), .C(n839), .Z(n758) );
  MUX21L U568 ( .A(n840), .B(grey_rd_ptr_dly[0]), .S(n830), .Z(n839) );
  NR2 U569 ( .A(n841), .B(N69), .Z(n840) );
  AO7 U570 ( .A(rd_en), .B(n1239), .C(n842), .Z(n757) );
  AO2 U571 ( .A(n843), .B(n835), .C(n831), .D(n844), .Z(n842) );
  IV U572 ( .A(n841), .Z(n844) );
  NR2 U573 ( .A(n835), .B(n830), .Z(n831) );
  IV U574 ( .A(rd_en), .Z(n830) );
  EO U575 ( .A(n361), .B(n838), .Z(n835) );
  IV U576 ( .A(n828), .Z(n843) );
  ND2 U577 ( .A(n841), .B(rd_en), .Z(n828) );
  AO6 U578 ( .A(n1242), .B(n362), .C(n838), .Z(n841) );
  AO7 U579 ( .A(wr_en), .B(n1), .C(n845), .Z(n756) );
  IV U580 ( .A(n846), .Z(n845) );
  IV U581 ( .A(n847), .Z(n755) );
  AO6 U582 ( .A(n848), .B(wr_ptr_1_), .C(n849), .Z(n847) );
  IV U583 ( .A(n850), .Z(n754) );
  AO6 U584 ( .A(n848), .B(wr_ptr_2_), .C(n851), .Z(n850) );
  MUX21L U585 ( .A(n1237), .B(n852), .S(n853), .Z(n753) );
  MUX21L U586 ( .A(n1236), .B(n854), .S(n853), .Z(n752) );
  MUX21L U587 ( .A(n1235), .B(n855), .S(n853), .Z(n751) );
  MUX21L U588 ( .A(n1234), .B(n856), .S(n853), .Z(n750) );
  MUX21L U589 ( .A(n1233), .B(n857), .S(n853), .Z(n749) );
  MUX21L U590 ( .A(n1232), .B(n858), .S(n853), .Z(n748) );
  MUX21L U591 ( .A(n1231), .B(n859), .S(n853), .Z(n747) );
  MUX21L U592 ( .A(n1230), .B(n860), .S(n853), .Z(n746) );
  MUX21L U593 ( .A(n1229), .B(n861), .S(n853), .Z(n745) );
  MUX21L U594 ( .A(n1228), .B(n862), .S(n853), .Z(n744) );
  MUX21L U595 ( .A(n1227), .B(n863), .S(n853), .Z(n743) );
  MUX21L U596 ( .A(n1226), .B(n864), .S(n853), .Z(n742) );
  MUX21L U597 ( .A(n1225), .B(n865), .S(n853), .Z(n741) );
  MUX21L U598 ( .A(n1224), .B(n866), .S(n853), .Z(n740) );
  MUX21L U599 ( .A(n1223), .B(n867), .S(n853), .Z(n739) );
  MUX21L U600 ( .A(n1222), .B(n868), .S(n853), .Z(n738) );
  MUX21L U601 ( .A(n1221), .B(n869), .S(n853), .Z(n737) );
  MUX21L U602 ( .A(n1220), .B(n870), .S(n853), .Z(n736) );
  MUX21L U603 ( .A(n1219), .B(n871), .S(n853), .Z(n735) );
  MUX21L U604 ( .A(n1218), .B(n872), .S(n853), .Z(n734) );
  MUX21L U605 ( .A(n1217), .B(n873), .S(n853), .Z(n733) );
  MUX21L U606 ( .A(n1216), .B(n874), .S(n853), .Z(n732) );
  MUX21L U607 ( .A(n1215), .B(n875), .S(n853), .Z(n731) );
  MUX21L U608 ( .A(n1214), .B(n876), .S(n853), .Z(n730) );
  MUX21L U609 ( .A(n1213), .B(n877), .S(n853), .Z(n729) );
  MUX21L U610 ( .A(n1212), .B(n878), .S(n853), .Z(n728) );
  MUX21L U611 ( .A(n1211), .B(n879), .S(n853), .Z(n727) );
  MUX21L U612 ( .A(n1210), .B(n880), .S(n853), .Z(n726) );
  MUX21L U613 ( .A(n1209), .B(n881), .S(n853), .Z(n725) );
  MUX21L U614 ( .A(n1208), .B(n882), .S(n853), .Z(n724) );
  MUX21L U615 ( .A(n1207), .B(n883), .S(n853), .Z(n723) );
  MUX21L U616 ( .A(n1206), .B(n884), .S(n853), .Z(n722) );
  MUX21L U617 ( .A(n1205), .B(n885), .S(n853), .Z(n721) );
  MUX21L U618 ( .A(n1204), .B(n886), .S(n853), .Z(n720) );
  MUX21L U619 ( .A(n1203), .B(n887), .S(n853), .Z(n719) );
  MUX21L U620 ( .A(n1202), .B(n888), .S(n853), .Z(n718) );
  AN3 U621 ( .A(n2), .B(n3), .C(n846), .Z(n853) );
  MUX21L U622 ( .A(n1201), .B(n852), .S(n889), .Z(n717) );
  MUX21L U623 ( .A(n1200), .B(n854), .S(n889), .Z(n716) );
  MUX21L U624 ( .A(n1199), .B(n855), .S(n889), .Z(n715) );
  MUX21L U625 ( .A(n1198), .B(n856), .S(n889), .Z(n714) );
  MUX21L U626 ( .A(n1197), .B(n857), .S(n889), .Z(n713) );
  MUX21L U627 ( .A(n1196), .B(n858), .S(n889), .Z(n712) );
  MUX21L U628 ( .A(n1195), .B(n859), .S(n889), .Z(n711) );
  MUX21L U629 ( .A(n1194), .B(n860), .S(n889), .Z(n710) );
  MUX21L U630 ( .A(n1193), .B(n861), .S(n889), .Z(n709) );
  MUX21L U631 ( .A(n1192), .B(n862), .S(n889), .Z(n708) );
  MUX21L U632 ( .A(n1191), .B(n863), .S(n889), .Z(n707) );
  MUX21L U633 ( .A(n1190), .B(n864), .S(n889), .Z(n706) );
  MUX21L U634 ( .A(n1189), .B(n865), .S(n889), .Z(n705) );
  MUX21L U635 ( .A(n1188), .B(n866), .S(n889), .Z(n704) );
  MUX21L U636 ( .A(n1187), .B(n867), .S(n889), .Z(n703) );
  MUX21L U637 ( .A(n1186), .B(n868), .S(n889), .Z(n702) );
  MUX21L U638 ( .A(n1185), .B(n869), .S(n889), .Z(n701) );
  MUX21L U639 ( .A(n1184), .B(n870), .S(n889), .Z(n700) );
  MUX21L U640 ( .A(n1183), .B(n871), .S(n889), .Z(n699) );
  MUX21L U641 ( .A(n1182), .B(n872), .S(n889), .Z(n698) );
  MUX21L U642 ( .A(n1181), .B(n873), .S(n889), .Z(n697) );
  MUX21L U643 ( .A(n1180), .B(n874), .S(n889), .Z(n696) );
  MUX21L U644 ( .A(n1179), .B(n875), .S(n889), .Z(n695) );
  MUX21L U645 ( .A(n1178), .B(n876), .S(n889), .Z(n694) );
  MUX21L U646 ( .A(n1177), .B(n877), .S(n889), .Z(n693) );
  MUX21L U647 ( .A(n1176), .B(n878), .S(n889), .Z(n692) );
  MUX21L U648 ( .A(n1175), .B(n879), .S(n889), .Z(n691) );
  MUX21L U649 ( .A(n1174), .B(n880), .S(n889), .Z(n690) );
  MUX21L U650 ( .A(n1173), .B(n881), .S(n889), .Z(n689) );
  MUX21L U651 ( .A(n1172), .B(n882), .S(n889), .Z(n688) );
  MUX21L U652 ( .A(n1171), .B(n883), .S(n889), .Z(n687) );
  MUX21L U653 ( .A(n1170), .B(n884), .S(n889), .Z(n686) );
  MUX21L U654 ( .A(n1169), .B(n885), .S(n889), .Z(n685) );
  MUX21L U655 ( .A(n1168), .B(n886), .S(n889), .Z(n684) );
  MUX21L U656 ( .A(n1167), .B(n887), .S(n889), .Z(n683) );
  MUX21L U657 ( .A(n1166), .B(n888), .S(n889), .Z(n682) );
  AN3 U658 ( .A(wr_en), .B(n2), .C(n890), .Z(n889) );
  MUX21L U659 ( .A(n1165), .B(n852), .S(n891), .Z(n681) );
  MUX21L U660 ( .A(n1164), .B(n854), .S(n891), .Z(n680) );
  MUX21L U661 ( .A(n1163), .B(n855), .S(n891), .Z(n679) );
  MUX21L U662 ( .A(n1162), .B(n856), .S(n891), .Z(n678) );
  MUX21L U663 ( .A(n1161), .B(n857), .S(n891), .Z(n677) );
  MUX21L U664 ( .A(n1160), .B(n858), .S(n891), .Z(n676) );
  MUX21L U665 ( .A(n1159), .B(n859), .S(n891), .Z(n675) );
  MUX21L U666 ( .A(n1158), .B(n860), .S(n891), .Z(n674) );
  MUX21L U667 ( .A(n1157), .B(n861), .S(n891), .Z(n673) );
  MUX21L U668 ( .A(n1156), .B(n862), .S(n891), .Z(n672) );
  MUX21L U669 ( .A(n1155), .B(n863), .S(n891), .Z(n671) );
  MUX21L U670 ( .A(n1154), .B(n864), .S(n891), .Z(n670) );
  MUX21L U671 ( .A(n1153), .B(n865), .S(n891), .Z(n669) );
  MUX21L U672 ( .A(n1152), .B(n866), .S(n891), .Z(n668) );
  MUX21L U673 ( .A(n1151), .B(n867), .S(n891), .Z(n667) );
  MUX21L U674 ( .A(n1150), .B(n868), .S(n891), .Z(n666) );
  MUX21L U675 ( .A(n1149), .B(n869), .S(n891), .Z(n665) );
  MUX21L U676 ( .A(n1148), .B(n870), .S(n891), .Z(n664) );
  MUX21L U677 ( .A(n1147), .B(n871), .S(n891), .Z(n663) );
  MUX21L U678 ( .A(n1146), .B(n872), .S(n891), .Z(n662) );
  MUX21L U679 ( .A(n1145), .B(n873), .S(n891), .Z(n661) );
  MUX21L U680 ( .A(n1144), .B(n874), .S(n891), .Z(n660) );
  MUX21L U681 ( .A(n1143), .B(n875), .S(n891), .Z(n659) );
  MUX21L U682 ( .A(n1142), .B(n876), .S(n891), .Z(n658) );
  MUX21L U683 ( .A(n1141), .B(n877), .S(n891), .Z(n657) );
  MUX21L U684 ( .A(n1140), .B(n878), .S(n891), .Z(n656) );
  MUX21L U685 ( .A(n1139), .B(n879), .S(n891), .Z(n655) );
  MUX21L U686 ( .A(n1138), .B(n880), .S(n891), .Z(n654) );
  MUX21L U687 ( .A(n1137), .B(n881), .S(n891), .Z(n653) );
  MUX21L U688 ( .A(n1136), .B(n882), .S(n891), .Z(n652) );
  MUX21L U689 ( .A(n1135), .B(n883), .S(n891), .Z(n651) );
  MUX21L U690 ( .A(n1134), .B(n884), .S(n891), .Z(n650) );
  MUX21L U691 ( .A(n1133), .B(n885), .S(n891), .Z(n649) );
  MUX21L U692 ( .A(n1132), .B(n886), .S(n891), .Z(n648) );
  MUX21L U693 ( .A(n1131), .B(n887), .S(n891), .Z(n647) );
  MUX21L U694 ( .A(n1130), .B(n888), .S(n891), .Z(n646) );
  AN3 U695 ( .A(n2), .B(wr_ptr_1_), .C(n846), .Z(n891) );
  MUX21L U696 ( .A(n1129), .B(n852), .S(n892), .Z(n645) );
  MUX21L U697 ( .A(n1128), .B(n854), .S(n892), .Z(n644) );
  MUX21L U698 ( .A(n1127), .B(n855), .S(n892), .Z(n643) );
  MUX21L U699 ( .A(n1126), .B(n856), .S(n892), .Z(n642) );
  MUX21L U700 ( .A(n1125), .B(n857), .S(n892), .Z(n641) );
  MUX21L U701 ( .A(n1124), .B(n858), .S(n892), .Z(n640) );
  MUX21L U702 ( .A(n1123), .B(n859), .S(n892), .Z(n639) );
  MUX21L U703 ( .A(n1122), .B(n860), .S(n892), .Z(n638) );
  MUX21L U704 ( .A(n1121), .B(n861), .S(n892), .Z(n637) );
  MUX21L U705 ( .A(n1120), .B(n862), .S(n892), .Z(n636) );
  MUX21L U706 ( .A(n1119), .B(n863), .S(n892), .Z(n635) );
  MUX21L U707 ( .A(n1118), .B(n864), .S(n892), .Z(n634) );
  MUX21L U708 ( .A(n1117), .B(n865), .S(n892), .Z(n633) );
  MUX21L U709 ( .A(n1116), .B(n866), .S(n892), .Z(n632) );
  MUX21L U710 ( .A(n1115), .B(n867), .S(n892), .Z(n631) );
  MUX21L U711 ( .A(n1114), .B(n868), .S(n892), .Z(n630) );
  MUX21L U712 ( .A(n1113), .B(n869), .S(n892), .Z(n629) );
  MUX21L U713 ( .A(n1112), .B(n870), .S(n892), .Z(n628) );
  MUX21L U714 ( .A(n1111), .B(n871), .S(n892), .Z(n627) );
  MUX21L U715 ( .A(n1110), .B(n872), .S(n892), .Z(n626) );
  MUX21L U716 ( .A(n1109), .B(n873), .S(n892), .Z(n625) );
  MUX21L U717 ( .A(n1108), .B(n874), .S(n892), .Z(n624) );
  MUX21L U718 ( .A(n1107), .B(n875), .S(n892), .Z(n623) );
  MUX21L U719 ( .A(n1106), .B(n876), .S(n892), .Z(n622) );
  MUX21L U720 ( .A(n1105), .B(n877), .S(n892), .Z(n621) );
  MUX21L U721 ( .A(n1104), .B(n878), .S(n892), .Z(n620) );
  MUX21L U722 ( .A(n1103), .B(n879), .S(n892), .Z(n619) );
  MUX21L U723 ( .A(n1102), .B(n880), .S(n892), .Z(n618) );
  MUX21L U724 ( .A(n1101), .B(n881), .S(n892), .Z(n617) );
  MUX21L U725 ( .A(n1100), .B(n882), .S(n892), .Z(n616) );
  MUX21L U726 ( .A(n1099), .B(n883), .S(n892), .Z(n615) );
  MUX21L U727 ( .A(n1098), .B(n884), .S(n892), .Z(n614) );
  MUX21L U728 ( .A(n1097), .B(n885), .S(n892), .Z(n613) );
  MUX21L U729 ( .A(n1096), .B(n886), .S(n892), .Z(n612) );
  MUX21L U730 ( .A(n1095), .B(n887), .S(n892), .Z(n611) );
  MUX21L U731 ( .A(n1094), .B(n888), .S(n892), .Z(n610) );
  AN3 U732 ( .A(n2), .B(wr_en), .C(n893), .Z(n892) );
  MUX21L U733 ( .A(n1093), .B(n852), .S(n894), .Z(n609) );
  MUX21L U734 ( .A(n1092), .B(n854), .S(n894), .Z(n608) );
  MUX21L U735 ( .A(n1091), .B(n855), .S(n894), .Z(n607) );
  MUX21L U736 ( .A(n1090), .B(n856), .S(n894), .Z(n606) );
  MUX21L U737 ( .A(n1089), .B(n857), .S(n894), .Z(n605) );
  MUX21L U738 ( .A(n1088), .B(n858), .S(n894), .Z(n604) );
  MUX21L U739 ( .A(n1087), .B(n859), .S(n894), .Z(n603) );
  MUX21L U740 ( .A(n1086), .B(n860), .S(n894), .Z(n602) );
  MUX21L U741 ( .A(n1085), .B(n861), .S(n894), .Z(n601) );
  MUX21L U742 ( .A(n1084), .B(n862), .S(n894), .Z(n600) );
  MUX21L U743 ( .A(n1083), .B(n863), .S(n894), .Z(n599) );
  MUX21L U744 ( .A(n1082), .B(n864), .S(n894), .Z(n598) );
  MUX21L U745 ( .A(n1081), .B(n865), .S(n894), .Z(n597) );
  MUX21L U746 ( .A(n1080), .B(n866), .S(n894), .Z(n596) );
  MUX21L U747 ( .A(n1079), .B(n867), .S(n894), .Z(n595) );
  MUX21L U748 ( .A(n1078), .B(n868), .S(n894), .Z(n594) );
  MUX21L U749 ( .A(n1077), .B(n869), .S(n894), .Z(n593) );
  MUX21L U750 ( .A(n1076), .B(n870), .S(n894), .Z(n592) );
  MUX21L U751 ( .A(n1075), .B(n871), .S(n894), .Z(n591) );
  MUX21L U752 ( .A(n1074), .B(n872), .S(n894), .Z(n590) );
  MUX21L U753 ( .A(n1073), .B(n873), .S(n894), .Z(n589) );
  MUX21L U754 ( .A(n1072), .B(n874), .S(n894), .Z(n588) );
  MUX21L U755 ( .A(n1071), .B(n875), .S(n894), .Z(n587) );
  MUX21L U756 ( .A(n1070), .B(n876), .S(n894), .Z(n586) );
  MUX21L U757 ( .A(n1069), .B(n877), .S(n894), .Z(n585) );
  MUX21L U758 ( .A(n1068), .B(n878), .S(n894), .Z(n584) );
  MUX21L U759 ( .A(n1067), .B(n879), .S(n894), .Z(n583) );
  MUX21L U760 ( .A(n1066), .B(n880), .S(n894), .Z(n582) );
  MUX21L U761 ( .A(n1065), .B(n881), .S(n894), .Z(n581) );
  MUX21L U762 ( .A(n1064), .B(n882), .S(n894), .Z(n580) );
  MUX21L U763 ( .A(n1063), .B(n883), .S(n894), .Z(n579) );
  MUX21L U764 ( .A(n1062), .B(n884), .S(n894), .Z(n578) );
  MUX21L U765 ( .A(n1061), .B(n885), .S(n894), .Z(n577) );
  MUX21L U766 ( .A(n1060), .B(n886), .S(n894), .Z(n576) );
  MUX21L U767 ( .A(n1059), .B(n887), .S(n894), .Z(n575) );
  MUX21L U768 ( .A(n1058), .B(n888), .S(n894), .Z(n574) );
  AN3 U769 ( .A(n3), .B(wr_ptr_2_), .C(n846), .Z(n894) );
  MUX21L U770 ( .A(n1057), .B(n852), .S(n895), .Z(n573) );
  MUX21L U771 ( .A(n1056), .B(n854), .S(n895), .Z(n572) );
  MUX21L U772 ( .A(n1055), .B(n855), .S(n895), .Z(n571) );
  MUX21L U773 ( .A(n1054), .B(n856), .S(n895), .Z(n570) );
  MUX21L U774 ( .A(n1053), .B(n857), .S(n895), .Z(n569) );
  MUX21L U775 ( .A(n1052), .B(n858), .S(n895), .Z(n568) );
  MUX21L U776 ( .A(n1051), .B(n859), .S(n895), .Z(n567) );
  MUX21L U777 ( .A(n1050), .B(n860), .S(n895), .Z(n566) );
  MUX21L U778 ( .A(n1049), .B(n861), .S(n895), .Z(n565) );
  MUX21L U779 ( .A(n1048), .B(n862), .S(n895), .Z(n564) );
  MUX21L U780 ( .A(n1047), .B(n863), .S(n895), .Z(n563) );
  MUX21L U781 ( .A(n1046), .B(n864), .S(n895), .Z(n562) );
  MUX21L U782 ( .A(n1045), .B(n865), .S(n895), .Z(n561) );
  MUX21L U783 ( .A(n1044), .B(n866), .S(n895), .Z(n560) );
  MUX21L U784 ( .A(n1043), .B(n867), .S(n895), .Z(n559) );
  MUX21L U785 ( .A(n1042), .B(n868), .S(n895), .Z(n558) );
  MUX21L U786 ( .A(n1041), .B(n869), .S(n895), .Z(n557) );
  MUX21L U787 ( .A(n1040), .B(n870), .S(n895), .Z(n556) );
  MUX21L U788 ( .A(n1039), .B(n871), .S(n895), .Z(n555) );
  MUX21L U789 ( .A(n1038), .B(n872), .S(n895), .Z(n554) );
  MUX21L U790 ( .A(n1037), .B(n873), .S(n895), .Z(n553) );
  MUX21L U791 ( .A(n1036), .B(n874), .S(n895), .Z(n552) );
  MUX21L U792 ( .A(n1035), .B(n875), .S(n895), .Z(n551) );
  MUX21L U793 ( .A(n1034), .B(n876), .S(n895), .Z(n550) );
  MUX21L U794 ( .A(n1033), .B(n877), .S(n895), .Z(n549) );
  MUX21L U795 ( .A(n1032), .B(n878), .S(n895), .Z(n548) );
  MUX21L U796 ( .A(n1031), .B(n879), .S(n895), .Z(n547) );
  MUX21L U797 ( .A(n1030), .B(n880), .S(n895), .Z(n546) );
  MUX21L U798 ( .A(n1029), .B(n881), .S(n895), .Z(n545) );
  MUX21L U799 ( .A(n1028), .B(n882), .S(n895), .Z(n544) );
  MUX21L U800 ( .A(n1027), .B(n883), .S(n895), .Z(n543) );
  MUX21L U801 ( .A(n1026), .B(n884), .S(n895), .Z(n542) );
  MUX21L U802 ( .A(n1025), .B(n885), .S(n895), .Z(n541) );
  MUX21L U803 ( .A(n1024), .B(n886), .S(n895), .Z(n540) );
  MUX21L U804 ( .A(n1023), .B(n887), .S(n895), .Z(n539) );
  MUX21L U805 ( .A(n1022), .B(n888), .S(n895), .Z(n538) );
  AN3 U806 ( .A(wr_ptr_2_), .B(wr_en), .C(n890), .Z(n895) );
  MUX21L U807 ( .A(n1021), .B(n852), .S(n896), .Z(n537) );
  MUX21L U808 ( .A(n1020), .B(n854), .S(n896), .Z(n536) );
  MUX21L U809 ( .A(n1019), .B(n855), .S(n896), .Z(n535) );
  MUX21L U810 ( .A(n1018), .B(n856), .S(n896), .Z(n534) );
  MUX21L U811 ( .A(n1017), .B(n857), .S(n896), .Z(n533) );
  MUX21L U812 ( .A(n1016), .B(n858), .S(n896), .Z(n532) );
  MUX21L U813 ( .A(n1015), .B(n859), .S(n896), .Z(n531) );
  MUX21L U814 ( .A(n1014), .B(n860), .S(n896), .Z(n530) );
  MUX21L U815 ( .A(n1013), .B(n861), .S(n896), .Z(n529) );
  MUX21L U816 ( .A(n1012), .B(n862), .S(n896), .Z(n528) );
  MUX21L U817 ( .A(n1011), .B(n863), .S(n896), .Z(n527) );
  MUX21L U818 ( .A(n1010), .B(n864), .S(n896), .Z(n526) );
  MUX21L U819 ( .A(n1009), .B(n865), .S(n896), .Z(n525) );
  MUX21L U820 ( .A(n1008), .B(n866), .S(n896), .Z(n524) );
  MUX21L U821 ( .A(n1007), .B(n867), .S(n896), .Z(n523) );
  MUX21L U822 ( .A(n1006), .B(n868), .S(n896), .Z(n522) );
  MUX21L U823 ( .A(n1005), .B(n869), .S(n896), .Z(n521) );
  MUX21L U824 ( .A(n1004), .B(n870), .S(n896), .Z(n520) );
  MUX21L U825 ( .A(n1003), .B(n871), .S(n896), .Z(n519) );
  MUX21L U826 ( .A(n1002), .B(n872), .S(n896), .Z(n518) );
  MUX21L U827 ( .A(n1001), .B(n873), .S(n896), .Z(n517) );
  MUX21L U828 ( .A(n1000), .B(n874), .S(n896), .Z(n516) );
  MUX21L U829 ( .A(n999), .B(n875), .S(n896), .Z(n515) );
  MUX21L U830 ( .A(n998), .B(n876), .S(n896), .Z(n514) );
  MUX21L U831 ( .A(n997), .B(n877), .S(n896), .Z(n513) );
  MUX21L U832 ( .A(n996), .B(n878), .S(n896), .Z(n512) );
  MUX21L U833 ( .A(n995), .B(n879), .S(n896), .Z(n511) );
  MUX21L U834 ( .A(n994), .B(n880), .S(n896), .Z(n510) );
  MUX21L U835 ( .A(n993), .B(n881), .S(n896), .Z(n509) );
  MUX21L U836 ( .A(n992), .B(n882), .S(n896), .Z(n508) );
  MUX21L U837 ( .A(n991), .B(n883), .S(n896), .Z(n507) );
  MUX21L U838 ( .A(n990), .B(n884), .S(n896), .Z(n506) );
  MUX21L U839 ( .A(n989), .B(n885), .S(n896), .Z(n505) );
  MUX21L U840 ( .A(n988), .B(n886), .S(n896), .Z(n504) );
  MUX21L U841 ( .A(n987), .B(n887), .S(n896), .Z(n503) );
  MUX21L U842 ( .A(n986), .B(n888), .S(n896), .Z(n502) );
  AN3 U843 ( .A(wr_ptr_1_), .B(wr_ptr_2_), .C(n846), .Z(n896) );
  MUX21L U844 ( .A(n985), .B(n852), .S(n897), .Z(n501) );
  IV U845 ( .A(wr_data[0]), .Z(n852) );
  MUX21L U846 ( .A(n984), .B(n854), .S(n897), .Z(n500) );
  IV U847 ( .A(wr_data[35]), .Z(n854) );
  MUX21L U848 ( .A(n983), .B(n855), .S(n897), .Z(n499) );
  IV U849 ( .A(wr_data[34]), .Z(n855) );
  MUX21L U850 ( .A(n982), .B(n856), .S(n897), .Z(n498) );
  IV U851 ( .A(wr_data[33]), .Z(n856) );
  MUX21L U852 ( .A(n981), .B(n857), .S(n897), .Z(n497) );
  IV U853 ( .A(wr_data[32]), .Z(n857) );
  MUX21L U854 ( .A(n980), .B(n858), .S(n897), .Z(n496) );
  IV U855 ( .A(wr_data[31]), .Z(n858) );
  MUX21L U856 ( .A(n979), .B(n859), .S(n897), .Z(n495) );
  IV U857 ( .A(wr_data[30]), .Z(n859) );
  MUX21L U858 ( .A(n978), .B(n860), .S(n897), .Z(n494) );
  IV U859 ( .A(wr_data[29]), .Z(n860) );
  MUX21L U860 ( .A(n977), .B(n861), .S(n897), .Z(n493) );
  IV U861 ( .A(wr_data[28]), .Z(n861) );
  MUX21L U862 ( .A(n976), .B(n862), .S(n897), .Z(n492) );
  IV U863 ( .A(wr_data[27]), .Z(n862) );
  MUX21L U864 ( .A(n975), .B(n863), .S(n897), .Z(n491) );
  IV U865 ( .A(wr_data[26]), .Z(n863) );
  MUX21L U866 ( .A(n974), .B(n864), .S(n897), .Z(n490) );
  IV U867 ( .A(wr_data[25]), .Z(n864) );
  MUX21L U868 ( .A(n973), .B(n865), .S(n897), .Z(n489) );
  IV U869 ( .A(wr_data[24]), .Z(n865) );
  MUX21L U870 ( .A(n972), .B(n866), .S(n897), .Z(n488) );
  IV U871 ( .A(wr_data[23]), .Z(n866) );
  MUX21L U872 ( .A(n971), .B(n867), .S(n897), .Z(n487) );
  IV U873 ( .A(wr_data[22]), .Z(n867) );
  MUX21L U874 ( .A(n970), .B(n868), .S(n897), .Z(n486) );
  IV U875 ( .A(wr_data[21]), .Z(n868) );
  MUX21L U876 ( .A(n969), .B(n869), .S(n897), .Z(n485) );
  IV U877 ( .A(wr_data[20]), .Z(n869) );
  MUX21L U878 ( .A(n968), .B(n870), .S(n897), .Z(n484) );
  IV U879 ( .A(wr_data[19]), .Z(n870) );
  MUX21L U880 ( .A(n967), .B(n871), .S(n897), .Z(n483) );
  IV U881 ( .A(wr_data[18]), .Z(n871) );
  MUX21L U882 ( .A(n966), .B(n872), .S(n897), .Z(n482) );
  IV U883 ( .A(wr_data[17]), .Z(n872) );
  MUX21L U884 ( .A(n965), .B(n873), .S(n897), .Z(n481) );
  IV U885 ( .A(wr_data[16]), .Z(n873) );
  MUX21L U886 ( .A(n964), .B(n874), .S(n897), .Z(n480) );
  IV U887 ( .A(wr_data[15]), .Z(n874) );
  MUX21L U888 ( .A(n963), .B(n875), .S(n897), .Z(n479) );
  IV U889 ( .A(wr_data[14]), .Z(n875) );
  MUX21L U890 ( .A(n962), .B(n876), .S(n897), .Z(n478) );
  IV U891 ( .A(wr_data[13]), .Z(n876) );
  MUX21L U892 ( .A(n961), .B(n877), .S(n897), .Z(n477) );
  IV U893 ( .A(wr_data[12]), .Z(n877) );
  MUX21L U894 ( .A(n960), .B(n878), .S(n897), .Z(n476) );
  IV U895 ( .A(wr_data[11]), .Z(n878) );
  MUX21L U896 ( .A(n959), .B(n879), .S(n897), .Z(n475) );
  IV U897 ( .A(wr_data[10]), .Z(n879) );
  MUX21L U898 ( .A(n958), .B(n880), .S(n897), .Z(n474) );
  IV U899 ( .A(wr_data[9]), .Z(n880) );
  MUX21L U900 ( .A(n957), .B(n881), .S(n897), .Z(n473) );
  IV U901 ( .A(wr_data[8]), .Z(n881) );
  MUX21L U902 ( .A(n956), .B(n882), .S(n897), .Z(n472) );
  IV U903 ( .A(wr_data[7]), .Z(n882) );
  MUX21L U904 ( .A(n955), .B(n883), .S(n897), .Z(n471) );
  IV U905 ( .A(wr_data[6]), .Z(n883) );
  MUX21L U906 ( .A(n954), .B(n884), .S(n897), .Z(n470) );
  IV U907 ( .A(wr_data[5]), .Z(n884) );
  MUX21L U908 ( .A(n953), .B(n885), .S(n897), .Z(n469) );
  IV U909 ( .A(wr_data[4]), .Z(n885) );
  MUX21L U910 ( .A(n952), .B(n886), .S(n897), .Z(n468) );
  IV U911 ( .A(wr_data[3]), .Z(n886) );
  MUX21L U912 ( .A(n951), .B(n887), .S(n897), .Z(n467) );
  IV U913 ( .A(wr_data[2]), .Z(n887) );
  MUX21L U914 ( .A(n950), .B(n888), .S(n897), .Z(n466) );
  NR2 U915 ( .A(n898), .B(n848), .Z(n897) );
  IV U916 ( .A(wr_data[1]), .Z(n888) );
  IV U917 ( .A(n899), .Z(n465) );
  AO6 U918 ( .A(n848), .B(test_so13), .C(n900), .Z(n899) );
  AO7 U919 ( .A(wr_en), .B(n949), .C(n901), .Z(n464) );
  AO2 U920 ( .A(n900), .B(n902), .C(n851), .D(n903), .Z(n901) );
  AO7 U921 ( .A(wr_en), .B(n948), .C(n904), .Z(n463) );
  IV U922 ( .A(n900), .Z(n904) );
  NR2 U923 ( .A(n848), .B(n903), .Z(n900) );
  EO U924 ( .A(test_so13), .B(n898), .Z(n903) );
  AO7 U925 ( .A(wr_en), .B(n947), .C(n905), .Z(n462) );
  AO2 U926 ( .A(n849), .B(n1238), .C(n906), .D(n846), .Z(n905) );
  NR2 U927 ( .A(n848), .B(n1238), .Z(n846) );
  AO7 U928 ( .A(wr_en), .B(n946), .C(n907), .Z(n461) );
  AO2 U929 ( .A(n906), .B(n851), .C(n849), .D(n902), .Z(n907) );
  NR2 U930 ( .A(n848), .B(n906), .Z(n849) );
  NR2 U931 ( .A(n902), .B(n848), .Z(n851) );
  AO7 U932 ( .A(wr_ptr_2_), .B(n893), .C(n898), .Z(n902) );
  ND2 U933 ( .A(n893), .B(wr_ptr_2_), .Z(n898) );
  NR2 U934 ( .A(n3), .B(n1), .Z(n893) );
  AO6 U935 ( .A(n1), .B(wr_ptr_1_), .C(n890), .Z(n906) );
  NR2 U936 ( .A(n1), .B(wr_ptr_1_), .Z(n890) );
  AO4 U937 ( .A(n908), .B(n848), .C(n944), .D(n909), .Z(n460) );
  IV U938 ( .A(wr_en), .Z(n848) );
  NR2 U939 ( .A(afull), .B(full), .Z(n908) );
  NR2 U940 ( .A(n910), .B(n911), .Z(empty) );
  EN U941 ( .A(n912), .B(N69), .Z(n910) );
  AN4 U942 ( .A(n909), .B(n913), .C(n914), .D(n915), .Z(afull) );
  AO7 U943 ( .A(n1), .B(n916), .C(n917), .Z(n915) );
  EN U944 ( .A(n918), .B(n919), .Z(n914) );
  EN U945 ( .A(wr_ptr_1_), .B(n917), .Z(n919) );
  EO U946 ( .A(n920), .B(n921), .Z(n913) );
  EN U947 ( .A(wr_ptr_2_), .B(n922), .Z(n921) );
  AO5 U948 ( .A(n923), .B(n924), .C(n3), .Z(n922) );
  EO U949 ( .A(sync_rd_ptr_1[1]), .B(n920), .Z(n924) );
  AN2 U950 ( .A(n1), .B(n916), .Z(n923) );
  EO U951 ( .A(n925), .B(n926), .Z(n909) );
  EO U952 ( .A(test_so13), .B(sync_rd_ptr_1[3]), .Z(n926) );
  AO5 U953 ( .A(n927), .B(n928), .C(n2), .Z(n925) );
  EO U954 ( .A(sync_rd_ptr_1[3]), .B(sync_rd_ptr_1[2]), .Z(n928) );
  AO2 U955 ( .A(wr_ptr_1_), .B(n929), .C(n918), .D(n917), .Z(n927) );
  OR2 U956 ( .A(n917), .B(n918), .Z(n929) );
  ND2 U957 ( .A(n916), .B(n1), .Z(n917) );
  EN U958 ( .A(n918), .B(sync_rd_ptr_1[0]), .Z(n916) );
  EN U959 ( .A(n920), .B(sync_rd_ptr_1[1]), .Z(n918) );
  EN U960 ( .A(n945), .B(sync_rd_ptr_1[3]), .Z(n920) );
  NR2 U961 ( .A(n911), .B(n930), .Z(aempty) );
  EN U962 ( .A(n1242), .B(n912), .Z(n930) );
  AO3 U963 ( .A(n931), .B(n932), .C(n933), .D(n934), .Z(n911) );
  MUX21L U964 ( .A(n935), .B(n936), .S(n937), .Z(n934) );
  AN3 U965 ( .A(n938), .B(N69), .C(n912), .Z(n937) );
  AN2 U966 ( .A(n939), .B(n932), .Z(n936) );
  AO7 U967 ( .A(n361), .B(n940), .C(n939), .Z(n935) );
  ND2 U968 ( .A(n361), .B(n940), .Z(n939) );
  EO U969 ( .A(n938), .B(n941), .Z(n933) );
  AO2 U970 ( .A(n362), .B(n942), .C(n912), .D(n838), .Z(n941) );
  NR2 U971 ( .A(n1242), .B(n362), .Z(n838) );
  ND2 U972 ( .A(n912), .B(N69), .Z(n942) );
  EO U973 ( .A(n938), .B(sync_wr_ptr_1[0]), .Z(n912) );
  EN U974 ( .A(n940), .B(sync_wr_ptr_1[1]), .Z(n938) );
  EO U975 ( .A(n4), .B(sync_wr_ptr_1[3]), .Z(n932) );
  NR2 U976 ( .A(n361), .B(n940), .Z(n931) );
  EN U977 ( .A(n943), .B(sync_wr_ptr_1[3]), .Z(n940) );
endmodule


module wb2sdrc_dw32_tw8_bl9_test_1 ( wb_rst_i, wb_clk_i, wb_stb_i, wb_ack_o, 
        wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, wb_cti_i, 
        sdram_clk, sdram_resetn, sdr_req, sdr_req_addr, sdr_req_len, 
        sdr_req_wr_n, sdr_req_ack, sdr_busy_n, sdr_wr_en_n, sdr_wr_next, 
        sdr_rd_valid, sdr_last_rd, sdr_wr_data, sdr_rd_data, test_si26, 
        test_si25, test_si24, test_si23, test_si22, test_si21, test_si20, 
        test_si19, test_si18, test_si17, test_si16, test_si15, test_si14, 
        test_si13, test_si12, test_si11, test_si10, test_si9, test_si8, 
        test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, 
        test_so25, test_so24, test_so23, test_so22, test_so21, test_so20, 
        test_so19, test_so18, test_so17, test_so16, test_so15, test_so14, 
        test_so13, test_so12, test_so11, test_so10, test_so9, test_so8, 
        test_so7, test_so6, test_so5, test_so4, test_so3, test_so2, test_so1, 
        test_se );
  input [25:0] wb_addr_i;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  output [31:0] wb_dat_o;
  input [2:0] wb_cti_i;
  output [25:0] sdr_req_addr;
  output [8:0] sdr_req_len;
  output [3:0] sdr_wr_en_n;
  output [31:0] sdr_wr_data;
  input [31:0] sdr_rd_data;
  input wb_rst_i, wb_clk_i, wb_stb_i, wb_we_i, wb_cyc_i, sdram_clk,
         sdram_resetn, sdr_req_ack, sdr_busy_n, sdr_wr_next, sdr_rd_valid,
         sdr_last_rd, test_si26, test_si25, test_si24, test_si23, test_si22,
         test_si21, test_si20, test_si19, test_si18, test_si17, test_si16,
         test_si15, test_si14, test_si13, test_si12, test_si11, test_si10,
         test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, test_si3,
         test_si2, test_si1, test_se;
  output wb_ack_o, sdr_req, sdr_req_wr_n, test_so25, test_so24, test_so23,
         test_so22, test_so21, test_so20, test_so19, test_so18, test_so17,
         test_so16, test_so15, test_so14, test_so13, test_so12, test_so11,
         test_so10, test_so9, test_so8, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
  wire   cmdfifo_full, wrdatafifo_full, rddatafifo_empty, cmdfifo_wr,
         cmdfifo_empty, wrdatafifo_wr, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n14, n15, n16, n17, n18, n19, n40, n41, n48,
         SYNOPSYS_UNCONNECTED_1;

  async_fifo_36_4_0_0_test_1 u_cmdfifo ( .wr_clk(n5), .wr_reset_n(n14), 
        .wr_en(cmdfifo_wr), .wr_data({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, n15, wb_addr_i}), .full(cmdfifo_full), .rd_clk(n3), 
        .rd_reset_n(sdram_resetn), .rd_en(sdr_req_ack), .empty(cmdfifo_empty), 
        .rd_data({sdr_req_len, sdr_req_wr_n, sdr_req_addr}), .test_si9(
        test_si18), .test_si8(test_si16), .test_si7(test_si7), .test_si6(
        test_si6), .test_si5(test_si5), .test_si4(test_si4), .test_si3(
        test_si3), .test_si2(test_si2), .test_si1(n48), .test_so7(n41), 
        .test_so6(test_so6), .test_so5(test_so5), .test_so4(test_so4), 
        .test_so3(test_so3), .test_so2(test_so2), .test_so1(test_so1), 
        .test_se(test_se) );
  async_fifo_36_8_0_1_test_1 u_wrdatafifo ( .wr_clk(n5), .wr_reset_n(n14), 
        .wr_en(wrdatafifo_wr), .wr_data({n16, n17, n18, n19, wb_dat_i}), 
        .full(wrdatafifo_full), .rd_clk(n3), .rd_reset_n(sdram_resetn), 
        .rd_en(sdr_wr_next), .rd_data({sdr_wr_en_n, sdr_wr_data}), .test_si13(
        test_si24), .test_si12(test_si22), .test_si11(test_si19), .test_si10(
        test_si17), .test_si9(test_si15), .test_si8(test_si14), .test_si7(
        test_si13), .test_si6(test_si12), .test_si5(test_si11), .test_si4(
        test_si10), .test_si3(test_si9), .test_si2(test_si8), .test_si1(n40), 
        .test_so13(test_so23), .test_so12(test_so21), .test_so11(test_so18), 
        .test_so10(test_so16), .test_so9(test_so15), .test_so8(test_so14), 
        .test_so7(test_so13), .test_so6(test_so12), .test_so5(test_so11), 
        .test_so4(test_so10), .test_so3(test_so9), .test_so2(test_so8), 
        .test_so1(test_so7), .test_se(test_se) );
  async_fifo_33_4_0_1_test_1 u_rddatafifo ( .wr_clk(n3), .wr_reset_n(
        sdram_resetn), .wr_en(sdr_rd_valid), .wr_data({sdr_last_rd, 
        sdr_rd_data}), .rd_clk(n5), .rd_reset_n(n14), .rd_en(n12), .empty(
        rddatafifo_empty), .rd_data({SYNOPSYS_UNCONNECTED_1, wb_dat_o}), 
        .test_si7(test_si26), .test_si6(test_si25), .test_si5(test_si23), 
        .test_si4(test_si21), .test_si3(test_si20), .test_si2(sdr_req_len[8]), 
        .test_si1(n41), .test_so7(test_so25), .test_so6(test_so24), .test_so5(
        test_so22), .test_so4(test_so20), .test_so3(test_so19), .test_so2(
        test_so17), .test_so1(n40), .test_se(test_se) );
  FD2S pending_read_reg ( .D(n11), .TI(test_si1), .TE(test_se), .CP(n5), .CD(
        n14), .Q(n48), .QN(n2) );
  IVP U4 ( .A(n4), .Z(n3) );
  IVP U5 ( .A(sdram_clk), .Z(n4) );
  IVP U6 ( .A(n6), .Z(n5) );
  IVP U7 ( .A(wb_clk_i), .Z(n6) );
  EON1 U8 ( .A(n12), .B(n2), .C(n15), .D(cmdfifo_wr), .Z(n11) );
  NR2 U9 ( .A(n7), .B(wb_we_i), .Z(n12) );
  IV U10 ( .A(cmdfifo_empty), .Z(sdr_req) );
  IV U11 ( .A(wb_rst_i), .Z(n14) );
  IV U12 ( .A(wb_sel_i[3]), .Z(n16) );
  IV U13 ( .A(wb_sel_i[2]), .Z(n17) );
  IV U14 ( .A(wb_sel_i[1]), .Z(n18) );
  IV U15 ( .A(wb_sel_i[0]), .Z(n19) );
  NR3 U16 ( .A(cmdfifo_full), .B(n8), .C(n9), .Z(cmdfifo_wr) );
  MUX21L U17 ( .A(n2), .B(wb_ack_o), .S(wb_we_i), .Z(n9) );
  IV U18 ( .A(n7), .Z(wb_ack_o) );
  NR2 U19 ( .A(wrdatafifo_wr), .B(n10), .Z(n7) );
  NR3 U20 ( .A(wb_we_i), .B(rddatafifo_empty), .C(n8), .Z(n10) );
  NR4 U21 ( .A(n15), .B(n8), .C(wrdatafifo_full), .D(cmdfifo_full), .Z(
        wrdatafifo_wr) );
  IV U22 ( .A(wb_we_i), .Z(n15) );
  ND2 U23 ( .A(wb_stb_i), .B(wb_cyc_i), .Z(n8) );
endmodule


module sdrc_bank_fsm_test_0 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so4, test_so3, 
        test_so2, test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [11:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [11:0] b2x_len;
  output [1:0] b2x_cmd;
  output [12:0] bank_row;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         sdr_dma_last, x2b_ack, xfr_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok,
         x2b_rdok, x2b_wrok, test_si4, test_si3, test_si2, test_si1, test_se;
  output b2r_ack, b2x_req, b2x_start, b2x_last, b2x_wrap, tras_ok, test_so4,
         test_so3, test_so2, test_so1;
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42, N73,
         N74, N75, N77, N78, N79, N80, N81, N82, N83, n87, n89, n114, n115,
         n116, n137, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n1, n2, n84, n85, n86, n88, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n375, n376, n377,
         n378, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425;
  wire   [3:2] timer0;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n142), .Q(n377), .QN(n338) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n376), .TE(test_se), .CP(n147), .Q(n375), 
        .QN(n340) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n375), .TE(test_se), .CP(n142), .Q(test_so4), .QN(n339) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n377), .TE(test_se), .CP(n147), .Q(n376), 
        .QN(n341) );
  FD1S bank_row_reg_0_ ( .D(n360), .TI(b2x_cmd[1]), .TE(test_se), .CP(n147), 
        .Q(bank_row[0]), .QN(n349) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n85), .TE(test_se), .CP(n142), .Q(n122), 
        .QN(n115) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n142), 
        .Q(n85), .QN(n116) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n122), .TE(test_se), .CP(n142), .Q(
        test_so1), .QN(n114) );
  FD1S l_write_reg ( .D(n304), .TI(n381), .TE(test_se), .CP(n145), .Q(n121), 
        .QN(n137) );
  FD1S bank_row_reg_10_ ( .D(n372), .TI(bank_row[9]), .TE(test_se), .CP(n144), 
        .Q(bank_row[10]), .QN(n356) );
  FD1S bank_row_reg_12_ ( .D(n371), .TI(bank_row[11]), .TE(test_se), .CP(n143), 
        .Q(bank_row[12]), .QN(n355) );
  FD1S bank_row_reg_9_ ( .D(n370), .TI(bank_row[8]), .TE(test_se), .CP(n148), 
        .Q(bank_row[9]), .QN(n352) );
  FD1S bank_row_reg_8_ ( .D(n369), .TI(bank_row[7]), .TE(test_se), .CP(n148), 
        .Q(bank_row[8]), .QN(n354) );
  FD1S bank_row_reg_7_ ( .D(n368), .TI(bank_row[6]), .TE(test_se), .CP(n148), 
        .Q(bank_row[7]), .QN(n353) );
  FD1S bank_row_reg_6_ ( .D(n367), .TI(bank_row[5]), .TE(test_se), .CP(n148), 
        .Q(bank_row[6]), .QN(n348) );
  FD1S bank_row_reg_5_ ( .D(n366), .TI(bank_row[4]), .TE(test_se), .CP(n148), 
        .Q(bank_row[5]), .QN(n347) );
  FD1S bank_row_reg_4_ ( .D(n365), .TI(bank_row[3]), .TE(test_se), .CP(n148), 
        .Q(bank_row[4]), .QN(n346) );
  FD1S bank_row_reg_3_ ( .D(n364), .TI(bank_row[2]), .TE(test_se), .CP(n148), 
        .Q(bank_row[3]), .QN(n351) );
  FD1S bank_row_reg_2_ ( .D(n363), .TI(bank_row[1]), .TE(test_se), .CP(n142), 
        .Q(bank_row[2]), .QN(n350) );
  FD1S bank_row_reg_1_ ( .D(n362), .TI(bank_row[0]), .TE(test_se), .CP(n148), 
        .Q(bank_row[1]), .QN(n345) );
  FD1S bank_row_reg_11_ ( .D(n361), .TI(bank_row[10]), .TE(test_se), .CP(n143), 
        .Q(bank_row[11]), .QN(n357) );
  FD1S bank_valid_reg ( .D(n359), .TI(test_si2), .TE(test_se), .CP(n148), .Q(
        n141), .QN(n343) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n145), 
        .Q(n378), .QN(n89) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n147), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n324), .TI(n141), .TE(test_se), .CP(n147), .Q(n425), 
        .QN(n135) );
  FD1S l_caddr_reg_12_ ( .D(n279), .TI(n414), .TE(test_se), .CP(n142), .Q(n413), .QN(n132) );
  FD1S l_caddr_reg_11_ ( .D(n280), .TI(n415), .TE(test_se), .CP(n142), .Q(n414), .QN(n133) );
  FD1S l_caddr_reg_10_ ( .D(n281), .TI(n416), .TE(test_se), .CP(n142), .Q(n415), .QN(n134) );
  FD1S l_caddr_reg_9_ ( .D(n282), .TI(n417), .TE(test_se), .CP(n143), .Q(n416), 
        .QN(n123) );
  FD1S l_caddr_reg_8_ ( .D(n283), .TI(n418), .TE(test_se), .CP(n143), .Q(n417), 
        .QN(n124) );
  FD1S l_caddr_reg_7_ ( .D(n284), .TI(n419), .TE(test_se), .CP(n143), .Q(n418), 
        .QN(n125) );
  FD1S l_caddr_reg_6_ ( .D(n285), .TI(n420), .TE(test_se), .CP(n143), .Q(n419), 
        .QN(n126) );
  FD1S l_caddr_reg_5_ ( .D(n286), .TI(n421), .TE(test_se), .CP(n143), .Q(n420), 
        .QN(n127) );
  FD1S l_caddr_reg_4_ ( .D(n287), .TI(n422), .TE(test_se), .CP(n143), .Q(n421), 
        .QN(n128) );
  FD1S l_caddr_reg_3_ ( .D(n288), .TI(n423), .TE(test_se), .CP(n143), .Q(n422), 
        .QN(n129) );
  FD1S l_caddr_reg_2_ ( .D(n289), .TI(n424), .TE(test_se), .CP(n142), .Q(n423), 
        .QN(n130) );
  FD1S l_caddr_reg_1_ ( .D(n290), .TI(n425), .TE(test_se), .CP(n143), .Q(n424), 
        .QN(n131) );
  FD1S l_raddr_reg_12_ ( .D(n291), .TI(n384), .TE(test_se), .CP(n143), .Q(n383), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n292), .TI(n385), .TE(test_se), .CP(n143), .Q(n384), .QN(n97) );
  FD1S l_raddr_reg_10_ ( .D(n293), .TI(n386), .TE(test_se), .CP(n144), .Q(n385), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n294), .TI(n387), .TE(test_se), .CP(n144), .Q(n386), 
        .QN(n86) );
  FD1S l_raddr_reg_8_ ( .D(n295), .TI(n388), .TE(test_se), .CP(n144), .Q(n387), 
        .QN(n88) );
  FD1S l_raddr_reg_7_ ( .D(n296), .TI(n389), .TE(test_se), .CP(n144), .Q(n388), 
        .QN(n90) );
  FD1S l_raddr_reg_6_ ( .D(n297), .TI(n390), .TE(test_se), .CP(n144), .Q(n389), 
        .QN(n91) );
  FD1S l_raddr_reg_5_ ( .D(n298), .TI(n391), .TE(test_se), .CP(n144), .Q(n390), 
        .QN(n92) );
  FD1S l_raddr_reg_4_ ( .D(n299), .TI(n392), .TE(test_se), .CP(n144), .Q(n391), 
        .QN(n93) );
  FD1S l_raddr_reg_3_ ( .D(n300), .TI(n393), .TE(test_se), .CP(n144), .Q(n392), 
        .QN(n94) );
  FD1S l_raddr_reg_2_ ( .D(n301), .TI(n394), .TE(test_se), .CP(n144), .Q(n393), 
        .QN(n95) );
  FD1S l_raddr_reg_1_ ( .D(n302), .TI(n395), .TE(test_se), .CP(n144), .Q(n394), 
        .QN(n96) );
  FD1S l_raddr_reg_0_ ( .D(n303), .TI(n396), .TE(test_se), .CP(n144), .Q(n395), 
        .QN(n98) );
  FD1S l_wrap_reg ( .D(n305), .TI(n382), .TE(test_se), .CP(n146), .Q(n381), 
        .QN(n99) );
  FD1S l_len_reg_11_ ( .D(n306), .TI(n397), .TE(test_se), .CP(n146), .Q(n396), 
        .QN(n110) );
  FD1S l_len_reg_10_ ( .D(n307), .TI(n398), .TE(test_se), .CP(n146), .Q(n397), 
        .QN(n111) );
  FD1S l_len_reg_9_ ( .D(n308), .TI(n399), .TE(test_se), .CP(n146), .Q(n398), 
        .QN(n101) );
  FD1S l_len_reg_8_ ( .D(n309), .TI(n400), .TE(test_se), .CP(n146), .Q(n399), 
        .QN(n102) );
  FD1S l_len_reg_7_ ( .D(n310), .TI(n401), .TE(test_se), .CP(n146), .Q(n400), 
        .QN(n103) );
  FD1S l_len_reg_6_ ( .D(n311), .TI(test_si3), .TE(test_se), .CP(n146), .Q(
        n401), .QN(n104) );
  FD1S l_len_reg_5_ ( .D(n312), .TI(n403), .TE(test_se), .CP(n146), .Q(
        test_so2), .QN(n105) );
  FD1S l_len_reg_4_ ( .D(n313), .TI(n404), .TE(test_se), .CP(n146), .Q(n403), 
        .QN(n106) );
  FD1S l_len_reg_3_ ( .D(n314), .TI(n405), .TE(test_se), .CP(n146), .Q(n404), 
        .QN(n107) );
  FD1S l_len_reg_2_ ( .D(n315), .TI(n406), .TE(test_se), .CP(n146), .Q(n405), 
        .QN(n108) );
  FD1S l_len_reg_1_ ( .D(n316), .TI(n407), .TE(test_se), .CP(n146), .Q(n406), 
        .QN(n109) );
  FD1S l_len_reg_0_ ( .D(n317), .TI(n408), .TE(test_se), .CP(n147), .Q(n407), 
        .QN(n112) );
  FD1S l_id_reg_3_ ( .D(n318), .TI(n410), .TE(test_se), .CP(n147), .Q(n409), 
        .QN(n117) );
  FD1S l_id_reg_2_ ( .D(n319), .TI(n411), .TE(test_se), .CP(n147), .Q(n410), 
        .QN(n118) );
  FD1S l_id_reg_1_ ( .D(n320), .TI(n412), .TE(test_se), .CP(n147), .Q(n411), 
        .QN(n119) );
  FD1S l_id_reg_0_ ( .D(n321), .TI(n413), .TE(test_se), .CP(n147), .Q(n412), 
        .QN(n120) );
  FD1S l_last_reg ( .D(n322), .TI(n409), .TE(test_se), .CP(n147), .Q(n408), 
        .QN(n113) );
  FD1S l_start_reg ( .D(n323), .TI(n342), .TE(test_se), .CP(n147), .Q(n382), 
        .QN(n100) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n142), 
        .Q(b2x_cmd[1]), .QN(n87) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n145), .Q(
        b2x_cmd[0]), .QN(n344) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n121), .TE(test_se), .CP(n145), .Q(n380), 
        .QN(n84) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n380), .TE(test_se), .CP(n145), .Q(
        test_so3), .QN(n136) );
  FD1S l_sdr_dma_last_reg ( .D(n278), .TI(n383), .TE(test_se), .CP(n142), .Q(
        n342), .QN(n138) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n145), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n145), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n145), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n378), .TE(test_se), .CP(n145), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n358), .TI(tras_cntr[2]), .TE(test_se), .CP(n145), 
        .Q(tras_cntr[3]) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n145), .Q(
        timer0[3]), .QN(n139) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(test_si4), .TE(test_se), .CP(n145), .Q(
        timer0[2]), .QN(n140) );
  IVP U6 ( .A(n149), .Z(n146) );
  IVP U85 ( .A(n150), .Z(n145) );
  IVP U86 ( .A(n150), .Z(n144) );
  IVP U87 ( .A(n150), .Z(n143) );
  IVP U88 ( .A(n149), .Z(n147) );
  IVP U89 ( .A(n149), .Z(n148) );
  IVP U90 ( .A(n152), .Z(n150) );
  IVP U91 ( .A(n152), .Z(n149) );
  IVP U92 ( .A(n151), .Z(n142) );
  IVP U93 ( .A(n152), .Z(n151) );
  IVP U94 ( .A(n153), .Z(n152) );
  IVP U95 ( .A(clk), .Z(n153) );
  IV U96 ( .A(n154), .Z(n358) );
  AO2 U97 ( .A(tras_cntr[3]), .B(n155), .C(tras_delay[3]), .D(n156), .Z(n154)
         );
  NR2 U98 ( .A(n157), .B(n158), .Z(n155) );
  AO1 U99 ( .A(n343), .B(n159), .C(n160), .D(n161), .Z(n359) );
  ND2 U100 ( .A(n162), .B(n163), .Z(n160) );
  MUX21L U101 ( .A(n164), .B(n349), .S(n165), .Z(n360) );
  IV U102 ( .A(b2x_addr[0]), .Z(n164) );
  MUX21L U103 ( .A(n166), .B(n357), .S(n165), .Z(n361) );
  IV U104 ( .A(b2x_addr[11]), .Z(n166) );
  MUX21L U105 ( .A(n345), .B(n167), .S(n168), .Z(n362) );
  IV U106 ( .A(b2x_addr[1]), .Z(n167) );
  MUX21L U107 ( .A(n169), .B(n350), .S(n165), .Z(n363) );
  IV U108 ( .A(b2x_addr[2]), .Z(n169) );
  MUX21L U109 ( .A(n170), .B(n351), .S(n165), .Z(n364) );
  IV U110 ( .A(b2x_addr[3]), .Z(n170) );
  MUX21L U111 ( .A(n346), .B(n171), .S(n168), .Z(n365) );
  IV U112 ( .A(b2x_addr[4]), .Z(n171) );
  MUX21L U113 ( .A(n347), .B(n172), .S(n168), .Z(n366) );
  IV U114 ( .A(b2x_addr[5]), .Z(n172) );
  MUX21L U115 ( .A(n173), .B(n348), .S(n165), .Z(n367) );
  IV U116 ( .A(b2x_addr[6]), .Z(n173) );
  MUX21L U117 ( .A(n353), .B(n174), .S(n168), .Z(n368) );
  IV U118 ( .A(b2x_addr[7]), .Z(n174) );
  MUX21L U119 ( .A(n354), .B(n175), .S(n168), .Z(n369) );
  IV U120 ( .A(b2x_addr[8]), .Z(n175) );
  MUX21L U121 ( .A(n352), .B(n176), .S(n168), .Z(n370) );
  IV U122 ( .A(b2x_addr[9]), .Z(n176) );
  MUX21L U123 ( .A(n1), .B(n355), .S(n165), .Z(n371) );
  MUX21L U124 ( .A(n2), .B(n356), .S(n165), .Z(n372) );
  AO4 U125 ( .A(n135), .B(n177), .C(n178), .D(n179), .Z(n324) );
  IV U126 ( .A(r2b_caddr[0]), .Z(n178) );
  AO4 U127 ( .A(n179), .B(n180), .C(n177), .D(n100), .Z(n323) );
  AO4 U128 ( .A(n179), .B(n181), .C(n177), .D(n113), .Z(n322) );
  AO4 U129 ( .A(n179), .B(n182), .C(n177), .D(n120), .Z(n321) );
  AO4 U130 ( .A(n179), .B(n183), .C(n177), .D(n119), .Z(n320) );
  AO4 U131 ( .A(n179), .B(n184), .C(n177), .D(n118), .Z(n319) );
  AO4 U132 ( .A(n179), .B(n185), .C(n177), .D(n117), .Z(n318) );
  AO4 U133 ( .A(n179), .B(n186), .C(n177), .D(n112), .Z(n317) );
  AO4 U134 ( .A(n179), .B(n187), .C(n177), .D(n109), .Z(n316) );
  AO4 U135 ( .A(n179), .B(n188), .C(n177), .D(n108), .Z(n315) );
  AO4 U136 ( .A(n179), .B(n189), .C(n177), .D(n107), .Z(n314) );
  AO4 U137 ( .A(n179), .B(n190), .C(n177), .D(n106), .Z(n313) );
  AO4 U138 ( .A(n179), .B(n191), .C(n177), .D(n105), .Z(n312) );
  AO4 U139 ( .A(n179), .B(n192), .C(n177), .D(n104), .Z(n311) );
  AO4 U140 ( .A(n179), .B(n193), .C(n177), .D(n103), .Z(n310) );
  AO4 U141 ( .A(n179), .B(n194), .C(n177), .D(n102), .Z(n309) );
  AO4 U142 ( .A(n179), .B(n195), .C(n177), .D(n101), .Z(n308) );
  AO4 U143 ( .A(n179), .B(n196), .C(n177), .D(n111), .Z(n307) );
  AO4 U144 ( .A(n179), .B(n197), .C(n177), .D(n110), .Z(n306) );
  AO4 U145 ( .A(n179), .B(n198), .C(n177), .D(n99), .Z(n305) );
  AO4 U146 ( .A(n179), .B(n199), .C(n137), .D(n177), .Z(n304) );
  AO4 U147 ( .A(n179), .B(n200), .C(n98), .D(n177), .Z(n303) );
  AO4 U148 ( .A(n179), .B(n201), .C(n96), .D(n177), .Z(n302) );
  IV U149 ( .A(r2b_raddr[1]), .Z(n201) );
  AO4 U150 ( .A(n179), .B(n202), .C(n95), .D(n177), .Z(n301) );
  AO4 U151 ( .A(n179), .B(n203), .C(n94), .D(n177), .Z(n300) );
  AO4 U152 ( .A(n179), .B(n204), .C(n93), .D(n177), .Z(n299) );
  IV U153 ( .A(r2b_raddr[4]), .Z(n204) );
  AO4 U154 ( .A(n179), .B(n205), .C(n92), .D(n177), .Z(n298) );
  IV U155 ( .A(r2b_raddr[5]), .Z(n205) );
  AO4 U156 ( .A(n179), .B(n206), .C(n91), .D(n177), .Z(n297) );
  AO4 U157 ( .A(n179), .B(n207), .C(n90), .D(n177), .Z(n296) );
  IV U158 ( .A(r2b_raddr[7]), .Z(n207) );
  AO4 U159 ( .A(n179), .B(n208), .C(n88), .D(n177), .Z(n295) );
  IV U160 ( .A(r2b_raddr[8]), .Z(n208) );
  AO4 U161 ( .A(n179), .B(n209), .C(n86), .D(n177), .Z(n294) );
  IV U162 ( .A(r2b_raddr[9]), .Z(n209) );
  AO4 U163 ( .A(n179), .B(n210), .C(n2), .D(n177), .Z(n293) );
  AO4 U164 ( .A(n179), .B(n211), .C(n97), .D(n177), .Z(n292) );
  AO4 U165 ( .A(n179), .B(n212), .C(n1), .D(n177), .Z(n291) );
  AO4 U166 ( .A(n131), .B(n177), .C(n213), .D(n179), .Z(n290) );
  IV U167 ( .A(r2b_caddr[1]), .Z(n213) );
  AO4 U168 ( .A(n130), .B(n177), .C(n214), .D(n179), .Z(n289) );
  IV U169 ( .A(r2b_caddr[2]), .Z(n214) );
  AO4 U170 ( .A(n129), .B(n177), .C(n215), .D(n179), .Z(n288) );
  IV U171 ( .A(r2b_caddr[3]), .Z(n215) );
  AO4 U172 ( .A(n128), .B(n177), .C(n216), .D(n179), .Z(n287) );
  IV U173 ( .A(r2b_caddr[4]), .Z(n216) );
  AO4 U174 ( .A(n127), .B(n177), .C(n217), .D(n179), .Z(n286) );
  IV U175 ( .A(r2b_caddr[5]), .Z(n217) );
  AO4 U176 ( .A(n126), .B(n177), .C(n218), .D(n179), .Z(n285) );
  IV U177 ( .A(r2b_caddr[6]), .Z(n218) );
  AO4 U178 ( .A(n125), .B(n177), .C(n219), .D(n179), .Z(n284) );
  IV U179 ( .A(r2b_caddr[7]), .Z(n219) );
  AO4 U180 ( .A(n124), .B(n177), .C(n220), .D(n179), .Z(n283) );
  IV U181 ( .A(r2b_caddr[8]), .Z(n220) );
  AO4 U182 ( .A(n123), .B(n177), .C(n221), .D(n179), .Z(n282) );
  IV U183 ( .A(r2b_caddr[9]), .Z(n221) );
  AO4 U184 ( .A(n177), .B(n134), .C(n222), .D(n179), .Z(n281) );
  IV U185 ( .A(r2b_caddr[10]), .Z(n222) );
  AO4 U186 ( .A(n133), .B(n177), .C(n223), .D(n179), .Z(n280) );
  IV U187 ( .A(r2b_caddr[11]), .Z(n223) );
  AO4 U188 ( .A(n177), .B(n132), .C(n224), .D(n179), .Z(n279) );
  IV U189 ( .A(r2b_caddr[12]), .Z(n224) );
  AO4 U190 ( .A(n177), .B(n138), .C(n225), .D(n179), .Z(n278) );
  IV U191 ( .A(sdr_dma_last), .Z(n225) );
  ND2 U192 ( .A(reset_n), .B(n179), .Z(n177) );
  MUX21L U193 ( .A(n198), .B(n99), .S(n226), .Z(b2x_wrap) );
  IV U194 ( .A(r2b_wrap), .Z(n198) );
  MUX21L U195 ( .A(n180), .B(n100), .S(n226), .Z(b2x_start) );
  IV U196 ( .A(r2b_start), .Z(n180) );
  AO4 U197 ( .A(n227), .B(n89), .C(n338), .D(n228), .Z(b2x_req) );
  ND2 U198 ( .A(tras_ok), .B(n229), .Z(n228) );
  AO2 U199 ( .A(n230), .B(n231), .C(x2b_act_ok_r_0_), .D(n168), .Z(n227) );
  MUX21L U200 ( .A(n341), .B(n340), .S(n121), .Z(n231) );
  NR2 U201 ( .A(n232), .B(n339), .Z(n230) );
  MUX21L U202 ( .A(n195), .B(n101), .S(n226), .Z(b2x_len[9]) );
  IV U203 ( .A(r2b_len[9]), .Z(n195) );
  MUX21L U204 ( .A(n194), .B(n102), .S(n226), .Z(b2x_len[8]) );
  IV U205 ( .A(r2b_len[8]), .Z(n194) );
  MUX21L U206 ( .A(n193), .B(n103), .S(n226), .Z(b2x_len[7]) );
  IV U207 ( .A(r2b_len[7]), .Z(n193) );
  MUX21L U208 ( .A(n192), .B(n104), .S(n226), .Z(b2x_len[6]) );
  IV U209 ( .A(r2b_len[6]), .Z(n192) );
  MUX21L U210 ( .A(n191), .B(n105), .S(n226), .Z(b2x_len[5]) );
  IV U211 ( .A(r2b_len[5]), .Z(n191) );
  MUX21L U212 ( .A(n190), .B(n106), .S(n226), .Z(b2x_len[4]) );
  IV U213 ( .A(r2b_len[4]), .Z(n190) );
  MUX21L U214 ( .A(n189), .B(n107), .S(n226), .Z(b2x_len[3]) );
  IV U215 ( .A(r2b_len[3]), .Z(n189) );
  MUX21L U216 ( .A(n188), .B(n108), .S(n226), .Z(b2x_len[2]) );
  IV U217 ( .A(r2b_len[2]), .Z(n188) );
  MUX21L U218 ( .A(n187), .B(n109), .S(n226), .Z(b2x_len[1]) );
  IV U219 ( .A(r2b_len[1]), .Z(n187) );
  MUX21L U220 ( .A(n197), .B(n110), .S(n226), .Z(b2x_len[11]) );
  IV U221 ( .A(r2b_len[11]), .Z(n197) );
  MUX21L U222 ( .A(n196), .B(n111), .S(n226), .Z(b2x_len[10]) );
  IV U223 ( .A(r2b_len[10]), .Z(n196) );
  MUX21L U224 ( .A(n186), .B(n112), .S(n226), .Z(b2x_len[0]) );
  IV U225 ( .A(r2b_len[0]), .Z(n186) );
  MUX21L U226 ( .A(n181), .B(n113), .S(n226), .Z(b2x_last) );
  IV U227 ( .A(r2b_last), .Z(n181) );
  MUX21L U228 ( .A(n185), .B(n117), .S(n226), .Z(b2x_id[3]) );
  IV U229 ( .A(r2b_req_id[3]), .Z(n185) );
  MUX21L U230 ( .A(n184), .B(n118), .S(n226), .Z(b2x_id[2]) );
  IV U231 ( .A(r2b_req_id[2]), .Z(n184) );
  MUX21L U232 ( .A(n183), .B(n119), .S(n226), .Z(b2x_id[1]) );
  IV U233 ( .A(r2b_req_id[1]), .Z(n183) );
  MUX21L U234 ( .A(n182), .B(n120), .S(n226), .Z(b2x_id[0]) );
  IV U235 ( .A(r2b_req_id[0]), .Z(n182) );
  AO4 U236 ( .A(n232), .B(n123), .C(n233), .D(n86), .Z(b2x_addr[9]) );
  AO4 U237 ( .A(n232), .B(n124), .C(n233), .D(n88), .Z(b2x_addr[8]) );
  AO4 U238 ( .A(n232), .B(n125), .C(n233), .D(n90), .Z(b2x_addr[7]) );
  AO4 U239 ( .A(n232), .B(n126), .C(n233), .D(n91), .Z(b2x_addr[6]) );
  AO4 U240 ( .A(n232), .B(n127), .C(n233), .D(n92), .Z(b2x_addr[5]) );
  AO4 U241 ( .A(n232), .B(n128), .C(n233), .D(n93), .Z(b2x_addr[4]) );
  AO4 U242 ( .A(n232), .B(n129), .C(n233), .D(n94), .Z(b2x_addr[3]) );
  AO4 U243 ( .A(n232), .B(n130), .C(n233), .D(n95), .Z(b2x_addr[2]) );
  AO4 U244 ( .A(n232), .B(n131), .C(n233), .D(n96), .Z(b2x_addr[1]) );
  AO4 U245 ( .A(n232), .B(n132), .C(n165), .D(n1), .Z(b2x_addr[12]) );
  AO4 U246 ( .A(n232), .B(n133), .C(n233), .D(n97), .Z(b2x_addr[11]) );
  AO4 U247 ( .A(n232), .B(n134), .C(n165), .D(n2), .Z(b2x_addr[10]) );
  IV U248 ( .A(n168), .Z(n165) );
  AO4 U249 ( .A(n232), .B(n135), .C(n233), .D(n98), .Z(b2x_addr[0]) );
  AO6 U250 ( .A(n234), .B(n235), .C(n161), .Z(N83) );
  MUX21L U251 ( .A(n236), .B(n237), .S(n238), .Z(n234) );
  AN3 U252 ( .A(n342), .B(n163), .C(n239), .Z(n236) );
  AO4 U253 ( .A(n179), .B(n240), .C(n241), .D(n161), .Z(N82) );
  AO1 U254 ( .A(n239), .B(n242), .C(n243), .D(n168), .Z(n241) );
  AO4 U255 ( .A(n238), .B(n244), .C(n115), .D(n235), .Z(n243) );
  ND2 U256 ( .A(x2b_ack), .B(n163), .Z(n242) );
  IV U257 ( .A(x2b_refresh), .Z(n163) );
  AO7 U258 ( .A(n245), .B(n161), .C(n179), .Z(N81) );
  ND2 U259 ( .A(b2r_ack), .B(reset_n), .Z(n179) );
  NR2 U260 ( .A(n246), .B(n226), .Z(b2r_ack) );
  IV U261 ( .A(r2b_req), .Z(n246) );
  IV U262 ( .A(n247), .Z(n245) );
  AO7 U263 ( .A(n235), .B(n116), .C(n248), .Z(n247) );
  MUX21L U264 ( .A(n168), .B(n249), .S(n238), .Z(n248) );
  AO7 U265 ( .A(n232), .B(x2b_refresh), .C(n244), .Z(n249) );
  ND3 U266 ( .A(n226), .B(n232), .C(n233), .Z(n235) );
  NR2 U267 ( .A(n229), .B(n168), .Z(n233) );
  ND2 U268 ( .A(n162), .B(n244), .Z(n229) );
  ND3 U269 ( .A(n115), .B(n85), .C(n114), .Z(n244) );
  IV U270 ( .A(n237), .Z(n162) );
  NR3 U271 ( .A(n122), .B(n114), .C(n85), .Z(n237) );
  AO4 U272 ( .A(n139), .B(n250), .C(n251), .D(n161), .Z(N80) );
  AO11 U273 ( .A(trp_delay[3]), .B(n252), .C(n253), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n254), .Z(n251) );
  AN2 U274 ( .A(n255), .B(timer0[2]), .Z(n253) );
  AO4 U275 ( .A(n140), .B(n250), .C(n256), .D(n161), .Z(N79) );
  AO11 U276 ( .A(trp_delay[2]), .B(n252), .C(n257), .D(n255), .E(trcd_delay[2]), .F(n254), .Z(n256) );
  NR2 U277 ( .A(timer0[2]), .B(n258), .Z(n257) );
  ND3 U278 ( .A(reset_n), .B(n258), .C(n255), .Z(n250) );
  AO6 U279 ( .A(n259), .B(n260), .C(n161), .Z(N78) );
  ND2 U280 ( .A(trp_delay[1]), .B(n252), .Z(n260) );
  AO2 U281 ( .A(n255), .B(n261), .C(trcd_delay[1]), .D(n254), .Z(n259) );
  AO7 U282 ( .A(n136), .B(n84), .C(n258), .Z(n261) );
  AO6 U283 ( .A(n262), .B(n263), .C(n161), .Z(N77) );
  ND2 U284 ( .A(trp_delay[0]), .B(n252), .Z(n263) );
  AO2 U285 ( .A(n255), .B(n84), .C(trcd_delay[0]), .D(n254), .Z(n262) );
  NR3 U286 ( .A(n252), .B(n254), .C(n264), .Z(n255) );
  IV U287 ( .A(n265), .Z(n264) );
  EON1 U288 ( .A(n266), .B(n157), .C(tras_delay[2]), .D(n156), .Z(N75) );
  AO6 U289 ( .A(tras_cntr[2]), .B(n267), .C(n158), .Z(n266) );
  EON1 U290 ( .A(n268), .B(n157), .C(tras_delay[1]), .D(n156), .Z(N74) );
  AO6 U291 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .C(n269), .Z(n268) );
  EON1 U292 ( .A(tras_cntr[0]), .B(n157), .C(tras_delay[0]), .D(n156), .Z(N73)
         );
  NR2 U293 ( .A(n159), .B(n161), .Z(n156) );
  AO3 U294 ( .A(tras_cntr[3]), .B(n270), .C(n159), .D(reset_n), .Z(n157) );
  IV U295 ( .A(n254), .Z(n159) );
  AN2 U296 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U297 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U298 ( .A(n161), .B(tras_cntr[3]), .C(n270), .Z(N40) );
  IV U299 ( .A(n158), .Z(n270) );
  NR2 U300 ( .A(n267), .B(tras_cntr[2]), .Z(n158) );
  IV U301 ( .A(n269), .Z(n267) );
  NR2 U302 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .Z(n269) );
  NR4 U303 ( .A(n254), .B(n252), .C(n161), .D(n265), .Z(N39) );
  OR3 U304 ( .A(timer0[2]), .B(timer0[3]), .C(n258), .Z(n265) );
  ND2 U305 ( .A(n136), .B(n84), .Z(n258) );
  AN3 U306 ( .A(x2b_ack), .B(n87), .C(n344), .Z(n252) );
  NR3 U307 ( .A(b2x_cmd[1]), .B(n344), .C(n238), .Z(n254) );
  IV U308 ( .A(x2b_ack), .Z(n238) );
  AN2 U309 ( .A(n271), .B(reset_n), .Z(N38) );
  AO7 U310 ( .A(n240), .B(n226), .C(n232), .Z(n271) );
  IV U311 ( .A(n239), .Z(n232) );
  NR2 U312 ( .A(n272), .B(n161), .Z(N37) );
  IV U313 ( .A(reset_n), .Z(n161) );
  AO1 U314 ( .A(n239), .B(n121), .C(n168), .D(n273), .Z(n272) );
  NR3 U315 ( .A(n240), .B(n226), .C(n199), .Z(n273) );
  IV U316 ( .A(r2b_write), .Z(n199) );
  ND3 U317 ( .A(n116), .B(n115), .C(n114), .Z(n226) );
  ND2 U318 ( .A(n274), .B(n275), .Z(n240) );
  NR4 U319 ( .A(n276), .B(n277), .C(n325), .D(n326), .Z(n275) );
  EN U320 ( .A(n354), .B(r2b_raddr[8]), .Z(n326) );
  EN U321 ( .A(n352), .B(r2b_raddr[9]), .Z(n325) );
  EN U322 ( .A(n353), .B(r2b_raddr[7]), .Z(n277) );
  ND4 U323 ( .A(n327), .B(n328), .C(n329), .D(n141), .Z(n276) );
  EN U324 ( .A(n211), .B(n357), .Z(n329) );
  IV U325 ( .A(r2b_raddr[11]), .Z(n211) );
  EN U326 ( .A(n210), .B(n356), .Z(n328) );
  IV U327 ( .A(r2b_raddr[10]), .Z(n210) );
  EN U328 ( .A(n212), .B(n355), .Z(n327) );
  IV U329 ( .A(r2b_raddr[12]), .Z(n212) );
  NR4 U330 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n274) );
  EN U331 ( .A(n347), .B(r2b_raddr[5]), .Z(n333) );
  EN U332 ( .A(n345), .B(r2b_raddr[1]), .Z(n332) );
  EN U333 ( .A(n346), .B(r2b_raddr[4]), .Z(n331) );
  ND4 U334 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n330) );
  EN U335 ( .A(n203), .B(n351), .Z(n337) );
  IV U336 ( .A(r2b_raddr[3]), .Z(n203) );
  EN U337 ( .A(n202), .B(n350), .Z(n336) );
  IV U338 ( .A(r2b_raddr[2]), .Z(n202) );
  EN U339 ( .A(n200), .B(n349), .Z(n335) );
  IV U340 ( .A(r2b_raddr[0]), .Z(n200) );
  EN U341 ( .A(n206), .B(n348), .Z(n334) );
  IV U342 ( .A(r2b_raddr[6]), .Z(n206) );
  AN3 U343 ( .A(n116), .B(n122), .C(n114), .Z(n168) );
  AN3 U344 ( .A(n122), .B(n85), .C(n114), .Z(n239) );
  AN2 U345 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U346 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U347 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_1 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, 
        test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [11:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [11:0] b2x_len;
  output [1:0] b2x_cmd;
  output [12:0] bank_row;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         sdr_dma_last, x2b_ack, xfr_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok,
         x2b_rdok, x2b_wrok, test_si4, test_si3, test_si2, test_si1, test_se;
  output b2r_ack, b2x_req, b2x_start, b2x_last, b2x_wrap, tras_ok, test_so3,
         test_so2, test_so1;
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42, N73,
         N74, N75, N77, N78, N79, N80, N81, N82, N83, n1, n2, n84, n85, n86,
         n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n509, n510,
         n511, n512, n513, n514, n515, n516, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560;
  wire   [3:2] timer0;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n142), .Q(n511), .QN(n338) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n510), .TE(test_se), .CP(n148), .Q(n509), 
        .QN(n340) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n509), .TE(test_se), .CP(n142), .Q(test_so3), .QN(n339) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n511), .TE(test_se), .CP(n148), .Q(n510), 
        .QN(n341) );
  FD1S bank_row_reg_0_ ( .D(n360), .TI(b2x_cmd[1]), .TE(test_se), .CP(n146), 
        .Q(bank_row[0]), .QN(n349) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n85), .TE(test_se), .CP(n142), .Q(n122), 
        .QN(n422) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n142), 
        .Q(n85), .QN(n421) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n122), .TE(test_se), .CP(n142), .Q(n560), 
        .QN(n423) );
  FD1S l_write_reg ( .D(n393), .TI(n515), .TE(test_se), .CP(n144), .Q(n121), 
        .QN(n420) );
  FD1S bank_row_reg_10_ ( .D(n372), .TI(test_si2), .TE(test_se), .CP(n146), 
        .Q(bank_row[10]), .QN(n356) );
  FD1S bank_row_reg_12_ ( .D(n371), .TI(bank_row[11]), .TE(test_se), .CP(n146), 
        .Q(bank_row[12]), .QN(n355) );
  FD1S bank_row_reg_9_ ( .D(n370), .TI(bank_row[8]), .TE(test_se), .CP(n147), 
        .Q(bank_row[9]), .QN(n352) );
  FD1S bank_row_reg_8_ ( .D(n369), .TI(bank_row[7]), .TE(test_se), .CP(n147), 
        .Q(bank_row[8]), .QN(n354) );
  FD1S bank_row_reg_7_ ( .D(n368), .TI(bank_row[6]), .TE(test_se), .CP(n147), 
        .Q(bank_row[7]), .QN(n353) );
  FD1S bank_row_reg_6_ ( .D(n367), .TI(bank_row[5]), .TE(test_se), .CP(n147), 
        .Q(bank_row[6]), .QN(n348) );
  FD1S bank_row_reg_5_ ( .D(n366), .TI(bank_row[4]), .TE(test_se), .CP(n147), 
        .Q(bank_row[5]), .QN(n347) );
  FD1S bank_row_reg_4_ ( .D(n365), .TI(bank_row[3]), .TE(test_se), .CP(n146), 
        .Q(bank_row[4]), .QN(n346) );
  FD1S bank_row_reg_3_ ( .D(n364), .TI(bank_row[2]), .TE(test_se), .CP(n146), 
        .Q(bank_row[3]), .QN(n351) );
  FD1S bank_row_reg_2_ ( .D(n363), .TI(bank_row[1]), .TE(test_se), .CP(n146), 
        .Q(bank_row[2]), .QN(n350) );
  FD1S bank_row_reg_1_ ( .D(n362), .TI(bank_row[0]), .TE(test_se), .CP(n146), 
        .Q(bank_row[1]), .QN(n345) );
  FD1S bank_row_reg_11_ ( .D(n361), .TI(bank_row[10]), .TE(test_se), .CP(n146), 
        .Q(bank_row[11]), .QN(n357) );
  FD1S bank_valid_reg ( .D(n359), .TI(n560), .TE(test_se), .CP(n147), .Q(n141), 
        .QN(n343) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n148), 
        .Q(n512), .QN(n424) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n148), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n373), .TI(n141), .TE(test_se), .CP(n146), .Q(n559), 
        .QN(n135) );
  FD1S l_caddr_reg_12_ ( .D(n418), .TI(n548), .TE(test_se), .CP(n142), .Q(n547), .QN(n132) );
  FD1S l_caddr_reg_11_ ( .D(n417), .TI(n549), .TE(test_se), .CP(n142), .Q(n548), .QN(n133) );
  FD1S l_caddr_reg_10_ ( .D(n416), .TI(n550), .TE(test_se), .CP(n142), .Q(n549), .QN(n134) );
  FD1S l_caddr_reg_9_ ( .D(n415), .TI(n551), .TE(test_se), .CP(n142), .Q(n550), 
        .QN(n123) );
  FD1S l_caddr_reg_8_ ( .D(n414), .TI(n552), .TE(test_se), .CP(n142), .Q(n551), 
        .QN(n124) );
  FD1S l_caddr_reg_7_ ( .D(n413), .TI(n553), .TE(test_se), .CP(n142), .Q(n552), 
        .QN(n125) );
  FD1S l_caddr_reg_6_ ( .D(n412), .TI(n554), .TE(test_se), .CP(n143), .Q(n553), 
        .QN(n126) );
  FD1S l_caddr_reg_5_ ( .D(n411), .TI(n555), .TE(test_se), .CP(n143), .Q(n554), 
        .QN(n127) );
  FD1S l_caddr_reg_4_ ( .D(n410), .TI(n556), .TE(test_se), .CP(n143), .Q(n555), 
        .QN(n128) );
  FD1S l_caddr_reg_3_ ( .D(n409), .TI(n557), .TE(test_se), .CP(n143), .Q(n556), 
        .QN(n129) );
  FD1S l_caddr_reg_2_ ( .D(n408), .TI(n558), .TE(test_se), .CP(n143), .Q(n557), 
        .QN(n130) );
  FD1S l_caddr_reg_1_ ( .D(n407), .TI(n559), .TE(test_se), .CP(n143), .Q(n558), 
        .QN(n131) );
  FD1S l_raddr_reg_12_ ( .D(n406), .TI(n518), .TE(test_se), .CP(n143), .Q(
        test_so2), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n405), .TI(n519), .TE(test_se), .CP(n143), .Q(n518), .QN(n97) );
  FD1S l_raddr_reg_10_ ( .D(n404), .TI(n520), .TE(test_se), .CP(n143), .Q(n519), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n403), .TI(n521), .TE(test_se), .CP(n143), .Q(n520), 
        .QN(n86) );
  FD1S l_raddr_reg_8_ ( .D(n402), .TI(n522), .TE(test_se), .CP(n143), .Q(n521), 
        .QN(n88) );
  FD1S l_raddr_reg_7_ ( .D(n401), .TI(n523), .TE(test_se), .CP(n143), .Q(n522), 
        .QN(n90) );
  FD1S l_raddr_reg_6_ ( .D(n400), .TI(n524), .TE(test_se), .CP(n144), .Q(n523), 
        .QN(n91) );
  FD1S l_raddr_reg_5_ ( .D(n399), .TI(n525), .TE(test_se), .CP(n144), .Q(n524), 
        .QN(n92) );
  FD1S l_raddr_reg_4_ ( .D(n398), .TI(n526), .TE(test_se), .CP(n144), .Q(n525), 
        .QN(n93) );
  FD1S l_raddr_reg_3_ ( .D(n397), .TI(n527), .TE(test_se), .CP(n144), .Q(n526), 
        .QN(n94) );
  FD1S l_raddr_reg_2_ ( .D(n396), .TI(n528), .TE(test_se), .CP(n144), .Q(n527), 
        .QN(n95) );
  FD1S l_raddr_reg_1_ ( .D(n395), .TI(n529), .TE(test_se), .CP(n144), .Q(n528), 
        .QN(n96) );
  FD1S l_raddr_reg_0_ ( .D(n394), .TI(n530), .TE(test_se), .CP(n144), .Q(n529), 
        .QN(n98) );
  FD1S l_wrap_reg ( .D(n392), .TI(n516), .TE(test_se), .CP(n144), .Q(n515), 
        .QN(n99) );
  FD1S l_len_reg_11_ ( .D(n391), .TI(n531), .TE(test_se), .CP(n144), .Q(n530), 
        .QN(n110) );
  FD1S l_len_reg_10_ ( .D(n390), .TI(n532), .TE(test_se), .CP(n144), .Q(n531), 
        .QN(n111) );
  FD1S l_len_reg_9_ ( .D(n389), .TI(n533), .TE(test_se), .CP(n144), .Q(n532), 
        .QN(n101) );
  FD1S l_len_reg_8_ ( .D(n388), .TI(n534), .TE(test_se), .CP(n145), .Q(n533), 
        .QN(n102) );
  FD1S l_len_reg_7_ ( .D(n387), .TI(n535), .TE(test_se), .CP(n145), .Q(n534), 
        .QN(n103) );
  FD1S l_len_reg_6_ ( .D(n386), .TI(n536), .TE(test_se), .CP(n145), .Q(n535), 
        .QN(n104) );
  FD1S l_len_reg_5_ ( .D(n385), .TI(n537), .TE(test_se), .CP(n145), .Q(n536), 
        .QN(n105) );
  FD1S l_len_reg_4_ ( .D(n384), .TI(n538), .TE(test_se), .CP(n145), .Q(n537), 
        .QN(n106) );
  FD1S l_len_reg_3_ ( .D(n383), .TI(n539), .TE(test_se), .CP(n145), .Q(n538), 
        .QN(n107) );
  FD1S l_len_reg_2_ ( .D(n382), .TI(n540), .TE(test_se), .CP(n145), .Q(n539), 
        .QN(n108) );
  FD1S l_len_reg_1_ ( .D(n381), .TI(n541), .TE(test_se), .CP(n145), .Q(n540), 
        .QN(n109) );
  FD1S l_len_reg_0_ ( .D(n380), .TI(test_si3), .TE(test_se), .CP(n145), .Q(
        n541), .QN(n112) );
  FD1S l_id_reg_3_ ( .D(n379), .TI(n544), .TE(test_se), .CP(n145), .Q(n543), 
        .QN(n117) );
  FD1S l_id_reg_2_ ( .D(n378), .TI(n545), .TE(test_se), .CP(n145), .Q(n544), 
        .QN(n118) );
  FD1S l_id_reg_1_ ( .D(n377), .TI(n546), .TE(test_se), .CP(n145), .Q(n545), 
        .QN(n119) );
  FD1S l_id_reg_0_ ( .D(n376), .TI(n547), .TE(test_se), .CP(n146), .Q(n546), 
        .QN(n120) );
  FD1S l_last_reg ( .D(n375), .TI(n543), .TE(test_se), .CP(n146), .Q(test_so1), 
        .QN(n113) );
  FD1S l_start_reg ( .D(n374), .TI(n342), .TE(test_se), .CP(n146), .Q(n516), 
        .QN(n100) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n147), 
        .Q(b2x_cmd[1]), .QN(n425) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n147), .Q(
        b2x_cmd[0]), .QN(n344) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n121), .TE(test_se), .CP(n148), .Q(n514), 
        .QN(n84) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n514), .TE(test_se), .CP(n148), .Q(n513), 
        .QN(n136) );
  FD1S l_sdr_dma_last_reg ( .D(n419), .TI(test_si4), .TE(test_se), .CP(n142), 
        .Q(n342), .QN(n138) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n148), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n512), .TE(test_se), .CP(n147), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n358), .TI(tras_cntr[2]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[3]) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n148), .Q(
        timer0[3]), .QN(n139) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n513), .TE(test_se), .CP(n148), .Q(
        timer0[2]), .QN(n140) );
  IVP U6 ( .A(n149), .Z(n147) );
  IVP U85 ( .A(n150), .Z(n145) );
  IVP U86 ( .A(n150), .Z(n144) );
  IVP U87 ( .A(n150), .Z(n143) );
  IVP U88 ( .A(n149), .Z(n146) );
  IVP U89 ( .A(n149), .Z(n148) );
  IVP U90 ( .A(n152), .Z(n150) );
  IVP U91 ( .A(n152), .Z(n149) );
  IVP U92 ( .A(n151), .Z(n142) );
  IVP U93 ( .A(n152), .Z(n151) );
  IVP U94 ( .A(n153), .Z(n152) );
  IVP U95 ( .A(clk), .Z(n153) );
  IV U96 ( .A(n154), .Z(n358) );
  AO2 U97 ( .A(tras_cntr[3]), .B(n155), .C(tras_delay[3]), .D(n156), .Z(n154)
         );
  NR2 U98 ( .A(n157), .B(n158), .Z(n155) );
  AO1 U99 ( .A(n343), .B(n159), .C(n160), .D(n161), .Z(n359) );
  ND2 U100 ( .A(n162), .B(n163), .Z(n160) );
  MUX21L U101 ( .A(n164), .B(n349), .S(n165), .Z(n360) );
  IV U102 ( .A(b2x_addr[0]), .Z(n164) );
  MUX21L U103 ( .A(n166), .B(n357), .S(n165), .Z(n361) );
  IV U104 ( .A(b2x_addr[11]), .Z(n166) );
  MUX21L U105 ( .A(n345), .B(n167), .S(n168), .Z(n362) );
  IV U106 ( .A(b2x_addr[1]), .Z(n167) );
  MUX21L U107 ( .A(n169), .B(n350), .S(n165), .Z(n363) );
  IV U108 ( .A(b2x_addr[2]), .Z(n169) );
  MUX21L U109 ( .A(n170), .B(n351), .S(n165), .Z(n364) );
  IV U110 ( .A(b2x_addr[3]), .Z(n170) );
  MUX21L U111 ( .A(n346), .B(n171), .S(n168), .Z(n365) );
  IV U112 ( .A(b2x_addr[4]), .Z(n171) );
  MUX21L U113 ( .A(n347), .B(n172), .S(n168), .Z(n366) );
  IV U114 ( .A(b2x_addr[5]), .Z(n172) );
  MUX21L U115 ( .A(n173), .B(n348), .S(n165), .Z(n367) );
  IV U116 ( .A(b2x_addr[6]), .Z(n173) );
  MUX21L U117 ( .A(n353), .B(n174), .S(n168), .Z(n368) );
  IV U118 ( .A(b2x_addr[7]), .Z(n174) );
  MUX21L U119 ( .A(n354), .B(n175), .S(n168), .Z(n369) );
  IV U120 ( .A(b2x_addr[8]), .Z(n175) );
  MUX21L U121 ( .A(n352), .B(n176), .S(n168), .Z(n370) );
  IV U122 ( .A(b2x_addr[9]), .Z(n176) );
  MUX21L U123 ( .A(n1), .B(n355), .S(n165), .Z(n371) );
  MUX21L U124 ( .A(n2), .B(n356), .S(n165), .Z(n372) );
  AO4 U125 ( .A(n135), .B(n177), .C(n178), .D(n179), .Z(n373) );
  IV U126 ( .A(r2b_caddr[0]), .Z(n178) );
  AO4 U127 ( .A(n179), .B(n180), .C(n177), .D(n100), .Z(n374) );
  AO4 U128 ( .A(n179), .B(n181), .C(n177), .D(n113), .Z(n375) );
  AO4 U129 ( .A(n179), .B(n182), .C(n177), .D(n120), .Z(n376) );
  AO4 U130 ( .A(n179), .B(n183), .C(n177), .D(n119), .Z(n377) );
  AO4 U131 ( .A(n179), .B(n184), .C(n177), .D(n118), .Z(n378) );
  AO4 U132 ( .A(n179), .B(n185), .C(n177), .D(n117), .Z(n379) );
  AO4 U133 ( .A(n179), .B(n186), .C(n177), .D(n112), .Z(n380) );
  AO4 U134 ( .A(n179), .B(n187), .C(n177), .D(n109), .Z(n381) );
  AO4 U135 ( .A(n179), .B(n188), .C(n177), .D(n108), .Z(n382) );
  AO4 U136 ( .A(n179), .B(n189), .C(n177), .D(n107), .Z(n383) );
  AO4 U137 ( .A(n179), .B(n190), .C(n177), .D(n106), .Z(n384) );
  AO4 U138 ( .A(n179), .B(n191), .C(n177), .D(n105), .Z(n385) );
  AO4 U139 ( .A(n179), .B(n192), .C(n177), .D(n104), .Z(n386) );
  AO4 U140 ( .A(n179), .B(n193), .C(n177), .D(n103), .Z(n387) );
  AO4 U141 ( .A(n179), .B(n194), .C(n177), .D(n102), .Z(n388) );
  AO4 U142 ( .A(n179), .B(n195), .C(n177), .D(n101), .Z(n389) );
  AO4 U143 ( .A(n179), .B(n196), .C(n177), .D(n111), .Z(n390) );
  AO4 U144 ( .A(n179), .B(n197), .C(n177), .D(n110), .Z(n391) );
  AO4 U145 ( .A(n179), .B(n198), .C(n177), .D(n99), .Z(n392) );
  AO4 U146 ( .A(n179), .B(n199), .C(n420), .D(n177), .Z(n393) );
  AO4 U147 ( .A(n179), .B(n200), .C(n98), .D(n177), .Z(n394) );
  AO4 U148 ( .A(n179), .B(n201), .C(n96), .D(n177), .Z(n395) );
  IV U149 ( .A(r2b_raddr[1]), .Z(n201) );
  AO4 U150 ( .A(n179), .B(n202), .C(n95), .D(n177), .Z(n396) );
  AO4 U151 ( .A(n179), .B(n203), .C(n94), .D(n177), .Z(n397) );
  AO4 U152 ( .A(n179), .B(n204), .C(n93), .D(n177), .Z(n398) );
  IV U153 ( .A(r2b_raddr[4]), .Z(n204) );
  AO4 U154 ( .A(n179), .B(n205), .C(n92), .D(n177), .Z(n399) );
  IV U155 ( .A(r2b_raddr[5]), .Z(n205) );
  AO4 U156 ( .A(n179), .B(n206), .C(n91), .D(n177), .Z(n400) );
  AO4 U157 ( .A(n179), .B(n207), .C(n90), .D(n177), .Z(n401) );
  IV U158 ( .A(r2b_raddr[7]), .Z(n207) );
  AO4 U159 ( .A(n179), .B(n208), .C(n88), .D(n177), .Z(n402) );
  IV U160 ( .A(r2b_raddr[8]), .Z(n208) );
  AO4 U161 ( .A(n179), .B(n209), .C(n86), .D(n177), .Z(n403) );
  IV U162 ( .A(r2b_raddr[9]), .Z(n209) );
  AO4 U163 ( .A(n179), .B(n210), .C(n2), .D(n177), .Z(n404) );
  AO4 U164 ( .A(n179), .B(n211), .C(n97), .D(n177), .Z(n405) );
  AO4 U165 ( .A(n179), .B(n212), .C(n1), .D(n177), .Z(n406) );
  AO4 U166 ( .A(n131), .B(n177), .C(n213), .D(n179), .Z(n407) );
  IV U167 ( .A(r2b_caddr[1]), .Z(n213) );
  AO4 U168 ( .A(n130), .B(n177), .C(n214), .D(n179), .Z(n408) );
  IV U169 ( .A(r2b_caddr[2]), .Z(n214) );
  AO4 U170 ( .A(n129), .B(n177), .C(n215), .D(n179), .Z(n409) );
  IV U171 ( .A(r2b_caddr[3]), .Z(n215) );
  AO4 U172 ( .A(n128), .B(n177), .C(n216), .D(n179), .Z(n410) );
  IV U173 ( .A(r2b_caddr[4]), .Z(n216) );
  AO4 U174 ( .A(n127), .B(n177), .C(n217), .D(n179), .Z(n411) );
  IV U175 ( .A(r2b_caddr[5]), .Z(n217) );
  AO4 U176 ( .A(n126), .B(n177), .C(n218), .D(n179), .Z(n412) );
  IV U177 ( .A(r2b_caddr[6]), .Z(n218) );
  AO4 U178 ( .A(n125), .B(n177), .C(n219), .D(n179), .Z(n413) );
  IV U179 ( .A(r2b_caddr[7]), .Z(n219) );
  AO4 U180 ( .A(n124), .B(n177), .C(n220), .D(n179), .Z(n414) );
  IV U181 ( .A(r2b_caddr[8]), .Z(n220) );
  AO4 U182 ( .A(n123), .B(n177), .C(n221), .D(n179), .Z(n415) );
  IV U183 ( .A(r2b_caddr[9]), .Z(n221) );
  AO4 U184 ( .A(n177), .B(n134), .C(n222), .D(n179), .Z(n416) );
  IV U185 ( .A(r2b_caddr[10]), .Z(n222) );
  AO4 U186 ( .A(n133), .B(n177), .C(n223), .D(n179), .Z(n417) );
  IV U187 ( .A(r2b_caddr[11]), .Z(n223) );
  AO4 U188 ( .A(n177), .B(n132), .C(n224), .D(n179), .Z(n418) );
  IV U189 ( .A(r2b_caddr[12]), .Z(n224) );
  AO4 U190 ( .A(n177), .B(n138), .C(n225), .D(n179), .Z(n419) );
  IV U191 ( .A(sdr_dma_last), .Z(n225) );
  ND2 U192 ( .A(reset_n), .B(n179), .Z(n177) );
  MUX21L U193 ( .A(n198), .B(n99), .S(n226), .Z(b2x_wrap) );
  IV U194 ( .A(r2b_wrap), .Z(n198) );
  MUX21L U195 ( .A(n180), .B(n100), .S(n226), .Z(b2x_start) );
  IV U196 ( .A(r2b_start), .Z(n180) );
  AO4 U197 ( .A(n227), .B(n424), .C(n338), .D(n228), .Z(b2x_req) );
  ND2 U198 ( .A(tras_ok), .B(n229), .Z(n228) );
  AO2 U199 ( .A(n230), .B(n231), .C(x2b_act_ok_r_0_), .D(n168), .Z(n227) );
  MUX21L U200 ( .A(n341), .B(n340), .S(n121), .Z(n231) );
  NR2 U201 ( .A(n232), .B(n339), .Z(n230) );
  MUX21L U202 ( .A(n195), .B(n101), .S(n226), .Z(b2x_len[9]) );
  IV U203 ( .A(r2b_len[9]), .Z(n195) );
  MUX21L U204 ( .A(n194), .B(n102), .S(n226), .Z(b2x_len[8]) );
  IV U205 ( .A(r2b_len[8]), .Z(n194) );
  MUX21L U206 ( .A(n193), .B(n103), .S(n226), .Z(b2x_len[7]) );
  IV U207 ( .A(r2b_len[7]), .Z(n193) );
  MUX21L U208 ( .A(n192), .B(n104), .S(n226), .Z(b2x_len[6]) );
  IV U209 ( .A(r2b_len[6]), .Z(n192) );
  MUX21L U210 ( .A(n191), .B(n105), .S(n226), .Z(b2x_len[5]) );
  IV U211 ( .A(r2b_len[5]), .Z(n191) );
  MUX21L U212 ( .A(n190), .B(n106), .S(n226), .Z(b2x_len[4]) );
  IV U213 ( .A(r2b_len[4]), .Z(n190) );
  MUX21L U214 ( .A(n189), .B(n107), .S(n226), .Z(b2x_len[3]) );
  IV U215 ( .A(r2b_len[3]), .Z(n189) );
  MUX21L U216 ( .A(n188), .B(n108), .S(n226), .Z(b2x_len[2]) );
  IV U217 ( .A(r2b_len[2]), .Z(n188) );
  MUX21L U218 ( .A(n187), .B(n109), .S(n226), .Z(b2x_len[1]) );
  IV U219 ( .A(r2b_len[1]), .Z(n187) );
  MUX21L U220 ( .A(n197), .B(n110), .S(n226), .Z(b2x_len[11]) );
  IV U221 ( .A(r2b_len[11]), .Z(n197) );
  MUX21L U222 ( .A(n196), .B(n111), .S(n226), .Z(b2x_len[10]) );
  IV U223 ( .A(r2b_len[10]), .Z(n196) );
  MUX21L U224 ( .A(n186), .B(n112), .S(n226), .Z(b2x_len[0]) );
  IV U225 ( .A(r2b_len[0]), .Z(n186) );
  MUX21L U226 ( .A(n181), .B(n113), .S(n226), .Z(b2x_last) );
  IV U227 ( .A(r2b_last), .Z(n181) );
  MUX21L U228 ( .A(n185), .B(n117), .S(n226), .Z(b2x_id[3]) );
  IV U229 ( .A(r2b_req_id[3]), .Z(n185) );
  MUX21L U230 ( .A(n184), .B(n118), .S(n226), .Z(b2x_id[2]) );
  IV U231 ( .A(r2b_req_id[2]), .Z(n184) );
  MUX21L U232 ( .A(n183), .B(n119), .S(n226), .Z(b2x_id[1]) );
  IV U233 ( .A(r2b_req_id[1]), .Z(n183) );
  MUX21L U234 ( .A(n182), .B(n120), .S(n226), .Z(b2x_id[0]) );
  IV U235 ( .A(r2b_req_id[0]), .Z(n182) );
  AO4 U236 ( .A(n232), .B(n123), .C(n233), .D(n86), .Z(b2x_addr[9]) );
  AO4 U237 ( .A(n232), .B(n124), .C(n233), .D(n88), .Z(b2x_addr[8]) );
  AO4 U238 ( .A(n232), .B(n125), .C(n233), .D(n90), .Z(b2x_addr[7]) );
  AO4 U239 ( .A(n232), .B(n126), .C(n233), .D(n91), .Z(b2x_addr[6]) );
  AO4 U240 ( .A(n232), .B(n127), .C(n233), .D(n92), .Z(b2x_addr[5]) );
  AO4 U241 ( .A(n232), .B(n128), .C(n233), .D(n93), .Z(b2x_addr[4]) );
  AO4 U242 ( .A(n232), .B(n129), .C(n233), .D(n94), .Z(b2x_addr[3]) );
  AO4 U243 ( .A(n232), .B(n130), .C(n233), .D(n95), .Z(b2x_addr[2]) );
  AO4 U244 ( .A(n232), .B(n131), .C(n233), .D(n96), .Z(b2x_addr[1]) );
  AO4 U245 ( .A(n232), .B(n132), .C(n165), .D(n1), .Z(b2x_addr[12]) );
  AO4 U246 ( .A(n232), .B(n133), .C(n233), .D(n97), .Z(b2x_addr[11]) );
  AO4 U247 ( .A(n232), .B(n134), .C(n165), .D(n2), .Z(b2x_addr[10]) );
  IV U248 ( .A(n168), .Z(n165) );
  AO4 U249 ( .A(n232), .B(n135), .C(n233), .D(n98), .Z(b2x_addr[0]) );
  AO6 U250 ( .A(n234), .B(n235), .C(n161), .Z(N83) );
  MUX21L U251 ( .A(n236), .B(n237), .S(n238), .Z(n234) );
  AN3 U252 ( .A(n342), .B(n163), .C(n239), .Z(n236) );
  AO4 U253 ( .A(n179), .B(n240), .C(n241), .D(n161), .Z(N82) );
  AO1 U254 ( .A(n239), .B(n242), .C(n243), .D(n168), .Z(n241) );
  AO4 U255 ( .A(n238), .B(n244), .C(n422), .D(n235), .Z(n243) );
  ND2 U256 ( .A(x2b_ack), .B(n163), .Z(n242) );
  IV U257 ( .A(x2b_refresh), .Z(n163) );
  AO7 U258 ( .A(n245), .B(n161), .C(n179), .Z(N81) );
  ND2 U259 ( .A(b2r_ack), .B(reset_n), .Z(n179) );
  NR2 U260 ( .A(n246), .B(n226), .Z(b2r_ack) );
  IV U261 ( .A(r2b_req), .Z(n246) );
  IV U262 ( .A(n247), .Z(n245) );
  AO7 U263 ( .A(n235), .B(n421), .C(n248), .Z(n247) );
  MUX21L U264 ( .A(n168), .B(n249), .S(n238), .Z(n248) );
  AO7 U265 ( .A(n232), .B(x2b_refresh), .C(n244), .Z(n249) );
  ND3 U266 ( .A(n226), .B(n232), .C(n233), .Z(n235) );
  NR2 U267 ( .A(n229), .B(n168), .Z(n233) );
  ND2 U268 ( .A(n162), .B(n244), .Z(n229) );
  ND3 U269 ( .A(n422), .B(n85), .C(n423), .Z(n244) );
  IV U270 ( .A(n237), .Z(n162) );
  NR3 U271 ( .A(n122), .B(n423), .C(n85), .Z(n237) );
  AO4 U272 ( .A(n139), .B(n250), .C(n251), .D(n161), .Z(N80) );
  AO11 U273 ( .A(trp_delay[3]), .B(n252), .C(n253), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n254), .Z(n251) );
  AN2 U274 ( .A(n255), .B(timer0[2]), .Z(n253) );
  AO4 U275 ( .A(n140), .B(n250), .C(n256), .D(n161), .Z(N79) );
  AO11 U276 ( .A(trp_delay[2]), .B(n252), .C(n257), .D(n255), .E(trcd_delay[2]), .F(n254), .Z(n256) );
  NR2 U277 ( .A(timer0[2]), .B(n258), .Z(n257) );
  ND3 U278 ( .A(reset_n), .B(n258), .C(n255), .Z(n250) );
  AO6 U279 ( .A(n259), .B(n260), .C(n161), .Z(N78) );
  ND2 U280 ( .A(trp_delay[1]), .B(n252), .Z(n260) );
  AO2 U281 ( .A(n255), .B(n261), .C(trcd_delay[1]), .D(n254), .Z(n259) );
  AO7 U282 ( .A(n136), .B(n84), .C(n258), .Z(n261) );
  AO6 U283 ( .A(n262), .B(n263), .C(n161), .Z(N77) );
  ND2 U284 ( .A(trp_delay[0]), .B(n252), .Z(n263) );
  AO2 U285 ( .A(n255), .B(n84), .C(trcd_delay[0]), .D(n254), .Z(n262) );
  NR3 U286 ( .A(n252), .B(n254), .C(n264), .Z(n255) );
  IV U287 ( .A(n265), .Z(n264) );
  EON1 U288 ( .A(n266), .B(n157), .C(tras_delay[2]), .D(n156), .Z(N75) );
  AO6 U289 ( .A(tras_cntr[2]), .B(n267), .C(n158), .Z(n266) );
  EON1 U290 ( .A(n268), .B(n157), .C(tras_delay[1]), .D(n156), .Z(N74) );
  AO6 U291 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .C(n269), .Z(n268) );
  EON1 U292 ( .A(tras_cntr[0]), .B(n157), .C(tras_delay[0]), .D(n156), .Z(N73)
         );
  NR2 U293 ( .A(n159), .B(n161), .Z(n156) );
  AO3 U294 ( .A(tras_cntr[3]), .B(n270), .C(n159), .D(reset_n), .Z(n157) );
  IV U295 ( .A(n254), .Z(n159) );
  AN2 U296 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U297 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U298 ( .A(n161), .B(tras_cntr[3]), .C(n270), .Z(N40) );
  IV U299 ( .A(n158), .Z(n270) );
  NR2 U300 ( .A(n267), .B(tras_cntr[2]), .Z(n158) );
  IV U301 ( .A(n269), .Z(n267) );
  NR2 U302 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .Z(n269) );
  NR4 U303 ( .A(n254), .B(n252), .C(n161), .D(n265), .Z(N39) );
  OR3 U304 ( .A(timer0[2]), .B(timer0[3]), .C(n258), .Z(n265) );
  ND2 U305 ( .A(n136), .B(n84), .Z(n258) );
  AN3 U306 ( .A(x2b_ack), .B(n425), .C(n344), .Z(n252) );
  NR3 U307 ( .A(b2x_cmd[1]), .B(n344), .C(n238), .Z(n254) );
  IV U308 ( .A(x2b_ack), .Z(n238) );
  AN2 U309 ( .A(n271), .B(reset_n), .Z(N38) );
  AO7 U310 ( .A(n240), .B(n226), .C(n232), .Z(n271) );
  IV U311 ( .A(n239), .Z(n232) );
  NR2 U312 ( .A(n272), .B(n161), .Z(N37) );
  IV U313 ( .A(reset_n), .Z(n161) );
  AO1 U314 ( .A(n239), .B(n121), .C(n168), .D(n273), .Z(n272) );
  NR3 U315 ( .A(n240), .B(n226), .C(n199), .Z(n273) );
  IV U316 ( .A(r2b_write), .Z(n199) );
  ND3 U317 ( .A(n421), .B(n422), .C(n423), .Z(n226) );
  ND2 U318 ( .A(n274), .B(n275), .Z(n240) );
  NR4 U319 ( .A(n276), .B(n277), .C(n325), .D(n326), .Z(n275) );
  EN U320 ( .A(n354), .B(r2b_raddr[8]), .Z(n326) );
  EN U321 ( .A(n352), .B(r2b_raddr[9]), .Z(n325) );
  EN U322 ( .A(n353), .B(r2b_raddr[7]), .Z(n277) );
  ND4 U323 ( .A(n327), .B(n328), .C(n329), .D(n141), .Z(n276) );
  EN U324 ( .A(n211), .B(n357), .Z(n329) );
  IV U325 ( .A(r2b_raddr[11]), .Z(n211) );
  EN U326 ( .A(n210), .B(n356), .Z(n328) );
  IV U327 ( .A(r2b_raddr[10]), .Z(n210) );
  EN U328 ( .A(n212), .B(n355), .Z(n327) );
  IV U329 ( .A(r2b_raddr[12]), .Z(n212) );
  NR4 U330 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n274) );
  EN U331 ( .A(n347), .B(r2b_raddr[5]), .Z(n333) );
  EN U332 ( .A(n345), .B(r2b_raddr[1]), .Z(n332) );
  EN U333 ( .A(n346), .B(r2b_raddr[4]), .Z(n331) );
  ND4 U334 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n330) );
  EN U335 ( .A(n203), .B(n351), .Z(n337) );
  IV U336 ( .A(r2b_raddr[3]), .Z(n203) );
  EN U337 ( .A(n202), .B(n350), .Z(n336) );
  IV U338 ( .A(r2b_raddr[2]), .Z(n202) );
  EN U339 ( .A(n200), .B(n349), .Z(n335) );
  IV U340 ( .A(r2b_raddr[0]), .Z(n200) );
  EN U341 ( .A(n206), .B(n348), .Z(n334) );
  IV U342 ( .A(r2b_raddr[6]), .Z(n206) );
  AN3 U343 ( .A(n421), .B(n122), .C(n423), .Z(n168) );
  AN3 U344 ( .A(n122), .B(n85), .C(n423), .Z(n239) );
  AN2 U345 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U346 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U347 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_2 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, 
        test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [11:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [11:0] b2x_len;
  output [1:0] b2x_cmd;
  output [12:0] bank_row;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         sdr_dma_last, x2b_ack, xfr_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok,
         x2b_rdok, x2b_wrok, test_si4, test_si3, test_si2, test_si1, test_se;
  output b2r_ack, b2x_req, b2x_start, b2x_last, b2x_wrap, tras_ok, test_so3,
         test_so2, test_so1;
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42, N73,
         N74, N75, N77, N78, N79, N80, N81, N82, N83, n1, n2, n84, n85, n86,
         n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560;
  wire   [3:2] timer0;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n142), .Q(n511), .QN(n338) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n510), .TE(test_se), .CP(n148), .Q(n509), 
        .QN(n340) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n509), .TE(test_se), .CP(n142), .Q(test_so3), .QN(n339) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n511), .TE(test_se), .CP(n148), .Q(n510), 
        .QN(n341) );
  FD1S bank_row_reg_0_ ( .D(n360), .TI(b2x_cmd[1]), .TE(test_se), .CP(n146), 
        .Q(bank_row[0]), .QN(n349) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n85), .TE(test_se), .CP(n142), .Q(n122), 
        .QN(n422) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n142), 
        .Q(n85), .QN(n421) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n122), .TE(test_se), .CP(n142), .Q(n560), 
        .QN(n423) );
  FD1S l_write_reg ( .D(n393), .TI(n515), .TE(test_se), .CP(n144), .Q(n121), 
        .QN(n420) );
  FD1S bank_row_reg_10_ ( .D(n372), .TI(bank_row[9]), .TE(test_se), .CP(n146), 
        .Q(bank_row[10]), .QN(n356) );
  FD1S bank_row_reg_12_ ( .D(n371), .TI(bank_row[11]), .TE(test_se), .CP(n146), 
        .Q(bank_row[12]), .QN(n355) );
  FD1S bank_row_reg_9_ ( .D(n370), .TI(bank_row[8]), .TE(test_se), .CP(n147), 
        .Q(bank_row[9]), .QN(n352) );
  FD1S bank_row_reg_8_ ( .D(n369), .TI(bank_row[7]), .TE(test_se), .CP(n147), 
        .Q(bank_row[8]), .QN(n354) );
  FD1S bank_row_reg_7_ ( .D(n368), .TI(bank_row[6]), .TE(test_se), .CP(n147), 
        .Q(bank_row[7]), .QN(n353) );
  FD1S bank_row_reg_6_ ( .D(n367), .TI(bank_row[5]), .TE(test_se), .CP(n147), 
        .Q(bank_row[6]), .QN(n348) );
  FD1S bank_row_reg_5_ ( .D(n366), .TI(bank_row[4]), .TE(test_se), .CP(n147), 
        .Q(bank_row[5]), .QN(n347) );
  FD1S bank_row_reg_4_ ( .D(n365), .TI(test_si2), .TE(test_se), .CP(n146), .Q(
        bank_row[4]), .QN(n346) );
  FD1S bank_row_reg_3_ ( .D(n364), .TI(bank_row[2]), .TE(test_se), .CP(n146), 
        .Q(bank_row[3]), .QN(n351) );
  FD1S bank_row_reg_2_ ( .D(n363), .TI(bank_row[1]), .TE(test_se), .CP(n146), 
        .Q(bank_row[2]), .QN(n350) );
  FD1S bank_row_reg_1_ ( .D(n362), .TI(bank_row[0]), .TE(test_se), .CP(n146), 
        .Q(bank_row[1]), .QN(n345) );
  FD1S bank_row_reg_11_ ( .D(n361), .TI(bank_row[10]), .TE(test_se), .CP(n146), 
        .Q(bank_row[11]), .QN(n357) );
  FD1S bank_valid_reg ( .D(n359), .TI(n560), .TE(test_se), .CP(n147), .Q(n141), 
        .QN(n343) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n148), 
        .Q(n512), .QN(n424) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n148), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n373), .TI(n141), .TE(test_se), .CP(n146), .Q(n559), 
        .QN(n135) );
  FD1S l_caddr_reg_12_ ( .D(n418), .TI(test_si3), .TE(test_se), .CP(n142), .Q(
        n547), .QN(n132) );
  FD1S l_caddr_reg_11_ ( .D(n417), .TI(n549), .TE(test_se), .CP(n142), .Q(
        test_so1), .QN(n133) );
  FD1S l_caddr_reg_10_ ( .D(n416), .TI(n550), .TE(test_se), .CP(n142), .Q(n549), .QN(n134) );
  FD1S l_caddr_reg_9_ ( .D(n415), .TI(n551), .TE(test_se), .CP(n142), .Q(n550), 
        .QN(n123) );
  FD1S l_caddr_reg_8_ ( .D(n414), .TI(n552), .TE(test_se), .CP(n142), .Q(n551), 
        .QN(n124) );
  FD1S l_caddr_reg_7_ ( .D(n413), .TI(n553), .TE(test_se), .CP(n142), .Q(n552), 
        .QN(n125) );
  FD1S l_caddr_reg_6_ ( .D(n412), .TI(n554), .TE(test_se), .CP(n143), .Q(n553), 
        .QN(n126) );
  FD1S l_caddr_reg_5_ ( .D(n411), .TI(n555), .TE(test_se), .CP(n143), .Q(n554), 
        .QN(n127) );
  FD1S l_caddr_reg_4_ ( .D(n410), .TI(n556), .TE(test_se), .CP(n143), .Q(n555), 
        .QN(n128) );
  FD1S l_caddr_reg_3_ ( .D(n409), .TI(n557), .TE(test_se), .CP(n143), .Q(n556), 
        .QN(n129) );
  FD1S l_caddr_reg_2_ ( .D(n408), .TI(n558), .TE(test_se), .CP(n143), .Q(n557), 
        .QN(n130) );
  FD1S l_caddr_reg_1_ ( .D(n407), .TI(n559), .TE(test_se), .CP(n143), .Q(n558), 
        .QN(n131) );
  FD1S l_raddr_reg_12_ ( .D(n406), .TI(n518), .TE(test_se), .CP(n143), .Q(n517), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n405), .TI(n519), .TE(test_se), .CP(n143), .Q(n518), .QN(n97) );
  FD1S l_raddr_reg_10_ ( .D(n404), .TI(n520), .TE(test_se), .CP(n143), .Q(n519), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n403), .TI(n521), .TE(test_se), .CP(n143), .Q(n520), 
        .QN(n86) );
  FD1S l_raddr_reg_8_ ( .D(n402), .TI(n522), .TE(test_se), .CP(n143), .Q(n521), 
        .QN(n88) );
  FD1S l_raddr_reg_7_ ( .D(n401), .TI(test_si4), .TE(test_se), .CP(n143), .Q(
        n522), .QN(n90) );
  FD1S l_raddr_reg_6_ ( .D(n400), .TI(n524), .TE(test_se), .CP(n144), .Q(
        test_so2), .QN(n91) );
  FD1S l_raddr_reg_5_ ( .D(n399), .TI(n525), .TE(test_se), .CP(n144), .Q(n524), 
        .QN(n92) );
  FD1S l_raddr_reg_4_ ( .D(n398), .TI(n526), .TE(test_se), .CP(n144), .Q(n525), 
        .QN(n93) );
  FD1S l_raddr_reg_3_ ( .D(n397), .TI(n527), .TE(test_se), .CP(n144), .Q(n526), 
        .QN(n94) );
  FD1S l_raddr_reg_2_ ( .D(n396), .TI(n528), .TE(test_se), .CP(n144), .Q(n527), 
        .QN(n95) );
  FD1S l_raddr_reg_1_ ( .D(n395), .TI(n529), .TE(test_se), .CP(n144), .Q(n528), 
        .QN(n96) );
  FD1S l_raddr_reg_0_ ( .D(n394), .TI(n530), .TE(test_se), .CP(n144), .Q(n529), 
        .QN(n98) );
  FD1S l_wrap_reg ( .D(n392), .TI(n516), .TE(test_se), .CP(n144), .Q(n515), 
        .QN(n99) );
  FD1S l_len_reg_11_ ( .D(n391), .TI(n531), .TE(test_se), .CP(n144), .Q(n530), 
        .QN(n110) );
  FD1S l_len_reg_10_ ( .D(n390), .TI(n532), .TE(test_se), .CP(n144), .Q(n531), 
        .QN(n111) );
  FD1S l_len_reg_9_ ( .D(n389), .TI(n533), .TE(test_se), .CP(n144), .Q(n532), 
        .QN(n101) );
  FD1S l_len_reg_8_ ( .D(n388), .TI(n534), .TE(test_se), .CP(n145), .Q(n533), 
        .QN(n102) );
  FD1S l_len_reg_7_ ( .D(n387), .TI(n535), .TE(test_se), .CP(n145), .Q(n534), 
        .QN(n103) );
  FD1S l_len_reg_6_ ( .D(n386), .TI(n536), .TE(test_se), .CP(n145), .Q(n535), 
        .QN(n104) );
  FD1S l_len_reg_5_ ( .D(n385), .TI(n537), .TE(test_se), .CP(n145), .Q(n536), 
        .QN(n105) );
  FD1S l_len_reg_4_ ( .D(n384), .TI(n538), .TE(test_se), .CP(n145), .Q(n537), 
        .QN(n106) );
  FD1S l_len_reg_3_ ( .D(n383), .TI(n539), .TE(test_se), .CP(n145), .Q(n538), 
        .QN(n107) );
  FD1S l_len_reg_2_ ( .D(n382), .TI(n540), .TE(test_se), .CP(n145), .Q(n539), 
        .QN(n108) );
  FD1S l_len_reg_1_ ( .D(n381), .TI(n541), .TE(test_se), .CP(n145), .Q(n540), 
        .QN(n109) );
  FD1S l_len_reg_0_ ( .D(n380), .TI(n542), .TE(test_se), .CP(n145), .Q(n541), 
        .QN(n112) );
  FD1S l_id_reg_3_ ( .D(n379), .TI(n544), .TE(test_se), .CP(n145), .Q(n543), 
        .QN(n117) );
  FD1S l_id_reg_2_ ( .D(n378), .TI(n545), .TE(test_se), .CP(n145), .Q(n544), 
        .QN(n118) );
  FD1S l_id_reg_1_ ( .D(n377), .TI(n546), .TE(test_se), .CP(n145), .Q(n545), 
        .QN(n119) );
  FD1S l_id_reg_0_ ( .D(n376), .TI(n547), .TE(test_se), .CP(n146), .Q(n546), 
        .QN(n120) );
  FD1S l_last_reg ( .D(n375), .TI(n543), .TE(test_se), .CP(n146), .Q(n542), 
        .QN(n113) );
  FD1S l_start_reg ( .D(n374), .TI(n342), .TE(test_se), .CP(n146), .Q(n516), 
        .QN(n100) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n147), 
        .Q(b2x_cmd[1]), .QN(n425) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n147), .Q(
        b2x_cmd[0]), .QN(n344) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n121), .TE(test_se), .CP(n148), .Q(n514), 
        .QN(n84) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n514), .TE(test_se), .CP(n148), .Q(n513), 
        .QN(n136) );
  FD1S l_sdr_dma_last_reg ( .D(n419), .TI(n517), .TE(test_se), .CP(n142), .Q(
        n342), .QN(n138) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n148), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n512), .TE(test_se), .CP(n147), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n358), .TI(tras_cntr[2]), .TE(test_se), .CP(n147), 
        .Q(tras_cntr[3]) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n148), .Q(
        timer0[3]), .QN(n139) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n513), .TE(test_se), .CP(n148), .Q(
        timer0[2]), .QN(n140) );
  IVP U6 ( .A(n149), .Z(n147) );
  IVP U85 ( .A(n150), .Z(n145) );
  IVP U86 ( .A(n150), .Z(n144) );
  IVP U87 ( .A(n150), .Z(n143) );
  IVP U88 ( .A(n149), .Z(n146) );
  IVP U89 ( .A(n149), .Z(n148) );
  IVP U90 ( .A(n152), .Z(n150) );
  IVP U91 ( .A(n152), .Z(n149) );
  IVP U92 ( .A(n151), .Z(n142) );
  IVP U93 ( .A(n152), .Z(n151) );
  IVP U94 ( .A(n153), .Z(n152) );
  IVP U95 ( .A(clk), .Z(n153) );
  IV U96 ( .A(n154), .Z(n358) );
  AO2 U97 ( .A(tras_cntr[3]), .B(n155), .C(tras_delay[3]), .D(n156), .Z(n154)
         );
  NR2 U98 ( .A(n157), .B(n158), .Z(n155) );
  AO1 U99 ( .A(n343), .B(n159), .C(n160), .D(n161), .Z(n359) );
  ND2 U100 ( .A(n162), .B(n163), .Z(n160) );
  MUX21L U101 ( .A(n164), .B(n349), .S(n165), .Z(n360) );
  IV U102 ( .A(b2x_addr[0]), .Z(n164) );
  MUX21L U103 ( .A(n166), .B(n357), .S(n165), .Z(n361) );
  IV U104 ( .A(b2x_addr[11]), .Z(n166) );
  MUX21L U105 ( .A(n345), .B(n167), .S(n168), .Z(n362) );
  IV U106 ( .A(b2x_addr[1]), .Z(n167) );
  MUX21L U107 ( .A(n169), .B(n350), .S(n165), .Z(n363) );
  IV U108 ( .A(b2x_addr[2]), .Z(n169) );
  MUX21L U109 ( .A(n170), .B(n351), .S(n165), .Z(n364) );
  IV U110 ( .A(b2x_addr[3]), .Z(n170) );
  MUX21L U111 ( .A(n346), .B(n171), .S(n168), .Z(n365) );
  IV U112 ( .A(b2x_addr[4]), .Z(n171) );
  MUX21L U113 ( .A(n347), .B(n172), .S(n168), .Z(n366) );
  IV U114 ( .A(b2x_addr[5]), .Z(n172) );
  MUX21L U115 ( .A(n173), .B(n348), .S(n165), .Z(n367) );
  IV U116 ( .A(b2x_addr[6]), .Z(n173) );
  MUX21L U117 ( .A(n353), .B(n174), .S(n168), .Z(n368) );
  IV U118 ( .A(b2x_addr[7]), .Z(n174) );
  MUX21L U119 ( .A(n354), .B(n175), .S(n168), .Z(n369) );
  IV U120 ( .A(b2x_addr[8]), .Z(n175) );
  MUX21L U121 ( .A(n352), .B(n176), .S(n168), .Z(n370) );
  IV U122 ( .A(b2x_addr[9]), .Z(n176) );
  MUX21L U123 ( .A(n1), .B(n355), .S(n165), .Z(n371) );
  MUX21L U124 ( .A(n2), .B(n356), .S(n165), .Z(n372) );
  AO4 U125 ( .A(n135), .B(n177), .C(n178), .D(n179), .Z(n373) );
  IV U126 ( .A(r2b_caddr[0]), .Z(n178) );
  AO4 U127 ( .A(n179), .B(n180), .C(n177), .D(n100), .Z(n374) );
  AO4 U128 ( .A(n179), .B(n181), .C(n177), .D(n113), .Z(n375) );
  AO4 U129 ( .A(n179), .B(n182), .C(n177), .D(n120), .Z(n376) );
  AO4 U130 ( .A(n179), .B(n183), .C(n177), .D(n119), .Z(n377) );
  AO4 U131 ( .A(n179), .B(n184), .C(n177), .D(n118), .Z(n378) );
  AO4 U132 ( .A(n179), .B(n185), .C(n177), .D(n117), .Z(n379) );
  AO4 U133 ( .A(n179), .B(n186), .C(n177), .D(n112), .Z(n380) );
  AO4 U134 ( .A(n179), .B(n187), .C(n177), .D(n109), .Z(n381) );
  AO4 U135 ( .A(n179), .B(n188), .C(n177), .D(n108), .Z(n382) );
  AO4 U136 ( .A(n179), .B(n189), .C(n177), .D(n107), .Z(n383) );
  AO4 U137 ( .A(n179), .B(n190), .C(n177), .D(n106), .Z(n384) );
  AO4 U138 ( .A(n179), .B(n191), .C(n177), .D(n105), .Z(n385) );
  AO4 U139 ( .A(n179), .B(n192), .C(n177), .D(n104), .Z(n386) );
  AO4 U140 ( .A(n179), .B(n193), .C(n177), .D(n103), .Z(n387) );
  AO4 U141 ( .A(n179), .B(n194), .C(n177), .D(n102), .Z(n388) );
  AO4 U142 ( .A(n179), .B(n195), .C(n177), .D(n101), .Z(n389) );
  AO4 U143 ( .A(n179), .B(n196), .C(n177), .D(n111), .Z(n390) );
  AO4 U144 ( .A(n179), .B(n197), .C(n177), .D(n110), .Z(n391) );
  AO4 U145 ( .A(n179), .B(n198), .C(n177), .D(n99), .Z(n392) );
  AO4 U146 ( .A(n179), .B(n199), .C(n420), .D(n177), .Z(n393) );
  AO4 U147 ( .A(n179), .B(n200), .C(n98), .D(n177), .Z(n394) );
  AO4 U148 ( .A(n179), .B(n201), .C(n96), .D(n177), .Z(n395) );
  IV U149 ( .A(r2b_raddr[1]), .Z(n201) );
  AO4 U150 ( .A(n179), .B(n202), .C(n95), .D(n177), .Z(n396) );
  AO4 U151 ( .A(n179), .B(n203), .C(n94), .D(n177), .Z(n397) );
  AO4 U152 ( .A(n179), .B(n204), .C(n93), .D(n177), .Z(n398) );
  IV U153 ( .A(r2b_raddr[4]), .Z(n204) );
  AO4 U154 ( .A(n179), .B(n205), .C(n92), .D(n177), .Z(n399) );
  IV U155 ( .A(r2b_raddr[5]), .Z(n205) );
  AO4 U156 ( .A(n179), .B(n206), .C(n91), .D(n177), .Z(n400) );
  AO4 U157 ( .A(n179), .B(n207), .C(n90), .D(n177), .Z(n401) );
  IV U158 ( .A(r2b_raddr[7]), .Z(n207) );
  AO4 U159 ( .A(n179), .B(n208), .C(n88), .D(n177), .Z(n402) );
  IV U160 ( .A(r2b_raddr[8]), .Z(n208) );
  AO4 U161 ( .A(n179), .B(n209), .C(n86), .D(n177), .Z(n403) );
  IV U162 ( .A(r2b_raddr[9]), .Z(n209) );
  AO4 U163 ( .A(n179), .B(n210), .C(n2), .D(n177), .Z(n404) );
  AO4 U164 ( .A(n179), .B(n211), .C(n97), .D(n177), .Z(n405) );
  AO4 U165 ( .A(n179), .B(n212), .C(n1), .D(n177), .Z(n406) );
  AO4 U166 ( .A(n131), .B(n177), .C(n213), .D(n179), .Z(n407) );
  IV U167 ( .A(r2b_caddr[1]), .Z(n213) );
  AO4 U168 ( .A(n130), .B(n177), .C(n214), .D(n179), .Z(n408) );
  IV U169 ( .A(r2b_caddr[2]), .Z(n214) );
  AO4 U170 ( .A(n129), .B(n177), .C(n215), .D(n179), .Z(n409) );
  IV U171 ( .A(r2b_caddr[3]), .Z(n215) );
  AO4 U172 ( .A(n128), .B(n177), .C(n216), .D(n179), .Z(n410) );
  IV U173 ( .A(r2b_caddr[4]), .Z(n216) );
  AO4 U174 ( .A(n127), .B(n177), .C(n217), .D(n179), .Z(n411) );
  IV U175 ( .A(r2b_caddr[5]), .Z(n217) );
  AO4 U176 ( .A(n126), .B(n177), .C(n218), .D(n179), .Z(n412) );
  IV U177 ( .A(r2b_caddr[6]), .Z(n218) );
  AO4 U178 ( .A(n125), .B(n177), .C(n219), .D(n179), .Z(n413) );
  IV U179 ( .A(r2b_caddr[7]), .Z(n219) );
  AO4 U180 ( .A(n124), .B(n177), .C(n220), .D(n179), .Z(n414) );
  IV U181 ( .A(r2b_caddr[8]), .Z(n220) );
  AO4 U182 ( .A(n123), .B(n177), .C(n221), .D(n179), .Z(n415) );
  IV U183 ( .A(r2b_caddr[9]), .Z(n221) );
  AO4 U184 ( .A(n177), .B(n134), .C(n222), .D(n179), .Z(n416) );
  IV U185 ( .A(r2b_caddr[10]), .Z(n222) );
  AO4 U186 ( .A(n133), .B(n177), .C(n223), .D(n179), .Z(n417) );
  IV U187 ( .A(r2b_caddr[11]), .Z(n223) );
  AO4 U188 ( .A(n177), .B(n132), .C(n224), .D(n179), .Z(n418) );
  IV U189 ( .A(r2b_caddr[12]), .Z(n224) );
  AO4 U190 ( .A(n177), .B(n138), .C(n225), .D(n179), .Z(n419) );
  IV U191 ( .A(sdr_dma_last), .Z(n225) );
  ND2 U192 ( .A(reset_n), .B(n179), .Z(n177) );
  MUX21L U193 ( .A(n198), .B(n99), .S(n226), .Z(b2x_wrap) );
  IV U194 ( .A(r2b_wrap), .Z(n198) );
  MUX21L U195 ( .A(n180), .B(n100), .S(n226), .Z(b2x_start) );
  IV U196 ( .A(r2b_start), .Z(n180) );
  AO4 U197 ( .A(n227), .B(n424), .C(n338), .D(n228), .Z(b2x_req) );
  ND2 U198 ( .A(tras_ok), .B(n229), .Z(n228) );
  AO2 U199 ( .A(n230), .B(n231), .C(x2b_act_ok_r_0_), .D(n168), .Z(n227) );
  MUX21L U200 ( .A(n341), .B(n340), .S(n121), .Z(n231) );
  NR2 U201 ( .A(n232), .B(n339), .Z(n230) );
  MUX21L U202 ( .A(n195), .B(n101), .S(n226), .Z(b2x_len[9]) );
  IV U203 ( .A(r2b_len[9]), .Z(n195) );
  MUX21L U204 ( .A(n194), .B(n102), .S(n226), .Z(b2x_len[8]) );
  IV U205 ( .A(r2b_len[8]), .Z(n194) );
  MUX21L U206 ( .A(n193), .B(n103), .S(n226), .Z(b2x_len[7]) );
  IV U207 ( .A(r2b_len[7]), .Z(n193) );
  MUX21L U208 ( .A(n192), .B(n104), .S(n226), .Z(b2x_len[6]) );
  IV U209 ( .A(r2b_len[6]), .Z(n192) );
  MUX21L U210 ( .A(n191), .B(n105), .S(n226), .Z(b2x_len[5]) );
  IV U211 ( .A(r2b_len[5]), .Z(n191) );
  MUX21L U212 ( .A(n190), .B(n106), .S(n226), .Z(b2x_len[4]) );
  IV U213 ( .A(r2b_len[4]), .Z(n190) );
  MUX21L U214 ( .A(n189), .B(n107), .S(n226), .Z(b2x_len[3]) );
  IV U215 ( .A(r2b_len[3]), .Z(n189) );
  MUX21L U216 ( .A(n188), .B(n108), .S(n226), .Z(b2x_len[2]) );
  IV U217 ( .A(r2b_len[2]), .Z(n188) );
  MUX21L U218 ( .A(n187), .B(n109), .S(n226), .Z(b2x_len[1]) );
  IV U219 ( .A(r2b_len[1]), .Z(n187) );
  MUX21L U220 ( .A(n197), .B(n110), .S(n226), .Z(b2x_len[11]) );
  IV U221 ( .A(r2b_len[11]), .Z(n197) );
  MUX21L U222 ( .A(n196), .B(n111), .S(n226), .Z(b2x_len[10]) );
  IV U223 ( .A(r2b_len[10]), .Z(n196) );
  MUX21L U224 ( .A(n186), .B(n112), .S(n226), .Z(b2x_len[0]) );
  IV U225 ( .A(r2b_len[0]), .Z(n186) );
  MUX21L U226 ( .A(n181), .B(n113), .S(n226), .Z(b2x_last) );
  IV U227 ( .A(r2b_last), .Z(n181) );
  MUX21L U228 ( .A(n185), .B(n117), .S(n226), .Z(b2x_id[3]) );
  IV U229 ( .A(r2b_req_id[3]), .Z(n185) );
  MUX21L U230 ( .A(n184), .B(n118), .S(n226), .Z(b2x_id[2]) );
  IV U231 ( .A(r2b_req_id[2]), .Z(n184) );
  MUX21L U232 ( .A(n183), .B(n119), .S(n226), .Z(b2x_id[1]) );
  IV U233 ( .A(r2b_req_id[1]), .Z(n183) );
  MUX21L U234 ( .A(n182), .B(n120), .S(n226), .Z(b2x_id[0]) );
  IV U235 ( .A(r2b_req_id[0]), .Z(n182) );
  AO4 U236 ( .A(n232), .B(n123), .C(n233), .D(n86), .Z(b2x_addr[9]) );
  AO4 U237 ( .A(n232), .B(n124), .C(n233), .D(n88), .Z(b2x_addr[8]) );
  AO4 U238 ( .A(n232), .B(n125), .C(n233), .D(n90), .Z(b2x_addr[7]) );
  AO4 U239 ( .A(n232), .B(n126), .C(n233), .D(n91), .Z(b2x_addr[6]) );
  AO4 U240 ( .A(n232), .B(n127), .C(n233), .D(n92), .Z(b2x_addr[5]) );
  AO4 U241 ( .A(n232), .B(n128), .C(n233), .D(n93), .Z(b2x_addr[4]) );
  AO4 U242 ( .A(n232), .B(n129), .C(n233), .D(n94), .Z(b2x_addr[3]) );
  AO4 U243 ( .A(n232), .B(n130), .C(n233), .D(n95), .Z(b2x_addr[2]) );
  AO4 U244 ( .A(n232), .B(n131), .C(n233), .D(n96), .Z(b2x_addr[1]) );
  AO4 U245 ( .A(n232), .B(n132), .C(n165), .D(n1), .Z(b2x_addr[12]) );
  AO4 U246 ( .A(n232), .B(n133), .C(n233), .D(n97), .Z(b2x_addr[11]) );
  AO4 U247 ( .A(n232), .B(n134), .C(n165), .D(n2), .Z(b2x_addr[10]) );
  IV U248 ( .A(n168), .Z(n165) );
  AO4 U249 ( .A(n232), .B(n135), .C(n233), .D(n98), .Z(b2x_addr[0]) );
  AO6 U250 ( .A(n234), .B(n235), .C(n161), .Z(N83) );
  MUX21L U251 ( .A(n236), .B(n237), .S(n238), .Z(n234) );
  AN3 U252 ( .A(n342), .B(n163), .C(n239), .Z(n236) );
  AO4 U253 ( .A(n179), .B(n240), .C(n241), .D(n161), .Z(N82) );
  AO1 U254 ( .A(n239), .B(n242), .C(n243), .D(n168), .Z(n241) );
  AO4 U255 ( .A(n238), .B(n244), .C(n422), .D(n235), .Z(n243) );
  ND2 U256 ( .A(x2b_ack), .B(n163), .Z(n242) );
  IV U257 ( .A(x2b_refresh), .Z(n163) );
  AO7 U258 ( .A(n245), .B(n161), .C(n179), .Z(N81) );
  ND2 U259 ( .A(b2r_ack), .B(reset_n), .Z(n179) );
  NR2 U260 ( .A(n246), .B(n226), .Z(b2r_ack) );
  IV U261 ( .A(r2b_req), .Z(n246) );
  IV U262 ( .A(n247), .Z(n245) );
  AO7 U263 ( .A(n235), .B(n421), .C(n248), .Z(n247) );
  MUX21L U264 ( .A(n168), .B(n249), .S(n238), .Z(n248) );
  AO7 U265 ( .A(n232), .B(x2b_refresh), .C(n244), .Z(n249) );
  ND3 U266 ( .A(n226), .B(n232), .C(n233), .Z(n235) );
  NR2 U267 ( .A(n229), .B(n168), .Z(n233) );
  ND2 U268 ( .A(n162), .B(n244), .Z(n229) );
  ND3 U269 ( .A(n422), .B(n85), .C(n423), .Z(n244) );
  IV U270 ( .A(n237), .Z(n162) );
  NR3 U271 ( .A(n122), .B(n423), .C(n85), .Z(n237) );
  AO4 U272 ( .A(n139), .B(n250), .C(n251), .D(n161), .Z(N80) );
  AO11 U273 ( .A(trp_delay[3]), .B(n252), .C(n253), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n254), .Z(n251) );
  AN2 U274 ( .A(n255), .B(timer0[2]), .Z(n253) );
  AO4 U275 ( .A(n140), .B(n250), .C(n256), .D(n161), .Z(N79) );
  AO11 U276 ( .A(trp_delay[2]), .B(n252), .C(n257), .D(n255), .E(trcd_delay[2]), .F(n254), .Z(n256) );
  NR2 U277 ( .A(timer0[2]), .B(n258), .Z(n257) );
  ND3 U278 ( .A(reset_n), .B(n258), .C(n255), .Z(n250) );
  AO6 U279 ( .A(n259), .B(n260), .C(n161), .Z(N78) );
  ND2 U280 ( .A(trp_delay[1]), .B(n252), .Z(n260) );
  AO2 U281 ( .A(n255), .B(n261), .C(trcd_delay[1]), .D(n254), .Z(n259) );
  AO7 U282 ( .A(n136), .B(n84), .C(n258), .Z(n261) );
  AO6 U283 ( .A(n262), .B(n263), .C(n161), .Z(N77) );
  ND2 U284 ( .A(trp_delay[0]), .B(n252), .Z(n263) );
  AO2 U285 ( .A(n255), .B(n84), .C(trcd_delay[0]), .D(n254), .Z(n262) );
  NR3 U286 ( .A(n252), .B(n254), .C(n264), .Z(n255) );
  IV U287 ( .A(n265), .Z(n264) );
  EON1 U288 ( .A(n266), .B(n157), .C(tras_delay[2]), .D(n156), .Z(N75) );
  AO6 U289 ( .A(tras_cntr[2]), .B(n267), .C(n158), .Z(n266) );
  EON1 U290 ( .A(n268), .B(n157), .C(tras_delay[1]), .D(n156), .Z(N74) );
  AO6 U291 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .C(n269), .Z(n268) );
  EON1 U292 ( .A(tras_cntr[0]), .B(n157), .C(tras_delay[0]), .D(n156), .Z(N73)
         );
  NR2 U293 ( .A(n159), .B(n161), .Z(n156) );
  AO3 U294 ( .A(tras_cntr[3]), .B(n270), .C(n159), .D(reset_n), .Z(n157) );
  IV U295 ( .A(n254), .Z(n159) );
  AN2 U296 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U297 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U298 ( .A(n161), .B(tras_cntr[3]), .C(n270), .Z(N40) );
  IV U299 ( .A(n158), .Z(n270) );
  NR2 U300 ( .A(n267), .B(tras_cntr[2]), .Z(n158) );
  IV U301 ( .A(n269), .Z(n267) );
  NR2 U302 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .Z(n269) );
  NR4 U303 ( .A(n254), .B(n252), .C(n161), .D(n265), .Z(N39) );
  OR3 U304 ( .A(timer0[2]), .B(timer0[3]), .C(n258), .Z(n265) );
  ND2 U305 ( .A(n136), .B(n84), .Z(n258) );
  AN3 U306 ( .A(x2b_ack), .B(n425), .C(n344), .Z(n252) );
  NR3 U307 ( .A(b2x_cmd[1]), .B(n344), .C(n238), .Z(n254) );
  IV U308 ( .A(x2b_ack), .Z(n238) );
  AN2 U309 ( .A(n271), .B(reset_n), .Z(N38) );
  AO7 U310 ( .A(n240), .B(n226), .C(n232), .Z(n271) );
  IV U311 ( .A(n239), .Z(n232) );
  NR2 U312 ( .A(n272), .B(n161), .Z(N37) );
  IV U313 ( .A(reset_n), .Z(n161) );
  AO1 U314 ( .A(n239), .B(n121), .C(n168), .D(n273), .Z(n272) );
  NR3 U315 ( .A(n240), .B(n226), .C(n199), .Z(n273) );
  IV U316 ( .A(r2b_write), .Z(n199) );
  ND3 U317 ( .A(n421), .B(n422), .C(n423), .Z(n226) );
  ND2 U318 ( .A(n274), .B(n275), .Z(n240) );
  NR4 U319 ( .A(n276), .B(n277), .C(n325), .D(n326), .Z(n275) );
  EN U320 ( .A(n354), .B(r2b_raddr[8]), .Z(n326) );
  EN U321 ( .A(n352), .B(r2b_raddr[9]), .Z(n325) );
  EN U322 ( .A(n353), .B(r2b_raddr[7]), .Z(n277) );
  ND4 U323 ( .A(n327), .B(n328), .C(n329), .D(n141), .Z(n276) );
  EN U324 ( .A(n211), .B(n357), .Z(n329) );
  IV U325 ( .A(r2b_raddr[11]), .Z(n211) );
  EN U326 ( .A(n210), .B(n356), .Z(n328) );
  IV U327 ( .A(r2b_raddr[10]), .Z(n210) );
  EN U328 ( .A(n212), .B(n355), .Z(n327) );
  IV U329 ( .A(r2b_raddr[12]), .Z(n212) );
  NR4 U330 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n274) );
  EN U331 ( .A(n347), .B(r2b_raddr[5]), .Z(n333) );
  EN U332 ( .A(n345), .B(r2b_raddr[1]), .Z(n332) );
  EN U333 ( .A(n346), .B(r2b_raddr[4]), .Z(n331) );
  ND4 U334 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n330) );
  EN U335 ( .A(n203), .B(n351), .Z(n337) );
  IV U336 ( .A(r2b_raddr[3]), .Z(n203) );
  EN U337 ( .A(n202), .B(n350), .Z(n336) );
  IV U338 ( .A(r2b_raddr[2]), .Z(n202) );
  EN U339 ( .A(n200), .B(n349), .Z(n335) );
  IV U340 ( .A(r2b_raddr[0]), .Z(n200) );
  EN U341 ( .A(n206), .B(n348), .Z(n334) );
  IV U342 ( .A(r2b_raddr[6]), .Z(n206) );
  AN3 U343 ( .A(n421), .B(n122), .C(n423), .Z(n168) );
  AN3 U344 ( .A(n122), .B(n85), .C(n423), .Z(n239) );
  AN2 U345 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U346 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U347 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_3 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so4, test_so3, 
        test_so2, test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [11:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [11:0] b2x_len;
  output [1:0] b2x_cmd;
  output [12:0] bank_row;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         sdr_dma_last, x2b_ack, xfr_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok,
         x2b_rdok, x2b_wrok, test_si4, test_si3, test_si2, test_si1, test_se;
  output b2r_ack, b2x_req, b2x_start, b2x_last, b2x_wrap, tras_ok, test_so4,
         test_so3, test_so2, test_so1;
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         tras_cntr_2_, tras_cntr_1_, tras_cntr_0_, N73, N74, N75, N77, N78,
         N79, N80, N81, N82, N83, n1, n2, n84, n85, n86, n88, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n555, n556, n557, n558, n559, n560;
  wire   [3:2] timer0;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n142), .Q(n511), .QN(n338) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n510), .TE(test_se), .CP(n148), .Q(n509), 
        .QN(n340) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n509), .TE(test_se), .CP(n147), .Q(test_so4), .QN(n339) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n511), .TE(test_se), .CP(n148), .Q(n510), 
        .QN(n341) );
  FD1S bank_row_reg_0_ ( .D(n360), .TI(b2x_cmd[1]), .TE(test_se), .CP(n147), 
        .Q(bank_row[0]), .QN(n349) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n85), .TE(test_se), .CP(n142), .Q(n122), 
        .QN(n422) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n142), 
        .Q(n85), .QN(n421) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n122), .TE(test_se), .CP(n142), .Q(n560), 
        .QN(n423) );
  FD1S l_write_reg ( .D(n393), .TI(n515), .TE(test_se), .CP(n146), .Q(n121), 
        .QN(n420) );
  FD1S bank_row_reg_10_ ( .D(n372), .TI(bank_row[9]), .TE(test_se), .CP(n144), 
        .Q(bank_row[10]), .QN(n356) );
  FD1S bank_row_reg_12_ ( .D(n371), .TI(bank_row[11]), .TE(test_se), .CP(n144), 
        .Q(bank_row[12]), .QN(n355) );
  FD1S bank_row_reg_9_ ( .D(n370), .TI(bank_row[8]), .TE(test_se), .CP(n142), 
        .Q(bank_row[9]), .QN(n352) );
  FD1S bank_row_reg_8_ ( .D(n369), .TI(bank_row[7]), .TE(test_se), .CP(n144), 
        .Q(bank_row[8]), .QN(n354) );
  FD1S bank_row_reg_7_ ( .D(n368), .TI(bank_row[6]), .TE(test_se), .CP(n144), 
        .Q(bank_row[7]), .QN(n353) );
  FD1S bank_row_reg_6_ ( .D(n367), .TI(bank_row[5]), .TE(test_se), .CP(n145), 
        .Q(bank_row[6]), .QN(n348) );
  FD1S bank_row_reg_5_ ( .D(n366), .TI(bank_row[4]), .TE(test_se), .CP(n145), 
        .Q(bank_row[5]), .QN(n347) );
  FD1S bank_row_reg_4_ ( .D(n365), .TI(bank_row[3]), .TE(test_se), .CP(n145), 
        .Q(bank_row[4]), .QN(n346) );
  FD1S bank_row_reg_3_ ( .D(n364), .TI(bank_row[2]), .TE(test_se), .CP(n145), 
        .Q(bank_row[3]), .QN(n351) );
  FD1S bank_row_reg_2_ ( .D(n363), .TI(bank_row[1]), .TE(test_se), .CP(n145), 
        .Q(bank_row[2]), .QN(n350) );
  FD1S bank_row_reg_1_ ( .D(n362), .TI(bank_row[0]), .TE(test_se), .CP(n145), 
        .Q(bank_row[1]), .QN(n345) );
  FD1S bank_row_reg_11_ ( .D(n361), .TI(bank_row[10]), .TE(test_se), .CP(n144), 
        .Q(bank_row[11]), .QN(n357) );
  FD1S bank_valid_reg ( .D(n359), .TI(n560), .TE(test_se), .CP(n148), .Q(n141), 
        .QN(n343) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n148), 
        .Q(n512), .QN(n424) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n148), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n373), .TI(n141), .TE(test_se), .CP(n147), .Q(n559), 
        .QN(n135) );
  FD1S l_caddr_reg_12_ ( .D(n418), .TI(n548), .TE(test_se), .CP(n143), .Q(n547), .QN(n132) );
  FD1S l_caddr_reg_11_ ( .D(n417), .TI(n549), .TE(test_se), .CP(n143), .Q(n548), .QN(n133) );
  FD1S l_caddr_reg_10_ ( .D(n416), .TI(n550), .TE(test_se), .CP(n143), .Q(n549), .QN(n134) );
  FD1S l_caddr_reg_9_ ( .D(n415), .TI(n551), .TE(test_se), .CP(n143), .Q(n550), 
        .QN(n123) );
  FD1S l_caddr_reg_8_ ( .D(n414), .TI(n552), .TE(test_se), .CP(n143), .Q(n551), 
        .QN(n124) );
  FD1S l_caddr_reg_7_ ( .D(n413), .TI(n553), .TE(test_se), .CP(n143), .Q(n552), 
        .QN(n125) );
  FD1S l_caddr_reg_6_ ( .D(n412), .TI(test_si2), .TE(test_se), .CP(n143), .Q(
        n553), .QN(n126) );
  FD1S l_caddr_reg_5_ ( .D(n411), .TI(n555), .TE(test_se), .CP(n143), .Q(
        test_so1), .QN(n127) );
  FD1S l_caddr_reg_4_ ( .D(n410), .TI(n556), .TE(test_se), .CP(n143), .Q(n555), 
        .QN(n128) );
  FD1S l_caddr_reg_3_ ( .D(n409), .TI(n557), .TE(test_se), .CP(n143), .Q(n556), 
        .QN(n129) );
  FD1S l_caddr_reg_2_ ( .D(n408), .TI(n558), .TE(test_se), .CP(n143), .Q(n557), 
        .QN(n130) );
  FD1S l_caddr_reg_1_ ( .D(n407), .TI(n559), .TE(test_se), .CP(n143), .Q(n558), 
        .QN(n131) );
  FD1S l_raddr_reg_12_ ( .D(n406), .TI(n518), .TE(test_se), .CP(n144), .Q(n517), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n405), .TI(n519), .TE(test_se), .CP(n144), .Q(n518), .QN(n97) );
  FD1S l_raddr_reg_10_ ( .D(n404), .TI(n520), .TE(test_se), .CP(n144), .Q(n519), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n403), .TI(n521), .TE(test_se), .CP(n144), .Q(n520), 
        .QN(n86) );
  FD1S l_raddr_reg_8_ ( .D(n402), .TI(n522), .TE(test_se), .CP(n144), .Q(n521), 
        .QN(n88) );
  FD1S l_raddr_reg_7_ ( .D(n401), .TI(n523), .TE(test_se), .CP(n144), .Q(n522), 
        .QN(n90) );
  FD1S l_raddr_reg_6_ ( .D(n400), .TI(n524), .TE(test_se), .CP(n144), .Q(n523), 
        .QN(n91) );
  FD1S l_raddr_reg_5_ ( .D(n399), .TI(n525), .TE(test_se), .CP(n145), .Q(n524), 
        .QN(n92) );
  FD1S l_raddr_reg_4_ ( .D(n398), .TI(n526), .TE(test_se), .CP(n145), .Q(n525), 
        .QN(n93) );
  FD1S l_raddr_reg_3_ ( .D(n397), .TI(n527), .TE(test_se), .CP(n145), .Q(n526), 
        .QN(n94) );
  FD1S l_raddr_reg_2_ ( .D(n396), .TI(n528), .TE(test_se), .CP(n145), .Q(n527), 
        .QN(n95) );
  FD1S l_raddr_reg_1_ ( .D(n395), .TI(test_si3), .TE(test_se), .CP(n145), .Q(
        n528), .QN(n96) );
  FD1S l_raddr_reg_0_ ( .D(n394), .TI(n530), .TE(test_se), .CP(n145), .Q(
        test_so2), .QN(n98) );
  FD1S l_wrap_reg ( .D(n392), .TI(n516), .TE(test_se), .CP(n146), .Q(n515), 
        .QN(n99) );
  FD1S l_len_reg_11_ ( .D(n391), .TI(n531), .TE(test_se), .CP(n146), .Q(n530), 
        .QN(n110) );
  FD1S l_len_reg_10_ ( .D(n390), .TI(n532), .TE(test_se), .CP(n146), .Q(n531), 
        .QN(n111) );
  FD1S l_len_reg_9_ ( .D(n389), .TI(n533), .TE(test_se), .CP(n146), .Q(n532), 
        .QN(n101) );
  FD1S l_len_reg_8_ ( .D(n388), .TI(n534), .TE(test_se), .CP(n146), .Q(n533), 
        .QN(n102) );
  FD1S l_len_reg_7_ ( .D(n387), .TI(n535), .TE(test_se), .CP(n146), .Q(n534), 
        .QN(n103) );
  FD1S l_len_reg_6_ ( .D(n386), .TI(n536), .TE(test_se), .CP(n146), .Q(n535), 
        .QN(n104) );
  FD1S l_len_reg_5_ ( .D(n385), .TI(n537), .TE(test_se), .CP(n146), .Q(n536), 
        .QN(n105) );
  FD1S l_len_reg_4_ ( .D(n384), .TI(n538), .TE(test_se), .CP(n146), .Q(n537), 
        .QN(n106) );
  FD1S l_len_reg_3_ ( .D(n383), .TI(n539), .TE(test_se), .CP(n146), .Q(n538), 
        .QN(n107) );
  FD1S l_len_reg_2_ ( .D(n382), .TI(n540), .TE(test_se), .CP(n147), .Q(n539), 
        .QN(n108) );
  FD1S l_len_reg_1_ ( .D(n381), .TI(n541), .TE(test_se), .CP(n147), .Q(n540), 
        .QN(n109) );
  FD1S l_len_reg_0_ ( .D(n380), .TI(n542), .TE(test_se), .CP(n147), .Q(n541), 
        .QN(n112) );
  FD1S l_id_reg_3_ ( .D(n379), .TI(n544), .TE(test_se), .CP(n147), .Q(n543), 
        .QN(n117) );
  FD1S l_id_reg_2_ ( .D(n378), .TI(n545), .TE(test_se), .CP(n147), .Q(n544), 
        .QN(n118) );
  FD1S l_id_reg_1_ ( .D(n377), .TI(n546), .TE(test_se), .CP(n147), .Q(n545), 
        .QN(n119) );
  FD1S l_id_reg_0_ ( .D(n376), .TI(n547), .TE(test_se), .CP(n147), .Q(n546), 
        .QN(n120) );
  FD1S l_last_reg ( .D(n375), .TI(n543), .TE(test_se), .CP(n147), .Q(n542), 
        .QN(n113) );
  FD1S l_start_reg ( .D(n374), .TI(n342), .TE(test_se), .CP(n147), .Q(n516), 
        .QN(n100) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n142), 
        .Q(b2x_cmd[1]), .QN(n425) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n146), .Q(
        b2x_cmd[0]), .QN(n344) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n121), .TE(test_se), .CP(n148), .Q(n514), 
        .QN(n84) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n514), .TE(test_se), .CP(n148), .Q(n513), 
        .QN(n136) );
  FD1S l_sdr_dma_last_reg ( .D(n419), .TI(n517), .TE(test_se), .CP(n142), .Q(
        n342), .QN(n138) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(test_si4), .TE(test_se), .CP(n142), .Q(
        tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr_1_), .TE(test_se), .CP(n142), 
        .Q(tras_cntr_2_) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr_0_), .TE(test_se), .CP(n142), 
        .Q(tras_cntr_1_) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n512), .TE(test_se), .CP(n142), .Q(
        tras_cntr_0_) );
  FD1S tras_cntr_reg_3_ ( .D(n358), .TI(tras_cntr_2_), .TE(test_se), .CP(n142), 
        .Q(test_so3) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n148), .Q(
        timer0[3]), .QN(n139) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n513), .TE(test_se), .CP(n148), .Q(
        timer0[2]), .QN(n140) );
  IVP U6 ( .A(n149), .Z(n146) );
  IVP U85 ( .A(n150), .Z(n145) );
  IVP U86 ( .A(n150), .Z(n144) );
  IVP U87 ( .A(n150), .Z(n143) );
  IVP U88 ( .A(n149), .Z(n147) );
  IVP U89 ( .A(n149), .Z(n148) );
  IVP U90 ( .A(n152), .Z(n150) );
  IVP U91 ( .A(n152), .Z(n149) );
  IVP U92 ( .A(n151), .Z(n142) );
  IVP U93 ( .A(n152), .Z(n151) );
  IVP U94 ( .A(n153), .Z(n152) );
  IVP U95 ( .A(clk), .Z(n153) );
  IV U96 ( .A(n154), .Z(n358) );
  AO2 U97 ( .A(test_so3), .B(n155), .C(tras_delay[3]), .D(n156), .Z(n154) );
  NR2 U98 ( .A(n157), .B(n158), .Z(n155) );
  AO1 U99 ( .A(n343), .B(n159), .C(n160), .D(n161), .Z(n359) );
  ND2 U100 ( .A(n162), .B(n163), .Z(n160) );
  MUX21L U101 ( .A(n164), .B(n349), .S(n165), .Z(n360) );
  IV U102 ( .A(b2x_addr[0]), .Z(n164) );
  MUX21L U103 ( .A(n166), .B(n357), .S(n165), .Z(n361) );
  IV U104 ( .A(b2x_addr[11]), .Z(n166) );
  MUX21L U105 ( .A(n345), .B(n167), .S(n168), .Z(n362) );
  IV U106 ( .A(b2x_addr[1]), .Z(n167) );
  MUX21L U107 ( .A(n169), .B(n350), .S(n165), .Z(n363) );
  IV U108 ( .A(b2x_addr[2]), .Z(n169) );
  MUX21L U109 ( .A(n170), .B(n351), .S(n165), .Z(n364) );
  IV U110 ( .A(b2x_addr[3]), .Z(n170) );
  MUX21L U111 ( .A(n346), .B(n171), .S(n168), .Z(n365) );
  IV U112 ( .A(b2x_addr[4]), .Z(n171) );
  MUX21L U113 ( .A(n347), .B(n172), .S(n168), .Z(n366) );
  IV U114 ( .A(b2x_addr[5]), .Z(n172) );
  MUX21L U115 ( .A(n173), .B(n348), .S(n165), .Z(n367) );
  IV U116 ( .A(b2x_addr[6]), .Z(n173) );
  MUX21L U117 ( .A(n353), .B(n174), .S(n168), .Z(n368) );
  IV U118 ( .A(b2x_addr[7]), .Z(n174) );
  MUX21L U119 ( .A(n354), .B(n175), .S(n168), .Z(n369) );
  IV U120 ( .A(b2x_addr[8]), .Z(n175) );
  MUX21L U121 ( .A(n352), .B(n176), .S(n168), .Z(n370) );
  IV U122 ( .A(b2x_addr[9]), .Z(n176) );
  MUX21L U123 ( .A(n1), .B(n355), .S(n165), .Z(n371) );
  MUX21L U124 ( .A(n2), .B(n356), .S(n165), .Z(n372) );
  AO4 U125 ( .A(n135), .B(n177), .C(n178), .D(n179), .Z(n373) );
  IV U126 ( .A(r2b_caddr[0]), .Z(n178) );
  AO4 U127 ( .A(n179), .B(n180), .C(n177), .D(n100), .Z(n374) );
  AO4 U128 ( .A(n179), .B(n181), .C(n177), .D(n113), .Z(n375) );
  AO4 U129 ( .A(n179), .B(n182), .C(n177), .D(n120), .Z(n376) );
  AO4 U130 ( .A(n179), .B(n183), .C(n177), .D(n119), .Z(n377) );
  AO4 U131 ( .A(n179), .B(n184), .C(n177), .D(n118), .Z(n378) );
  AO4 U132 ( .A(n179), .B(n185), .C(n177), .D(n117), .Z(n379) );
  AO4 U133 ( .A(n179), .B(n186), .C(n177), .D(n112), .Z(n380) );
  AO4 U134 ( .A(n179), .B(n187), .C(n177), .D(n109), .Z(n381) );
  AO4 U135 ( .A(n179), .B(n188), .C(n177), .D(n108), .Z(n382) );
  AO4 U136 ( .A(n179), .B(n189), .C(n177), .D(n107), .Z(n383) );
  AO4 U137 ( .A(n179), .B(n190), .C(n177), .D(n106), .Z(n384) );
  AO4 U138 ( .A(n179), .B(n191), .C(n177), .D(n105), .Z(n385) );
  AO4 U139 ( .A(n179), .B(n192), .C(n177), .D(n104), .Z(n386) );
  AO4 U140 ( .A(n179), .B(n193), .C(n177), .D(n103), .Z(n387) );
  AO4 U141 ( .A(n179), .B(n194), .C(n177), .D(n102), .Z(n388) );
  AO4 U142 ( .A(n179), .B(n195), .C(n177), .D(n101), .Z(n389) );
  AO4 U143 ( .A(n179), .B(n196), .C(n177), .D(n111), .Z(n390) );
  AO4 U144 ( .A(n179), .B(n197), .C(n177), .D(n110), .Z(n391) );
  AO4 U145 ( .A(n179), .B(n198), .C(n177), .D(n99), .Z(n392) );
  AO4 U146 ( .A(n179), .B(n199), .C(n420), .D(n177), .Z(n393) );
  AO4 U147 ( .A(n179), .B(n200), .C(n98), .D(n177), .Z(n394) );
  AO4 U148 ( .A(n179), .B(n201), .C(n96), .D(n177), .Z(n395) );
  IV U149 ( .A(r2b_raddr[1]), .Z(n201) );
  AO4 U150 ( .A(n179), .B(n202), .C(n95), .D(n177), .Z(n396) );
  AO4 U151 ( .A(n179), .B(n203), .C(n94), .D(n177), .Z(n397) );
  AO4 U152 ( .A(n179), .B(n204), .C(n93), .D(n177), .Z(n398) );
  IV U153 ( .A(r2b_raddr[4]), .Z(n204) );
  AO4 U154 ( .A(n179), .B(n205), .C(n92), .D(n177), .Z(n399) );
  IV U155 ( .A(r2b_raddr[5]), .Z(n205) );
  AO4 U156 ( .A(n179), .B(n206), .C(n91), .D(n177), .Z(n400) );
  AO4 U157 ( .A(n179), .B(n207), .C(n90), .D(n177), .Z(n401) );
  IV U158 ( .A(r2b_raddr[7]), .Z(n207) );
  AO4 U159 ( .A(n179), .B(n208), .C(n88), .D(n177), .Z(n402) );
  IV U160 ( .A(r2b_raddr[8]), .Z(n208) );
  AO4 U161 ( .A(n179), .B(n209), .C(n86), .D(n177), .Z(n403) );
  IV U162 ( .A(r2b_raddr[9]), .Z(n209) );
  AO4 U163 ( .A(n179), .B(n210), .C(n2), .D(n177), .Z(n404) );
  AO4 U164 ( .A(n179), .B(n211), .C(n97), .D(n177), .Z(n405) );
  AO4 U165 ( .A(n179), .B(n212), .C(n1), .D(n177), .Z(n406) );
  AO4 U166 ( .A(n131), .B(n177), .C(n213), .D(n179), .Z(n407) );
  IV U167 ( .A(r2b_caddr[1]), .Z(n213) );
  AO4 U168 ( .A(n130), .B(n177), .C(n214), .D(n179), .Z(n408) );
  IV U169 ( .A(r2b_caddr[2]), .Z(n214) );
  AO4 U170 ( .A(n129), .B(n177), .C(n215), .D(n179), .Z(n409) );
  IV U171 ( .A(r2b_caddr[3]), .Z(n215) );
  AO4 U172 ( .A(n128), .B(n177), .C(n216), .D(n179), .Z(n410) );
  IV U173 ( .A(r2b_caddr[4]), .Z(n216) );
  AO4 U174 ( .A(n127), .B(n177), .C(n217), .D(n179), .Z(n411) );
  IV U175 ( .A(r2b_caddr[5]), .Z(n217) );
  AO4 U176 ( .A(n126), .B(n177), .C(n218), .D(n179), .Z(n412) );
  IV U177 ( .A(r2b_caddr[6]), .Z(n218) );
  AO4 U178 ( .A(n125), .B(n177), .C(n219), .D(n179), .Z(n413) );
  IV U179 ( .A(r2b_caddr[7]), .Z(n219) );
  AO4 U180 ( .A(n124), .B(n177), .C(n220), .D(n179), .Z(n414) );
  IV U181 ( .A(r2b_caddr[8]), .Z(n220) );
  AO4 U182 ( .A(n123), .B(n177), .C(n221), .D(n179), .Z(n415) );
  IV U183 ( .A(r2b_caddr[9]), .Z(n221) );
  AO4 U184 ( .A(n177), .B(n134), .C(n222), .D(n179), .Z(n416) );
  IV U185 ( .A(r2b_caddr[10]), .Z(n222) );
  AO4 U186 ( .A(n133), .B(n177), .C(n223), .D(n179), .Z(n417) );
  IV U187 ( .A(r2b_caddr[11]), .Z(n223) );
  AO4 U188 ( .A(n177), .B(n132), .C(n224), .D(n179), .Z(n418) );
  IV U189 ( .A(r2b_caddr[12]), .Z(n224) );
  AO4 U190 ( .A(n177), .B(n138), .C(n225), .D(n179), .Z(n419) );
  IV U191 ( .A(sdr_dma_last), .Z(n225) );
  ND2 U192 ( .A(reset_n), .B(n179), .Z(n177) );
  MUX21L U193 ( .A(n198), .B(n99), .S(n226), .Z(b2x_wrap) );
  IV U194 ( .A(r2b_wrap), .Z(n198) );
  MUX21L U195 ( .A(n180), .B(n100), .S(n226), .Z(b2x_start) );
  IV U196 ( .A(r2b_start), .Z(n180) );
  AO4 U197 ( .A(n227), .B(n424), .C(n338), .D(n228), .Z(b2x_req) );
  ND2 U198 ( .A(tras_ok), .B(n229), .Z(n228) );
  AO2 U199 ( .A(n230), .B(n231), .C(x2b_act_ok_r_0_), .D(n168), .Z(n227) );
  MUX21L U200 ( .A(n341), .B(n340), .S(n121), .Z(n231) );
  NR2 U201 ( .A(n232), .B(n339), .Z(n230) );
  MUX21L U202 ( .A(n195), .B(n101), .S(n226), .Z(b2x_len[9]) );
  IV U203 ( .A(r2b_len[9]), .Z(n195) );
  MUX21L U204 ( .A(n194), .B(n102), .S(n226), .Z(b2x_len[8]) );
  IV U205 ( .A(r2b_len[8]), .Z(n194) );
  MUX21L U206 ( .A(n193), .B(n103), .S(n226), .Z(b2x_len[7]) );
  IV U207 ( .A(r2b_len[7]), .Z(n193) );
  MUX21L U208 ( .A(n192), .B(n104), .S(n226), .Z(b2x_len[6]) );
  IV U209 ( .A(r2b_len[6]), .Z(n192) );
  MUX21L U210 ( .A(n191), .B(n105), .S(n226), .Z(b2x_len[5]) );
  IV U211 ( .A(r2b_len[5]), .Z(n191) );
  MUX21L U212 ( .A(n190), .B(n106), .S(n226), .Z(b2x_len[4]) );
  IV U213 ( .A(r2b_len[4]), .Z(n190) );
  MUX21L U214 ( .A(n189), .B(n107), .S(n226), .Z(b2x_len[3]) );
  IV U215 ( .A(r2b_len[3]), .Z(n189) );
  MUX21L U216 ( .A(n188), .B(n108), .S(n226), .Z(b2x_len[2]) );
  IV U217 ( .A(r2b_len[2]), .Z(n188) );
  MUX21L U218 ( .A(n187), .B(n109), .S(n226), .Z(b2x_len[1]) );
  IV U219 ( .A(r2b_len[1]), .Z(n187) );
  MUX21L U220 ( .A(n197), .B(n110), .S(n226), .Z(b2x_len[11]) );
  IV U221 ( .A(r2b_len[11]), .Z(n197) );
  MUX21L U222 ( .A(n196), .B(n111), .S(n226), .Z(b2x_len[10]) );
  IV U223 ( .A(r2b_len[10]), .Z(n196) );
  MUX21L U224 ( .A(n186), .B(n112), .S(n226), .Z(b2x_len[0]) );
  IV U225 ( .A(r2b_len[0]), .Z(n186) );
  MUX21L U226 ( .A(n181), .B(n113), .S(n226), .Z(b2x_last) );
  IV U227 ( .A(r2b_last), .Z(n181) );
  MUX21L U228 ( .A(n185), .B(n117), .S(n226), .Z(b2x_id[3]) );
  IV U229 ( .A(r2b_req_id[3]), .Z(n185) );
  MUX21L U230 ( .A(n184), .B(n118), .S(n226), .Z(b2x_id[2]) );
  IV U231 ( .A(r2b_req_id[2]), .Z(n184) );
  MUX21L U232 ( .A(n183), .B(n119), .S(n226), .Z(b2x_id[1]) );
  IV U233 ( .A(r2b_req_id[1]), .Z(n183) );
  MUX21L U234 ( .A(n182), .B(n120), .S(n226), .Z(b2x_id[0]) );
  IV U235 ( .A(r2b_req_id[0]), .Z(n182) );
  AO4 U236 ( .A(n232), .B(n123), .C(n233), .D(n86), .Z(b2x_addr[9]) );
  AO4 U237 ( .A(n232), .B(n124), .C(n233), .D(n88), .Z(b2x_addr[8]) );
  AO4 U238 ( .A(n232), .B(n125), .C(n233), .D(n90), .Z(b2x_addr[7]) );
  AO4 U239 ( .A(n232), .B(n126), .C(n233), .D(n91), .Z(b2x_addr[6]) );
  AO4 U240 ( .A(n232), .B(n127), .C(n233), .D(n92), .Z(b2x_addr[5]) );
  AO4 U241 ( .A(n232), .B(n128), .C(n233), .D(n93), .Z(b2x_addr[4]) );
  AO4 U242 ( .A(n232), .B(n129), .C(n233), .D(n94), .Z(b2x_addr[3]) );
  AO4 U243 ( .A(n232), .B(n130), .C(n233), .D(n95), .Z(b2x_addr[2]) );
  AO4 U244 ( .A(n232), .B(n131), .C(n233), .D(n96), .Z(b2x_addr[1]) );
  AO4 U245 ( .A(n232), .B(n132), .C(n165), .D(n1), .Z(b2x_addr[12]) );
  AO4 U246 ( .A(n232), .B(n133), .C(n233), .D(n97), .Z(b2x_addr[11]) );
  AO4 U247 ( .A(n232), .B(n134), .C(n165), .D(n2), .Z(b2x_addr[10]) );
  IV U248 ( .A(n168), .Z(n165) );
  AO4 U249 ( .A(n232), .B(n135), .C(n233), .D(n98), .Z(b2x_addr[0]) );
  AO6 U250 ( .A(n234), .B(n235), .C(n161), .Z(N83) );
  MUX21L U251 ( .A(n236), .B(n237), .S(n238), .Z(n234) );
  AN3 U252 ( .A(n342), .B(n163), .C(n239), .Z(n236) );
  AO4 U253 ( .A(n179), .B(n240), .C(n241), .D(n161), .Z(N82) );
  AO1 U254 ( .A(n239), .B(n242), .C(n243), .D(n168), .Z(n241) );
  AO4 U255 ( .A(n238), .B(n244), .C(n422), .D(n235), .Z(n243) );
  ND2 U256 ( .A(x2b_ack), .B(n163), .Z(n242) );
  IV U257 ( .A(x2b_refresh), .Z(n163) );
  AO7 U258 ( .A(n245), .B(n161), .C(n179), .Z(N81) );
  ND2 U259 ( .A(b2r_ack), .B(reset_n), .Z(n179) );
  NR2 U260 ( .A(n246), .B(n226), .Z(b2r_ack) );
  IV U261 ( .A(r2b_req), .Z(n246) );
  IV U262 ( .A(n247), .Z(n245) );
  AO7 U263 ( .A(n235), .B(n421), .C(n248), .Z(n247) );
  MUX21L U264 ( .A(n168), .B(n249), .S(n238), .Z(n248) );
  AO7 U265 ( .A(n232), .B(x2b_refresh), .C(n244), .Z(n249) );
  ND3 U266 ( .A(n226), .B(n232), .C(n233), .Z(n235) );
  NR2 U267 ( .A(n229), .B(n168), .Z(n233) );
  ND2 U268 ( .A(n162), .B(n244), .Z(n229) );
  ND3 U269 ( .A(n422), .B(n85), .C(n423), .Z(n244) );
  IV U270 ( .A(n237), .Z(n162) );
  NR3 U271 ( .A(n122), .B(n423), .C(n85), .Z(n237) );
  AO4 U272 ( .A(n139), .B(n250), .C(n251), .D(n161), .Z(N80) );
  AO11 U273 ( .A(trp_delay[3]), .B(n252), .C(n253), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n254), .Z(n251) );
  AN2 U274 ( .A(n255), .B(timer0[2]), .Z(n253) );
  AO4 U275 ( .A(n140), .B(n250), .C(n256), .D(n161), .Z(N79) );
  AO11 U276 ( .A(trp_delay[2]), .B(n252), .C(n257), .D(n255), .E(trcd_delay[2]), .F(n254), .Z(n256) );
  NR2 U277 ( .A(timer0[2]), .B(n258), .Z(n257) );
  ND3 U278 ( .A(reset_n), .B(n258), .C(n255), .Z(n250) );
  AO6 U279 ( .A(n259), .B(n260), .C(n161), .Z(N78) );
  ND2 U280 ( .A(trp_delay[1]), .B(n252), .Z(n260) );
  AO2 U281 ( .A(n255), .B(n261), .C(trcd_delay[1]), .D(n254), .Z(n259) );
  AO7 U282 ( .A(n136), .B(n84), .C(n258), .Z(n261) );
  AO6 U283 ( .A(n262), .B(n263), .C(n161), .Z(N77) );
  ND2 U284 ( .A(trp_delay[0]), .B(n252), .Z(n263) );
  AO2 U285 ( .A(n255), .B(n84), .C(trcd_delay[0]), .D(n254), .Z(n262) );
  NR3 U286 ( .A(n252), .B(n254), .C(n264), .Z(n255) );
  IV U287 ( .A(n265), .Z(n264) );
  EON1 U288 ( .A(n266), .B(n157), .C(tras_delay[2]), .D(n156), .Z(N75) );
  AO6 U289 ( .A(tras_cntr_2_), .B(n267), .C(n158), .Z(n266) );
  EON1 U290 ( .A(n268), .B(n157), .C(tras_delay[1]), .D(n156), .Z(N74) );
  AO6 U291 ( .A(tras_cntr_1_), .B(tras_cntr_0_), .C(n269), .Z(n268) );
  EON1 U292 ( .A(tras_cntr_0_), .B(n157), .C(tras_delay[0]), .D(n156), .Z(N73)
         );
  NR2 U293 ( .A(n159), .B(n161), .Z(n156) );
  AO3 U294 ( .A(test_so3), .B(n270), .C(n159), .D(reset_n), .Z(n157) );
  IV U295 ( .A(n254), .Z(n159) );
  AN2 U296 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U297 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U298 ( .A(n161), .B(test_so3), .C(n270), .Z(N40) );
  IV U299 ( .A(n158), .Z(n270) );
  NR2 U300 ( .A(n267), .B(tras_cntr_2_), .Z(n158) );
  IV U301 ( .A(n269), .Z(n267) );
  NR2 U302 ( .A(tras_cntr_1_), .B(tras_cntr_0_), .Z(n269) );
  NR4 U303 ( .A(n254), .B(n252), .C(n161), .D(n265), .Z(N39) );
  OR3 U304 ( .A(timer0[2]), .B(timer0[3]), .C(n258), .Z(n265) );
  ND2 U305 ( .A(n136), .B(n84), .Z(n258) );
  AN3 U306 ( .A(x2b_ack), .B(n425), .C(n344), .Z(n252) );
  NR3 U307 ( .A(b2x_cmd[1]), .B(n344), .C(n238), .Z(n254) );
  IV U308 ( .A(x2b_ack), .Z(n238) );
  AN2 U309 ( .A(n271), .B(reset_n), .Z(N38) );
  AO7 U310 ( .A(n240), .B(n226), .C(n232), .Z(n271) );
  IV U311 ( .A(n239), .Z(n232) );
  NR2 U312 ( .A(n272), .B(n161), .Z(N37) );
  IV U313 ( .A(reset_n), .Z(n161) );
  AO1 U314 ( .A(n239), .B(n121), .C(n168), .D(n273), .Z(n272) );
  NR3 U315 ( .A(n240), .B(n226), .C(n199), .Z(n273) );
  IV U316 ( .A(r2b_write), .Z(n199) );
  ND3 U317 ( .A(n421), .B(n422), .C(n423), .Z(n226) );
  ND2 U318 ( .A(n274), .B(n275), .Z(n240) );
  NR4 U319 ( .A(n276), .B(n277), .C(n325), .D(n326), .Z(n275) );
  EN U320 ( .A(n354), .B(r2b_raddr[8]), .Z(n326) );
  EN U321 ( .A(n352), .B(r2b_raddr[9]), .Z(n325) );
  EN U322 ( .A(n353), .B(r2b_raddr[7]), .Z(n277) );
  ND4 U323 ( .A(n327), .B(n328), .C(n329), .D(n141), .Z(n276) );
  EN U324 ( .A(n211), .B(n357), .Z(n329) );
  IV U325 ( .A(r2b_raddr[11]), .Z(n211) );
  EN U326 ( .A(n210), .B(n356), .Z(n328) );
  IV U327 ( .A(r2b_raddr[10]), .Z(n210) );
  EN U328 ( .A(n212), .B(n355), .Z(n327) );
  IV U329 ( .A(r2b_raddr[12]), .Z(n212) );
  NR4 U330 ( .A(n330), .B(n331), .C(n332), .D(n333), .Z(n274) );
  EN U331 ( .A(n347), .B(r2b_raddr[5]), .Z(n333) );
  EN U332 ( .A(n345), .B(r2b_raddr[1]), .Z(n332) );
  EN U333 ( .A(n346), .B(r2b_raddr[4]), .Z(n331) );
  ND4 U334 ( .A(n334), .B(n335), .C(n336), .D(n337), .Z(n330) );
  EN U335 ( .A(n203), .B(n351), .Z(n337) );
  IV U336 ( .A(r2b_raddr[3]), .Z(n203) );
  EN U337 ( .A(n202), .B(n350), .Z(n336) );
  IV U338 ( .A(r2b_raddr[2]), .Z(n202) );
  EN U339 ( .A(n200), .B(n349), .Z(n335) );
  IV U340 ( .A(r2b_raddr[0]), .Z(n200) );
  EN U341 ( .A(n206), .B(n348), .Z(n334) );
  IV U342 ( .A(r2b_raddr[6]), .Z(n206) );
  AN3 U343 ( .A(n421), .B(n122), .C(n423), .Z(n168) );
  AN3 U344 ( .A(n122), .B(n85), .C(n423), .Z(n239) );
  AN2 U345 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U346 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U347 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, a2b_req_depth, 
        r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, r2b_raddr, 
        r2b_caddr, r2b_len, r2b_write, b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, 
        b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok, 
        x2b_rdok, x2b_wrok, xfr_bank_sel, sdr_req_norm_dma_last, tras_delay, 
        trp_delay, trcd_delay, test_si14, test_si13, test_si12, test_si11, 
        test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, 
        test_si3, test_si2, test_si1, test_so14, test_so13, test_so12, 
        test_so11, test_so10, test_so9, test_so8, test_so7, test_so6, test_so5, 
        test_so4, test_so3, test_so2, test_so1, test_se );
  input [1:0] a2b_req_depth;
  input [3:0] r2b_req_id;
  input [1:0] r2b_ba;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [11:0] r2b_len;
  output [3:0] b2x_id;
  output [1:0] b2x_ba;
  output [12:0] b2x_addr;
  output [11:0] b2x_len;
  output [1:0] b2x_cmd;
  input [3:0] x2b_pre_ok;
  input [1:0] xfr_bank_sel;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         x2b_ack, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok,
         sdr_req_norm_dma_last, test_si14, test_si13, test_si12, test_si11,
         test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, b2x_start, b2x_last, b2x_wrap,
         b2x_tras_ok, test_so14, test_so13, test_so12, test_so11, test_so10,
         test_so9, test_so8, test_so7, test_so6, test_so5, test_so4, test_so3,
         test_so2, test_so1;
  wire   rank_cnt_1_, rank_cnt_0_, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N172, n32, n33, n146, n147, n148, n1, n2, n3,
         n4, n5, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n149, n153, n161, n165, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39,
         SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41,
         SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43,
         SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45,
         SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47,
         SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49,
         SYNOPSYS_UNCONNECTED_50;
  wire   [3:0] tras_ok;
  wire   [3:0] r2i_req;
  wire   [3:0] i2r_ack;
  wire   [3:0] rank_ba_last;
  wire   [3:0] i2x_req;
  wire   [1:0] i2x_cmd0;
  wire   [1:0] i2x_cmd1;
  wire   [1:0] i2x_cmd2;
  wire   [1:0] i2x_cmd3;
  wire   [3:0] i2x_start;
  wire   [3:0] i2x_last;
  wire   [3:0] i2x_wrap;
  wire   [12:0] i2x_addr3;
  wire   [12:0] i2x_addr2;
  wire   [12:0] i2x_addr1;
  wire   [12:0] i2x_addr0;
  wire   [11:0] i2x_len3;
  wire   [11:0] i2x_len2;
  wire   [11:0] i2x_len1;
  wire   [11:0] i2x_len0;
  wire   [3:0] i2x_id3;
  wire   [3:0] i2x_id2;
  wire   [3:0] i2x_id1;
  wire   [3:0] i2x_id0;
  wire   [3:0] x2i_ack;

  sdrc_bank_fsm_test_0 bank0_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[0]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[0]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[0]), 
        .b2x_start(i2x_start[0]), .b2x_last(i2x_last[0]), .b2x_wrap(
        i2x_wrap[0]), .b2x_id(i2x_id0), .b2x_addr(i2x_addr0), .b2x_len(
        i2x_len0), .b2x_cmd(i2x_cmd0), .x2b_ack(x2i_ack[0]), .tras_ok(
        tras_ok[0]), .xfr_ok(n147), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[0]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si4(test_si4), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so4(n165), .test_so3(test_so3), .test_so2(
        test_so2), .test_so1(test_so1), .test_se(test_se) );
  sdrc_bank_fsm_test_1 bank1_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[1]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[1]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[1]), 
        .b2x_start(i2x_start[1]), .b2x_last(i2x_last[1]), .b2x_wrap(
        i2x_wrap[1]), .b2x_id(i2x_id1), .b2x_addr(i2x_addr1), .b2x_len(
        i2x_len1), .b2x_cmd(i2x_cmd1), .x2b_ack(x2i_ack[1]), .tras_ok(
        tras_ok[1]), .xfr_ok(n146), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[1]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, test_so4, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25}), .tras_delay(tras_delay), .trp_delay(
        trp_delay), .trcd_delay(trcd_delay), .test_si4(test_si7), .test_si3(
        test_si6), .test_si2(test_si5), .test_si1(n165), .test_so3(n161), 
        .test_so2(test_so6), .test_so1(test_so5), .test_se(test_se) );
  sdrc_bank_fsm_test_2 bank2_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[2]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[2]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[2]), 
        .b2x_start(i2x_start[2]), .b2x_last(i2x_last[2]), .b2x_wrap(
        i2x_wrap[2]), .b2x_id(i2x_id2), .b2x_addr(i2x_addr2), .b2x_len(
        i2x_len2), .b2x_cmd(i2x_cmd2), .x2b_ack(x2i_ack[2]), .tras_ok(
        tras_ok[2]), .xfr_ok(n148), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[2]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_26, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, test_so7, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36, 
        SYNOPSYS_UNCONNECTED_37}), .tras_delay(tras_delay), .trp_delay(
        trp_delay), .trcd_delay(trcd_delay), .test_si4(test_si10), .test_si3(
        test_si9), .test_si2(test_si8), .test_si1(n161), .test_so3(test_so10), 
        .test_so2(test_so9), .test_so1(test_so8), .test_se(test_se) );
  sdrc_bank_fsm_test_3 bank3_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[3]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[3]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[3]), 
        .b2x_start(i2x_start[3]), .b2x_last(i2x_last[3]), .b2x_wrap(
        i2x_wrap[3]), .b2x_id(i2x_id3), .b2x_addr(i2x_addr3), .b2x_len(
        i2x_len3), .b2x_cmd(i2x_cmd3), .x2b_ack(x2i_ack[3]), .tras_ok(
        tras_ok[3]), .xfr_ok(N172), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[3]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_38, 
        SYNOPSYS_UNCONNECTED_39, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si4(test_si14), .test_si3(test_si13), .test_si2(test_si12), 
        .test_si1(test_si11), .test_so4(n153), .test_so3(test_so13), 
        .test_so2(test_so12), .test_so1(test_so11), .test_se(test_se) );
  FD1S rank_ba_reg_1_ ( .D(N115), .TI(b2x_ba[0]), .TE(test_se), .CP(n18), .Q(
        b2x_ba[1]), .QN(n32) );
  FD1S rank_ba_reg_7_ ( .D(N121), .TI(n142), .TE(test_se), .CP(n18), .Q(n141), 
        .QN(n5) );
  FD1S rank_ba_reg_6_ ( .D(N120), .TI(n143), .TE(test_se), .CP(n18), .Q(n142), 
        .QN(n17) );
  FD1S rank_ba_reg_3_ ( .D(N117), .TI(n149), .TE(test_se), .CP(n18), .Q(n145), 
        .QN(n4) );
  FD1S rank_ba_reg_2_ ( .D(N116), .TI(b2x_ba[1]), .TE(test_se), .CP(n18), .Q(
        n149) );
  FD1S rank_ba_reg_0_ ( .D(N114), .TI(n153), .TE(test_se), .CP(n18), .Q(
        b2x_ba[0]), .QN(n33) );
  FD1S rank_cnt_reg_0_ ( .D(N111), .TI(n141), .TE(test_se), .CP(n18), .Q(
        rank_cnt_0_), .QN(n1) );
  FD1S rank_cnt_reg_2_ ( .D(N113), .TI(rank_cnt_1_), .TE(test_se), .CP(n18), 
        .Q(test_so14), .QN(n2) );
  FD1S rank_ba_reg_5_ ( .D(N119), .TI(n144), .TE(test_se), .CP(n18), .Q(n143)
         );
  FD1S rank_ba_reg_4_ ( .D(N118), .TI(n145), .TE(test_se), .CP(n18), .Q(n144)
         );
  FD1S rank_cnt_reg_1_ ( .D(N112), .TI(rank_cnt_0_), .TE(test_se), .CP(n18), 
        .Q(rank_cnt_1_), .QN(n3) );
  IVP U18 ( .A(n19), .Z(n18) );
  IVP U19 ( .A(clk), .Z(n19) );
  AN2 U20 ( .A(N172), .B(x2b_ack), .Z(x2i_ack[3]) );
  AN2 U21 ( .A(x2b_ack), .B(n148), .Z(x2i_ack[2]) );
  NR2 U22 ( .A(n20), .B(n21), .Z(x2i_ack[1]) );
  NR2 U23 ( .A(n20), .B(n22), .Z(x2i_ack[0]) );
  IV U24 ( .A(x2b_ack), .Z(n20) );
  NR3 U25 ( .A(n23), .B(n24), .C(n25), .Z(r2i_req[3]) );
  NR3 U26 ( .A(n24), .B(r2b_ba[0]), .C(n25), .Z(r2i_req[2]) );
  IV U27 ( .A(r2b_ba[1]), .Z(n25) );
  NR3 U28 ( .A(n24), .B(r2b_ba[1]), .C(n23), .Z(r2i_req[1]) );
  IV U29 ( .A(r2b_ba[0]), .Z(n23) );
  NR3 U30 ( .A(r2b_ba[0]), .B(r2b_ba[1]), .C(n24), .Z(r2i_req[0]) );
  ND2 U31 ( .A(r2b_req), .B(b2r_arb_ok), .Z(n24) );
  IV U32 ( .A(n26), .Z(b2r_arb_ok) );
  AO7 U33 ( .A(n27), .B(n28), .C(n2), .Z(n26) );
  EN U34 ( .A(n3), .B(a2b_req_depth[1]), .Z(n28) );
  EN U35 ( .A(n1), .B(a2b_req_depth[0]), .Z(n27) );
  ND2 U36 ( .A(n29), .B(n30), .Z(b2x_wrap) );
  AO2 U37 ( .A(i2x_wrap[3]), .B(N172), .C(i2x_wrap[1]), .D(n146), .Z(n30) );
  AO2 U38 ( .A(i2x_wrap[0]), .B(n147), .C(i2x_wrap[2]), .D(n148), .Z(n29) );
  AN4 U39 ( .A(tras_ok[3]), .B(tras_ok[2]), .C(tras_ok[1]), .D(tras_ok[0]), 
        .Z(b2x_tras_ok) );
  ND2 U40 ( .A(n31), .B(n34), .Z(b2x_start) );
  AO2 U41 ( .A(i2x_start[3]), .B(N172), .C(i2x_start[1]), .D(n146), .Z(n34) );
  AO2 U42 ( .A(i2x_start[0]), .B(n147), .C(i2x_start[2]), .D(n148), .Z(n31) );
  ND2 U43 ( .A(n35), .B(n36), .Z(b2x_len[9]) );
  AO2 U44 ( .A(i2x_len3[9]), .B(N172), .C(i2x_len1[9]), .D(n146), .Z(n36) );
  AO2 U45 ( .A(i2x_len0[9]), .B(n147), .C(i2x_len2[9]), .D(n148), .Z(n35) );
  ND2 U46 ( .A(n37), .B(n38), .Z(b2x_len[8]) );
  AO2 U47 ( .A(i2x_len3[8]), .B(N172), .C(i2x_len1[8]), .D(n146), .Z(n38) );
  AO2 U48 ( .A(i2x_len0[8]), .B(n147), .C(i2x_len2[8]), .D(n148), .Z(n37) );
  ND2 U49 ( .A(n39), .B(n40), .Z(b2x_len[7]) );
  AO2 U50 ( .A(i2x_len3[7]), .B(N172), .C(i2x_len1[7]), .D(n146), .Z(n40) );
  AO2 U51 ( .A(i2x_len0[7]), .B(n147), .C(i2x_len2[7]), .D(n148), .Z(n39) );
  ND2 U52 ( .A(n41), .B(n42), .Z(b2x_len[6]) );
  AO2 U53 ( .A(i2x_len3[6]), .B(N172), .C(i2x_len1[6]), .D(n146), .Z(n42) );
  AO2 U54 ( .A(i2x_len0[6]), .B(n147), .C(i2x_len2[6]), .D(n148), .Z(n41) );
  ND2 U55 ( .A(n43), .B(n44), .Z(b2x_len[5]) );
  AO2 U56 ( .A(i2x_len3[5]), .B(N172), .C(i2x_len1[5]), .D(n146), .Z(n44) );
  AO2 U57 ( .A(i2x_len0[5]), .B(n147), .C(i2x_len2[5]), .D(n148), .Z(n43) );
  ND2 U58 ( .A(n45), .B(n46), .Z(b2x_len[4]) );
  AO2 U59 ( .A(i2x_len3[4]), .B(N172), .C(i2x_len1[4]), .D(n146), .Z(n46) );
  AO2 U60 ( .A(i2x_len0[4]), .B(n147), .C(i2x_len2[4]), .D(n148), .Z(n45) );
  ND2 U61 ( .A(n47), .B(n48), .Z(b2x_len[3]) );
  AO2 U62 ( .A(i2x_len3[3]), .B(N172), .C(i2x_len1[3]), .D(n146), .Z(n48) );
  AO2 U63 ( .A(i2x_len0[3]), .B(n147), .C(i2x_len2[3]), .D(n148), .Z(n47) );
  ND2 U64 ( .A(n49), .B(n50), .Z(b2x_len[2]) );
  AO2 U65 ( .A(i2x_len3[2]), .B(N172), .C(i2x_len1[2]), .D(n146), .Z(n50) );
  AO2 U66 ( .A(i2x_len0[2]), .B(n147), .C(i2x_len2[2]), .D(n148), .Z(n49) );
  ND2 U67 ( .A(n51), .B(n52), .Z(b2x_len[1]) );
  AO2 U68 ( .A(i2x_len3[1]), .B(N172), .C(i2x_len1[1]), .D(n146), .Z(n52) );
  AO2 U69 ( .A(i2x_len0[1]), .B(n147), .C(i2x_len2[1]), .D(n148), .Z(n51) );
  ND2 U70 ( .A(n53), .B(n54), .Z(b2x_len[11]) );
  AO2 U71 ( .A(i2x_len3[11]), .B(N172), .C(i2x_len1[11]), .D(n146), .Z(n54) );
  AO2 U72 ( .A(i2x_len0[11]), .B(n147), .C(i2x_len2[11]), .D(n148), .Z(n53) );
  ND2 U73 ( .A(n55), .B(n56), .Z(b2x_len[10]) );
  AO2 U74 ( .A(i2x_len3[10]), .B(N172), .C(i2x_len1[10]), .D(n146), .Z(n56) );
  AO2 U75 ( .A(i2x_len0[10]), .B(n147), .C(i2x_len2[10]), .D(n148), .Z(n55) );
  ND2 U76 ( .A(n57), .B(n58), .Z(b2x_len[0]) );
  AO2 U77 ( .A(i2x_len3[0]), .B(N172), .C(i2x_len1[0]), .D(n146), .Z(n58) );
  AO2 U78 ( .A(i2x_len0[0]), .B(n147), .C(i2x_len2[0]), .D(n148), .Z(n57) );
  ND2 U79 ( .A(n59), .B(n60), .Z(b2x_last) );
  AO2 U80 ( .A(i2x_last[3]), .B(N172), .C(i2x_last[1]), .D(n146), .Z(n60) );
  AO2 U81 ( .A(i2x_last[0]), .B(n147), .C(i2x_last[2]), .D(n148), .Z(n59) );
  ND2 U82 ( .A(n61), .B(n62), .Z(b2x_id[3]) );
  AO2 U83 ( .A(i2x_id3[3]), .B(N172), .C(i2x_id1[3]), .D(n146), .Z(n62) );
  AO2 U84 ( .A(i2x_id0[3]), .B(n147), .C(i2x_id2[3]), .D(n148), .Z(n61) );
  ND2 U85 ( .A(n63), .B(n64), .Z(b2x_id[2]) );
  AO2 U86 ( .A(i2x_id3[2]), .B(N172), .C(i2x_id1[2]), .D(n146), .Z(n64) );
  AO2 U87 ( .A(i2x_id0[2]), .B(n147), .C(i2x_id2[2]), .D(n148), .Z(n63) );
  ND2 U88 ( .A(n65), .B(n66), .Z(b2x_id[1]) );
  AO2 U89 ( .A(i2x_id3[1]), .B(N172), .C(i2x_id1[1]), .D(n146), .Z(n66) );
  AO2 U90 ( .A(i2x_id0[1]), .B(n147), .C(i2x_id2[1]), .D(n148), .Z(n65) );
  ND2 U91 ( .A(n67), .B(n68), .Z(b2x_id[0]) );
  AO2 U92 ( .A(i2x_id3[0]), .B(N172), .C(i2x_id1[0]), .D(n146), .Z(n68) );
  AO2 U93 ( .A(i2x_id0[0]), .B(n147), .C(i2x_id2[0]), .D(n148), .Z(n67) );
  ND2 U94 ( .A(n69), .B(n70), .Z(b2x_cmd[0]) );
  AO2 U95 ( .A(i2x_cmd3[0]), .B(N172), .C(i2x_cmd1[0]), .D(n146), .Z(n70) );
  AO2 U96 ( .A(i2x_cmd0[0]), .B(n147), .C(i2x_cmd2[0]), .D(n148), .Z(n69) );
  ND2 U97 ( .A(n71), .B(n72), .Z(b2x_addr[9]) );
  AO2 U98 ( .A(i2x_addr3[9]), .B(N172), .C(i2x_addr1[9]), .D(n146), .Z(n72) );
  AO2 U99 ( .A(i2x_addr0[9]), .B(n147), .C(i2x_addr2[9]), .D(n148), .Z(n71) );
  ND2 U100 ( .A(n73), .B(n74), .Z(b2x_addr[8]) );
  AO2 U101 ( .A(i2x_addr3[8]), .B(N172), .C(i2x_addr1[8]), .D(n146), .Z(n74)
         );
  AO2 U102 ( .A(i2x_addr0[8]), .B(n147), .C(i2x_addr2[8]), .D(n148), .Z(n73)
         );
  ND2 U103 ( .A(n75), .B(n76), .Z(b2x_addr[7]) );
  AO2 U104 ( .A(i2x_addr3[7]), .B(N172), .C(i2x_addr1[7]), .D(n146), .Z(n76)
         );
  AO2 U105 ( .A(i2x_addr0[7]), .B(n147), .C(i2x_addr2[7]), .D(n148), .Z(n75)
         );
  ND2 U106 ( .A(n77), .B(n78), .Z(b2x_addr[6]) );
  AO2 U107 ( .A(i2x_addr3[6]), .B(N172), .C(i2x_addr1[6]), .D(n146), .Z(n78)
         );
  AO2 U108 ( .A(i2x_addr0[6]), .B(n147), .C(i2x_addr2[6]), .D(n148), .Z(n77)
         );
  ND2 U109 ( .A(n79), .B(n80), .Z(b2x_addr[5]) );
  AO2 U110 ( .A(i2x_addr3[5]), .B(N172), .C(i2x_addr1[5]), .D(n146), .Z(n80)
         );
  AO2 U111 ( .A(i2x_addr0[5]), .B(n147), .C(i2x_addr2[5]), .D(n148), .Z(n79)
         );
  ND2 U112 ( .A(n81), .B(n82), .Z(b2x_addr[4]) );
  AO2 U113 ( .A(i2x_addr3[4]), .B(N172), .C(i2x_addr1[4]), .D(n146), .Z(n82)
         );
  AO2 U114 ( .A(i2x_addr0[4]), .B(n147), .C(i2x_addr2[4]), .D(n148), .Z(n81)
         );
  ND2 U115 ( .A(n83), .B(n84), .Z(b2x_addr[3]) );
  AO2 U116 ( .A(i2x_addr3[3]), .B(N172), .C(i2x_addr1[3]), .D(n146), .Z(n84)
         );
  AO2 U117 ( .A(i2x_addr0[3]), .B(n147), .C(i2x_addr2[3]), .D(n148), .Z(n83)
         );
  ND2 U118 ( .A(n85), .B(n86), .Z(b2x_addr[2]) );
  AO2 U119 ( .A(i2x_addr3[2]), .B(N172), .C(i2x_addr1[2]), .D(n146), .Z(n86)
         );
  AO2 U120 ( .A(i2x_addr0[2]), .B(n147), .C(i2x_addr2[2]), .D(n148), .Z(n85)
         );
  ND2 U121 ( .A(n87), .B(n88), .Z(b2x_addr[1]) );
  AO2 U122 ( .A(i2x_addr3[1]), .B(N172), .C(i2x_addr1[1]), .D(n146), .Z(n88)
         );
  AO2 U123 ( .A(i2x_addr0[1]), .B(n147), .C(i2x_addr2[1]), .D(n148), .Z(n87)
         );
  ND2 U124 ( .A(n89), .B(n90), .Z(b2x_addr[12]) );
  AO2 U125 ( .A(i2x_addr3[12]), .B(N172), .C(i2x_addr1[12]), .D(n146), .Z(n90)
         );
  AO2 U126 ( .A(i2x_addr0[12]), .B(n147), .C(i2x_addr2[12]), .D(n148), .Z(n89)
         );
  ND2 U127 ( .A(n91), .B(n92), .Z(b2x_addr[11]) );
  AO2 U128 ( .A(i2x_addr3[11]), .B(N172), .C(i2x_addr1[11]), .D(n146), .Z(n92)
         );
  AO2 U129 ( .A(i2x_addr0[11]), .B(n147), .C(i2x_addr2[11]), .D(n148), .Z(n91)
         );
  ND2 U130 ( .A(n93), .B(n94), .Z(b2x_addr[10]) );
  AO2 U131 ( .A(i2x_addr3[10]), .B(N172), .C(i2x_addr1[10]), .D(n146), .Z(n94)
         );
  AO2 U132 ( .A(i2x_addr0[10]), .B(n147), .C(i2x_addr2[10]), .D(n148), .Z(n93)
         );
  ND2 U133 ( .A(n95), .B(n96), .Z(b2x_addr[0]) );
  AO2 U134 ( .A(i2x_addr3[0]), .B(N172), .C(i2x_addr1[0]), .D(n146), .Z(n96)
         );
  AO2 U135 ( .A(i2x_addr0[0]), .B(n147), .C(i2x_addr2[0]), .D(n148), .Z(n95)
         );
  AO4 U136 ( .A(n97), .B(n5), .C(n98), .D(n99), .Z(N121) );
  ND2 U137 ( .A(r2b_ba[1]), .B(n100), .Z(n99) );
  AO4 U138 ( .A(n97), .B(n17), .C(n98), .D(n101), .Z(N120) );
  ND2 U139 ( .A(r2b_ba[0]), .B(n100), .Z(n101) );
  OR3 U140 ( .A(n98), .B(n102), .C(n100), .Z(n97) );
  MUX21H U141 ( .A(n103), .B(n104), .S(n102), .Z(n100) );
  NR3 U142 ( .A(n105), .B(n106), .C(n2), .Z(n104) );
  NR2 U143 ( .A(n107), .B(n108), .Z(n103) );
  NR2 U144 ( .A(n98), .B(n109), .Z(N119) );
  MUX31L U145 ( .D0(n141), .D1(n143), .D2(r2b_ba[1]), .A(n110), .B(n111), .Z(
        n109) );
  NR2 U146 ( .A(n98), .B(n112), .Z(N118) );
  MUX31L U147 ( .D0(n142), .D1(n144), .D2(r2b_ba[0]), .A(n110), .B(n111), .Z(
        n112) );
  NR2 U148 ( .A(n113), .B(n107), .Z(n111) );
  IV U149 ( .A(n114), .Z(n107) );
  MUX21H U150 ( .A(n115), .B(n108), .S(n102), .Z(n113) );
  ND2 U151 ( .A(rank_cnt_1_), .B(n1), .Z(n115) );
  NR2 U152 ( .A(n98), .B(n116), .Z(N117) );
  MUX31L U153 ( .D0(n143), .D1(n145), .D2(r2b_ba[1]), .A(n110), .B(n117), .Z(
        n116) );
  NR2 U154 ( .A(n98), .B(n118), .Z(N116) );
  MUX31L U155 ( .D0(n144), .D1(n149), .D2(r2b_ba[0]), .A(n110), .B(n117), .Z(
        n118) );
  AN3 U156 ( .A(n114), .B(n105), .C(n119), .Z(n117) );
  MUX21L U157 ( .A(rank_cnt_0_), .B(rank_cnt_1_), .S(n110), .Z(n119) );
  NR2 U158 ( .A(n98), .B(n120), .Z(N115) );
  MUX21L U159 ( .A(r2b_ba[1]), .B(n121), .S(n122), .Z(n120) );
  MUX21L U160 ( .A(n4), .B(n32), .S(n110), .Z(n121) );
  NR2 U161 ( .A(n98), .B(n123), .Z(N114) );
  MUX21L U162 ( .A(r2b_ba[0]), .B(n124), .S(n122), .Z(n123) );
  AO2 U163 ( .A(b2r_ack), .B(b2x_idle), .C(n114), .D(n125), .Z(n122) );
  NR2 U164 ( .A(n110), .B(rank_cnt_1_), .Z(n125) );
  IV U165 ( .A(n102), .Z(n110) );
  NR2 U166 ( .A(n106), .B(test_so14), .Z(n114) );
  NR2 U167 ( .A(n105), .B(test_so14), .Z(b2x_idle) );
  IV U168 ( .A(n106), .Z(b2r_ack) );
  MUX21H U169 ( .A(b2x_ba[0]), .B(n149), .S(n102), .Z(n124) );
  IV U170 ( .A(reset_n), .Z(n98) );
  AO4 U171 ( .A(n2), .B(n126), .C(n127), .D(n128), .Z(N113) );
  MUX21L U172 ( .A(n129), .B(n130), .S(n108), .Z(n128) );
  EN U173 ( .A(test_so14), .B(n131), .Z(n130) );
  MUX21L U174 ( .A(n131), .B(n102), .S(n2), .Z(n129) );
  IV U175 ( .A(n132), .Z(n131) );
  AO4 U176 ( .A(n3), .B(n126), .C(n133), .D(n127), .Z(N112) );
  AO6 U177 ( .A(n134), .B(n135), .C(n132), .Z(n133) );
  NR2 U178 ( .A(n135), .B(n134), .Z(n132) );
  AN2 U179 ( .A(n108), .B(n105), .Z(n134) );
  ND2 U180 ( .A(n1), .B(n3), .Z(n105) );
  ND2 U181 ( .A(rank_cnt_1_), .B(rank_cnt_0_), .Z(n108) );
  MUX21L U182 ( .A(n126), .B(n127), .S(n1), .Z(N111) );
  ND2 U183 ( .A(n136), .B(reset_n), .Z(n127) );
  EN U184 ( .A(n102), .B(n106), .Z(n136) );
  AO3 U185 ( .A(n102), .B(n106), .C(n135), .D(reset_n), .Z(n126) );
  ND2 U186 ( .A(n102), .B(n106), .Z(n135) );
  NR4 U187 ( .A(i2r_ack[1]), .B(i2r_ack[0]), .C(i2r_ack[3]), .D(i2r_ack[2]), 
        .Z(n106) );
  AN3 U188 ( .A(b2x_cmd[1]), .B(b2x_req), .C(x2b_ack), .Z(n102) );
  ND2 U189 ( .A(n137), .B(n138), .Z(b2x_req) );
  AO2 U190 ( .A(i2x_req[3]), .B(N172), .C(i2x_req[1]), .D(n146), .Z(n138) );
  AO2 U191 ( .A(i2x_req[0]), .B(n147), .C(i2x_req[2]), .D(n148), .Z(n137) );
  ND2 U192 ( .A(n139), .B(n140), .Z(b2x_cmd[1]) );
  AO2 U193 ( .A(i2x_cmd3[1]), .B(N172), .C(i2x_cmd1[1]), .D(n146), .Z(n140) );
  IV U194 ( .A(n21), .Z(n146) );
  ND2 U195 ( .A(n32), .B(b2x_ba[0]), .Z(n21) );
  NR2 U196 ( .A(n32), .B(n33), .Z(N172) );
  AO2 U197 ( .A(i2x_cmd0[1]), .B(n147), .C(i2x_cmd2[1]), .D(n148), .Z(n139) );
  NR2 U198 ( .A(b2x_ba[0]), .B(n32), .Z(n148) );
  IV U199 ( .A(n22), .Z(n147) );
  ND2 U200 ( .A(n32), .B(n33), .Z(n22) );
endmodule


module sdrc_bs_convert_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, sdr_width, 
        x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_rddt, x2a_rdok, 
        a2x_wrdt, a2x_wren_n, x2a_wrnext, app_wr_data, app_wr_en_n, 
        app_wr_next, app_last_wr, app_rd_data, app_rd_valid, app_last_rd, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [1:0] sdr_width;
  input [15:0] x2a_rddt;
  output [15:0] a2x_wrdt;
  output [1:0] a2x_wren_n;
  input [31:0] app_wr_data;
  input [3:0] app_wr_en_n;
  output [31:0] app_rd_data;
  input clk, reset_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast,
         x2a_rdok, x2a_wrnext, test_si2, test_si1, test_se;
  output app_wr_next, app_last_wr, app_rd_valid, app_last_rd, test_so2,
         test_so1;
  wire   x2a_wrlast, x2a_rdlast, wr_xfr_count_0_, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n218, n219, n220, n221, n222;
  wire   [1:0] rd_xfr_count;
  assign app_last_wr = x2a_wrlast;
  assign app_last_rd = x2a_rdlast;

  FD1S saved_rd_data_reg_23_ ( .D(n190), .TI(n200), .TE(test_se), .CP(n57), 
        .Q(n199), .QN(n40) );
  FD1S saved_rd_data_reg_22_ ( .D(n189), .TI(n201), .TE(test_se), .CP(n57), 
        .Q(n200), .QN(n41) );
  FD1S saved_rd_data_reg_21_ ( .D(n188), .TI(n202), .TE(test_se), .CP(n57), 
        .Q(n201), .QN(n42) );
  FD1S saved_rd_data_reg_20_ ( .D(n187), .TI(n203), .TE(test_se), .CP(n57), 
        .Q(n202), .QN(n43) );
  FD1S saved_rd_data_reg_19_ ( .D(n186), .TI(n204), .TE(test_se), .CP(n57), 
        .Q(n203), .QN(n45) );
  FD1S saved_rd_data_reg_18_ ( .D(n185), .TI(n205), .TE(test_se), .CP(n57), 
        .Q(n204), .QN(n46) );
  FD1S saved_rd_data_reg_17_ ( .D(n184), .TI(n206), .TE(test_se), .CP(n57), 
        .Q(n205), .QN(n47) );
  FD1S saved_rd_data_reg_16_ ( .D(n183), .TI(n207), .TE(test_se), .CP(n57), 
        .Q(n206), .QN(n48) );
  FD1S saved_rd_data_reg_15_ ( .D(n182), .TI(n208), .TE(test_se), .CP(n56), 
        .Q(n207), .QN(n49) );
  FD1S saved_rd_data_reg_14_ ( .D(n181), .TI(n209), .TE(test_se), .CP(n56), 
        .Q(n208), .QN(n50) );
  FD1S saved_rd_data_reg_13_ ( .D(n180), .TI(n210), .TE(test_se), .CP(n56), 
        .Q(n209), .QN(n51) );
  FD1S saved_rd_data_reg_12_ ( .D(n179), .TI(n211), .TE(test_se), .CP(n56), 
        .Q(n210), .QN(n52) );
  FD1S saved_rd_data_reg_11_ ( .D(n178), .TI(n212), .TE(test_se), .CP(n56), 
        .Q(n211), .QN(n53) );
  FD1S saved_rd_data_reg_10_ ( .D(n177), .TI(n213), .TE(test_se), .CP(n56), 
        .Q(n212), .QN(n54) );
  FD1S saved_rd_data_reg_9_ ( .D(n176), .TI(n214), .TE(test_se), .CP(n56), .Q(
        n213), .QN(n32) );
  FD1S saved_rd_data_reg_8_ ( .D(n175), .TI(n215), .TE(test_se), .CP(n56), .Q(
        n214), .QN(n33) );
  FD1S saved_rd_data_reg_7_ ( .D(n174), .TI(n216), .TE(test_se), .CP(n58), .Q(
        n215), .QN(n34) );
  FD1S saved_rd_data_reg_6_ ( .D(n173), .TI(test_si2), .TE(test_se), .CP(n58), 
        .Q(n216), .QN(n35) );
  FD1S saved_rd_data_reg_5_ ( .D(n172), .TI(n218), .TE(test_se), .CP(n58), .Q(
        test_so1), .QN(n36) );
  FD1S saved_rd_data_reg_4_ ( .D(n171), .TI(n219), .TE(test_se), .CP(n58), .Q(
        n218), .QN(n37) );
  FD1S saved_rd_data_reg_3_ ( .D(n170), .TI(n220), .TE(test_se), .CP(n57), .Q(
        n219), .QN(n38) );
  FD1S saved_rd_data_reg_2_ ( .D(n169), .TI(n221), .TE(test_se), .CP(n57), .Q(
        n220), .QN(n39) );
  FD1S saved_rd_data_reg_1_ ( .D(n168), .TI(n222), .TE(test_se), .CP(n57), .Q(
        n221), .QN(n44) );
  FD1S saved_rd_data_reg_0_ ( .D(n167), .TI(rd_xfr_count[1]), .TE(test_se), 
        .CP(n57), .Q(n222), .QN(n55) );
  FD1S rd_xfr_count_reg_1_ ( .D(n191), .TI(rd_xfr_count[0]), .TE(test_se), 
        .CP(n56), .Q(rd_xfr_count[1]), .QN(n29) );
  FD1S wr_xfr_count_reg_1_ ( .D(n165), .TI(wr_xfr_count_0_), .TE(test_se), 
        .CP(n56), .Q(test_so2), .QN(n31) );
  FD1S rd_xfr_count_reg_0_ ( .D(n192), .TI(test_si1), .TE(test_se), .CP(n56), 
        .Q(rd_xfr_count[0]) );
  FD1S wr_xfr_count_reg_0_ ( .D(n166), .TI(n199), .TE(test_se), .CP(n56), .Q(
        wr_xfr_count_0_), .QN(n30) );
  IVP U31 ( .A(n59), .Z(n57) );
  IVP U32 ( .A(n59), .Z(n56) );
  IVP U33 ( .A(n59), .Z(n58) );
  IVP U34 ( .A(clk), .Z(n59) );
  AO4 U35 ( .A(n60), .B(n61), .C(n62), .D(n63), .Z(a2x_wrdt[10]) );
  IV U36 ( .A(app_wr_data[26]), .Z(n63) );
  IV U37 ( .A(app_wr_data[10]), .Z(n61) );
  AO4 U38 ( .A(n60), .B(n64), .C(n62), .D(n65), .Z(a2x_wrdt[11]) );
  IV U39 ( .A(app_wr_data[27]), .Z(n65) );
  IV U40 ( .A(app_wr_data[11]), .Z(n64) );
  AO4 U41 ( .A(n60), .B(n66), .C(n62), .D(n67), .Z(a2x_wrdt[12]) );
  IV U42 ( .A(app_wr_data[28]), .Z(n67) );
  IV U43 ( .A(app_wr_data[12]), .Z(n66) );
  AO4 U44 ( .A(n60), .B(n68), .C(n62), .D(n69), .Z(a2x_wrdt[13]) );
  IV U45 ( .A(app_wr_data[29]), .Z(n69) );
  IV U46 ( .A(app_wr_data[13]), .Z(n68) );
  AO4 U47 ( .A(n60), .B(n70), .C(n62), .D(n71), .Z(a2x_wrdt[14]) );
  IV U48 ( .A(app_wr_data[30]), .Z(n71) );
  IV U49 ( .A(app_wr_data[14]), .Z(n70) );
  AO4 U50 ( .A(n60), .B(n72), .C(n62), .D(n73), .Z(a2x_wrdt[15]) );
  IV U51 ( .A(app_wr_data[31]), .Z(n73) );
  IV U52 ( .A(app_wr_data[15]), .Z(n72) );
  AO4 U53 ( .A(n60), .B(n74), .C(n62), .D(n75), .Z(a2x_wrdt[8]) );
  IV U54 ( .A(app_wr_data[24]), .Z(n75) );
  IV U55 ( .A(app_wr_data[8]), .Z(n74) );
  AO4 U56 ( .A(n60), .B(n76), .C(n62), .D(n77), .Z(a2x_wrdt[9]) );
  IV U57 ( .A(app_wr_data[25]), .Z(n77) );
  IV U58 ( .A(app_wr_data[9]), .Z(n76) );
  AO4 U59 ( .A(n60), .B(n78), .C(n62), .D(n79), .Z(a2x_wren_n[1]) );
  IV U60 ( .A(app_wr_en_n[3]), .Z(n79) );
  IV U61 ( .A(app_wr_en_n[1]), .Z(n78) );
  MUX21L U62 ( .A(n80), .B(n81), .S(rd_xfr_count[0]), .Z(n192) );
  OR3 U63 ( .A(n82), .B(x2a_rdlast), .C(n83), .Z(n80) );
  AO4 U64 ( .A(n81), .B(n29), .C(n83), .D(n84), .Z(n191) );
  ND2 U65 ( .A(n85), .B(n86), .Z(n84) );
  IV U66 ( .A(x2a_rdlast), .Z(n86) );
  AO4 U67 ( .A(rd_xfr_count[0]), .B(n29), .C(n82), .D(n87), .Z(n85) );
  IV U68 ( .A(n82), .Z(n81) );
  NR3 U69 ( .A(x2a_rdlast), .B(x2a_rdok), .C(n83), .Z(n82) );
  AO4 U70 ( .A(n88), .B(n40), .C(n89), .D(n90), .Z(n190) );
  AO4 U71 ( .A(n88), .B(n41), .C(n89), .D(n91), .Z(n189) );
  AO4 U72 ( .A(n88), .B(n42), .C(n89), .D(n92), .Z(n188) );
  AO4 U73 ( .A(n88), .B(n43), .C(n89), .D(n93), .Z(n187) );
  AO4 U74 ( .A(n88), .B(n45), .C(n89), .D(n94), .Z(n186) );
  AO4 U75 ( .A(n88), .B(n46), .C(n89), .D(n95), .Z(n185) );
  AO4 U76 ( .A(n88), .B(n47), .C(n89), .D(n96), .Z(n184) );
  AO4 U77 ( .A(n88), .B(n48), .C(n89), .D(n97), .Z(n183) );
  ND2 U78 ( .A(reset_n), .B(n88), .Z(n89) );
  ND2 U79 ( .A(reset_n), .B(n98), .Z(n88) );
  OR4 U80 ( .A(n99), .B(n29), .C(n100), .D(rd_xfr_count[0]), .Z(n98) );
  AO7 U81 ( .A(n101), .B(n49), .C(n102), .Z(n182) );
  AO2 U82 ( .A(x2a_rddt[15]), .B(n103), .C(n104), .D(x2a_rddt[7]), .Z(n102) );
  AO7 U83 ( .A(n101), .B(n50), .C(n105), .Z(n181) );
  AO2 U84 ( .A(x2a_rddt[14]), .B(n103), .C(n104), .D(x2a_rddt[6]), .Z(n105) );
  AO7 U85 ( .A(n101), .B(n51), .C(n106), .Z(n180) );
  AO2 U86 ( .A(x2a_rddt[13]), .B(n103), .C(n104), .D(x2a_rddt[5]), .Z(n106) );
  AO7 U87 ( .A(n101), .B(n52), .C(n107), .Z(n179) );
  AO2 U88 ( .A(x2a_rddt[12]), .B(n103), .C(n104), .D(x2a_rddt[4]), .Z(n107) );
  AO7 U89 ( .A(n101), .B(n53), .C(n108), .Z(n178) );
  AO2 U90 ( .A(x2a_rddt[11]), .B(n103), .C(n104), .D(x2a_rddt[3]), .Z(n108) );
  AO7 U91 ( .A(n101), .B(n54), .C(n109), .Z(n177) );
  AO2 U92 ( .A(x2a_rddt[10]), .B(n103), .C(n104), .D(x2a_rddt[2]), .Z(n109) );
  AO7 U93 ( .A(n101), .B(n32), .C(n110), .Z(n176) );
  AO2 U94 ( .A(x2a_rddt[9]), .B(n103), .C(n104), .D(x2a_rddt[1]), .Z(n110) );
  AO7 U95 ( .A(n101), .B(n33), .C(n111), .Z(n175) );
  AO2 U96 ( .A(x2a_rddt[8]), .B(n103), .C(n104), .D(x2a_rddt[0]), .Z(n111) );
  AN3 U97 ( .A(n112), .B(n101), .C(reset_n), .Z(n104) );
  AN3 U98 ( .A(n101), .B(n100), .C(reset_n), .Z(n103) );
  AO7 U99 ( .A(n87), .B(n99), .C(n113), .Z(n101) );
  ND2 U100 ( .A(rd_xfr_count[0]), .B(n29), .Z(n87) );
  AO4 U101 ( .A(n114), .B(n34), .C(n90), .D(n115), .Z(n174) );
  AO4 U102 ( .A(n114), .B(n35), .C(n91), .D(n115), .Z(n173) );
  AO4 U103 ( .A(n114), .B(n36), .C(n92), .D(n115), .Z(n172) );
  AO4 U104 ( .A(n114), .B(n37), .C(n93), .D(n115), .Z(n171) );
  AO4 U105 ( .A(n114), .B(n38), .C(n94), .D(n115), .Z(n170) );
  AO4 U106 ( .A(n114), .B(n39), .C(n95), .D(n115), .Z(n169) );
  AO4 U107 ( .A(n114), .B(n44), .C(n96), .D(n115), .Z(n168) );
  AO4 U108 ( .A(n114), .B(n55), .C(n97), .D(n115), .Z(n167) );
  ND2 U109 ( .A(reset_n), .B(n114), .Z(n115) );
  ND2 U110 ( .A(n113), .B(n116), .Z(n114) );
  OR3 U111 ( .A(rd_xfr_count[0]), .B(rd_xfr_count[1]), .C(n99), .Z(n116) );
  AO6 U112 ( .A(n100), .B(x2a_rdok), .C(n83), .Z(n113) );
  MUX21L U113 ( .A(n117), .B(n118), .S(n30), .Z(n166) );
  ND2 U114 ( .A(n119), .B(n117), .Z(n118) );
  MUX21L U115 ( .A(n120), .B(n121), .S(n31), .Z(n165) );
  ND3 U116 ( .A(wr_xfr_count_0_), .B(n117), .C(n119), .Z(n121) );
  AO6 U117 ( .A(n119), .B(n30), .C(n122), .Z(n120) );
  IV U118 ( .A(n117), .Z(n122) );
  ND2 U119 ( .A(n119), .B(n123), .Z(n117) );
  NR2 U120 ( .A(x2a_wrlast), .B(n83), .Z(n119) );
  IV U121 ( .A(reset_n), .Z(n83) );
  AO6 U122 ( .A(n124), .B(n62), .C(n123), .Z(app_wr_next) );
  IV U123 ( .A(x2a_wrnext), .Z(n123) );
  NR2 U124 ( .A(n125), .B(n126), .Z(n124) );
  AO6 U125 ( .A(n127), .B(n128), .C(n99), .Z(app_rd_valid) );
  IV U126 ( .A(x2a_rdok), .Z(n99) );
  AO7 U127 ( .A(n100), .B(rd_xfr_count[1]), .C(rd_xfr_count[0]), .Z(n128) );
  AO4 U128 ( .A(n129), .B(n127), .C(n130), .D(n32), .Z(app_rd_data[9]) );
  AO4 U129 ( .A(n131), .B(n127), .C(n130), .D(n33), .Z(app_rd_data[8]) );
  AO4 U130 ( .A(n90), .B(n127), .C(n130), .D(n34), .Z(app_rd_data[7]) );
  AO4 U131 ( .A(n91), .B(n127), .C(n130), .D(n35), .Z(app_rd_data[6]) );
  AO4 U132 ( .A(n92), .B(n127), .C(n130), .D(n36), .Z(app_rd_data[5]) );
  AO4 U133 ( .A(n93), .B(n127), .C(n130), .D(n37), .Z(app_rd_data[4]) );
  AO4 U134 ( .A(n94), .B(n127), .C(n130), .D(n38), .Z(app_rd_data[3]) );
  AO4 U135 ( .A(n90), .B(n132), .C(n112), .D(n133), .Z(app_rd_data[31]) );
  AO4 U136 ( .A(n91), .B(n132), .C(n112), .D(n134), .Z(app_rd_data[30]) );
  AO4 U137 ( .A(n95), .B(n127), .C(n130), .D(n39), .Z(app_rd_data[2]) );
  AO4 U138 ( .A(n92), .B(n132), .C(n112), .D(n135), .Z(app_rd_data[29]) );
  AO4 U139 ( .A(n93), .B(n132), .C(n112), .D(n136), .Z(app_rd_data[28]) );
  AO4 U140 ( .A(n94), .B(n132), .C(n112), .D(n137), .Z(app_rd_data[27]) );
  AO4 U141 ( .A(n95), .B(n132), .C(n112), .D(n138), .Z(app_rd_data[26]) );
  AO4 U142 ( .A(n96), .B(n132), .C(n112), .D(n129), .Z(app_rd_data[25]) );
  IV U143 ( .A(x2a_rddt[9]), .Z(n129) );
  AO4 U144 ( .A(n97), .B(n132), .C(n112), .D(n131), .Z(app_rd_data[24]) );
  IV U145 ( .A(x2a_rddt[8]), .Z(n131) );
  AO4 U146 ( .A(n40), .B(n132), .C(n112), .D(n90), .Z(app_rd_data[23]) );
  IV U147 ( .A(x2a_rddt[7]), .Z(n90) );
  AO4 U148 ( .A(n41), .B(n132), .C(n112), .D(n91), .Z(app_rd_data[22]) );
  IV U149 ( .A(x2a_rddt[6]), .Z(n91) );
  AO4 U150 ( .A(n42), .B(n132), .C(n112), .D(n92), .Z(app_rd_data[21]) );
  IV U151 ( .A(x2a_rddt[5]), .Z(n92) );
  AO4 U152 ( .A(n43), .B(n132), .C(n112), .D(n93), .Z(app_rd_data[20]) );
  IV U153 ( .A(x2a_rddt[4]), .Z(n93) );
  AO4 U154 ( .A(n96), .B(n127), .C(n130), .D(n44), .Z(app_rd_data[1]) );
  AO4 U155 ( .A(n45), .B(n132), .C(n112), .D(n94), .Z(app_rd_data[19]) );
  IV U156 ( .A(x2a_rddt[3]), .Z(n94) );
  AO4 U157 ( .A(n46), .B(n132), .C(n112), .D(n95), .Z(app_rd_data[18]) );
  IV U158 ( .A(x2a_rddt[2]), .Z(n95) );
  AO4 U159 ( .A(n47), .B(n132), .C(n112), .D(n96), .Z(app_rd_data[17]) );
  IV U160 ( .A(x2a_rddt[1]), .Z(n96) );
  AO4 U161 ( .A(n48), .B(n132), .C(n112), .D(n97), .Z(app_rd_data[16]) );
  AO4 U162 ( .A(n133), .B(n127), .C(n130), .D(n49), .Z(app_rd_data[15]) );
  IV U163 ( .A(x2a_rddt[15]), .Z(n133) );
  AO4 U164 ( .A(n134), .B(n127), .C(n130), .D(n50), .Z(app_rd_data[14]) );
  IV U165 ( .A(x2a_rddt[14]), .Z(n134) );
  AO4 U166 ( .A(n135), .B(n127), .C(n130), .D(n51), .Z(app_rd_data[13]) );
  IV U167 ( .A(x2a_rddt[13]), .Z(n135) );
  AO4 U168 ( .A(n136), .B(n127), .C(n130), .D(n52), .Z(app_rd_data[12]) );
  IV U169 ( .A(x2a_rddt[12]), .Z(n136) );
  AO4 U170 ( .A(n137), .B(n127), .C(n130), .D(n53), .Z(app_rd_data[11]) );
  IV U171 ( .A(x2a_rddt[11]), .Z(n137) );
  AO4 U172 ( .A(n138), .B(n127), .C(n130), .D(n54), .Z(app_rd_data[10]) );
  IV U173 ( .A(x2a_rddt[10]), .Z(n138) );
  AO4 U174 ( .A(n97), .B(n127), .C(n130), .D(n55), .Z(app_rd_data[0]) );
  NR2 U175 ( .A(n100), .B(sdr_width[1]), .Z(n130) );
  IV U176 ( .A(n125), .Z(n127) );
  IV U177 ( .A(x2a_rddt[0]), .Z(n97) );
  ND2 U178 ( .A(n139), .B(n140), .Z(a2x_wren_n[0]) );
  AO2 U179 ( .A(n126), .B(app_wr_en_n[3]), .C(n141), .D(app_wr_en_n[1]), .Z(
        n140) );
  AO2 U180 ( .A(app_wr_en_n[2]), .B(n142), .C(app_wr_en_n[0]), .D(n143), .Z(
        n139) );
  ND2 U181 ( .A(n144), .B(n145), .Z(a2x_wrdt[7]) );
  AO2 U182 ( .A(n126), .B(app_wr_data[31]), .C(n141), .D(app_wr_data[15]), .Z(
        n145) );
  AO2 U183 ( .A(app_wr_data[23]), .B(n142), .C(app_wr_data[7]), .D(n143), .Z(
        n144) );
  ND2 U184 ( .A(n146), .B(n147), .Z(a2x_wrdt[6]) );
  AO2 U185 ( .A(n126), .B(app_wr_data[30]), .C(n141), .D(app_wr_data[14]), .Z(
        n147) );
  AO2 U186 ( .A(app_wr_data[22]), .B(n142), .C(app_wr_data[6]), .D(n143), .Z(
        n146) );
  ND2 U187 ( .A(n148), .B(n149), .Z(a2x_wrdt[5]) );
  AO2 U188 ( .A(n126), .B(app_wr_data[29]), .C(n141), .D(app_wr_data[13]), .Z(
        n149) );
  AO2 U189 ( .A(app_wr_data[21]), .B(n142), .C(app_wr_data[5]), .D(n143), .Z(
        n148) );
  ND2 U190 ( .A(n150), .B(n151), .Z(a2x_wrdt[4]) );
  AO2 U191 ( .A(n126), .B(app_wr_data[28]), .C(n141), .D(app_wr_data[12]), .Z(
        n151) );
  AO2 U192 ( .A(app_wr_data[20]), .B(n142), .C(app_wr_data[4]), .D(n143), .Z(
        n150) );
  ND2 U193 ( .A(n152), .B(n153), .Z(a2x_wrdt[3]) );
  AO2 U194 ( .A(n126), .B(app_wr_data[27]), .C(n141), .D(app_wr_data[11]), .Z(
        n153) );
  AO2 U195 ( .A(app_wr_data[19]), .B(n142), .C(app_wr_data[3]), .D(n143), .Z(
        n152) );
  ND2 U196 ( .A(n154), .B(n155), .Z(a2x_wrdt[2]) );
  AO2 U197 ( .A(n126), .B(app_wr_data[26]), .C(n141), .D(app_wr_data[10]), .Z(
        n155) );
  AO2 U198 ( .A(app_wr_data[18]), .B(n142), .C(app_wr_data[2]), .D(n143), .Z(
        n154) );
  ND2 U199 ( .A(n156), .B(n157), .Z(a2x_wrdt[1]) );
  AO2 U200 ( .A(n126), .B(app_wr_data[25]), .C(n141), .D(app_wr_data[9]), .Z(
        n157) );
  AO2 U201 ( .A(app_wr_data[17]), .B(n142), .C(app_wr_data[1]), .D(n143), .Z(
        n156) );
  ND2 U202 ( .A(n158), .B(n159), .Z(a2x_wrdt[0]) );
  AO2 U203 ( .A(n126), .B(app_wr_data[24]), .C(n141), .D(app_wr_data[8]), .Z(
        n159) );
  AN3 U204 ( .A(wr_xfr_count_0_), .B(n31), .C(sdr_width[1]), .Z(n141) );
  AN3 U205 ( .A(test_so2), .B(wr_xfr_count_0_), .C(sdr_width[1]), .Z(n126) );
  AO2 U206 ( .A(app_wr_data[16]), .B(n142), .C(app_wr_data[0]), .D(n143), .Z(
        n158) );
  AO7 U207 ( .A(test_so2), .B(wr_xfr_count_0_), .C(n60), .Z(n143) );
  AO6 U208 ( .A(n30), .B(n100), .C(n125), .Z(n60) );
  NR2 U209 ( .A(sdr_width[0]), .B(sdr_width[1]), .Z(n125) );
  ND2 U210 ( .A(n62), .B(n160), .Z(n142) );
  OR3 U211 ( .A(n31), .B(wr_xfr_count_0_), .C(n132), .Z(n160) );
  ND2 U212 ( .A(wr_xfr_count_0_), .B(n100), .Z(n62) );
  IV U213 ( .A(n112), .Z(n100) );
  ND2 U214 ( .A(sdr_width[0]), .B(n132), .Z(n112) );
  IV U215 ( .A(sdr_width[1]), .Z(n132) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 ( A, B, CI, DIFF, 
        CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [11:1] carry;

  FA1A U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1A U2_6 ( .A(A[6]), .B(n6), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1A U2_8 ( .A(A[8]), .B(n4), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FA1A U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(DIFF[10]) );
  FA1A U2_3 ( .A(A[3]), .B(n9), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1A U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1A U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1A U2_9 ( .A(A[9]), .B(n3), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9]) );
  FA1A U2_2 ( .A(A[2]), .B(n10), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1A U2_1 ( .A(A[1]), .B(n11), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  EO3P U2_11 ( .A(A[11]), .B(n12), .C(carry[11]), .Z(DIFF[11]) );
  IVP U1 ( .A(n14), .Z(n2) );
  IVP U2 ( .A(B[0]), .Z(n14) );
  IVP U3 ( .A(B[11]), .Z(n12) );
  EN U4 ( .A(A[0]), .B(n14), .Z(DIFF[0]) );
  IVP U5 ( .A(B[1]), .Z(n11) );
  ND2 U6 ( .A(n1), .B(n2), .Z(carry[1]) );
  IVP U7 ( .A(A[0]), .Z(n1) );
  IVP U8 ( .A(B[2]), .Z(n10) );
  IVP U9 ( .A(B[9]), .Z(n3) );
  IVP U10 ( .A(B[7]), .Z(n5) );
  IVP U11 ( .A(B[5]), .Z(n7) );
  IVP U12 ( .A(B[3]), .Z(n9) );
  IVP U13 ( .A(B[10]), .Z(n13) );
  IVP U14 ( .A(B[8]), .Z(n4) );
  IVP U15 ( .A(B[6]), .Z(n6) );
  IVP U16 ( .A(B[4]), .Z(n8) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:1] carry;

  FA1A U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA1A U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  FA1A U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA1A U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA1A U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1A U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1A U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1A U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1A U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1A U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1A U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  EO U1 ( .A(A[12]), .B(carry[12]), .Z(SUM[12]) );
  EO U2 ( .A(A[0]), .B(B[0]), .Z(SUM[0]) );
  EN U3 ( .A(A[25]), .B(n1), .Z(SUM[25]) );
  ND2 U4 ( .A(A[24]), .B(carry[24]), .Z(n1) );
  EO U5 ( .A(A[24]), .B(carry[24]), .Z(SUM[24]) );
  EO U6 ( .A(A[23]), .B(carry[23]), .Z(SUM[23]) );
  EO U7 ( .A(A[22]), .B(carry[22]), .Z(SUM[22]) );
  EO U8 ( .A(A[21]), .B(carry[21]), .Z(SUM[21]) );
  EO U9 ( .A(A[20]), .B(carry[20]), .Z(SUM[20]) );
  EO U10 ( .A(A[19]), .B(carry[19]), .Z(SUM[19]) );
  EO U11 ( .A(A[18]), .B(carry[18]), .Z(SUM[18]) );
  EO U12 ( .A(A[17]), .B(carry[17]), .Z(SUM[17]) );
  EO U13 ( .A(A[16]), .B(carry[16]), .Z(SUM[16]) );
  EO U14 ( .A(A[15]), .B(carry[15]), .Z(SUM[15]) );
  EO U15 ( .A(A[14]), .B(carry[14]), .Z(SUM[14]) );
  EO U16 ( .A(A[13]), .B(carry[13]), .Z(SUM[13]) );
  AN2P U17 ( .A(A[23]), .B(carry[23]), .Z(carry[24]) );
  AN2P U18 ( .A(A[22]), .B(carry[22]), .Z(carry[23]) );
  AN2P U19 ( .A(A[21]), .B(carry[21]), .Z(carry[22]) );
  AN2P U20 ( .A(A[20]), .B(carry[20]), .Z(carry[21]) );
  AN2P U21 ( .A(A[19]), .B(carry[19]), .Z(carry[20]) );
  AN2P U22 ( .A(A[18]), .B(carry[18]), .Z(carry[19]) );
  AN2P U23 ( .A(A[17]), .B(carry[17]), .Z(carry[18]) );
  AN2P U24 ( .A(A[16]), .B(carry[16]), .Z(carry[17]) );
  AN2P U25 ( .A(A[15]), .B(carry[15]), .Z(carry[16]) );
  AN2P U26 ( .A(A[14]), .B(carry[14]), .Z(carry[15]) );
  AN2P U27 ( .A(A[13]), .B(carry[13]), .Z(carry[14]) );
  AN2P U28 ( .A(A[12]), .B(carry[12]), .Z(carry[13]) );
  AN2P U29 ( .A(A[0]), .B(B[0]), .Z(carry[1]) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, cfg_colbits, 
        sdr_width, req, req_id, req_addr, req_len, req_wrap, req_wr_n, req_ack, 
        r2x_idle, r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, 
        r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, b2r_arb_ok, 
        test_si5, test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, 
        test_so1, test_se );
  input [1:0] cfg_colbits;
  input [1:0] sdr_width;
  input [3:0] req_id;
  input [25:0] req_addr;
  input [8:0] req_len;
  output [3:0] r2b_req_id;
  output [1:0] r2b_ba;
  output [12:0] r2b_raddr;
  output [12:0] r2b_caddr;
  output [11:0] r2b_len;
  input clk, reset_n, req, req_wrap, req_wr_n, b2r_ack, b2r_arb_ok, test_si5,
         test_si4, test_si3, test_si2, test_si1, test_se;
  output req_ack, r2x_idle, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         test_so3, test_so2, test_so1;
  wire   page_ovflw_r, lcl_req_len_11_, lcl_req_len_10_, lcl_req_len_9_,
         lcl_req_len_8_, lcl_req_len_7_, lcl_req_len_6_, lcl_req_len_5_,
         lcl_req_len_4_, lcl_req_len_2_, lcl_req_len_1_, lcl_req_len_0_,
         curr_sdr_addr_25_, curr_sdr_addr_24_, curr_sdr_addr_23_,
         curr_sdr_addr_22_, curr_sdr_addr_21_, curr_sdr_addr_20_,
         curr_sdr_addr_19_, curr_sdr_addr_18_, curr_sdr_addr_17_,
         curr_sdr_addr_16_, curr_sdr_addr_15_, curr_sdr_addr_14_,
         curr_sdr_addr_13_, curr_sdr_addr_12_, curr_sdr_addr_11_,
         curr_sdr_addr_10_, curr_sdr_addr_9_, curr_sdr_addr_8_,
         curr_sdr_addr_7_, curr_sdr_addr_6_, curr_sdr_addr_5_,
         curr_sdr_addr_3_, curr_sdr_addr_2_, curr_sdr_addr_1_,
         curr_sdr_addr_0_, req_st_0_, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, N94, N95, N98, N100, N105, N108, N109, N110, N111,
         N112, N113, N114, N115, N116, N130, N131, N132, N133, N134, N135,
         N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N146,
         N147, N166, N167, N171, N172, N173, N174, N175, N177, N178, N179,
         N180, N181, N182, N183, N184, N185, N186, N187, N188, N189, n1, n2,
         n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422;
  wire   [11:0] next_req_len;
  wire   [25:0] next_sdr_addr;
  wire   [7:0] map_address;
  assign r2b_caddr[12] = 1'b0;
  assign r2b_caddr[11] = 1'b0;

  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 sub_230 ( .A({
        lcl_req_len_11_, lcl_req_len_10_, lcl_req_len_9_, lcl_req_len_8_, 
        lcl_req_len_7_, lcl_req_len_6_, lcl_req_len_5_, lcl_req_len_4_, 
        test_so2, lcl_req_len_2_, lcl_req_len_1_, lcl_req_len_0_}), .B(r2b_len), .CI(1'b0), .DIFF(next_req_len) );
  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_add_0 add_232 ( .A({curr_sdr_addr_25_, 
        curr_sdr_addr_24_, curr_sdr_addr_23_, curr_sdr_addr_22_, 
        curr_sdr_addr_21_, curr_sdr_addr_20_, curr_sdr_addr_19_, 
        curr_sdr_addr_18_, curr_sdr_addr_17_, curr_sdr_addr_16_, 
        curr_sdr_addr_15_, curr_sdr_addr_14_, curr_sdr_addr_13_, 
        curr_sdr_addr_12_, curr_sdr_addr_11_, curr_sdr_addr_10_, 
        curr_sdr_addr_9_, curr_sdr_addr_8_, curr_sdr_addr_7_, curr_sdr_addr_6_, 
        curr_sdr_addr_5_, test_so1, curr_sdr_addr_3_, curr_sdr_addr_2_, 
        curr_sdr_addr_1_, curr_sdr_addr_0_}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r2b_len}), .CI(
        1'b0), .SUM(next_sdr_addr) );
  FD1S max_r2b_len_r_reg_11_ ( .D(N95), .TI(n412), .TE(test_se), .CP(n7), .Q(
        n411), .QN(n366) );
  FD1S max_r2b_len_r_reg_10_ ( .D(N94), .TI(n413), .TE(test_se), .CP(n7), .Q(
        n412), .QN(n367) );
  FD1S max_r2b_len_r_reg_9_ ( .D(N93), .TI(n414), .TE(test_se), .CP(n7), .Q(
        n413), .QN(n357) );
  FD1S max_r2b_len_r_reg_8_ ( .D(N92), .TI(n415), .TE(test_se), .CP(n7), .Q(
        n414), .QN(n358) );
  FD1S max_r2b_len_r_reg_7_ ( .D(N91), .TI(n416), .TE(test_se), .CP(n7), .Q(
        n415), .QN(n359) );
  FD1S max_r2b_len_r_reg_6_ ( .D(N90), .TI(n417), .TE(test_se), .CP(n7), .Q(
        n416), .QN(n360) );
  FD1S max_r2b_len_r_reg_5_ ( .D(N89), .TI(n418), .TE(test_se), .CP(n7), .Q(
        n417), .QN(n361) );
  FD1S max_r2b_len_r_reg_4_ ( .D(N88), .TI(n419), .TE(test_se), .CP(n6), .Q(
        n418), .QN(n362) );
  FD1S max_r2b_len_r_reg_3_ ( .D(N87), .TI(n420), .TE(test_se), .CP(n6), .Q(
        n419), .QN(n363) );
  FD1S max_r2b_len_r_reg_2_ ( .D(N86), .TI(n421), .TE(test_se), .CP(n6), .Q(
        n420), .QN(n364) );
  FD1S max_r2b_len_r_reg_1_ ( .D(N85), .TI(n422), .TE(test_se), .CP(n6), .Q(
        n421), .QN(n365) );
  FD1S max_r2b_len_r_reg_0_ ( .D(N84), .TI(r2b_wrap), .TE(test_se), .CP(n6), 
        .Q(n422), .QN(n368) );
  FD1S lcl_req_len_reg_1_ ( .D(N109), .TI(lcl_req_len_0_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_1_), .QN(n387) );
  FD1S lcl_req_len_reg_2_ ( .D(N110), .TI(lcl_req_len_1_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_2_), .QN(n386) );
  FD1S lcl_req_len_reg_3_ ( .D(N111), .TI(lcl_req_len_2_), .TE(test_se), .CP(
        n8), .Q(test_so2), .QN(n385) );
  FD1S lcl_req_len_reg_4_ ( .D(N112), .TI(test_si3), .TE(test_se), .CP(n8), 
        .Q(lcl_req_len_4_), .QN(n384) );
  FD1S lcl_req_len_reg_5_ ( .D(N113), .TI(lcl_req_len_4_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_5_), .QN(n383) );
  FD1S lcl_req_len_reg_6_ ( .D(N114), .TI(lcl_req_len_5_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_6_), .QN(n382) );
  FD1S lcl_req_len_reg_7_ ( .D(N115), .TI(lcl_req_len_6_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_7_), .QN(n381) );
  FD1S lcl_req_len_reg_8_ ( .D(N116), .TI(lcl_req_len_7_), .TE(test_se), .CP(
        n8), .Q(lcl_req_len_8_), .QN(n380) );
  FD1S lcl_req_len_reg_9_ ( .D(n392), .TI(lcl_req_len_8_), .TE(test_se), .CP(
        n10), .Q(lcl_req_len_9_), .QN(n379) );
  FD1S lcl_req_len_reg_10_ ( .D(n391), .TI(lcl_req_len_9_), .TE(test_se), .CP(
        n10), .Q(lcl_req_len_10_), .QN(n378) );
  FD1S lcl_req_len_reg_11_ ( .D(n390), .TI(lcl_req_len_10_), .TE(test_se), 
        .CP(n10), .Q(lcl_req_len_11_), .QN(n377) );
  FD1S curr_sdr_addr_reg_1_ ( .D(map_address[1]), .TI(curr_sdr_addr_0_), .TE(
        test_se), .CP(n8), .Q(curr_sdr_addr_1_), .QN(n375) );
  FD1S curr_sdr_addr_reg_2_ ( .D(map_address[2]), .TI(curr_sdr_addr_1_), .TE(
        test_se), .CP(n6), .Q(curr_sdr_addr_2_), .QN(n374) );
  FD1S curr_sdr_addr_reg_3_ ( .D(map_address[3]), .TI(curr_sdr_addr_2_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_3_), .QN(n373) );
  FD1S curr_sdr_addr_reg_4_ ( .D(map_address[4]), .TI(curr_sdr_addr_3_), .TE(
        test_se), .CP(n9), .Q(test_so1), .QN(n372) );
  FD1S curr_sdr_addr_reg_5_ ( .D(map_address[5]), .TI(test_si2), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_5_), .QN(n371) );
  FD1S curr_sdr_addr_reg_6_ ( .D(map_address[6]), .TI(curr_sdr_addr_5_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_6_), .QN(n370) );
  FD1S curr_sdr_addr_reg_7_ ( .D(map_address[7]), .TI(curr_sdr_addr_6_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_7_), .QN(n369) );
  FD1S curr_sdr_addr_reg_0_ ( .D(map_address[0]), .TI(test_si1), .TE(test_se), 
        .CP(n8), .Q(curr_sdr_addr_0_), .QN(n376) );
  FD1S curr_sdr_addr_reg_8_ ( .D(N130), .TI(curr_sdr_addr_7_), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_8_) );
  FD1S curr_sdr_addr_reg_9_ ( .D(N131), .TI(curr_sdr_addr_8_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_9_) );
  FD1S curr_sdr_addr_reg_10_ ( .D(N132), .TI(curr_sdr_addr_9_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_10_) );
  FD1S curr_sdr_addr_reg_11_ ( .D(N133), .TI(curr_sdr_addr_10_), .TE(test_se), 
        .CP(n13), .Q(curr_sdr_addr_11_) );
  FD1S curr_sdr_addr_reg_25_ ( .D(N147), .TI(curr_sdr_addr_24_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_25_) );
  FD1S req_st_reg_1_ ( .D(N167), .TI(req_st_0_), .TE(test_se), .CP(n6), .Q(
        test_so3), .QN(n2) );
  FD1S page_ovflw_r_reg ( .D(N83), .TI(n411), .TE(test_se), .CP(n6), .Q(
        page_ovflw_r) );
  FD1S curr_sdr_addr_reg_12_ ( .D(N134), .TI(curr_sdr_addr_11_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_12_) );
  FD1S curr_sdr_addr_reg_13_ ( .D(N135), .TI(curr_sdr_addr_12_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_13_) );
  FD1S curr_sdr_addr_reg_14_ ( .D(N136), .TI(curr_sdr_addr_13_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_14_) );
  FD1S curr_sdr_addr_reg_15_ ( .D(N137), .TI(curr_sdr_addr_14_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_15_) );
  FD1S curr_sdr_addr_reg_16_ ( .D(N138), .TI(curr_sdr_addr_15_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_16_) );
  FD1S curr_sdr_addr_reg_17_ ( .D(N139), .TI(curr_sdr_addr_16_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_17_) );
  FD1S curr_sdr_addr_reg_18_ ( .D(N140), .TI(curr_sdr_addr_17_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_18_) );
  FD1S curr_sdr_addr_reg_19_ ( .D(N141), .TI(curr_sdr_addr_18_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_19_) );
  FD1S curr_sdr_addr_reg_20_ ( .D(N142), .TI(curr_sdr_addr_19_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_20_) );
  FD1S curr_sdr_addr_reg_21_ ( .D(N143), .TI(curr_sdr_addr_20_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_21_) );
  FD1S curr_sdr_addr_reg_22_ ( .D(N144), .TI(curr_sdr_addr_21_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_22_) );
  FD1S curr_sdr_addr_reg_23_ ( .D(N145), .TI(curr_sdr_addr_22_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_23_) );
  FD1S curr_sdr_addr_reg_24_ ( .D(N146), .TI(curr_sdr_addr_23_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_24_) );
  FD1S req_st_reg_0_ ( .D(N166), .TI(r2b_write), .TE(test_se), .CP(n6), .Q(
        req_st_0_) );
  FD1S r2b_write_reg ( .D(N100), .TI(r2b_start), .TE(test_se), .CP(n6), .Q(
        r2b_write), .QN(n389) );
  FD1S lcl_req_len_reg_0_ ( .D(N108), .TI(curr_sdr_addr_25_), .TE(test_se), 
        .CP(n8), .Q(lcl_req_len_0_), .QN(n388) );
  FD1S r2b_raddr_reg_12_ ( .D(N189), .TI(r2b_raddr[11]), .TE(test_se), .CP(n12), .Q(r2b_raddr[12]) );
  FD1S r2b_raddr_reg_11_ ( .D(N188), .TI(r2b_raddr[10]), .TE(test_se), .CP(n12), .Q(r2b_raddr[11]) );
  FD1S r2b_raddr_reg_10_ ( .D(N187), .TI(r2b_raddr[9]), .TE(test_se), .CP(n12), 
        .Q(r2b_raddr[10]) );
  FD1S r2b_raddr_reg_6_ ( .D(N183), .TI(r2b_raddr[5]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[6]) );
  FD1S r2b_raddr_reg_3_ ( .D(N180), .TI(r2b_raddr[2]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[3]) );
  FD1S r2b_raddr_reg_2_ ( .D(N179), .TI(r2b_raddr[1]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[2]) );
  FD1S r2b_raddr_reg_0_ ( .D(N177), .TI(r2b_caddr[10]), .TE(test_se), .CP(n12), 
        .Q(r2b_raddr[0]) );
  FD1S r2b_caddr_reg_10_ ( .D(N175), .TI(r2b_caddr[9]), .TE(test_se), .CP(n10), 
        .Q(r2b_caddr[10]) );
  FD1S r2b_caddr_reg_9_ ( .D(N174), .TI(r2b_caddr[8]), .TE(test_se), .CP(n10), 
        .Q(r2b_caddr[9]) );
  FD1S r2b_caddr_reg_8_ ( .D(N173), .TI(r2b_caddr[7]), .TE(test_se), .CP(n9), 
        .Q(r2b_caddr[8]) );
  FD1S r2b_caddr_reg_7_ ( .D(map_address[7]), .TI(r2b_caddr[6]), .TE(test_se), 
        .CP(n10), .Q(r2b_caddr[7]) );
  FD1S r2b_caddr_reg_6_ ( .D(map_address[6]), .TI(r2b_caddr[5]), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[6]) );
  FD1S r2b_caddr_reg_5_ ( .D(map_address[5]), .TI(r2b_caddr[4]), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[5]) );
  FD1S r2b_caddr_reg_4_ ( .D(map_address[4]), .TI(r2b_caddr[3]), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[4]) );
  FD1S r2b_caddr_reg_3_ ( .D(map_address[3]), .TI(r2b_caddr[2]), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[3]) );
  FD1S r2b_caddr_reg_2_ ( .D(map_address[2]), .TI(r2b_caddr[1]), .TE(test_se), 
        .CP(n6), .Q(r2b_caddr[2]) );
  FD1S r2b_caddr_reg_1_ ( .D(map_address[1]), .TI(test_si4), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[1]) );
  FD1S r2b_caddr_reg_0_ ( .D(map_address[0]), .TI(r2b_ba[1]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[0]) );
  FD1S r2b_req_id_reg_3_ ( .D(n393), .TI(r2b_req_id[2]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[3]) );
  FD1S r2b_req_id_reg_2_ ( .D(n394), .TI(test_si5), .TE(test_se), .CP(n7), .Q(
        r2b_req_id[2]) );
  FD1S r2b_req_id_reg_1_ ( .D(n395), .TI(r2b_req_id[0]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[1]) );
  FD1S r2b_req_id_reg_0_ ( .D(n396), .TI(r2b_raddr[12]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[0]) );
  FD1S r2b_start_reg ( .D(N98), .TI(r2b_req_id[3]), .TE(test_se), .CP(n7), .Q(
        r2b_start), .QN(n1) );
  FD1S lcl_wrap_reg ( .D(N105), .TI(lcl_req_len_11_), .TE(test_se), .CP(n6), 
        .Q(r2b_wrap), .QN(n3) );
  FD1S r2b_ba_reg_1_ ( .D(N172), .TI(r2b_ba[0]), .TE(test_se), .CP(n12), .Q(
        r2b_ba[1]) );
  FD1S r2b_ba_reg_0_ ( .D(N171), .TI(page_ovflw_r), .TE(test_se), .CP(n13), 
        .Q(r2b_ba[0]) );
  FD1S r2b_raddr_reg_9_ ( .D(N186), .TI(r2b_raddr[8]), .TE(test_se), .CP(n12), 
        .Q(r2b_raddr[9]) );
  FD1S r2b_raddr_reg_8_ ( .D(N185), .TI(r2b_raddr[7]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[8]) );
  FD1S r2b_raddr_reg_7_ ( .D(N184), .TI(r2b_raddr[6]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[7]) );
  FD1S r2b_raddr_reg_5_ ( .D(N182), .TI(r2b_raddr[4]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[5]) );
  FD1S r2b_raddr_reg_4_ ( .D(N181), .TI(r2b_raddr[3]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[4]) );
  FD1S r2b_raddr_reg_1_ ( .D(N178), .TI(r2b_raddr[0]), .TE(test_se), .CP(n12), 
        .Q(r2b_raddr[1]) );
  IVP U13 ( .A(n14), .Z(n12) );
  IVP U14 ( .A(n14), .Z(n11) );
  IVP U95 ( .A(n15), .Z(n9) );
  IVP U96 ( .A(n15), .Z(n10) );
  IVP U97 ( .A(n15), .Z(n8) );
  IVP U98 ( .A(n16), .Z(n7) );
  IVP U99 ( .A(n16), .Z(n6) );
  IVP U100 ( .A(n14), .Z(n13) );
  IVP U101 ( .A(n17), .Z(n14) );
  IVP U102 ( .A(n17), .Z(n15) );
  IVP U103 ( .A(n17), .Z(n16) );
  IVP U104 ( .A(n18), .Z(n17) );
  IVP U105 ( .A(clk), .Z(n18) );
  NR2 U106 ( .A(req), .B(r2b_req), .Z(r2x_idle) );
  AO4 U107 ( .A(req_st_0_), .B(n2), .C(page_ovflw_r), .D(n1), .Z(r2b_last) );
  EON1 U108 ( .A(n377), .B(n19), .C(next_req_len[11]), .D(n20), .Z(n390) );
  EON1 U109 ( .A(n378), .B(n19), .C(next_req_len[10]), .D(n20), .Z(n391) );
  EON1 U110 ( .A(n379), .B(n19), .C(next_req_len[9]), .D(n20), .Z(n392) );
  MUX21H U111 ( .A(req_id[3]), .B(r2b_req_id[3]), .S(n21), .Z(n393) );
  MUX21H U112 ( .A(req_id[2]), .B(r2b_req_id[2]), .S(n21), .Z(n394) );
  MUX21H U113 ( .A(req_id[1]), .B(r2b_req_id[1]), .S(n21), .Z(n395) );
  MUX21H U114 ( .A(req_id[0]), .B(r2b_req_id[0]), .S(n21), .Z(n396) );
  IV U115 ( .A(n108), .Z(r2b_req) );
  MUX21L U116 ( .A(n357), .B(n379), .S(n109), .Z(r2b_len[9]) );
  MUX21L U117 ( .A(n358), .B(n380), .S(n109), .Z(r2b_len[8]) );
  MUX21L U118 ( .A(n359), .B(n381), .S(n109), .Z(r2b_len[7]) );
  MUX21L U119 ( .A(n360), .B(n382), .S(n109), .Z(r2b_len[6]) );
  MUX21L U120 ( .A(n361), .B(n383), .S(n109), .Z(r2b_len[5]) );
  MUX21L U121 ( .A(n362), .B(n384), .S(n109), .Z(r2b_len[4]) );
  MUX21L U122 ( .A(n363), .B(n385), .S(n109), .Z(r2b_len[3]) );
  MUX21L U123 ( .A(n364), .B(n386), .S(n109), .Z(r2b_len[2]) );
  MUX21L U124 ( .A(n365), .B(n387), .S(n109), .Z(r2b_len[1]) );
  MUX21L U125 ( .A(n366), .B(n377), .S(n109), .Z(r2b_len[11]) );
  MUX21L U126 ( .A(n367), .B(n378), .S(n109), .Z(r2b_len[10]) );
  MUX21L U127 ( .A(n368), .B(n388), .S(n109), .Z(r2b_len[0]) );
  ND2 U128 ( .A(page_ovflw_r), .B(r2b_start), .Z(n109) );
  AO3 U129 ( .A(n369), .B(n19), .C(n110), .D(n111), .Z(map_address[7]) );
  ND2 U130 ( .A(next_sdr_addr[7]), .B(n20), .Z(n111) );
  OR2 U131 ( .A(n21), .B(n112), .Z(n110) );
  AO3 U132 ( .A(n370), .B(n19), .C(n113), .D(n114), .Z(map_address[6]) );
  ND2 U133 ( .A(next_sdr_addr[6]), .B(n20), .Z(n114) );
  ND2 U134 ( .A(req_ack), .B(n115), .Z(n113) );
  AO3 U135 ( .A(n371), .B(n19), .C(n116), .D(n117), .Z(map_address[5]) );
  ND2 U136 ( .A(next_sdr_addr[5]), .B(n20), .Z(n117) );
  ND2 U137 ( .A(req_ack), .B(n118), .Z(n116) );
  AO3 U138 ( .A(n372), .B(n19), .C(n119), .D(n120), .Z(map_address[4]) );
  ND2 U139 ( .A(next_sdr_addr[4]), .B(n20), .Z(n120) );
  ND2 U140 ( .A(req_ack), .B(n121), .Z(n119) );
  AO3 U141 ( .A(n373), .B(n19), .C(n122), .D(n123), .Z(map_address[3]) );
  ND2 U142 ( .A(next_sdr_addr[3]), .B(n20), .Z(n123) );
  OR2 U143 ( .A(n21), .B(n124), .Z(n122) );
  AO3 U144 ( .A(n374), .B(n19), .C(n125), .D(n126), .Z(map_address[2]) );
  ND2 U145 ( .A(next_sdr_addr[2]), .B(n20), .Z(n126) );
  ND2 U146 ( .A(req_ack), .B(n127), .Z(n125) );
  AO3 U147 ( .A(n375), .B(n19), .C(n128), .D(n129), .Z(map_address[1]) );
  ND2 U148 ( .A(next_sdr_addr[1]), .B(n20), .Z(n129) );
  ND2 U149 ( .A(req_ack), .B(n130), .Z(n128) );
  AO3 U150 ( .A(n376), .B(n19), .C(n131), .D(n132), .Z(map_address[0]) );
  ND2 U151 ( .A(next_sdr_addr[0]), .B(n20), .Z(n132) );
  AO7 U152 ( .A(b2r_ack), .B(n1), .C(n21), .Z(N98) );
  NR2 U153 ( .A(n21), .B(n133), .Z(N95) );
  NR2 U154 ( .A(n134), .B(n21), .Z(N94) );
  NR2 U155 ( .A(n135), .B(n21), .Z(N93) );
  NR2 U156 ( .A(n21), .B(n136), .Z(N92) );
  EO U157 ( .A(n137), .B(n138), .Z(n136) );
  NR2 U158 ( .A(n139), .B(n21), .Z(N91) );
  NR2 U159 ( .A(n140), .B(n21), .Z(N90) );
  EO U160 ( .A(n141), .B(n142), .Z(n140) );
  NR2 U161 ( .A(n143), .B(n21), .Z(N89) );
  NR2 U162 ( .A(n144), .B(n21), .Z(N88) );
  EO U163 ( .A(n145), .B(n146), .Z(n144) );
  NR2 U164 ( .A(n147), .B(n21), .Z(N87) );
  AN2 U165 ( .A(n148), .B(req_ack), .Z(N86) );
  NR2 U166 ( .A(n21), .B(n149), .Z(N85) );
  EO U167 ( .A(n150), .B(n151), .Z(n149) );
  IV U168 ( .A(n131), .Z(N84) );
  ND2 U169 ( .A(n150), .B(req_ack), .Z(n131) );
  AN4 U170 ( .A(n152), .B(n135), .C(req_ack), .D(n134), .Z(N83) );
  EO U171 ( .A(n153), .B(n154), .Z(n134) );
  NR2 U172 ( .A(n155), .B(n156), .Z(n153) );
  EO U173 ( .A(n157), .B(n158), .Z(n135) );
  ND2 U174 ( .A(n159), .B(n160), .Z(n157) );
  IV U175 ( .A(n161), .Z(n160) );
  AN3 U176 ( .A(n162), .B(n3), .C(n133), .Z(n152) );
  OR3 U177 ( .A(n154), .B(n155), .C(n163), .Z(n133) );
  IV U178 ( .A(n164), .Z(n155) );
  AO7 U179 ( .A(n165), .B(n166), .C(n167), .Z(n164) );
  AO4 U180 ( .A(n168), .B(n169), .C(n170), .D(n171), .Z(n166) );
  NR2 U181 ( .A(n172), .B(n173), .Z(n165) );
  AO6 U182 ( .A(n159), .B(n158), .C(n161), .Z(n154) );
  AO7 U183 ( .A(n174), .B(n137), .C(n175), .Z(n158) );
  IV U184 ( .A(n176), .Z(n175) );
  AO7 U185 ( .A(n177), .B(n178), .C(n179), .Z(n159) );
  AO4 U186 ( .A(n168), .B(n171), .C(n170), .D(n173), .Z(n178) );
  NR2 U187 ( .A(n180), .B(n172), .Z(n177) );
  AO5 U188 ( .A(n181), .B(n182), .C(n183), .Z(n162) );
  AO4 U189 ( .A(n139), .B(n184), .C(n185), .D(n186), .Z(n183) );
  AO5 U190 ( .A(n187), .B(n188), .C(n189), .Z(n186) );
  AO4 U191 ( .A(n143), .B(n190), .C(n191), .D(n192), .Z(n189) );
  AO5 U192 ( .A(n193), .B(n194), .C(n195), .Z(n192) );
  AO4 U193 ( .A(n196), .B(n197), .C(n198), .D(n199), .Z(n195) );
  IV U194 ( .A(n200), .Z(n199) );
  AO2 U195 ( .A(n201), .B(n147), .C(n202), .D(n203), .Z(n200) );
  ND2 U196 ( .A(n204), .B(n148), .Z(n203) );
  OR2 U197 ( .A(n205), .B(n196), .Z(n201) );
  NR2 U198 ( .A(n148), .B(n204), .Z(n198) );
  AO5 U199 ( .A(n206), .B(n207), .C(n208), .Z(n204) );
  EO U200 ( .A(n130), .B(n209), .Z(n207) );
  AN3 U201 ( .A(n210), .B(n209), .C(req_len[0]), .Z(n206) );
  EO U202 ( .A(n211), .B(n127), .Z(n148) );
  ND2 U203 ( .A(n151), .B(n209), .Z(n211) );
  OR2 U204 ( .A(n147), .B(n205), .Z(n197) );
  NR2 U205 ( .A(n212), .B(n172), .Z(n205) );
  EN U206 ( .A(n213), .B(n124), .Z(n147) );
  EO U207 ( .A(n121), .B(n145), .Z(n194) );
  ND2 U208 ( .A(n213), .B(n124), .Z(n145) );
  AO6 U209 ( .A(req_len[2]), .B(sdr_width[1]), .C(n214), .Z(n193) );
  AO4 U210 ( .A(n168), .B(n215), .C(n170), .D(n216), .Z(n214) );
  AN2 U211 ( .A(n190), .B(n143), .Z(n191) );
  EO U212 ( .A(n217), .B(n118), .Z(n143) );
  EO U213 ( .A(n115), .B(n141), .Z(n188) );
  ND2 U214 ( .A(n217), .B(n218), .Z(n141) );
  IV U215 ( .A(n142), .Z(n115) );
  AO6 U216 ( .A(req_len[4]), .B(sdr_width[1]), .C(n219), .Z(n187) );
  AO4 U217 ( .A(n168), .B(n220), .C(n170), .D(n221), .Z(n219) );
  AN2 U218 ( .A(n184), .B(n139), .Z(n185) );
  EN U219 ( .A(n222), .B(n112), .Z(n139) );
  EN U220 ( .A(n137), .B(n138), .Z(n182) );
  NR2 U221 ( .A(n174), .B(n176), .Z(n138) );
  AO7 U222 ( .A(n223), .B(n172), .C(n224), .Z(n174) );
  AO2 U223 ( .A(req_addr[7]), .B(n225), .C(req_addr[8]), .D(n210), .Z(n224) );
  ND2 U224 ( .A(n222), .B(n112), .Z(n137) );
  AO6 U225 ( .A(req_addr[5]), .B(sdr_width[1]), .C(n226), .Z(n112) );
  AO4 U226 ( .A(n223), .B(n170), .C(n180), .D(n168), .Z(n226) );
  AN3 U227 ( .A(n218), .B(n142), .C(n217), .Z(n222) );
  AN3 U228 ( .A(n146), .B(n124), .C(n213), .Z(n217) );
  NR3 U229 ( .A(n127), .B(n150), .C(n130), .Z(n213) );
  IV U230 ( .A(n151), .Z(n130) );
  AO2 U231 ( .A(n210), .B(req_addr[1]), .C(n225), .D(req_addr[0]), .Z(n151) );
  IV U232 ( .A(n209), .Z(n150) );
  ND2 U233 ( .A(req_addr[0]), .B(n210), .Z(n209) );
  AO7 U234 ( .A(n172), .B(n227), .C(n228), .Z(n127) );
  AO2 U235 ( .A(req_addr[1]), .B(n225), .C(req_addr[2]), .D(n210), .Z(n228) );
  IV U236 ( .A(req_addr[0]), .Z(n227) );
  AO6 U237 ( .A(sdr_width[1]), .B(req_addr[1]), .C(n229), .Z(n124) );
  AO4 U238 ( .A(n230), .B(n170), .C(n231), .D(n168), .Z(n229) );
  IV U239 ( .A(n121), .Z(n146) );
  AO7 U240 ( .A(n172), .B(n230), .C(n232), .Z(n121) );
  AO2 U241 ( .A(req_addr[3]), .B(n225), .C(req_addr[4]), .D(n210), .Z(n232) );
  IV U242 ( .A(req_addr[2]), .Z(n230) );
  AO6 U243 ( .A(sdr_width[1]), .B(req_addr[4]), .C(n233), .Z(n142) );
  EON1 U244 ( .A(n168), .B(n223), .C(req_addr[5]), .D(n225), .Z(n233) );
  IV U245 ( .A(n118), .Z(n218) );
  AO7 U246 ( .A(n172), .B(n231), .C(n234), .Z(n118) );
  AO2 U247 ( .A(req_addr[4]), .B(n225), .C(req_addr[5]), .D(n210), .Z(n234) );
  IV U248 ( .A(req_addr[3]), .Z(n231) );
  AO1 U249 ( .A(req_len[8]), .B(n210), .C(n235), .D(n236), .Z(n181) );
  AN2 U250 ( .A(n225), .B(req_len[7]), .Z(n236) );
  NR2 U251 ( .A(n172), .B(n220), .Z(n235) );
  ND2 U252 ( .A(n237), .B(n238), .Z(N189) );
  AO2 U253 ( .A(n156), .B(N146), .C(n167), .D(N147), .Z(n238) );
  AO2 U254 ( .A(n176), .B(N144), .C(n161), .D(N145), .Z(n237) );
  ND2 U255 ( .A(n239), .B(n240), .Z(N188) );
  AO2 U256 ( .A(n156), .B(N145), .C(n167), .D(N146), .Z(n240) );
  AO2 U257 ( .A(n176), .B(N143), .C(n161), .D(N144), .Z(n239) );
  ND2 U258 ( .A(n241), .B(n242), .Z(N187) );
  AO2 U259 ( .A(n156), .B(N144), .C(n167), .D(N145), .Z(n242) );
  AO2 U260 ( .A(n176), .B(N142), .C(n161), .D(N143), .Z(n241) );
  ND2 U261 ( .A(n243), .B(n244), .Z(N186) );
  AO2 U262 ( .A(n156), .B(N143), .C(n167), .D(N144), .Z(n244) );
  AO2 U263 ( .A(n176), .B(N141), .C(n161), .D(N142), .Z(n243) );
  ND2 U264 ( .A(n245), .B(n246), .Z(N185) );
  AO2 U265 ( .A(n156), .B(N142), .C(n167), .D(N143), .Z(n246) );
  AO2 U266 ( .A(n176), .B(N140), .C(n161), .D(N141), .Z(n245) );
  ND2 U267 ( .A(n247), .B(n248), .Z(N184) );
  AO2 U268 ( .A(n156), .B(N141), .C(n167), .D(N142), .Z(n248) );
  AO2 U269 ( .A(n176), .B(N139), .C(n161), .D(N140), .Z(n247) );
  ND2 U270 ( .A(n249), .B(n250), .Z(N183) );
  AO2 U271 ( .A(n156), .B(N140), .C(n167), .D(N141), .Z(n250) );
  AO2 U272 ( .A(n176), .B(N138), .C(n161), .D(N139), .Z(n249) );
  ND2 U273 ( .A(n251), .B(n252), .Z(N182) );
  AO2 U274 ( .A(n156), .B(N139), .C(n167), .D(N140), .Z(n252) );
  AO2 U275 ( .A(n176), .B(N137), .C(n161), .D(N138), .Z(n251) );
  ND2 U276 ( .A(n253), .B(n254), .Z(N181) );
  AO2 U277 ( .A(n156), .B(N138), .C(n167), .D(N139), .Z(n254) );
  AO2 U278 ( .A(n176), .B(N136), .C(n161), .D(N137), .Z(n253) );
  ND2 U279 ( .A(n255), .B(n256), .Z(N180) );
  AO2 U280 ( .A(n156), .B(N137), .C(n167), .D(N138), .Z(n256) );
  AO2 U281 ( .A(n176), .B(N135), .C(n161), .D(N136), .Z(n255) );
  ND2 U282 ( .A(n257), .B(n258), .Z(N179) );
  AO2 U283 ( .A(n156), .B(N136), .C(n167), .D(N137), .Z(n258) );
  AO2 U284 ( .A(n176), .B(N134), .C(n161), .D(N135), .Z(n257) );
  ND2 U285 ( .A(n259), .B(n260), .Z(N178) );
  AO2 U286 ( .A(n156), .B(N135), .C(n167), .D(N136), .Z(n260) );
  AO2 U287 ( .A(n176), .B(N133), .C(n161), .D(N134), .Z(n259) );
  ND2 U288 ( .A(n261), .B(n262), .Z(N177) );
  AO2 U289 ( .A(n156), .B(N134), .C(n167), .D(N135), .Z(n262) );
  AO2 U290 ( .A(n176), .B(N132), .C(n161), .D(N133), .Z(n261) );
  AN2 U291 ( .A(N132), .B(n167), .Z(N175) );
  AN2 U292 ( .A(n179), .B(N131), .Z(N174) );
  IV U293 ( .A(n263), .Z(N173) );
  AO7 U294 ( .A(n179), .B(n161), .C(N130), .Z(n263) );
  ND2 U295 ( .A(n163), .B(n264), .Z(n179) );
  ND2 U296 ( .A(n265), .B(n266), .Z(N172) );
  AO2 U297 ( .A(n156), .B(N133), .C(n167), .D(N134), .Z(n266) );
  AO2 U298 ( .A(n176), .B(N131), .C(n161), .D(N132), .Z(n265) );
  ND2 U299 ( .A(n267), .B(n268), .Z(N171) );
  AO2 U300 ( .A(n156), .B(N132), .C(n167), .D(N133), .Z(n268) );
  IV U301 ( .A(n163), .Z(n167) );
  ND2 U302 ( .A(cfg_colbits[1]), .B(cfg_colbits[0]), .Z(n163) );
  IV U303 ( .A(n264), .Z(n156) );
  ND2 U304 ( .A(cfg_colbits[1]), .B(n269), .Z(n264) );
  AO2 U305 ( .A(n176), .B(N130), .C(n161), .D(N131), .Z(n267) );
  NR2 U306 ( .A(n269), .B(cfg_colbits[1]), .Z(n161) );
  IV U307 ( .A(cfg_colbits[0]), .Z(n269) );
  NR2 U308 ( .A(cfg_colbits[0]), .B(cfg_colbits[1]), .Z(n176) );
  NR2 U309 ( .A(n270), .B(n271), .Z(N167) );
  MUX21H U310 ( .A(n272), .B(n2), .S(n273), .Z(n271) );
  ND2 U311 ( .A(page_ovflw_r), .B(req_st_0_), .Z(n272) );
  AO6 U312 ( .A(n21), .B(n274), .C(n270), .Z(N166) );
  IV U313 ( .A(reset_n), .Z(n270) );
  ND2 U314 ( .A(req_st_0_), .B(n273), .Z(n274) );
  AO3 U315 ( .A(n275), .B(n276), .C(n277), .D(n278), .Z(N147) );
  AO2 U316 ( .A(n279), .B(curr_sdr_addr_25_), .C(next_sdr_addr[25]), .D(n20), 
        .Z(n278) );
  AO2 U317 ( .A(req_addr[24]), .B(n280), .C(req_addr[25]), .D(n281), .Z(n277)
         );
  IV U318 ( .A(req_addr[23]), .Z(n275) );
  AO3 U319 ( .A(n276), .B(n282), .C(n283), .D(n284), .Z(N146) );
  AO2 U320 ( .A(n279), .B(curr_sdr_addr_24_), .C(next_sdr_addr[24]), .D(n20), 
        .Z(n284) );
  AO2 U321 ( .A(req_addr[23]), .B(n280), .C(req_addr[24]), .D(n281), .Z(n283)
         );
  IV U322 ( .A(req_addr[22]), .Z(n282) );
  AO3 U323 ( .A(n276), .B(n285), .C(n286), .D(n287), .Z(N145) );
  AO2 U324 ( .A(n279), .B(curr_sdr_addr_23_), .C(next_sdr_addr[23]), .D(n20), 
        .Z(n287) );
  AO2 U325 ( .A(req_addr[22]), .B(n280), .C(n281), .D(req_addr[23]), .Z(n286)
         );
  IV U326 ( .A(req_addr[21]), .Z(n285) );
  AO3 U327 ( .A(n276), .B(n288), .C(n289), .D(n290), .Z(N144) );
  AO2 U328 ( .A(n279), .B(curr_sdr_addr_22_), .C(next_sdr_addr[22]), .D(n20), 
        .Z(n290) );
  AO2 U329 ( .A(req_addr[21]), .B(n280), .C(req_addr[22]), .D(n281), .Z(n289)
         );
  IV U330 ( .A(req_addr[20]), .Z(n288) );
  AO3 U331 ( .A(n276), .B(n291), .C(n292), .D(n293), .Z(N143) );
  AO2 U332 ( .A(n279), .B(curr_sdr_addr_21_), .C(next_sdr_addr[21]), .D(n20), 
        .Z(n293) );
  AO2 U333 ( .A(req_addr[20]), .B(n280), .C(req_addr[21]), .D(n281), .Z(n292)
         );
  IV U334 ( .A(req_addr[19]), .Z(n291) );
  AO3 U335 ( .A(n276), .B(n294), .C(n295), .D(n296), .Z(N142) );
  AO2 U336 ( .A(n279), .B(curr_sdr_addr_20_), .C(next_sdr_addr[20]), .D(n20), 
        .Z(n296) );
  AO2 U337 ( .A(req_addr[19]), .B(n280), .C(req_addr[20]), .D(n281), .Z(n295)
         );
  IV U338 ( .A(req_addr[18]), .Z(n294) );
  AO3 U339 ( .A(n276), .B(n297), .C(n298), .D(n299), .Z(N141) );
  AO2 U340 ( .A(n279), .B(curr_sdr_addr_19_), .C(next_sdr_addr[19]), .D(n20), 
        .Z(n299) );
  AO2 U341 ( .A(req_addr[18]), .B(n280), .C(req_addr[19]), .D(n281), .Z(n298)
         );
  IV U342 ( .A(req_addr[17]), .Z(n297) );
  AO3 U343 ( .A(n276), .B(n300), .C(n301), .D(n302), .Z(N140) );
  AO2 U344 ( .A(n279), .B(curr_sdr_addr_18_), .C(next_sdr_addr[18]), .D(n20), 
        .Z(n302) );
  AO2 U345 ( .A(req_addr[17]), .B(n280), .C(req_addr[18]), .D(n281), .Z(n301)
         );
  IV U346 ( .A(req_addr[16]), .Z(n300) );
  AO3 U347 ( .A(n276), .B(n303), .C(n304), .D(n305), .Z(N139) );
  AO2 U348 ( .A(n279), .B(curr_sdr_addr_17_), .C(next_sdr_addr[17]), .D(n20), 
        .Z(n305) );
  AO2 U349 ( .A(req_addr[16]), .B(n280), .C(req_addr[17]), .D(n281), .Z(n304)
         );
  IV U350 ( .A(req_addr[15]), .Z(n303) );
  AO3 U351 ( .A(n276), .B(n306), .C(n307), .D(n308), .Z(N138) );
  AO2 U352 ( .A(n279), .B(curr_sdr_addr_16_), .C(next_sdr_addr[16]), .D(n20), 
        .Z(n308) );
  AO2 U353 ( .A(req_addr[15]), .B(n280), .C(req_addr[16]), .D(n281), .Z(n307)
         );
  IV U354 ( .A(req_addr[14]), .Z(n306) );
  AO3 U355 ( .A(n276), .B(n309), .C(n310), .D(n311), .Z(N137) );
  AO2 U356 ( .A(n279), .B(curr_sdr_addr_15_), .C(next_sdr_addr[15]), .D(n20), 
        .Z(n311) );
  AO2 U357 ( .A(req_addr[14]), .B(n280), .C(req_addr[15]), .D(n281), .Z(n310)
         );
  IV U358 ( .A(req_addr[13]), .Z(n309) );
  AO3 U359 ( .A(n276), .B(n312), .C(n313), .D(n314), .Z(N136) );
  AO2 U360 ( .A(n279), .B(curr_sdr_addr_14_), .C(next_sdr_addr[14]), .D(n20), 
        .Z(n314) );
  AO2 U361 ( .A(req_addr[13]), .B(n280), .C(req_addr[14]), .D(n281), .Z(n313)
         );
  IV U362 ( .A(req_addr[12]), .Z(n312) );
  AO3 U363 ( .A(n276), .B(n315), .C(n316), .D(n317), .Z(N135) );
  AO2 U364 ( .A(n279), .B(curr_sdr_addr_13_), .C(next_sdr_addr[13]), .D(n20), 
        .Z(n317) );
  AO2 U365 ( .A(req_addr[12]), .B(n280), .C(req_addr[13]), .D(n281), .Z(n316)
         );
  IV U366 ( .A(req_addr[11]), .Z(n315) );
  AO3 U367 ( .A(n169), .B(n276), .C(n318), .D(n319), .Z(N134) );
  AO2 U368 ( .A(n279), .B(curr_sdr_addr_12_), .C(next_sdr_addr[12]), .D(n20), 
        .Z(n319) );
  AO2 U369 ( .A(req_addr[11]), .B(n280), .C(req_addr[12]), .D(n281), .Z(n318)
         );
  IV U370 ( .A(req_addr[10]), .Z(n169) );
  AO3 U371 ( .A(n171), .B(n276), .C(n320), .D(n321), .Z(N133) );
  AO2 U372 ( .A(n279), .B(curr_sdr_addr_11_), .C(next_sdr_addr[11]), .D(n20), 
        .Z(n321) );
  AO2 U373 ( .A(n280), .B(req_addr[10]), .C(req_addr[11]), .D(n281), .Z(n320)
         );
  IV U374 ( .A(req_addr[9]), .Z(n171) );
  AO3 U375 ( .A(n173), .B(n276), .C(n322), .D(n323), .Z(N132) );
  AO2 U376 ( .A(n279), .B(curr_sdr_addr_10_), .C(next_sdr_addr[10]), .D(n20), 
        .Z(n323) );
  AO2 U377 ( .A(n280), .B(req_addr[9]), .C(n281), .D(req_addr[10]), .Z(n322)
         );
  IV U378 ( .A(req_addr[8]), .Z(n173) );
  AO3 U379 ( .A(n180), .B(n276), .C(n324), .D(n325), .Z(N131) );
  AO2 U380 ( .A(n279), .B(curr_sdr_addr_9_), .C(next_sdr_addr[9]), .D(n20), 
        .Z(n325) );
  AO2 U381 ( .A(n280), .B(req_addr[8]), .C(n281), .D(req_addr[9]), .Z(n324) );
  IV U382 ( .A(req_addr[7]), .Z(n180) );
  AO3 U383 ( .A(n223), .B(n276), .C(n326), .D(n327), .Z(N130) );
  AO2 U384 ( .A(n279), .B(curr_sdr_addr_8_), .C(next_sdr_addr[8]), .D(n20), 
        .Z(n327) );
  AO2 U385 ( .A(n280), .B(req_addr[7]), .C(n281), .D(req_addr[8]), .Z(n326) );
  NR2 U386 ( .A(n170), .B(n21), .Z(n280) );
  IV U387 ( .A(req_addr[6]), .Z(n223) );
  AO3 U388 ( .A(n380), .B(n19), .C(n328), .D(n329), .Z(N116) );
  ND2 U389 ( .A(next_req_len[8]), .B(n20), .Z(n329) );
  ND2 U390 ( .A(req_ack), .B(n330), .Z(n328) );
  AO7 U391 ( .A(n172), .B(n220), .C(n331), .Z(n330) );
  AO2 U392 ( .A(req_len[7]), .B(n225), .C(req_len[8]), .D(n210), .Z(n331) );
  IV U393 ( .A(req_len[6]), .Z(n220) );
  AO3 U394 ( .A(n381), .B(n19), .C(n332), .D(n333), .Z(N115) );
  ND2 U395 ( .A(next_req_len[7]), .B(n20), .Z(n333) );
  ND2 U396 ( .A(req_ack), .B(n184), .Z(n332) );
  AO7 U397 ( .A(n172), .B(n221), .C(n334), .Z(n184) );
  AO2 U398 ( .A(req_len[6]), .B(n225), .C(req_len[7]), .D(n210), .Z(n334) );
  IV U399 ( .A(req_len[5]), .Z(n221) );
  AO3 U400 ( .A(n382), .B(n19), .C(n335), .D(n336), .Z(N114) );
  ND2 U401 ( .A(next_req_len[6]), .B(n20), .Z(n336) );
  ND2 U402 ( .A(req_ack), .B(n337), .Z(n335) );
  AO7 U403 ( .A(n172), .B(n215), .C(n338), .Z(n337) );
  AO2 U404 ( .A(req_len[5]), .B(n225), .C(req_len[6]), .D(n210), .Z(n338) );
  IV U405 ( .A(req_len[4]), .Z(n215) );
  AO3 U406 ( .A(n383), .B(n19), .C(n339), .D(n340), .Z(N113) );
  ND2 U407 ( .A(next_req_len[5]), .B(n20), .Z(n340) );
  ND2 U408 ( .A(req_ack), .B(n190), .Z(n339) );
  AO7 U409 ( .A(n172), .B(n216), .C(n341), .Z(n190) );
  AO2 U410 ( .A(req_len[4]), .B(n225), .C(req_len[5]), .D(n210), .Z(n341) );
  AO3 U411 ( .A(n384), .B(n19), .C(n342), .D(n343), .Z(N112) );
  ND2 U412 ( .A(next_req_len[4]), .B(n20), .Z(n343) );
  ND2 U413 ( .A(req_ack), .B(n344), .Z(n342) );
  AO7 U414 ( .A(n172), .B(n345), .C(n346), .Z(n344) );
  AO2 U415 ( .A(req_len[3]), .B(n225), .C(req_len[4]), .D(n210), .Z(n346) );
  AO3 U416 ( .A(n385), .B(n19), .C(n347), .D(n348), .Z(N111) );
  EO1 U417 ( .A(req_ack), .B(n196), .C(n276), .D(n212), .Z(n348) );
  ND2 U418 ( .A(sdr_width[1]), .B(req_ack), .Z(n276) );
  AO4 U419 ( .A(n168), .B(n216), .C(n170), .D(n345), .Z(n196) );
  IV U420 ( .A(req_len[2]), .Z(n345) );
  IV U421 ( .A(req_len[3]), .Z(n216) );
  ND2 U422 ( .A(next_req_len[3]), .B(n20), .Z(n347) );
  AO3 U423 ( .A(n386), .B(n19), .C(n349), .D(n350), .Z(N110) );
  ND2 U424 ( .A(next_req_len[2]), .B(n20), .Z(n350) );
  ND2 U425 ( .A(req_ack), .B(n202), .Z(n349) );
  AO7 U426 ( .A(n172), .B(n351), .C(n352), .Z(n202) );
  AO2 U427 ( .A(req_len[1]), .B(n225), .C(req_len[2]), .D(n210), .Z(n352) );
  IV U428 ( .A(n170), .Z(n225) );
  AO3 U429 ( .A(n387), .B(n19), .C(n353), .D(n354), .Z(N109) );
  ND2 U430 ( .A(next_req_len[1]), .B(n20), .Z(n354) );
  ND2 U431 ( .A(req_ack), .B(n208), .Z(n353) );
  AO4 U432 ( .A(n168), .B(n212), .C(n170), .D(n351), .Z(n208) );
  IV U433 ( .A(req_len[0]), .Z(n351) );
  ND2 U434 ( .A(sdr_width[0]), .B(n172), .Z(n170) );
  IV U435 ( .A(sdr_width[1]), .Z(n172) );
  IV U436 ( .A(req_len[1]), .Z(n212) );
  AO3 U437 ( .A(n388), .B(n19), .C(n355), .D(n356), .Z(N108) );
  ND2 U438 ( .A(next_req_len[0]), .B(n20), .Z(n356) );
  ND2 U439 ( .A(n281), .B(req_len[0]), .Z(n355) );
  NR2 U440 ( .A(n168), .B(n21), .Z(n281) );
  IV U441 ( .A(n210), .Z(n168) );
  NR2 U442 ( .A(sdr_width[0]), .B(sdr_width[1]), .Z(n210) );
  IV U443 ( .A(n279), .Z(n19) );
  NR2 U444 ( .A(n20), .B(req_ack), .Z(n279) );
  NR2 U445 ( .A(n273), .B(n108), .Z(n20) );
  IV U446 ( .A(b2r_ack), .Z(n273) );
  MUX21H U447 ( .A(req_wrap), .B(r2b_wrap), .S(n21), .Z(N105) );
  MUX21L U448 ( .A(n389), .B(req_wr_n), .S(req_ack), .Z(N100) );
  IV U449 ( .A(n21), .Z(req_ack) );
  ND3 U450 ( .A(b2r_arb_ok), .B(n108), .C(req), .Z(n21) );
  NR2 U451 ( .A(test_so3), .B(req_st_0_), .Z(n108) );
endmodule


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_0_DW01_inc_10 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HA1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  IVP U1 ( .A(A[0]), .Z(SUM[0]) );
  EO U2 ( .A(carry[11]), .B(A[11]), .Z(SUM[11]) );
endmodule


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_dec_0_DW01_dec_4 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;
  wire   n1, n2, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26;

  IVP U1 ( .A(n21), .Z(SUM[6]) );
  IVP U2 ( .A(n24), .Z(n7) );
  IVP U3 ( .A(n23), .Z(n6) );
  IVP U4 ( .A(n22), .Z(n5) );
  IVP U5 ( .A(n25), .Z(n8) );
  IVP U6 ( .A(A[2]), .Z(n14) );
  IVP U7 ( .A(A[3]), .Z(n13) );
  IVP U8 ( .A(n18), .Z(SUM[8]) );
  IVP U9 ( .A(A[1]), .Z(n2) );
  OR2 U10 ( .A(n5), .B(A[5]), .Z(n1) );
  IVP U11 ( .A(A[7]), .Z(n10) );
  IVP U12 ( .A(A[9]), .Z(n9) );
  IVP U13 ( .A(A[0]), .Z(SUM[0]) );
  IVP U14 ( .A(A[4]), .Z(n12) );
  IVP U15 ( .A(A[5]), .Z(n11) );
  AO7 U16 ( .A(n16), .B(n9), .C(n17), .Z(SUM[9]) );
  AO6 U17 ( .A(n19), .B(A[8]), .C(n16), .Z(n18) );
  AO7 U18 ( .A(n20), .B(n10), .C(n19), .Z(SUM[7]) );
  AO6 U19 ( .A(n1), .B(A[6]), .C(n20), .Z(n21) );
  AO7 U20 ( .A(n22), .B(n11), .C(n1), .Z(SUM[5]) );
  AO7 U21 ( .A(n23), .B(n12), .C(n5), .Z(SUM[4]) );
  AO7 U22 ( .A(n24), .B(n13), .C(n6), .Z(SUM[3]) );
  AO7 U23 ( .A(n25), .B(n14), .C(n7), .Z(SUM[2]) );
  AO7 U24 ( .A(SUM[0]), .B(n2), .C(n8), .Z(SUM[1]) );
  EO U25 ( .A(A[11]), .B(n26), .Z(SUM[11]) );
  NR2 U26 ( .A(A[10]), .B(n17), .Z(n26) );
  EN U27 ( .A(A[10]), .B(n17), .Z(SUM[10]) );
  ND2 U28 ( .A(n16), .B(n9), .Z(n17) );
  NR2 U29 ( .A(n19), .B(A[8]), .Z(n16) );
  ND2 U30 ( .A(n20), .B(n10), .Z(n19) );
  NR2 U31 ( .A(n1), .B(A[6]), .Z(n20) );
  NR2 U32 ( .A(n6), .B(A[4]), .Z(n22) );
  NR2 U33 ( .A(n7), .B(A[3]), .Z(n23) );
  NR2 U34 ( .A(n8), .B(A[2]), .Z(n24) );
  NR2 U35 ( .A(A[1]), .B(A[0]), .Z(n25) );
endmodule


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_1_DW01_inc_11 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  HA1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  IVP U1 ( .A(A[0]), .Z(SUM[0]) );
  EO U2 ( .A(carry[12]), .B(A[12]), .Z(SUM[12]) );
endmodule


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_dec_1_DW01_dec_5 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;
  wire   n1, n2, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  IVP U1 ( .A(n29), .Z(SUM[11]) );
  IVP U2 ( .A(n19), .Z(SUM[9]) );
  IVP U3 ( .A(n28), .Z(n10) );
  IVP U4 ( .A(n27), .Z(n9) );
  IVP U5 ( .A(n26), .Z(n8) );
  IVP U6 ( .A(n25), .Z(n7) );
  IVP U7 ( .A(n24), .Z(n6) );
  IVP U8 ( .A(A[6]), .Z(n13) );
  IVP U9 ( .A(A[4]), .Z(n15) );
  IVP U10 ( .A(A[5]), .Z(n14) );
  IVP U11 ( .A(A[3]), .Z(n16) );
  IVP U12 ( .A(A[1]), .Z(n2) );
  IVP U13 ( .A(A[2]), .Z(n17) );
  OR2 U14 ( .A(n6), .B(A[6]), .Z(n1) );
  IVP U15 ( .A(A[8]), .Z(n12) );
  IVP U16 ( .A(A[10]), .Z(n11) );
  IVP U17 ( .A(A[0]), .Z(SUM[0]) );
  IVP U18 ( .A(n23), .Z(SUM[7]) );
  AO6 U19 ( .A(n20), .B(A[9]), .C(n21), .Z(n19) );
  AO7 U20 ( .A(n22), .B(n12), .C(n20), .Z(SUM[8]) );
  AO6 U21 ( .A(n1), .B(A[7]), .C(n22), .Z(n23) );
  AO7 U22 ( .A(n24), .B(n13), .C(n1), .Z(SUM[6]) );
  AO7 U23 ( .A(n25), .B(n14), .C(n6), .Z(SUM[5]) );
  AO7 U24 ( .A(n26), .B(n15), .C(n7), .Z(SUM[4]) );
  AO7 U25 ( .A(n27), .B(n16), .C(n8), .Z(SUM[3]) );
  AO7 U26 ( .A(n28), .B(n17), .C(n9), .Z(SUM[2]) );
  AO7 U27 ( .A(SUM[0]), .B(n2), .C(n10), .Z(SUM[1]) );
  AO6 U28 ( .A(n30), .B(A[11]), .C(SUM[12]), .Z(n29) );
  NR2 U29 ( .A(n30), .B(A[11]), .Z(SUM[12]) );
  AO7 U30 ( .A(n21), .B(n11), .C(n30), .Z(SUM[10]) );
  ND2 U31 ( .A(n21), .B(n11), .Z(n30) );
  NR2 U32 ( .A(n20), .B(A[9]), .Z(n21) );
  ND2 U33 ( .A(n22), .B(n12), .Z(n20) );
  NR2 U34 ( .A(n1), .B(A[7]), .Z(n22) );
  NR2 U35 ( .A(n7), .B(A[5]), .Z(n24) );
  NR2 U36 ( .A(n8), .B(A[4]), .Z(n25) );
  NR2 U37 ( .A(n9), .B(A[3]), .Z(n26) );
  NR2 U38 ( .A(n10), .B(A[2]), .Z(n27) );
  NR2 U39 ( .A(A[1]), .B(A[0]), .Z(n28) );
endmodule


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, r2x_idle, b2x_idle, 
        b2x_req, b2x_start, b2x_last, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, b2x_wrap, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_din, sdr_dout, 
        sdr_den_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_id, 
        a2x_wrdt, a2x_wren_n, x2a_wrnext, x2a_rddt, x2a_rdok, sdr_init_done, 
        sdram_enable, sdram_mode_reg, xfr_bank_sel, cas_latency, trp_delay, 
        trcar_delay, twr_delay, rfsh_time, rfsh_rmax, test_si6, test_si5, 
        test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, test_so1, 
        test_se );
  input [3:0] b2x_id;
  input [1:0] b2x_ba;
  input [12:0] b2x_addr;
  input [11:0] b2x_len;
  input [1:0] b2x_cmd;
  output [3:0] x2b_pre_ok;
  output [1:0] sdr_dqm;
  output [1:0] sdr_ba;
  output [12:0] sdr_addr;
  input [15:0] sdr_din;
  output [15:0] sdr_dout;
  output [1:0] sdr_den_n;
  output [3:0] x2a_id;
  input [15:0] a2x_wrdt;
  input [1:0] a2x_wren_n;
  output [15:0] x2a_rddt;
  input [12:0] sdram_mode_reg;
  output [1:0] xfr_bank_sel;
  input [2:0] cas_latency;
  input [3:0] trp_delay;
  input [3:0] trcar_delay;
  input [3:0] twr_delay;
  input [11:0] rfsh_time;
  input [2:0] rfsh_rmax;
  input clk, reset_n, r2x_idle, b2x_idle, b2x_req, b2x_start, b2x_last,
         b2x_wrap, b2x_tras_ok, sdram_enable, test_si6, test_si5, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output x2b_ack, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n,
         sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n, x2a_rdstart, x2a_wrstart,
         x2a_rdlast, x2a_wrlast, x2a_wrnext, x2a_rdok, sdr_init_done, test_so3,
         test_so2, test_so1;
  wire   N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         l_len_11_, l_len_10_, l_len_9_, l_len_8_, l_len_7_, l_len_6_,
         l_len_4_, l_len_3_, l_len_2_, l_len_1_, l_len_0_, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, l_rd_next_6_, l_rd_last_6_,
         l_rd_start_6_, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, d_act_cmd, xfr_st_0_, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N153, N154, N155, N156,
         N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169,
         N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N282, N283, N284, N285, N286, N287, N288,
         N289, N332, N333, N334, N335, N336, N337, N338, N339, N340, N341,
         N342, N343, N366, N367, N368, N369, N370, N371, N372, N373, N374,
         N375, N376, N377, N378, N379, N380, N381, N382, N383, N384, N385,
         N386, N387, N388, N389, N390, N391, N392, n196, n200, n201, n211,
         n212, n213, n216, n217, n218, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n1, n2, n3, n5,
         n6, n7, n8, n9, n10, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n197, n198, n199,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n214, n215,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n566, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583;
  wire   [12:0] xfr_caddr;
  wire   [3:0] l_id;
  wire   [3:0] tmr0;
  wire   [2:0] rfsh_row_cnt;
  wire   [11:0] rfsh_timer;
  assign x2b_pre_ok[0] = x2b_pre_ok[3];
  assign x2b_pre_ok[1] = x2b_pre_ok[3];
  assign x2b_pre_ok[2] = x2b_pre_ok[3];
  assign x2a_rddt[15] = sdr_din[15];
  assign x2a_rddt[14] = sdr_din[14];
  assign x2a_rddt[13] = sdr_din[13];
  assign x2a_rddt[12] = sdr_din[12];
  assign x2a_rddt[11] = sdr_din[11];
  assign x2a_rddt[10] = sdr_din[10];
  assign x2a_rddt[9] = sdr_din[9];
  assign x2a_rddt[8] = sdr_din[8];
  assign x2a_rddt[7] = sdr_din[7];
  assign x2a_rddt[6] = sdr_din[6];
  assign x2a_rddt[5] = sdr_din[5];
  assign x2a_rddt[4] = sdr_din[4];
  assign x2a_rddt[3] = sdr_din[3];
  assign x2a_rddt[2] = sdr_din[2];
  assign x2a_rddt[1] = sdr_din[1];
  assign x2a_rddt[0] = sdr_din[0];

  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_0_DW01_inc_10 add_620 ( .A(rfsh_timer), .SUM({N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332}) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_dec_0_DW01_dec_4 sub_250 ( .A({l_len_11_, 
        l_len_10_, l_len_9_, l_len_8_, l_len_7_, l_len_6_, test_so1, l_len_4_, 
        l_len_3_, l_len_2_, l_len_1_, l_len_0_}), .SUM({N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63}) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_1_DW01_inc_11 r183 ( .A(xfr_caddr), 
        .SUM({N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46}) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_dec_1_DW01_dec_5 sub_281 ( .A({1'b0, 
        l_len_11_, l_len_10_, l_len_9_, l_len_8_, l_len_7_, l_len_6_, test_so1, 
        l_len_4_, l_len_3_, l_len_2_, l_len_1_, l_len_0_}), .SUM({N95, N94, 
        N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83}) );
  FD1S cntr1_reg_0_ ( .D(N373), .TI(n142), .TE(test_se), .CP(n153), .Q(n583), 
        .QN(n218) );
  FD1S mgmt_st_reg_1_ ( .D(N367), .TI(n1), .TE(test_se), .CP(n147), .Q(n136), 
        .QN(n212) );
  FD1S l_wrap_reg ( .D(n547), .TI(l_rd_start_6_), .TE(test_se), .CP(n152), .Q(
        n8), .QN(n196) );
  FD1S l_last_reg ( .D(n548), .TI(l_id[3]), .TE(test_se), .CP(n150), .Q(n581), 
        .QN(n524) );
  FD1S l_rd_start_reg_0_ ( .D(N178), .TI(l_rd_next_6_), .TE(test_se), .CP(n148), .Q(n571), .QN(n521) );
  FD1S l_rd_start_reg_1_ ( .D(N179), .TI(n571), .TE(test_se), .CP(n148), .Q(
        n570), .QN(n520) );
  FD1S l_rd_start_reg_2_ ( .D(N180), .TI(n570), .TE(test_se), .CP(n148), .Q(
        n569), .QN(n519) );
  FD1S l_rd_start_reg_3_ ( .D(N181), .TI(n569), .TE(test_se), .CP(n148), .Q(
        n568), .QN(n518) );
  FD1S l_rd_start_reg_5_ ( .D(N183), .TI(test_si3), .TE(test_se), .CP(n149), 
        .Q(n566), .QN(n502) );
  FD1S l_rd_next_reg_2_ ( .D(N173), .TI(n525), .TE(test_se), .CP(n148), .Q(
        n574), .QN(n527) );
  FD1S l_rd_next_reg_3_ ( .D(N174), .TI(n574), .TE(test_se), .CP(n148), .Q(
        n140), .QN(n201) );
  FD1S l_rd_next_reg_4_ ( .D(N175), .TI(n140), .TE(test_se), .CP(n148), .Q(
        n573), .QN(n200) );
  FD1S l_rd_next_reg_5_ ( .D(N176), .TI(n573), .TE(test_se), .CP(n148), .Q(
        n572), .QN(n528) );
  FD1S mgmt_st_reg_2_ ( .D(N368), .TI(n136), .TE(test_se), .CP(n147), .Q(n3), 
        .QN(n211) );
  FD1S mgmt_st_reg_0_ ( .D(N366), .TI(n8), .TE(test_se), .CP(n148), .Q(n1), 
        .QN(n213) );
  FD1S cntr1_reg_1_ ( .D(N374), .TI(n583), .TE(test_se), .CP(n154), .Q(n10), 
        .QN(n217) );
  FD1S cntr1_reg_2_ ( .D(N375), .TI(n10), .TE(test_se), .CP(n154), .Q(n7), 
        .QN(n216) );
  FD1S cntr1_reg_3_ ( .D(N376), .TI(n7), .TE(test_se), .CP(n154), .Q(n582), 
        .QN(n495) );
  FD1S l_rd_last_reg_0_ ( .D(N185), .TI(l_len_11_), .TE(test_se), .CP(n153), 
        .Q(n580), .QN(n501) );
  FD1S l_rd_last_reg_1_ ( .D(N186), .TI(n580), .TE(test_se), .CP(n153), .Q(
        n579), .QN(n500) );
  FD1S l_rd_last_reg_2_ ( .D(N187), .TI(n579), .TE(test_se), .CP(n153), .Q(
        n578), .QN(n499) );
  FD1S l_rd_last_reg_3_ ( .D(N188), .TI(n578), .TE(test_se), .CP(n153), .Q(
        n577), .QN(n498) );
  FD1S l_rd_last_reg_5_ ( .D(N190), .TI(n576), .TE(test_se), .CP(n153), .Q(
        n575), .QN(n497) );
  FD1S act_cmd_reg ( .D(N192), .TI(test_si1), .TE(test_se), .CP(n152), .Q(n142), .QN(n496) );
  FD1S l_ba_reg_0_ ( .D(n546), .TI(d_act_cmd), .TE(test_se), .CP(n152), .Q(
        xfr_bank_sel[0]), .QN(n9) );
  FD1S l_rd_start_reg_4_ ( .D(N182), .TI(n568), .TE(test_se), .CP(n149), .Q(
        test_so2), .QN(n139) );
  FD1S l_rd_start_reg_6_ ( .D(N184), .TI(n566), .TE(test_se), .CP(n149), .Q(
        l_rd_start_6_) );
  FD1S l_rd_next_reg_6_ ( .D(N177), .TI(n572), .TE(test_se), .CP(n148), .Q(
        l_rd_next_6_) );
  FD1S l_rd_last_reg_4_ ( .D(N189), .TI(n577), .TE(test_se), .CP(n153), .Q(
        n576), .QN(n138) );
  FD1S l_rd_last_reg_6_ ( .D(N191), .TI(n575), .TE(test_se), .CP(n153), .Q(
        l_rd_last_6_) );
  FD1S sdr_addr_reg_0_ ( .D(n503), .TI(rfsh_timer[11]), .TE(test_se), .CP(n154), .Q(sdr_addr[0]) );
  FD1S sdr_ba_reg_1_ ( .D(n504), .TI(sdr_ba[0]), .TE(test_se), .CP(n154), .Q(
        sdr_ba[1]) );
  FD1S sdr_ba_reg_0_ ( .D(n505), .TI(sdr_addr[12]), .TE(test_se), .CP(n154), 
        .Q(sdr_ba[0]) );
  FD1S sdr_addr_reg_12_ ( .D(n506), .TI(sdr_addr[11]), .TE(test_se), .CP(n155), 
        .Q(sdr_addr[12]) );
  FD1S sdr_addr_reg_11_ ( .D(n507), .TI(sdr_addr[10]), .TE(test_se), .CP(n156), 
        .Q(sdr_addr[11]) );
  FD1S sdr_addr_reg_9_ ( .D(n509), .TI(sdr_addr[8]), .TE(test_se), .CP(n156), 
        .Q(sdr_addr[9]) );
  FD1S sdr_addr_reg_8_ ( .D(n510), .TI(sdr_addr[7]), .TE(test_se), .CP(n155), 
        .Q(sdr_addr[8]) );
  FD1S sdr_addr_reg_7_ ( .D(n511), .TI(sdr_addr[6]), .TE(test_se), .CP(n155), 
        .Q(sdr_addr[7]) );
  FD1S sdr_addr_reg_6_ ( .D(n512), .TI(sdr_addr[5]), .TE(test_se), .CP(n155), 
        .Q(sdr_addr[6]) );
  FD1S sdr_addr_reg_5_ ( .D(n513), .TI(sdr_addr[4]), .TE(test_se), .CP(n155), 
        .Q(sdr_addr[5]) );
  FD1S sdr_addr_reg_4_ ( .D(n514), .TI(test_si4), .TE(test_se), .CP(n155), .Q(
        sdr_addr[4]) );
  FD1S sdr_addr_reg_3_ ( .D(n515), .TI(sdr_addr[2]), .TE(test_se), .CP(n154), 
        .Q(sdr_addr[3]) );
  FD1S sdr_addr_reg_2_ ( .D(n516), .TI(sdr_addr[1]), .TE(test_se), .CP(n154), 
        .Q(sdr_addr[2]) );
  FD1S sdr_addr_reg_1_ ( .D(n517), .TI(sdr_addr[0]), .TE(test_se), .CP(n154), 
        .Q(sdr_addr[1]) );
  FD1S d_act_cmd_reg ( .D(N193), .TI(n582), .TE(test_se), .CP(n152), .Q(
        d_act_cmd) );
  FD1S sdr_den_n_reg_0_ ( .D(N289), .TI(sdr_cke), .TE(test_se), .CP(n149), .Q(
        sdr_den_n[0]) );
  FD1S sdr_den_n_reg_1_ ( .D(N289), .TI(sdr_den_n[0]), .TE(test_se), .CP(n149), 
        .Q(sdr_den_n[1]) );
  FD1S rfsh_timer_reg_11_ ( .D(N388), .TI(rfsh_timer[10]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[11]), .QN(n539) );
  FD1S rfsh_timer_reg_10_ ( .D(N387), .TI(rfsh_timer[9]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[10]), .QN(n533) );
  FD1S rfsh_timer_reg_9_ ( .D(N386), .TI(rfsh_timer[8]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[9]), .QN(n535) );
  FD1S rfsh_timer_reg_8_ ( .D(N385), .TI(rfsh_timer[7]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[8]), .QN(n534) );
  FD1S rfsh_timer_reg_7_ ( .D(N384), .TI(rfsh_timer[6]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[7]), .QN(n530) );
  FD1S rfsh_timer_reg_6_ ( .D(N383), .TI(rfsh_timer[5]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[6]), .QN(n532) );
  FD1S rfsh_timer_reg_5_ ( .D(N382), .TI(rfsh_timer[4]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[5]), .QN(n531) );
  FD1S rfsh_timer_reg_4_ ( .D(N381), .TI(rfsh_timer[3]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[4]), .QN(n536) );
  FD1S rfsh_timer_reg_3_ ( .D(N380), .TI(rfsh_timer[2]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[3]), .QN(n538) );
  FD1S rfsh_timer_reg_2_ ( .D(N379), .TI(rfsh_timer[1]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[2]), .QN(n537) );
  FD1S rfsh_timer_reg_1_ ( .D(N378), .TI(rfsh_timer[0]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[1]), .QN(n529) );
  FD1S l_id_reg_3_ ( .D(N156), .TI(l_id[2]), .TE(test_se), .CP(n149), .Q(
        l_id[3]) );
  FD1S l_id_reg_2_ ( .D(N155), .TI(l_id[1]), .TE(test_se), .CP(n149), .Q(
        l_id[2]) );
  FD1S l_id_reg_1_ ( .D(N154), .TI(l_id[0]), .TE(test_se), .CP(n149), .Q(
        l_id[1]) );
  FD1S l_id_reg_0_ ( .D(N153), .TI(xfr_bank_sel[1]), .TE(test_se), .CP(n149), 
        .Q(l_id[0]) );
  FD1S l_rd_next_reg_0_ ( .D(N171), .TI(l_rd_last_6_), .TE(test_se), .CP(n147), 
        .Q(n526) );
  FD1S l_rd_next_reg_1_ ( .D(N172), .TI(n526), .TE(test_se), .CP(n147), .Q(
        n525) );
  FD1S sdr_init_done_reg ( .D(N392), .TI(sdr_dqm[1]), .TE(test_se), .CP(n147), 
        .Q(sdr_init_done), .QN(n6) );
  FD1S tmr0_reg_0_ ( .D(N369), .TI(sdr_ras_n), .TE(test_se), .CP(n153), .Q(
        tmr0[0]), .QN(n5) );
  FD1S tmr0_reg_1_ ( .D(N370), .TI(tmr0[0]), .TE(test_se), .CP(n153), .Q(
        tmr0[1]), .QN(n145) );
  FD1S tmr0_reg_3_ ( .D(N372), .TI(tmr0[2]), .TE(test_se), .CP(n147), .Q(
        tmr0[3]) );
  FD1S sdr_addr_reg_10_ ( .D(n508), .TI(sdr_addr[9]), .TE(test_se), .CP(n156), 
        .Q(sdr_addr[10]) );
  FD1S l_ba_reg_1_ ( .D(n545), .TI(xfr_bank_sel[0]), .TE(test_se), .CP(n152), 
        .Q(xfr_bank_sel[1]) );
  FD1S l_len_reg_11_ ( .D(N170), .TI(l_len_10_), .TE(test_se), .CP(n149), .Q(
        l_len_11_), .QN(n522) );
  FD1S xfr_st_reg_0_ ( .D(N194), .TI(xfr_caddr[12]), .TE(test_se), .CP(n148), 
        .Q(xfr_st_0_), .QN(n141) );
  FD1S rfsh_row_cnt_reg_1_ ( .D(N390), .TI(rfsh_row_cnt[0]), .TE(test_se), 
        .CP(n147), .Q(rfsh_row_cnt[1]), .QN(n2) );
  FD1S xfr_caddr_reg_2_ ( .D(N140), .TI(xfr_caddr[1]), .TE(test_se), .CP(n152), 
        .Q(xfr_caddr[2]) );
  FD1S xfr_caddr_reg_3_ ( .D(N141), .TI(xfr_caddr[2]), .TE(test_se), .CP(n154), 
        .Q(xfr_caddr[3]) );
  FD1S xfr_caddr_reg_4_ ( .D(N142), .TI(xfr_caddr[3]), .TE(test_se), .CP(n154), 
        .Q(xfr_caddr[4]) );
  FD1S xfr_caddr_reg_5_ ( .D(N143), .TI(xfr_caddr[4]), .TE(test_se), .CP(n155), 
        .Q(xfr_caddr[5]) );
  FD1S xfr_caddr_reg_6_ ( .D(N144), .TI(xfr_caddr[5]), .TE(test_se), .CP(n155), 
        .Q(xfr_caddr[6]) );
  FD1S xfr_caddr_reg_7_ ( .D(N145), .TI(xfr_caddr[6]), .TE(test_se), .CP(n155), 
        .Q(xfr_caddr[7]) );
  FD1S xfr_caddr_reg_8_ ( .D(N146), .TI(xfr_caddr[7]), .TE(test_se), .CP(n155), 
        .Q(xfr_caddr[8]) );
  FD1S xfr_caddr_reg_9_ ( .D(N147), .TI(test_si6), .TE(test_se), .CP(n155), 
        .Q(xfr_caddr[9]) );
  FD1S xfr_caddr_reg_10_ ( .D(N148), .TI(xfr_caddr[9]), .TE(test_se), .CP(n156), .Q(xfr_caddr[10]) );
  FD1S xfr_caddr_reg_11_ ( .D(N149), .TI(xfr_caddr[10]), .TE(test_se), .CP(
        n156), .Q(xfr_caddr[11]) );
  FD1S xfr_caddr_reg_12_ ( .D(N150), .TI(xfr_caddr[11]), .TE(test_se), .CP(
        n155), .Q(xfr_caddr[12]) );
  FD1S sdr_dout_reg_15_ ( .D(n549), .TI(sdr_dout[14]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[15]) );
  FD1S sdr_dout_reg_14_ ( .D(n550), .TI(sdr_dout[13]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[14]) );
  FD1S sdr_dout_reg_13_ ( .D(n551), .TI(sdr_dout[12]), .TE(test_se), .CP(n152), 
        .Q(sdr_dout[13]) );
  FD1S sdr_dout_reg_12_ ( .D(n552), .TI(sdr_dout[11]), .TE(test_se), .CP(n152), 
        .Q(sdr_dout[12]) );
  FD1S sdr_dout_reg_11_ ( .D(n553), .TI(sdr_dout[10]), .TE(test_se), .CP(n152), 
        .Q(sdr_dout[11]) );
  FD1S sdr_dout_reg_10_ ( .D(n554), .TI(sdr_dout[9]), .TE(test_se), .CP(n152), 
        .Q(sdr_dout[10]) );
  FD1S sdr_dout_reg_9_ ( .D(n555), .TI(test_si5), .TE(test_se), .CP(n151), .Q(
        sdr_dout[9]) );
  FD1S sdr_dout_reg_8_ ( .D(n556), .TI(sdr_dout[7]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[8]) );
  FD1S sdr_dout_reg_7_ ( .D(n557), .TI(sdr_dout[6]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[7]) );
  FD1S sdr_dout_reg_6_ ( .D(n558), .TI(sdr_dout[5]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[6]) );
  FD1S sdr_dout_reg_5_ ( .D(n559), .TI(sdr_dout[4]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[5]) );
  FD1S sdr_dout_reg_4_ ( .D(n560), .TI(sdr_dout[3]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[4]) );
  FD1S sdr_dout_reg_3_ ( .D(n561), .TI(sdr_dout[2]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[3]) );
  FD1S sdr_dout_reg_2_ ( .D(n562), .TI(sdr_dout[1]), .TE(test_se), .CP(n150), 
        .Q(sdr_dout[2]) );
  FD1S sdr_dout_reg_1_ ( .D(n563), .TI(sdr_dout[0]), .TE(test_se), .CP(n150), 
        .Q(sdr_dout[1]) );
  FD1S sdr_dout_reg_0_ ( .D(n564), .TI(sdr_den_n[1]), .TE(test_se), .CP(n151), 
        .Q(sdr_dout[0]) );
  FD1S xfr_st_reg_1_ ( .D(N195), .TI(xfr_st_0_), .TE(test_se), .CP(n147), .Q(
        test_so3) );
  FD1S rfsh_row_cnt_reg_2_ ( .D(N391), .TI(rfsh_row_cnt[1]), .TE(test_se), 
        .CP(n147), .Q(rfsh_row_cnt[2]), .QN(n143) );
  FD1S tmr0_reg_2_ ( .D(N371), .TI(tmr0[1]), .TE(test_se), .CP(n153), .Q(
        tmr0[2]), .QN(n144) );
  FD1S l_len_reg_10_ ( .D(N169), .TI(l_len_9_), .TE(test_se), .CP(n150), .Q(
        l_len_10_), .QN(n523) );
  FD1S l_len_reg_9_ ( .D(N168), .TI(l_len_8_), .TE(test_se), .CP(n150), .Q(
        l_len_9_) );
  FD1S l_len_reg_8_ ( .D(N167), .TI(l_len_7_), .TE(test_se), .CP(n150), .Q(
        l_len_8_) );
  FD1S l_len_reg_7_ ( .D(N166), .TI(l_len_6_), .TE(test_se), .CP(n150), .Q(
        l_len_7_) );
  FD1S xfr_caddr_reg_1_ ( .D(N139), .TI(xfr_caddr[0]), .TE(test_se), .CP(n147), 
        .Q(xfr_caddr[1]) );
  FD1S rfsh_timer_reg_0_ ( .D(N377), .TI(rfsh_row_cnt[2]), .TE(test_se), .CP(
        n146), .Q(rfsh_timer[0]), .QN(n540) );
  FD1S l_len_reg_6_ ( .D(N165), .TI(test_si2), .TE(test_se), .CP(n150), .Q(
        l_len_6_) );
  FD1S rfsh_row_cnt_reg_0_ ( .D(N389), .TI(n3), .TE(test_se), .CP(n147), .Q(
        rfsh_row_cnt[0]), .QN(n137) );
  FD1S l_len_reg_1_ ( .D(N160), .TI(l_len_0_), .TE(test_se), .CP(n149), .Q(
        l_len_1_) );
  FD1S l_len_reg_5_ ( .D(N164), .TI(l_len_4_), .TE(test_se), .CP(n150), .Q(
        test_so1) );
  FD1S l_len_reg_4_ ( .D(N163), .TI(l_len_3_), .TE(test_se), .CP(n150), .Q(
        l_len_4_) );
  FD1S l_len_reg_3_ ( .D(N162), .TI(l_len_2_), .TE(test_se), .CP(n150), .Q(
        l_len_3_) );
  FD1S l_len_reg_2_ ( .D(N161), .TI(l_len_1_), .TE(test_se), .CP(n150), .Q(
        l_len_2_) );
  FD1S l_len_reg_0_ ( .D(N159), .TI(n581), .TE(test_se), .CP(n149), .Q(
        l_len_0_) );
  FD1S xfr_caddr_reg_0_ ( .D(N138), .TI(tmr0[3]), .TE(test_se), .CP(n152), .Q(
        xfr_caddr[0]) );
  FD1S sdr_cke_reg ( .D(N283), .TI(sdr_cas_n), .TE(test_se), .CP(n148), .Q(
        sdr_cke) );
  FD1S sdr_cas_n_reg ( .D(N285), .TI(sdr_ba[1]), .TE(test_se), .CP(n153), .Q(
        sdr_cas_n) );
  FD1S sdr_cs_n_reg ( .D(N282), .TI(sdr_dout[8]), .TE(test_se), .CP(n154), .Q(
        sdr_cs_n) );
  FD1S sdr_we_n_reg ( .D(N286), .TI(xfr_caddr[8]), .TE(test_se), .CP(n147), 
        .Q(sdr_we_n) );
  FD1S sdr_dqm_reg_1_ ( .D(N288), .TI(sdr_dqm[0]), .TE(test_se), .CP(n151), 
        .Q(sdr_dqm[1]) );
  FD1S sdr_dqm_reg_0_ ( .D(N287), .TI(sdr_dout[15]), .TE(test_se), .CP(n151), 
        .Q(sdr_dqm[0]) );
  FD1S sdr_ras_n_reg ( .D(N284), .TI(sdr_init_done), .TE(test_se), .CP(n152), 
        .Q(sdr_ras_n) );
  IVP U13 ( .A(n158), .Z(n151) );
  IVP U130 ( .A(n159), .Z(n148) );
  IVP U131 ( .A(n159), .Z(n150) );
  IVP U132 ( .A(n159), .Z(n149) );
  IVP U133 ( .A(n158), .Z(n152) );
  IVP U134 ( .A(n160), .Z(n147) );
  IVP U135 ( .A(n158), .Z(n153) );
  IVP U136 ( .A(n160), .Z(n146) );
  IVP U137 ( .A(n161), .Z(n159) );
  IVP U138 ( .A(n161), .Z(n158) );
  IVP U139 ( .A(n161), .Z(n160) );
  IVP U140 ( .A(n157), .Z(n155) );
  IVP U141 ( .A(n157), .Z(n154) );
  IVP U142 ( .A(n157), .Z(n156) );
  IVP U143 ( .A(n163), .Z(n161) );
  IVP U144 ( .A(n162), .Z(n157) );
  IVP U145 ( .A(n163), .Z(n162) );
  IVP U146 ( .A(clk), .Z(n163) );
  NR2 U147 ( .A(n164), .B(n165), .Z(x2b_wrok) );
  AO1 U148 ( .A(n166), .B(n167), .C(n168), .D(n169), .Z(n164) );
  NR2 U149 ( .A(n170), .B(n171), .Z(n169) );
  IV U150 ( .A(n172), .Z(n170) );
  AN4 U151 ( .A(n173), .B(n174), .C(n175), .D(n176), .Z(x2b_refresh) );
  NR2 U152 ( .A(n177), .B(n165), .Z(x2b_rdok) );
  NR2 U153 ( .A(n142), .B(d_act_cmd), .Z(x2b_act_ok) );
  AN3 U154 ( .A(b2x_start), .B(n178), .C(n179), .Z(x2a_wrstart) );
  AN2 U155 ( .A(n180), .B(n181), .Z(x2a_wrlast) );
  MUX21L U156 ( .A(n182), .B(n524), .S(n173), .Z(n181) );
  AO3 U157 ( .A(n183), .B(n139), .C(n184), .D(n185), .Z(x2a_rdstart) );
  IV U158 ( .A(n186), .Z(n185) );
  AO4 U159 ( .A(n187), .B(n502), .C(n188), .D(n518), .Z(n186) );
  EO1 U160 ( .A(n189), .B(l_rd_start_6_), .C(n190), .D(n519), .Z(n184) );
  AO3 U161 ( .A(n200), .B(n183), .C(n191), .D(n192), .Z(x2a_rdok) );
  EO1 U162 ( .A(n193), .B(n140), .C(n187), .D(n528), .Z(n192) );
  EO1 U163 ( .A(n189), .B(l_rd_next_6_), .C(n190), .D(n527), .Z(n191) );
  AO3 U164 ( .A(n183), .B(n138), .C(n194), .D(n195), .Z(x2a_rdlast) );
  IV U165 ( .A(n197), .Z(n195) );
  AO4 U166 ( .A(n187), .B(n497), .C(n188), .D(n498), .Z(n197) );
  EO1 U167 ( .A(n189), .B(l_rd_last_6_), .C(n190), .D(n499), .Z(n194) );
  EN U168 ( .A(n198), .B(n199), .Z(n189) );
  IV U169 ( .A(n202), .Z(x2a_id[3]) );
  IV U170 ( .A(n203), .Z(x2a_id[2]) );
  IV U171 ( .A(n204), .Z(x2a_id[1]) );
  IV U172 ( .A(n205), .Z(x2a_id[0]) );
  EON1 U173 ( .A(n206), .B(n207), .C(xfr_bank_sel[1]), .D(n208), .Z(n545) );
  EON1 U174 ( .A(n9), .B(n209), .C(b2x_ba[0]), .D(n210), .Z(n546) );
  EON1 U175 ( .A(n196), .B(n209), .C(b2x_wrap), .D(n210), .Z(n547) );
  MUX21H U176 ( .A(a2x_wrdt[15]), .B(sdr_dout[15]), .S(n214), .Z(n549) );
  MUX21H U177 ( .A(a2x_wrdt[14]), .B(sdr_dout[14]), .S(n214), .Z(n550) );
  MUX21H U178 ( .A(a2x_wrdt[13]), .B(sdr_dout[13]), .S(n214), .Z(n551) );
  MUX21H U179 ( .A(a2x_wrdt[12]), .B(sdr_dout[12]), .S(n214), .Z(n552) );
  MUX21H U180 ( .A(a2x_wrdt[11]), .B(sdr_dout[11]), .S(n214), .Z(n553) );
  MUX21H U181 ( .A(a2x_wrdt[10]), .B(sdr_dout[10]), .S(n214), .Z(n554) );
  MUX21H U182 ( .A(a2x_wrdt[9]), .B(sdr_dout[9]), .S(n214), .Z(n555) );
  MUX21H U183 ( .A(a2x_wrdt[8]), .B(sdr_dout[8]), .S(n214), .Z(n556) );
  MUX21H U184 ( .A(a2x_wrdt[7]), .B(sdr_dout[7]), .S(n214), .Z(n557) );
  MUX21H U185 ( .A(a2x_wrdt[6]), .B(sdr_dout[6]), .S(n214), .Z(n558) );
  MUX21H U186 ( .A(a2x_wrdt[5]), .B(sdr_dout[5]), .S(n214), .Z(n559) );
  MUX21H U187 ( .A(a2x_wrdt[4]), .B(sdr_dout[4]), .S(n214), .Z(n560) );
  MUX21H U188 ( .A(a2x_wrdt[3]), .B(sdr_dout[3]), .S(n214), .Z(n561) );
  MUX21H U189 ( .A(a2x_wrdt[2]), .B(sdr_dout[2]), .S(n214), .Z(n562) );
  MUX21H U190 ( .A(a2x_wrdt[1]), .B(sdr_dout[1]), .S(n214), .Z(n563) );
  MUX21H U191 ( .A(a2x_wrdt[0]), .B(sdr_dout[0]), .S(n214), .Z(n564) );
  AO3 U192 ( .A(n215), .B(n219), .C(n220), .D(n221), .Z(n517) );
  AO2 U193 ( .A(sdr_addr[1]), .B(n222), .C(b2x_addr[1]), .D(x2b_ack), .Z(n221)
         );
  ND2 U194 ( .A(sdram_mode_reg[1]), .B(n223), .Z(n220) );
  IV U195 ( .A(N47), .Z(n219) );
  AO3 U196 ( .A(n215), .B(n224), .C(n225), .D(n226), .Z(n516) );
  AO2 U197 ( .A(sdr_addr[2]), .B(n222), .C(b2x_addr[2]), .D(x2b_ack), .Z(n226)
         );
  ND2 U198 ( .A(sdram_mode_reg[2]), .B(n223), .Z(n225) );
  IV U199 ( .A(N48), .Z(n224) );
  AO3 U200 ( .A(n215), .B(n227), .C(n228), .D(n229), .Z(n515) );
  AO2 U201 ( .A(sdr_addr[3]), .B(n222), .C(b2x_addr[3]), .D(x2b_ack), .Z(n229)
         );
  ND2 U202 ( .A(sdram_mode_reg[3]), .B(n223), .Z(n228) );
  IV U203 ( .A(N49), .Z(n227) );
  AO3 U204 ( .A(n215), .B(n230), .C(n231), .D(n232), .Z(n514) );
  AO2 U205 ( .A(sdr_addr[4]), .B(n222), .C(b2x_addr[4]), .D(x2b_ack), .Z(n232)
         );
  ND2 U206 ( .A(sdram_mode_reg[4]), .B(n223), .Z(n231) );
  IV U207 ( .A(N50), .Z(n230) );
  AO3 U208 ( .A(n215), .B(n233), .C(n234), .D(n235), .Z(n513) );
  AO2 U209 ( .A(sdr_addr[5]), .B(n222), .C(b2x_addr[5]), .D(x2b_ack), .Z(n235)
         );
  ND2 U210 ( .A(sdram_mode_reg[5]), .B(n223), .Z(n234) );
  IV U211 ( .A(N51), .Z(n233) );
  AO3 U212 ( .A(n215), .B(n236), .C(n237), .D(n238), .Z(n512) );
  AO2 U213 ( .A(sdr_addr[6]), .B(n222), .C(b2x_addr[6]), .D(x2b_ack), .Z(n238)
         );
  ND2 U214 ( .A(sdram_mode_reg[6]), .B(n223), .Z(n237) );
  IV U215 ( .A(N52), .Z(n236) );
  AO3 U216 ( .A(n215), .B(n239), .C(n240), .D(n241), .Z(n511) );
  AO2 U217 ( .A(sdr_addr[7]), .B(n222), .C(b2x_addr[7]), .D(x2b_ack), .Z(n241)
         );
  ND2 U218 ( .A(sdram_mode_reg[7]), .B(n223), .Z(n240) );
  IV U219 ( .A(N53), .Z(n239) );
  AO3 U220 ( .A(n215), .B(n242), .C(n243), .D(n244), .Z(n510) );
  AO2 U221 ( .A(sdr_addr[8]), .B(n222), .C(b2x_addr[8]), .D(x2b_ack), .Z(n244)
         );
  ND2 U222 ( .A(sdram_mode_reg[8]), .B(n223), .Z(n243) );
  IV U223 ( .A(N54), .Z(n242) );
  AO3 U224 ( .A(n215), .B(n245), .C(n246), .D(n247), .Z(n509) );
  AO2 U225 ( .A(sdr_addr[9]), .B(n222), .C(b2x_addr[9]), .D(x2b_ack), .Z(n247)
         );
  ND2 U226 ( .A(sdram_mode_reg[9]), .B(n223), .Z(n246) );
  IV U227 ( .A(N55), .Z(n245) );
  AO7 U228 ( .A(n215), .B(n248), .C(n249), .Z(n508) );
  MUX21L U229 ( .A(n250), .B(sdr_addr[10]), .S(n222), .Z(n249) );
  AO4 U230 ( .A(n251), .B(n252), .C(n253), .D(n254), .Z(n250) );
  NR2 U231 ( .A(sdram_mode_reg[10]), .B(n255), .Z(n253) );
  IV U232 ( .A(N56), .Z(n248) );
  AO3 U233 ( .A(n215), .B(n256), .C(n257), .D(n258), .Z(n507) );
  AO2 U234 ( .A(sdr_addr[11]), .B(n222), .C(b2x_addr[11]), .D(x2b_ack), .Z(
        n258) );
  IV U235 ( .A(N57), .Z(n256) );
  AO3 U236 ( .A(n215), .B(n259), .C(n260), .D(n261), .Z(n506) );
  AO2 U237 ( .A(sdr_addr[12]), .B(n222), .C(b2x_addr[12]), .D(x2b_ack), .Z(
        n261) );
  ND2 U238 ( .A(sdram_mode_reg[12]), .B(n223), .Z(n260) );
  IV U239 ( .A(N58), .Z(n259) );
  AO3 U240 ( .A(n9), .B(n215), .C(n257), .D(n262), .Z(n505) );
  AO2 U241 ( .A(sdr_ba[0]), .B(n222), .C(b2x_ba[0]), .D(x2b_ack), .Z(n262) );
  ND2 U242 ( .A(sdram_mode_reg[11]), .B(n223), .Z(n257) );
  AO7 U243 ( .A(n251), .B(n206), .C(n263), .Z(n504) );
  AO2 U244 ( .A(n264), .B(xfr_bank_sel[1]), .C(sdr_ba[1]), .D(n222), .Z(n263)
         );
  AO3 U245 ( .A(xfr_caddr[0]), .B(n215), .C(n265), .D(n266), .Z(n503) );
  AO2 U246 ( .A(sdr_addr[0]), .B(n222), .C(b2x_addr[0]), .D(x2b_ack), .Z(n266)
         );
  ND2 U247 ( .A(sdram_mode_reg[0]), .B(n223), .Z(n265) );
  IV U248 ( .A(n264), .Z(n215) );
  NR2 U249 ( .A(n222), .B(n174), .Z(n264) );
  IV U250 ( .A(n267), .Z(N392) );
  AO3 U251 ( .A(sdr_init_done), .B(n268), .C(sdram_enable), .D(reset_n), .Z(
        n267) );
  MUX21L U252 ( .A(n269), .B(n270), .S(rfsh_row_cnt[2]), .Z(N391) );
  AO2 U253 ( .A(n268), .B(n271), .C(n272), .D(n2), .Z(n270) );
  ND3 U254 ( .A(n272), .B(rfsh_row_cnt[0]), .C(rfsh_row_cnt[1]), .Z(n269) );
  MUX21L U255 ( .A(n273), .B(n274), .S(n2), .Z(N390) );
  ND2 U256 ( .A(rfsh_row_cnt[0]), .B(n272), .Z(n274) );
  ND2 U257 ( .A(n268), .B(n271), .Z(n273) );
  AO7 U258 ( .A(rfsh_row_cnt[0]), .B(n275), .C(n276), .Z(n271) );
  MUX21H U259 ( .A(n272), .B(n277), .S(rfsh_row_cnt[0]), .Z(N389) );
  NR2 U260 ( .A(n276), .B(n278), .Z(n277) );
  NR4 U261 ( .A(n278), .B(n279), .C(n280), .D(n275), .Z(n272) );
  NR2 U262 ( .A(n281), .B(n276), .Z(N388) );
  IV U263 ( .A(N343), .Z(n281) );
  NR2 U264 ( .A(n282), .B(n276), .Z(N387) );
  IV U265 ( .A(N342), .Z(n282) );
  NR2 U266 ( .A(n283), .B(n276), .Z(N386) );
  IV U267 ( .A(N341), .Z(n283) );
  NR2 U268 ( .A(n284), .B(n276), .Z(N385) );
  IV U269 ( .A(N340), .Z(n284) );
  NR2 U270 ( .A(n285), .B(n276), .Z(N384) );
  IV U271 ( .A(N339), .Z(n285) );
  NR2 U272 ( .A(n286), .B(n276), .Z(N383) );
  IV U273 ( .A(N338), .Z(n286) );
  NR2 U274 ( .A(n287), .B(n276), .Z(N382) );
  IV U275 ( .A(N337), .Z(n287) );
  NR2 U276 ( .A(n288), .B(n276), .Z(N381) );
  IV U277 ( .A(N336), .Z(n288) );
  NR2 U278 ( .A(n289), .B(n276), .Z(N380) );
  IV U279 ( .A(N335), .Z(n289) );
  NR2 U280 ( .A(n290), .B(n276), .Z(N379) );
  IV U281 ( .A(N334), .Z(n290) );
  NR2 U282 ( .A(n291), .B(n276), .Z(N378) );
  IV U283 ( .A(N333), .Z(n291) );
  NR2 U284 ( .A(n292), .B(n276), .Z(N377) );
  AO7 U285 ( .A(n280), .B(n279), .C(reset_n), .Z(n276) );
  ND4 U286 ( .A(n293), .B(n294), .C(n295), .D(n296), .Z(n279) );
  AN3 U287 ( .A(n297), .B(n298), .C(n299), .Z(n296) );
  EO U288 ( .A(n539), .B(rfsh_time[11]), .Z(n299) );
  EO U289 ( .A(n529), .B(rfsh_time[1]), .Z(n298) );
  EO U290 ( .A(n540), .B(rfsh_time[0]), .Z(n297) );
  EO U291 ( .A(n538), .B(rfsh_time[3]), .Z(n295) );
  EO U292 ( .A(n536), .B(rfsh_time[4]), .Z(n294) );
  EO U293 ( .A(n537), .B(rfsh_time[2]), .Z(n293) );
  ND4 U294 ( .A(n300), .B(n301), .C(n302), .D(n303), .Z(n280) );
  AN3 U295 ( .A(n304), .B(n305), .C(n306), .Z(n303) );
  EO U296 ( .A(n531), .B(rfsh_time[5]), .Z(n306) );
  EO U297 ( .A(n532), .B(rfsh_time[6]), .Z(n305) );
  EO U298 ( .A(n533), .B(rfsh_time[10]), .Z(n304) );
  EO U299 ( .A(n534), .B(rfsh_time[8]), .Z(n302) );
  EO U300 ( .A(n535), .B(rfsh_time[9]), .Z(n301) );
  EO U301 ( .A(n530), .B(rfsh_time[7]), .Z(n300) );
  IV U302 ( .A(N332), .Z(n292) );
  NR2 U303 ( .A(n307), .B(n275), .Z(N376) );
  AO1 U304 ( .A(n308), .B(n309), .C(n310), .D(n311), .Z(n307) );
  AO6 U305 ( .A(n312), .B(n313), .C(n495), .Z(n311) );
  ND2 U306 ( .A(n309), .B(n7), .Z(n313) );
  AO3 U307 ( .A(n143), .B(n314), .C(n315), .D(n316), .Z(N375) );
  MUX21H U308 ( .A(n317), .B(n312), .S(n7), .Z(n316) );
  AO6 U309 ( .A(n10), .B(n309), .C(n318), .Z(n312) );
  ND2 U310 ( .A(n309), .B(n319), .Z(n317) );
  AO3 U311 ( .A(n2), .B(n314), .C(n315), .D(n320), .Z(N374) );
  AO2 U312 ( .A(n319), .B(n309), .C(n318), .D(n10), .Z(n320) );
  MUX21L U313 ( .A(n321), .B(n218), .S(n309), .Z(n318) );
  AO3 U314 ( .A(n137), .B(n314), .C(n315), .D(n322), .Z(N373) );
  MUX21L U315 ( .A(n323), .B(n309), .S(n218), .Z(n322) );
  NR2 U316 ( .A(n309), .B(n321), .Z(n323) );
  NR2 U317 ( .A(n275), .B(n310), .Z(n315) );
  NR3 U318 ( .A(n1), .B(n136), .C(n3), .Z(n310) );
  IV U319 ( .A(n321), .Z(n314) );
  NR2 U320 ( .A(n324), .B(n278), .Z(n321) );
  IV U321 ( .A(n268), .Z(n278) );
  AO6 U322 ( .A(n325), .B(n326), .C(n275), .Z(N372) );
  ND2 U323 ( .A(trcar_delay[3]), .B(n309), .Z(n326) );
  AO2 U324 ( .A(tmr0[3]), .B(n327), .C(trp_delay[3]), .D(n328), .Z(n325) );
  AO7 U325 ( .A(n329), .B(n144), .C(n330), .Z(n327) );
  IV U326 ( .A(n331), .Z(n329) );
  NR2 U327 ( .A(n332), .B(n275), .Z(N371) );
  AO1 U328 ( .A(trcar_delay[2]), .B(n309), .C(n333), .D(n334), .Z(n332) );
  MUX21L U329 ( .A(n335), .B(n330), .S(tmr0[2]), .Z(n334) );
  ND2 U330 ( .A(n331), .B(n336), .Z(n330) );
  ND2 U331 ( .A(n331), .B(n337), .Z(n335) );
  ND2 U332 ( .A(n338), .B(n339), .Z(n333) );
  IV U333 ( .A(n223), .Z(n339) );
  ND2 U334 ( .A(trp_delay[2]), .B(n328), .Z(n338) );
  AO6 U335 ( .A(n340), .B(n341), .C(n275), .Z(N370) );
  AO6 U336 ( .A(n331), .B(n342), .C(n223), .Z(n341) );
  AO7 U337 ( .A(n5), .B(n145), .C(n336), .Z(n342) );
  AO2 U338 ( .A(trp_delay[1]), .B(n328), .C(trcar_delay[1]), .D(n309), .Z(n340) );
  AO6 U339 ( .A(n343), .B(n344), .C(n275), .Z(N369) );
  AO6 U340 ( .A(n331), .B(n5), .C(n223), .Z(n344) );
  AO6 U341 ( .A(n345), .B(n346), .C(n347), .Z(n331) );
  AO2 U342 ( .A(trp_delay[0]), .B(n328), .C(trcar_delay[0]), .D(n309), .Z(n343) );
  NR2 U343 ( .A(n348), .B(n275), .Z(N368) );
  AO1 U344 ( .A(n349), .B(n350), .C(n309), .D(n351), .Z(n348) );
  NR2 U345 ( .A(n352), .B(n255), .Z(n351) );
  AO6 U346 ( .A(sdram_enable), .B(n324), .C(n212), .Z(n352) );
  OR3 U347 ( .A(n136), .B(n308), .C(n353), .Z(n350) );
  NR2 U348 ( .A(n354), .B(n275), .Z(N367) );
  NR4 U349 ( .A(n223), .B(n355), .C(n356), .D(n357), .Z(n354) );
  AO6 U350 ( .A(n358), .B(n1), .C(n212), .Z(n357) );
  MUX21H U351 ( .A(n359), .B(n346), .S(n211), .Z(n358) );
  ND2 U352 ( .A(n324), .B(sdram_enable), .Z(n359) );
  AO1 U353 ( .A(n308), .B(n6), .C(n360), .D(n353), .Z(n356) );
  IV U354 ( .A(n347), .Z(n353) );
  AN3 U355 ( .A(n319), .B(n216), .C(n495), .Z(n308) );
  AN2 U356 ( .A(n218), .B(n217), .Z(n319) );
  NR3 U357 ( .A(n361), .B(n362), .C(n254), .Z(n355) );
  NR2 U358 ( .A(n255), .B(n254), .Z(n223) );
  AO6 U359 ( .A(n363), .B(n364), .C(n275), .Z(N366) );
  AO2 U360 ( .A(n347), .B(n365), .C(n345), .D(n254), .Z(n364) );
  AO7 U361 ( .A(n213), .B(n3), .C(n362), .Z(n345) );
  AO7 U362 ( .A(n212), .B(n1), .C(n360), .Z(n365) );
  NR3 U363 ( .A(tmr0[2]), .B(tmr0[3]), .C(n336), .Z(n347) );
  IV U364 ( .A(n337), .Z(n336) );
  NR2 U365 ( .A(tmr0[0]), .B(tmr0[1]), .Z(n337) );
  AO2 U366 ( .A(n366), .B(n361), .C(sdram_enable), .D(n367), .Z(n363) );
  ND2 U367 ( .A(reset_n), .B(x2a_wrnext), .Z(N289) );
  ND2 U368 ( .A(reset_n), .B(n368), .Z(N288) );
  ND2 U369 ( .A(a2x_wren_n[1]), .B(x2a_wrnext), .Z(n368) );
  ND2 U370 ( .A(reset_n), .B(n369), .Z(N287) );
  ND2 U371 ( .A(a2x_wren_n[0]), .B(x2a_wrnext), .Z(n369) );
  IV U372 ( .A(n214), .Z(x2a_wrnext) );
  ND2 U373 ( .A(n370), .B(reset_n), .Z(N286) );
  ND2 U374 ( .A(reset_n), .B(n176), .Z(N285) );
  ND4 U375 ( .A(n168), .B(n324), .C(reset_n), .D(n371), .Z(N283) );
  AN3 U376 ( .A(b2x_idle), .B(n268), .C(r2x_idle), .Z(n371) );
  NR2 U377 ( .A(n255), .B(n212), .Z(n268) );
  ND2 U378 ( .A(n1), .B(n3), .Z(n255) );
  EON1 U379 ( .A(rfsh_row_cnt[2]), .B(n372), .C(n373), .D(rfsh_rmax[2]), .Z(
        n324) );
  NR2 U380 ( .A(rfsh_rmax[2]), .B(n373), .Z(n372) );
  AO7 U381 ( .A(rfsh_row_cnt[1]), .B(n374), .C(n375), .Z(n373) );
  AO3 U382 ( .A(rfsh_rmax[1]), .B(n2), .C(n137), .D(rfsh_rmax[0]), .Z(n375) );
  IV U383 ( .A(rfsh_rmax[1]), .Z(n374) );
  ND2 U384 ( .A(reset_n), .B(n376), .Z(N282) );
  IV U385 ( .A(n377), .Z(N195) );
  AO7 U386 ( .A(n378), .B(n379), .C(reset_n), .Z(n377) );
  AO4 U387 ( .A(n171), .B(n172), .C(n6), .D(n380), .Z(n378) );
  NR2 U388 ( .A(n381), .B(n275), .Z(N194) );
  AO1 U389 ( .A(n382), .B(n383), .C(n384), .D(n385), .Z(n381) );
  AO4 U390 ( .A(n172), .B(n171), .C(n6), .D(n386), .Z(n382) );
  ND2 U391 ( .A(n387), .B(n167), .Z(n386) );
  NR2 U392 ( .A(n496), .B(n275), .Z(N193) );
  NR3 U393 ( .A(n176), .B(N284), .C(n370), .Z(N192) );
  IV U394 ( .A(n175), .Z(n370) );
  AO3 U395 ( .A(n174), .B(n388), .C(n376), .D(n389), .Z(n175) );
  AO6 U396 ( .A(n390), .B(x2b_ack), .C(n309), .Z(n389) );
  NR3 U397 ( .A(n213), .B(n212), .C(n254), .Z(n309) );
  AO7 U398 ( .A(b2x_cmd[1]), .B(n391), .C(n392), .Z(n390) );
  IV U399 ( .A(n222), .Z(n376) );
  AO7 U400 ( .A(n393), .B(n174), .C(n394), .Z(n222) );
  NR3 U401 ( .A(n395), .B(x2b_pre_ok[3]), .C(n8), .Z(n393) );
  ND3 U402 ( .A(n174), .B(n394), .C(n208), .Z(N284) );
  AO2 U403 ( .A(n213), .B(n346), .C(n361), .D(n328), .Z(n394) );
  IV U404 ( .A(b2x_tras_ok), .Z(n361) );
  IV U405 ( .A(n396), .Z(n174) );
  AO1 U406 ( .A(n397), .B(n396), .C(n328), .D(n398), .Z(n176) );
  AO4 U407 ( .A(n254), .B(n1), .C(n251), .D(b2x_cmd[1]), .Z(n398) );
  AN2 U408 ( .A(n366), .B(n346), .Z(n328) );
  NR2 U409 ( .A(n362), .B(n3), .Z(n366) );
  NR2 U410 ( .A(n346), .B(x2b_ack), .Z(n396) );
  IV U411 ( .A(n254), .Z(n346) );
  ND2 U412 ( .A(x2b_pre_ok[3]), .B(n165), .Z(n254) );
  ND4 U413 ( .A(n196), .B(xfr_caddr[0]), .C(xfr_caddr[1]), .D(n177), .Z(n397)
         );
  NR2 U414 ( .A(n167), .B(x2b_pre_ok[3]), .Z(n177) );
  ND2 U415 ( .A(n171), .B(n399), .Z(x2b_pre_ok[3]) );
  NR2 U416 ( .A(n497), .B(n275), .Z(N191) );
  NR2 U417 ( .A(n138), .B(n275), .Z(N190) );
  NR2 U418 ( .A(n498), .B(n275), .Z(N189) );
  NR2 U419 ( .A(n499), .B(n275), .Z(N188) );
  NR2 U420 ( .A(n500), .B(n275), .Z(N187) );
  NR2 U421 ( .A(n501), .B(n275), .Z(N186) );
  AN3 U422 ( .A(n548), .B(n400), .C(n180), .Z(N185) );
  MUX21L U423 ( .A(n401), .B(n402), .S(n173), .Z(n180) );
  ND4 U424 ( .A(n522), .B(n523), .C(n403), .D(n404), .Z(n402) );
  NR4 U425 ( .A(n405), .B(l_len_4_), .C(test_so1), .D(l_len_6_), .Z(n404) );
  OR3 U426 ( .A(l_len_9_), .B(l_len_7_), .C(l_len_8_), .Z(n405) );
  NR3 U427 ( .A(l_len_2_), .B(l_len_3_), .C(l_len_1_), .Z(n403) );
  ND4 U428 ( .A(n406), .B(n407), .C(n408), .D(n409), .Z(n401) );
  NR4 U429 ( .A(n410), .B(b2x_len[4]), .C(b2x_len[6]), .D(b2x_len[5]), .Z(n409) );
  ND3 U430 ( .A(n411), .B(n412), .C(n413), .Z(n410) );
  AN3 U431 ( .A(n414), .B(n415), .C(n416), .Z(n408) );
  IV U432 ( .A(n417), .Z(n400) );
  AO4 U433 ( .A(n207), .B(n182), .C(n524), .D(n209), .Z(n548) );
  IV U434 ( .A(b2x_last), .Z(n182) );
  NR2 U435 ( .A(n502), .B(n275), .Z(N184) );
  NR2 U436 ( .A(n139), .B(n275), .Z(N183) );
  NR2 U437 ( .A(n518), .B(n275), .Z(N182) );
  NR2 U438 ( .A(n519), .B(n275), .Z(N181) );
  NR2 U439 ( .A(n520), .B(n275), .Z(N180) );
  NR2 U440 ( .A(n521), .B(n275), .Z(N179) );
  NR3 U441 ( .A(n207), .B(n392), .C(n418), .Z(N178) );
  IV U442 ( .A(b2x_start), .Z(n418) );
  NR2 U443 ( .A(n528), .B(n275), .Z(N177) );
  NR2 U444 ( .A(n200), .B(n275), .Z(N176) );
  NR2 U445 ( .A(n201), .B(n275), .Z(N175) );
  NR2 U446 ( .A(n527), .B(n275), .Z(N174) );
  AN2 U447 ( .A(reset_n), .B(n525), .Z(N173) );
  AN2 U448 ( .A(reset_n), .B(n526), .Z(N172) );
  NR2 U449 ( .A(n417), .B(n275), .Z(N171) );
  AO7 U450 ( .A(n207), .B(n407), .C(n419), .Z(N170) );
  AO2 U451 ( .A(n420), .B(l_len_11_), .C(N74), .D(n421), .Z(n419) );
  IV U452 ( .A(b2x_len[11]), .Z(n407) );
  AO7 U453 ( .A(n207), .B(n406), .C(n422), .Z(N169) );
  AO2 U454 ( .A(n420), .B(l_len_10_), .C(N73), .D(n421), .Z(n422) );
  IV U455 ( .A(b2x_len[10]), .Z(n406) );
  AO7 U456 ( .A(n207), .B(n411), .C(n423), .Z(N168) );
  AO2 U457 ( .A(n420), .B(l_len_9_), .C(N72), .D(n421), .Z(n423) );
  IV U458 ( .A(b2x_len[9]), .Z(n411) );
  AO7 U459 ( .A(n207), .B(n412), .C(n424), .Z(N167) );
  AO2 U460 ( .A(n420), .B(l_len_8_), .C(N71), .D(n421), .Z(n424) );
  IV U461 ( .A(b2x_len[8]), .Z(n412) );
  AO7 U462 ( .A(n207), .B(n413), .C(n425), .Z(N166) );
  AO2 U463 ( .A(n420), .B(l_len_7_), .C(N70), .D(n421), .Z(n425) );
  IV U464 ( .A(b2x_len[7]), .Z(n413) );
  AO7 U465 ( .A(n207), .B(n426), .C(n427), .Z(N165) );
  AO2 U466 ( .A(n420), .B(l_len_6_), .C(N69), .D(n421), .Z(n427) );
  IV U467 ( .A(b2x_len[6]), .Z(n426) );
  AO7 U468 ( .A(n207), .B(n428), .C(n429), .Z(N164) );
  AO2 U469 ( .A(n420), .B(test_so1), .C(N68), .D(n421), .Z(n429) );
  IV U470 ( .A(b2x_len[5]), .Z(n428) );
  AO7 U471 ( .A(n207), .B(n430), .C(n431), .Z(N163) );
  AO2 U472 ( .A(n420), .B(l_len_4_), .C(N67), .D(n421), .Z(n431) );
  IV U473 ( .A(b2x_len[4]), .Z(n430) );
  AO7 U474 ( .A(n207), .B(n415), .C(n432), .Z(N162) );
  AO2 U475 ( .A(n420), .B(l_len_3_), .C(N66), .D(n421), .Z(n432) );
  IV U476 ( .A(b2x_len[3]), .Z(n415) );
  AO7 U477 ( .A(n207), .B(n416), .C(n433), .Z(N161) );
  AO2 U478 ( .A(n420), .B(l_len_2_), .C(N65), .D(n421), .Z(n433) );
  IV U479 ( .A(b2x_len[2]), .Z(n416) );
  AO7 U480 ( .A(n207), .B(n414), .C(n434), .Z(N160) );
  AO2 U481 ( .A(n420), .B(l_len_1_), .C(N64), .D(n421), .Z(n434) );
  IV U482 ( .A(b2x_len[1]), .Z(n414) );
  ND2 U483 ( .A(n435), .B(n436), .Z(N159) );
  ND2 U484 ( .A(b2x_len[0]), .B(n210), .Z(n436) );
  AO2 U485 ( .A(n420), .B(l_len_0_), .C(N63), .D(n421), .Z(n435) );
  NR2 U486 ( .A(n209), .B(n167), .Z(n421) );
  NR2 U487 ( .A(n209), .B(n437), .Z(n420) );
  NR2 U488 ( .A(n202), .B(n275), .Z(N156) );
  MUX21L U489 ( .A(b2x_id[3]), .B(l_id[3]), .S(n173), .Z(n202) );
  NR2 U490 ( .A(n203), .B(n275), .Z(N155) );
  MUX21L U491 ( .A(b2x_id[2]), .B(l_id[2]), .S(n173), .Z(n203) );
  NR2 U492 ( .A(n204), .B(n275), .Z(N154) );
  MUX21L U493 ( .A(b2x_id[1]), .B(l_id[1]), .S(n173), .Z(n204) );
  NR2 U494 ( .A(n205), .B(n275), .Z(N153) );
  MUX21L U495 ( .A(b2x_id[0]), .B(l_id[0]), .S(n173), .Z(n205) );
  AO7 U496 ( .A(n207), .B(n438), .C(n439), .Z(N150) );
  AO2 U497 ( .A(n440), .B(N58), .C(xfr_caddr[12]), .D(n441), .Z(n439) );
  IV U498 ( .A(b2x_addr[12]), .Z(n438) );
  AO7 U499 ( .A(n207), .B(n442), .C(n443), .Z(N149) );
  AO2 U500 ( .A(n440), .B(N57), .C(xfr_caddr[11]), .D(n441), .Z(n443) );
  IV U501 ( .A(b2x_addr[11]), .Z(n442) );
  AO7 U502 ( .A(n207), .B(n252), .C(n444), .Z(N148) );
  AO2 U503 ( .A(n440), .B(N56), .C(xfr_caddr[10]), .D(n441), .Z(n444) );
  IV U504 ( .A(b2x_addr[10]), .Z(n252) );
  AO7 U505 ( .A(n207), .B(n445), .C(n446), .Z(N147) );
  AO2 U506 ( .A(n440), .B(N55), .C(xfr_caddr[9]), .D(n441), .Z(n446) );
  IV U507 ( .A(b2x_addr[9]), .Z(n445) );
  AO7 U508 ( .A(n207), .B(n447), .C(n448), .Z(N146) );
  AO2 U509 ( .A(n440), .B(N54), .C(xfr_caddr[8]), .D(n441), .Z(n448) );
  IV U510 ( .A(b2x_addr[8]), .Z(n447) );
  AO7 U511 ( .A(n207), .B(n449), .C(n450), .Z(N145) );
  AO2 U512 ( .A(n440), .B(N53), .C(xfr_caddr[7]), .D(n441), .Z(n450) );
  IV U513 ( .A(b2x_addr[7]), .Z(n449) );
  AO7 U514 ( .A(n207), .B(n451), .C(n452), .Z(N144) );
  AO2 U515 ( .A(n440), .B(N52), .C(xfr_caddr[6]), .D(n441), .Z(n452) );
  IV U516 ( .A(b2x_addr[6]), .Z(n451) );
  AO7 U517 ( .A(n207), .B(n453), .C(n454), .Z(N143) );
  AO2 U518 ( .A(n440), .B(N51), .C(xfr_caddr[5]), .D(n441), .Z(n454) );
  IV U519 ( .A(b2x_addr[5]), .Z(n453) );
  AO7 U520 ( .A(n207), .B(n455), .C(n456), .Z(N142) );
  AO2 U521 ( .A(n440), .B(N50), .C(xfr_caddr[4]), .D(n441), .Z(n456) );
  IV U522 ( .A(b2x_addr[4]), .Z(n455) );
  AO7 U523 ( .A(n207), .B(n457), .C(n458), .Z(N141) );
  AO2 U524 ( .A(n440), .B(N49), .C(xfr_caddr[3]), .D(n441), .Z(n458) );
  IV U525 ( .A(b2x_addr[3]), .Z(n457) );
  AO7 U526 ( .A(n207), .B(n459), .C(n460), .Z(N140) );
  AO2 U527 ( .A(n440), .B(N48), .C(xfr_caddr[2]), .D(n441), .Z(n460) );
  IV U528 ( .A(b2x_addr[2]), .Z(n459) );
  AO7 U529 ( .A(n207), .B(n461), .C(n462), .Z(N139) );
  AO2 U530 ( .A(n440), .B(N47), .C(n441), .D(xfr_caddr[1]), .Z(n462) );
  IV U531 ( .A(b2x_addr[1]), .Z(n461) );
  AO7 U532 ( .A(n207), .B(n463), .C(n464), .Z(N138) );
  AO2 U533 ( .A(N46), .B(n440), .C(n441), .D(xfr_caddr[0]), .Z(n464) );
  AN3 U534 ( .A(n214), .B(n208), .C(n417), .Z(n441) );
  AO6 U535 ( .A(n214), .B(n417), .C(n209), .Z(n440) );
  IV U536 ( .A(n208), .Z(n209) );
  NR2 U537 ( .A(n275), .B(n179), .Z(n208) );
  AO6 U538 ( .A(n465), .B(n387), .C(n379), .Z(n417) );
  AO7 U539 ( .A(n466), .B(n383), .C(n388), .Z(n379) );
  ND2 U540 ( .A(n387), .B(n437), .Z(n388) );
  IV U541 ( .A(n465), .Z(n383) );
  AO6 U542 ( .A(n166), .B(n167), .C(n467), .Z(n466) );
  AO6 U543 ( .A(n172), .B(n385), .C(n384), .Z(n214) );
  AO7 U544 ( .A(n167), .B(n468), .C(n469), .Z(n384) );
  AO3 U545 ( .A(n470), .B(n166), .C(n471), .D(n178), .Z(n469) );
  IV U546 ( .A(n472), .Z(n178) );
  IV U547 ( .A(n473), .Z(n471) );
  NR2 U548 ( .A(n399), .B(n6), .Z(n470) );
  IV U549 ( .A(n166), .Z(n468) );
  NR3 U550 ( .A(n473), .B(n171), .C(n472), .Z(n385) );
  AO1 U551 ( .A(n190), .B(n474), .C(n526), .D(n525), .Z(n172) );
  AO7 U552 ( .A(n475), .B(n193), .C(n527), .Z(n474) );
  IV U553 ( .A(n188), .Z(n193) );
  ND3 U554 ( .A(n476), .B(n198), .C(cas_latency[1]), .Z(n188) );
  AO6 U555 ( .A(n183), .B(n477), .C(n140), .Z(n475) );
  AO7 U556 ( .A(n478), .B(n528), .C(n200), .Z(n477) );
  IV U557 ( .A(n187), .Z(n478) );
  ND2 U558 ( .A(cas_latency[2]), .B(n199), .Z(n187) );
  NR2 U559 ( .A(cas_latency[1]), .B(cas_latency[0]), .Z(n199) );
  ND3 U560 ( .A(cas_latency[0]), .B(n198), .C(cas_latency[1]), .Z(n183) );
  IV U561 ( .A(cas_latency[2]), .Z(n198) );
  OR3 U562 ( .A(cas_latency[1]), .B(cas_latency[2]), .C(n476), .Z(n190) );
  IV U563 ( .A(cas_latency[0]), .Z(n476) );
  IV U564 ( .A(b2x_addr[0]), .Z(n463) );
  IV U565 ( .A(n210), .Z(n207) );
  NR2 U566 ( .A(n275), .B(n173), .Z(n210) );
  IV U567 ( .A(n179), .Z(n173) );
  AO6 U568 ( .A(n392), .B(n472), .C(n251), .Z(n179) );
  IV U569 ( .A(x2b_ack), .Z(n251) );
  AO3 U570 ( .A(n479), .B(n473), .C(n480), .D(n481), .Z(x2b_ack) );
  AO3 U571 ( .A(n387), .B(n166), .C(n167), .D(n465), .Z(n481) );
  NR2 U572 ( .A(n473), .B(n392), .Z(n465) );
  IV U573 ( .A(n437), .Z(n167) );
  ND3 U574 ( .A(b2x_req), .B(n387), .C(n395), .Z(n480) );
  IV U575 ( .A(n482), .Z(n395) );
  IV U576 ( .A(n380), .Z(n387) );
  ND2 U577 ( .A(b2x_req), .B(n367), .Z(n473) );
  IV U578 ( .A(n165), .Z(n367) );
  AO3 U579 ( .A(n212), .B(n3), .C(n360), .D(n362), .Z(n165) );
  ND2 U580 ( .A(n212), .B(n1), .Z(n362) );
  IV U581 ( .A(n349), .Z(n360) );
  NR2 U582 ( .A(n1), .B(n211), .Z(n349) );
  AO1 U583 ( .A(n166), .B(n483), .C(n467), .D(n484), .Z(n479) );
  NR2 U584 ( .A(n485), .B(n380), .Z(n484) );
  ND2 U585 ( .A(test_so3), .B(n141), .Z(n380) );
  EO1 U586 ( .A(n472), .B(n8), .C(n486), .D(n437), .Z(n485) );
  AO7 U587 ( .A(n399), .B(n6), .C(n171), .Z(n467) );
  ND2 U588 ( .A(test_so3), .B(xfr_st_0_), .Z(n171) );
  IV U589 ( .A(n168), .Z(n399) );
  NR2 U590 ( .A(xfr_st_0_), .B(test_so3), .Z(n168) );
  AO3 U591 ( .A(n437), .B(n472), .C(n487), .D(n482), .Z(n483) );
  ND2 U592 ( .A(n437), .B(n488), .Z(n482) );
  ND3 U593 ( .A(xfr_caddr[0]), .B(n196), .C(xfr_caddr[1]), .Z(n488) );
  ND2 U594 ( .A(n486), .B(n8), .Z(n487) );
  OR3 U595 ( .A(b2x_cmd[0]), .B(n489), .C(n490), .Z(n486) );
  EN U596 ( .A(n9), .B(b2x_ba[0]), .Z(n490) );
  EN U597 ( .A(xfr_bank_sel[1]), .B(n206), .Z(n489) );
  IV U598 ( .A(b2x_ba[1]), .Z(n206) );
  ND4 U599 ( .A(n491), .B(n492), .C(n493), .D(n494), .Z(n437) );
  NR4 U600 ( .A(N95), .B(N94), .C(N93), .D(N92), .Z(n494) );
  NR3 U601 ( .A(N89), .B(N91), .C(N90), .Z(n493) );
  NR3 U602 ( .A(N86), .B(N88), .C(N87), .Z(n492) );
  NR3 U603 ( .A(N83), .B(N85), .C(N84), .Z(n491) );
  NR2 U604 ( .A(n141), .B(test_so3), .Z(n166) );
  ND2 U605 ( .A(b2x_cmd[0]), .B(b2x_cmd[1]), .Z(n472) );
  ND2 U606 ( .A(b2x_cmd[1]), .B(n391), .Z(n392) );
  IV U607 ( .A(b2x_cmd[0]), .Z(n391) );
  IV U608 ( .A(reset_n), .Z(n275) );
endmodule


module sdrc_core_SDR_DW16_SDR_BW2_test_1 ( clk, pad_clk, reset_n, sdr_width, 
        cfg_colbits, app_req, app_req_addr, app_req_len, app_req_wrap, 
        app_req_wr_n, app_req_ack, cfg_req_depth, app_wr_data, app_wr_en_n, 
        app_last_wr, app_rd_data, app_rd_valid, app_last_rd, app_wr_next_req, 
        sdr_init_done, app_req_dma_last, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, pad_sdr_din, sdr_dout, 
        sdr_den_n, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, cfg_sdr_trp_d, 
        cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, cfg_sdr_twr_d, 
        cfg_sdr_rfsh, cfg_sdr_rfmax, test_si25, test_si24, test_si23, 
        test_si22, test_si21, test_si20, test_si19, test_si18, test_si17, 
        test_si16, test_si15, test_si14, test_si13, test_si12, test_si11, 
        test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, 
        test_si3, test_si2, test_si1, test_so22, test_so21, test_so20, 
        test_so19, test_so18, test_so17, test_so16, test_so15, test_so14, 
        test_so13, test_so12, test_so11, test_so10, test_so9, test_so8, 
        test_so7, test_so6, test_so5, test_so4, test_so3, test_so2, test_so1, 
        test_se );
  input [1:0] sdr_width;
  input [1:0] cfg_colbits;
  input [25:0] app_req_addr;
  input [8:0] app_req_len;
  input [1:0] cfg_req_depth;
  input [31:0] app_wr_data;
  input [3:0] app_wr_en_n;
  output [31:0] app_rd_data;
  output [1:0] sdr_dqm;
  output [1:0] sdr_ba;
  output [12:0] sdr_addr;
  input [15:0] pad_sdr_din;
  output [15:0] sdr_dout;
  output [1:0] sdr_den_n;
  input [12:0] cfg_sdr_mode_reg;
  input [3:0] cfg_sdr_tras_d;
  input [3:0] cfg_sdr_trp_d;
  input [3:0] cfg_sdr_trcd_d;
  input [2:0] cfg_sdr_cas;
  input [3:0] cfg_sdr_trcar_d;
  input [3:0] cfg_sdr_twr_d;
  input [11:0] cfg_sdr_rfsh;
  input [2:0] cfg_sdr_rfmax;
  input clk, pad_clk, reset_n, app_req, app_req_wrap, app_req_wr_n,
         app_req_dma_last, cfg_sdr_en, test_si25, test_si24, test_si23,
         test_si22, test_si21, test_si20, test_si19, test_si18, test_si17,
         test_si16, test_si15, test_si14, test_si13, test_si12, test_si11,
         test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output app_req_ack, app_last_wr, app_rd_valid, app_last_rd, app_wr_next_req,
         sdr_init_done, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         test_so22, test_so21, test_so20, test_so19, test_so18, test_so17,
         test_so16, test_so15, test_so14, test_so13, test_so12, test_so11,
         test_so10, test_so9, test_so8, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
  wire   pad_sdr_din2_15_, pad_sdr_din2_14_, pad_sdr_din2_13_,
         pad_sdr_din2_12_, pad_sdr_din2_11_, pad_sdr_din2_10_, pad_sdr_din2_9_,
         pad_sdr_din2_7_, pad_sdr_din2_6_, pad_sdr_din2_5_, pad_sdr_din2_4_,
         pad_sdr_din2_3_, pad_sdr_din2_2_, pad_sdr_din2_1_, pad_sdr_din2_0_,
         r2x_idle, r2b_req, r2b_req_id_3_, r2b_req_id_2_, r2b_req_id_0_,
         r2b_start, r2b_last, r2b_wrap, r2b_caddr_10_, r2b_caddr_9_,
         r2b_caddr_8_, r2b_caddr_7_, r2b_caddr_6_, r2b_caddr_5_, r2b_caddr_4_,
         r2b_caddr_3_, r2b_caddr_2_, r2b_caddr_1_, r2b_write, b2r_ack,
         b2r_arb_ok, b2x_idle, b2x_req, b2x_start, b2x_last, b2x_wrap, x2b_ack,
         b2x_tras_ok, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok, x2a_rdstart,
         x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_wrnext, x2a_rdok, n33, n34,
         n39, n42, n44, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6;
  wire   [15:0] pad_sdr_din1;
  wire   [1:0] r2b_ba;
  wire   [12:0] r2b_raddr;
  wire   [11:0] r2b_len;
  wire   [3:0] b2x_id;
  wire   [1:0] b2x_ba;
  wire   [12:0] b2x_addr;
  wire   [11:0] b2x_len;
  wire   [1:0] b2x_cmd;
  wire   [3:0] x2b_pre_ok;
  wire   [1:0] xfr_bank_sel;
  wire   [15:0] a2x_wrdt;
  wire   [1:0] a2x_wren_n;
  wire   [15:0] x2a_rddt;
  tri   [15:0] pad_sdr_din;

  sdrc_req_gen_SDR_DW16_SDR_BW2_test_1 u_req_gen ( .clk(n33), .reset_n(reset_n), .cfg_colbits(cfg_colbits), .sdr_width(sdr_width), .req(app_req), .req_id({
        1'b0, 1'b0, 1'b0, 1'b0}), .req_addr(app_req_addr), .req_len(
        app_req_len), .req_wrap(app_req_wrap), .req_wr_n(app_req_wr_n), 
        .req_ack(app_req_ack), .r2x_idle(r2x_idle), .r2b_req(r2b_req), 
        .r2b_req_id({r2b_req_id_3_, r2b_req_id_2_, test_so19, r2b_req_id_0_}), 
        .r2b_start(r2b_start), .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), 
        .r2b_ba(r2b_ba), .r2b_raddr(r2b_raddr), .r2b_caddr({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, r2b_caddr_10_, 
        r2b_caddr_9_, r2b_caddr_8_, r2b_caddr_7_, r2b_caddr_6_, r2b_caddr_5_, 
        r2b_caddr_4_, r2b_caddr_3_, r2b_caddr_2_, r2b_caddr_1_, test_so18}), 
        .r2b_len(r2b_len), .r2b_write(r2b_write), .b2r_ack(b2r_ack), 
        .b2r_arb_ok(b2r_arb_ok), .test_si5(test_si20), .test_si4(test_si19), 
        .test_si3(test_si18), .test_si2(test_si17), .test_si1(n42), .test_so3(
        n39), .test_so2(test_so17), .test_so1(test_so16), .test_se(test_se) );
  sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 u_bank_ctl ( .clk(n33), .reset_n(
        reset_n), .a2b_req_depth(cfg_req_depth), .r2b_req(r2b_req), 
        .r2b_req_id({r2b_req_id_3_, r2b_req_id_2_, test_so19, r2b_req_id_0_}), 
        .r2b_start(r2b_start), .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), 
        .r2b_ba(r2b_ba), .r2b_raddr(r2b_raddr), .r2b_caddr({1'b0, 1'b0, 
        r2b_caddr_10_, r2b_caddr_9_, r2b_caddr_8_, r2b_caddr_7_, r2b_caddr_6_, 
        r2b_caddr_5_, r2b_caddr_4_, r2b_caddr_3_, r2b_caddr_2_, r2b_caddr_1_, 
        test_so18}), .r2b_len(r2b_len), .r2b_write(r2b_write), .b2r_arb_ok(
        b2r_arb_ok), .b2r_ack(b2r_ack), .b2x_idle(b2x_idle), .b2x_req(b2x_req), 
        .b2x_start(b2x_start), .b2x_last(b2x_last), .b2x_wrap(b2x_wrap), 
        .b2x_id(b2x_id), .b2x_ba(b2x_ba), .b2x_addr(b2x_addr), .b2x_len(
        b2x_len), .b2x_cmd(b2x_cmd), .x2b_ack(x2b_ack), .b2x_tras_ok(
        b2x_tras_ok), .x2b_refresh(x2b_refresh), .x2b_pre_ok(x2b_pre_ok), 
        .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), .x2b_wrok(x2b_wrok), 
        .xfr_bank_sel(xfr_bank_sel), .sdr_req_norm_dma_last(app_req_dma_last), 
        .tras_delay(cfg_sdr_tras_d), .trp_delay(cfg_sdr_trp_d), .trcd_delay(
        cfg_sdr_trcd_d), .test_si14(test_si15), .test_si13(test_si14), 
        .test_si12(test_si13), .test_si11(test_si12), .test_si10(test_si11), 
        .test_si9(test_si10), .test_si8(test_si9), .test_si7(test_si8), 
        .test_si6(test_si7), .test_si5(test_si6), .test_si4(test_si5), 
        .test_si3(test_si4), .test_si2(test_si3), .test_si1(pad_sdr_din2_15_), 
        .test_so14(n44), .test_so13(test_so14), .test_so12(test_so13), 
        .test_so11(test_so12), .test_so10(test_so11), .test_so9(test_so10), 
        .test_so8(test_so9), .test_so7(test_so8), .test_so6(test_so7), 
        .test_so5(test_so6), .test_so4(test_so5), .test_so3(test_so4), 
        .test_so2(test_so3), .test_so1(test_so2), .test_se(test_se) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_test_1 u_xfr_ctl ( .clk(n33), .reset_n(reset_n), .r2x_idle(r2x_idle), .b2x_idle(b2x_idle), .b2x_req(b2x_req), .b2x_start(
        b2x_start), .b2x_last(b2x_last), .b2x_id(b2x_id), .b2x_ba(b2x_ba), 
        .b2x_addr(b2x_addr), .b2x_len(b2x_len), .b2x_cmd(b2x_cmd), .b2x_wrap(
        b2x_wrap), .x2b_ack(x2b_ack), .b2x_tras_ok(b2x_tras_ok), .x2b_refresh(
        x2b_refresh), .x2b_pre_ok(x2b_pre_ok), .x2b_act_ok(x2b_act_ok), 
        .x2b_rdok(x2b_rdok), .x2b_wrok(x2b_wrok), .sdr_cs_n(sdr_cs_n), 
        .sdr_cke(sdr_cke), .sdr_ras_n(sdr_ras_n), .sdr_cas_n(sdr_cas_n), 
        .sdr_we_n(sdr_we_n), .sdr_dqm(sdr_dqm), .sdr_ba(sdr_ba), .sdr_addr(
        sdr_addr), .sdr_din({pad_sdr_din2_15_, pad_sdr_din2_14_, 
        pad_sdr_din2_13_, pad_sdr_din2_12_, pad_sdr_din2_11_, pad_sdr_din2_10_, 
        pad_sdr_din2_9_, test_so1, pad_sdr_din2_7_, pad_sdr_din2_6_, 
        pad_sdr_din2_5_, pad_sdr_din2_4_, pad_sdr_din2_3_, pad_sdr_din2_2_, 
        pad_sdr_din2_1_, pad_sdr_din2_0_}), .sdr_dout(sdr_dout), .sdr_den_n(
        sdr_den_n), .x2a_rdstart(x2a_rdstart), .x2a_wrstart(x2a_wrstart), 
        .x2a_rdlast(x2a_rdlast), .x2a_wrlast(x2a_wrlast), .x2a_id({
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6}), .a2x_wrdt(a2x_wrdt), .a2x_wren_n(a2x_wren_n), 
        .x2a_wrnext(x2a_wrnext), .x2a_rddt(x2a_rddt), .x2a_rdok(x2a_rdok), 
        .sdr_init_done(sdr_init_done), .sdram_enable(cfg_sdr_en), 
        .sdram_mode_reg(cfg_sdr_mode_reg), .xfr_bank_sel(xfr_bank_sel), 
        .cas_latency(cfg_sdr_cas), .trp_delay(cfg_sdr_trp_d), .trcar_delay(
        cfg_sdr_trcar_d), .twr_delay(cfg_sdr_twr_d), .rfsh_time(cfg_sdr_rfsh), 
        .rfsh_rmax(cfg_sdr_rfmax), .test_si6(test_si25), .test_si5(test_si24), 
        .test_si4(test_si23), .test_si3(test_si22), .test_si2(test_si21), 
        .test_si1(n39), .test_so3(test_so22), .test_so2(test_so21), .test_so1(
        test_so20), .test_se(test_se) );
  sdrc_bs_convert_SDR_DW16_SDR_BW2_test_1 u_bs_convert ( .clk(n33), .reset_n(
        reset_n), .sdr_width(sdr_width), .x2a_rdstart(x2a_rdstart), 
        .x2a_wrstart(x2a_wrstart), .x2a_rdlast(x2a_rdlast), .x2a_wrlast(
        x2a_wrlast), .x2a_rddt(x2a_rddt), .x2a_rdok(x2a_rdok), .a2x_wrdt(
        a2x_wrdt), .a2x_wren_n(a2x_wren_n), .x2a_wrnext(x2a_wrnext), 
        .app_wr_data(app_wr_data), .app_wr_en_n(app_wr_en_n), .app_wr_next(
        app_wr_next_req), .app_last_wr(app_last_wr), .app_rd_data(app_rd_data), 
        .app_rd_valid(app_rd_valid), .app_last_rd(app_last_rd), .test_si2(
        test_si16), .test_si1(n44), .test_so2(n42), .test_so1(test_so15), 
        .test_se(test_se) );
  FD1S pad_sdr_din2_reg_15_ ( .D(pad_sdr_din1[15]), .TI(pad_sdr_din2_14_), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2_15_) );
  FD1S pad_sdr_din2_reg_14_ ( .D(pad_sdr_din1[14]), .TI(pad_sdr_din2_13_), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2_14_) );
  FD1S pad_sdr_din2_reg_13_ ( .D(pad_sdr_din1[13]), .TI(pad_sdr_din2_12_), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2_13_) );
  FD1S pad_sdr_din2_reg_12_ ( .D(pad_sdr_din1[12]), .TI(pad_sdr_din2_11_), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2_12_) );
  FD1S pad_sdr_din2_reg_11_ ( .D(pad_sdr_din1[11]), .TI(pad_sdr_din2_10_), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2_11_) );
  FD1S pad_sdr_din2_reg_10_ ( .D(pad_sdr_din1[10]), .TI(pad_sdr_din2_9_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_10_) );
  FD1S pad_sdr_din2_reg_9_ ( .D(pad_sdr_din1[9]), .TI(test_si2), .TE(test_se), 
        .CP(n33), .Q(pad_sdr_din2_9_) );
  FD1S pad_sdr_din2_reg_8_ ( .D(pad_sdr_din1[8]), .TI(pad_sdr_din2_7_), .TE(
        test_se), .CP(n33), .Q(test_so1) );
  FD1S pad_sdr_din2_reg_7_ ( .D(pad_sdr_din1[7]), .TI(pad_sdr_din2_6_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_7_) );
  FD1S pad_sdr_din2_reg_6_ ( .D(pad_sdr_din1[6]), .TI(pad_sdr_din2_5_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_6_) );
  FD1S pad_sdr_din2_reg_5_ ( .D(pad_sdr_din1[5]), .TI(pad_sdr_din2_4_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_5_) );
  FD1S pad_sdr_din2_reg_4_ ( .D(pad_sdr_din1[4]), .TI(pad_sdr_din2_3_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_4_) );
  FD1S pad_sdr_din2_reg_3_ ( .D(pad_sdr_din1[3]), .TI(pad_sdr_din2_2_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_3_) );
  FD1S pad_sdr_din2_reg_2_ ( .D(pad_sdr_din1[2]), .TI(pad_sdr_din2_1_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_2_) );
  FD1S pad_sdr_din2_reg_1_ ( .D(pad_sdr_din1[1]), .TI(pad_sdr_din2_0_), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_1_) );
  FD1S pad_sdr_din2_reg_0_ ( .D(pad_sdr_din1[0]), .TI(pad_sdr_din1[15]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2_0_) );
  FD1S pad_sdr_din1_reg_15_ ( .D(pad_sdr_din[15]), .TI(pad_sdr_din1[14]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[15]) );
  FD1S pad_sdr_din1_reg_14_ ( .D(pad_sdr_din[14]), .TI(pad_sdr_din1[13]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[14]) );
  FD1S pad_sdr_din1_reg_13_ ( .D(pad_sdr_din[13]), .TI(pad_sdr_din1[12]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[13]) );
  FD1S pad_sdr_din1_reg_12_ ( .D(pad_sdr_din[12]), .TI(pad_sdr_din1[11]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[12]) );
  FD1S pad_sdr_din1_reg_11_ ( .D(pad_sdr_din[11]), .TI(pad_sdr_din1[10]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[11]) );
  FD1S pad_sdr_din1_reg_10_ ( .D(pad_sdr_din[10]), .TI(pad_sdr_din1[9]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[10]) );
  FD1S pad_sdr_din1_reg_9_ ( .D(pad_sdr_din[9]), .TI(pad_sdr_din1[8]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[9]) );
  FD1S pad_sdr_din1_reg_8_ ( .D(pad_sdr_din[8]), .TI(pad_sdr_din1[7]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[8]) );
  FD1S pad_sdr_din1_reg_7_ ( .D(pad_sdr_din[7]), .TI(pad_sdr_din1[6]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[7]) );
  FD1S pad_sdr_din1_reg_6_ ( .D(pad_sdr_din[6]), .TI(pad_sdr_din1[5]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[6]) );
  FD1S pad_sdr_din1_reg_5_ ( .D(pad_sdr_din[5]), .TI(pad_sdr_din1[4]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[5]) );
  FD1S pad_sdr_din1_reg_4_ ( .D(pad_sdr_din[4]), .TI(pad_sdr_din1[3]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[4]) );
  FD1S pad_sdr_din1_reg_3_ ( .D(pad_sdr_din[3]), .TI(pad_sdr_din1[2]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[3]) );
  FD1S pad_sdr_din1_reg_2_ ( .D(pad_sdr_din[2]), .TI(pad_sdr_din1[1]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[2]) );
  FD1S pad_sdr_din1_reg_1_ ( .D(pad_sdr_din[1]), .TI(pad_sdr_din1[0]), .TE(
        test_se), .CP(pad_clk), .Q(pad_sdr_din1[1]) );
  FD1S pad_sdr_din1_reg_0_ ( .D(pad_sdr_din[0]), .TI(test_si1), .TE(test_se), 
        .CP(pad_clk), .Q(pad_sdr_din1[0]) );
  IVP U35 ( .A(n34), .Z(n33) );
  IVP U36 ( .A(clk), .Z(n34) );
endmodule


module sdrc_top ( cfg_sdr_width, cfg_colbits, wb_rst_i, wb_clk_i, wb_stb_i, 
        wb_ack_o, wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, 
        wb_cti_i, sdram_clk, sdram_resetn, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_dq, sdr_init_done, 
        cfg_req_depth, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, 
        cfg_sdr_trp_d, cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, 
        cfg_sdr_twr_d, cfg_sdr_rfsh, cfg_sdr_rfmax, TEST_MODE, test_si1, 
        test_so1, test_si2, test_so2, test_si3, test_so3, test_si4, test_so4, 
        test_si5, test_so5, test_si6, test_so6, test_si7, test_so7, test_si8, 
        test_so8, test_si9, test_so9, test_si10, test_so10, test_si11, 
        test_so11, test_si12, test_so12, test_si13, test_so13, test_si14, 
        test_so14, test_si15, test_so15, test_si16, test_so16, test_si17, 
        test_so17, test_si18, test_so18, test_si19, test_so19, test_si20, 
        test_so20, test_si21, test_so21, test_si22, test_so22, test_si23, 
        test_so23, test_si24, test_so24, test_si25, test_so25, test_si26, 
        test_so26, test_si27, test_so27, test_si28, test_so28, test_si29, 
        test_so29, test_si30, test_so30, test_si31, test_so31, test_si32, 
        test_so32, test_si33, test_so33, test_si34, test_so34, test_si35, 
        test_so35, test_si36, test_si37, test_si38, test_so38, test_si39, 
        test_si40, test_so40, test_si41, test_so41, test_si42, test_so42, 
        test_si43, test_so43, test_si44, test_so44, test_si45, test_so45, 
        test_si46, test_so46, test_si47, test_so47, test_si48, test_so48, 
        test_si49, test_so49, test_si50, test_so50, test_se );
  input [1:0] cfg_sdr_width;
  input [1:0] cfg_colbits;
  input [25:0] wb_addr_i;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  output [31:0] wb_dat_o;
  input [2:0] wb_cti_i;
  output [1:0] sdr_dqm;
  output [1:0] sdr_ba;
  output [12:0] sdr_addr;
  inout [15:0] sdr_dq;
  input [1:0] cfg_req_depth;
  input [12:0] cfg_sdr_mode_reg;
  input [3:0] cfg_sdr_tras_d;
  input [3:0] cfg_sdr_trp_d;
  input [3:0] cfg_sdr_trcd_d;
  input [2:0] cfg_sdr_cas;
  input [3:0] cfg_sdr_trcar_d;
  input [3:0] cfg_sdr_twr_d;
  input [11:0] cfg_sdr_rfsh;
  input [2:0] cfg_sdr_rfmax;
  input wb_rst_i, wb_clk_i, wb_stb_i, wb_we_i, wb_cyc_i, sdram_clk,
         sdram_resetn, cfg_sdr_en, TEST_MODE, test_si1, test_si2, test_si3,
         test_si4, test_si5, test_si6, test_si7, test_si8, test_si9, test_si10,
         test_si11, test_si12, test_si13, test_si14, test_si15, test_si16,
         test_si17, test_si18, test_si19, test_si20, test_si21, test_si22,
         test_si23, test_si24, test_si25, test_si26, test_si27, test_si28,
         test_si29, test_si30, test_si31, test_si32, test_si33, test_si34,
         test_si35, test_si36, test_si37, test_si38, test_si39, test_si40,
         test_si41, test_si42, test_si43, test_si44, test_si45, test_si46,
         test_si47, test_si48, test_si49, test_si50, test_se;
  output wb_ack_o, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         sdr_init_done, test_so1, test_so2, test_so3, test_so4, test_so5,
         test_so6, test_so7, test_so8, test_so9, test_so10, test_so11,
         test_so12, test_so13, test_so14, test_so15, test_so16, test_so17,
         test_so18, test_so19, test_so20, test_so21, test_so22, test_so23,
         test_so24, test_so25, test_so26, test_so27, test_so28, test_so29,
         test_so30, test_so31, test_so32, test_so33, test_so34, test_so35,
         test_so38, test_so40, test_so41, test_so42, test_so43, test_so44,
         test_so45, test_so46, test_so47, test_so48, test_so49, test_so50;
  wire   app_req, app_req_addr_25_, app_req_addr_24_, app_req_addr_23_,
         app_req_addr_22_, app_req_addr_21_, app_req_addr_20_,
         app_req_addr_19_, app_req_addr_17_, app_req_addr_16_,
         app_req_addr_15_, app_req_addr_14_, app_req_addr_13_,
         app_req_addr_12_, app_req_addr_11_, app_req_addr_10_, app_req_addr_9_,
         app_req_addr_8_, app_req_addr_7_, app_req_addr_6_, app_req_addr_5_,
         app_req_addr_4_, app_req_addr_3_, app_req_addr_2_, app_req_addr_1_,
         app_req_addr_0_, app_req_wr_n, app_req_ack, app_wr_next_req,
         app_rd_valid, app_last_rd, n1, n2, n24, n101;
  wire   [1:0] sdr_den_n;
  wire   [15:0] sdr_dout;
  wire   [8:0] app_req_len;
  wire   [3:0] app_wr_en_n;
  wire   [31:0] app_wr_data;
  wire   [31:0] app_rd_data;
  tri   [15:0] sdr_dq;

  wb2sdrc_dw32_tw8_bl9_test_1 u_wb2sdrc ( .wb_rst_i(wb_rst_i), .wb_clk_i(
        wb_clk_i), .wb_stb_i(wb_stb_i), .wb_ack_o(wb_ack_o), .wb_addr_i(
        wb_addr_i), .wb_we_i(wb_we_i), .wb_dat_i(wb_dat_i), .wb_sel_i(wb_sel_i), .wb_dat_o(wb_dat_o), .wb_cyc_i(wb_cyc_i), .wb_cti_i(wb_cti_i), .sdram_clk(
        sdram_clk), .sdram_resetn(sdram_resetn), .sdr_req(app_req), 
        .sdr_req_addr({app_req_addr_25_, app_req_addr_24_, app_req_addr_23_, 
        app_req_addr_22_, app_req_addr_21_, app_req_addr_20_, app_req_addr_19_, 
        test_so40, app_req_addr_17_, app_req_addr_16_, app_req_addr_15_, 
        app_req_addr_14_, app_req_addr_13_, app_req_addr_12_, app_req_addr_11_, 
        app_req_addr_10_, app_req_addr_9_, app_req_addr_8_, app_req_addr_7_, 
        app_req_addr_6_, app_req_addr_5_, app_req_addr_4_, app_req_addr_3_, 
        app_req_addr_2_, app_req_addr_1_, app_req_addr_0_}), .sdr_req_len(
        app_req_len), .sdr_req_wr_n(app_req_wr_n), .sdr_req_ack(app_req_ack), 
        .sdr_busy_n(1'b0), .sdr_wr_en_n(app_wr_en_n), .sdr_wr_next(
        app_wr_next_req), .sdr_rd_valid(app_rd_valid), .sdr_last_rd(
        app_last_rd), .sdr_wr_data(app_wr_data), .sdr_rd_data(app_rd_data), 
        .test_si26(test_si50), .test_si25(test_si49), .test_si24(test_si48), 
        .test_si23(test_si47), .test_si22(test_si46), .test_si21(test_si45), 
        .test_si20(test_si44), .test_si19(test_si43), .test_si18(test_si42), 
        .test_si17(test_si41), .test_si16(n24), .test_si15(test_si38), 
        .test_si14(test_si35), .test_si13(test_si33), .test_si12(test_si30), 
        .test_si11(test_si28), .test_si10(test_si25), .test_si9(test_si22), 
        .test_si8(test_si20), .test_si7(test_si17), .test_si6(test_si15), 
        .test_si5(test_si12), .test_si4(test_si9), .test_si3(test_si7), 
        .test_si2(test_si4), .test_si1(test_si1), .test_so25(test_so50), 
        .test_so24(test_so49), .test_so23(test_so48), .test_so22(test_so47), 
        .test_so21(test_so46), .test_so20(test_so45), .test_so19(test_so44), 
        .test_so18(test_so43), .test_so17(test_so42), .test_so16(test_so41), 
        .test_so15(test_so38), .test_so14(test_so35), .test_so13(test_so33), 
        .test_so12(test_so30), .test_so11(test_so28), .test_so10(test_so25), 
        .test_so9(test_so22), .test_so8(test_so20), .test_so7(test_so17), 
        .test_so6(test_so15), .test_so5(test_so12), .test_so4(test_so9), 
        .test_so3(test_so7), .test_so2(test_so4), .test_so1(test_so1), 
        .test_se(test_se) );
  sdrc_core_SDR_DW16_SDR_BW2_test_1 u_sdrc_core ( .clk(sdram_clk), .pad_clk(
        sdram_clk), .reset_n(sdram_resetn), .sdr_width(cfg_sdr_width), 
        .cfg_colbits(cfg_colbits), .app_req(app_req), .app_req_addr({
        app_req_addr_25_, app_req_addr_24_, app_req_addr_23_, app_req_addr_22_, 
        app_req_addr_21_, app_req_addr_20_, app_req_addr_19_, test_so40, 
        app_req_addr_17_, app_req_addr_16_, app_req_addr_15_, app_req_addr_14_, 
        app_req_addr_13_, app_req_addr_12_, app_req_addr_11_, app_req_addr_10_, 
        app_req_addr_9_, app_req_addr_8_, app_req_addr_7_, app_req_addr_6_, 
        app_req_addr_5_, app_req_addr_4_, app_req_addr_3_, app_req_addr_2_, 
        app_req_addr_1_, app_req_addr_0_}), .app_req_len(app_req_len), 
        .app_req_wrap(1'b0), .app_req_wr_n(app_req_wr_n), .app_req_ack(
        app_req_ack), .cfg_req_depth(cfg_req_depth), .app_wr_data(app_wr_data), 
        .app_wr_en_n(app_wr_en_n), .app_rd_data(app_rd_data), .app_rd_valid(
        app_rd_valid), .app_last_rd(app_last_rd), .app_wr_next_req(
        app_wr_next_req), .sdr_init_done(sdr_init_done), .app_req_dma_last(
        app_req), .sdr_cs_n(sdr_cs_n), .sdr_cke(sdr_cke), .sdr_ras_n(sdr_ras_n), .sdr_cas_n(sdr_cas_n), .sdr_we_n(sdr_we_n), .sdr_dqm(sdr_dqm), .sdr_ba(
        sdr_ba), .sdr_addr(sdr_addr), .pad_sdr_din(sdr_dq), .sdr_dout(sdr_dout), .sdr_den_n(sdr_den_n), .cfg_sdr_en(cfg_sdr_en), .cfg_sdr_mode_reg(
        cfg_sdr_mode_reg), .cfg_sdr_tras_d(cfg_sdr_tras_d), .cfg_sdr_trp_d(
        cfg_sdr_trp_d), .cfg_sdr_trcd_d(cfg_sdr_trcd_d), .cfg_sdr_cas(
        cfg_sdr_cas), .cfg_sdr_trcar_d(cfg_sdr_trcar_d), .cfg_sdr_twr_d(
        cfg_sdr_twr_d), .cfg_sdr_rfsh(cfg_sdr_rfsh), .cfg_sdr_rfmax(
        cfg_sdr_rfmax), .test_si25(test_si40), .test_si24(test_si39), 
        .test_si23(test_si37), .test_si22(test_si36), .test_si21(test_si34), 
        .test_si20(test_si32), .test_si19(test_si31), .test_si18(test_si29), 
        .test_si17(test_si27), .test_si16(test_si26), .test_si15(test_si24), 
        .test_si14(test_si23), .test_si13(test_si21), .test_si12(test_si19), 
        .test_si11(test_si18), .test_si10(test_si16), .test_si9(test_si14), 
        .test_si8(test_si13), .test_si7(test_si11), .test_si6(test_si10), 
        .test_si5(test_si8), .test_si4(test_si6), .test_si3(test_si5), 
        .test_si2(test_si3), .test_si1(test_si2), .test_so22(n24), .test_so21(
        test_so34), .test_so20(test_so32), .test_so19(test_so31), .test_so18(
        test_so29), .test_so17(test_so27), .test_so16(test_so26), .test_so15(
        test_so24), .test_so14(test_so23), .test_so13(test_so21), .test_so12(
        test_so19), .test_so11(test_so18), .test_so10(test_so16), .test_so9(
        test_so14), .test_so8(test_so13), .test_so7(test_so11), .test_so6(
        test_so10), .test_so5(test_so8), .test_so4(test_so6), .test_so3(
        test_so5), .test_so2(test_so3), .test_so1(test_so2), .test_se(test_se)
         );
  BTS4 sdr_dq_tri_0_ ( .A(sdr_dout[0]), .E(n101), .Z(sdr_dq[0]) );
  BTS4 sdr_dq_tri_1_ ( .A(sdr_dout[1]), .E(n101), .Z(sdr_dq[1]) );
  BTS4 sdr_dq_tri_2_ ( .A(sdr_dout[2]), .E(n101), .Z(sdr_dq[2]) );
  BTS4 sdr_dq_tri_3_ ( .A(sdr_dout[3]), .E(n101), .Z(sdr_dq[3]) );
  BTS4 sdr_dq_tri_4_ ( .A(sdr_dout[4]), .E(n101), .Z(sdr_dq[4]) );
  BTS4 sdr_dq_tri_5_ ( .A(sdr_dout[5]), .E(n101), .Z(sdr_dq[5]) );
  BTS4 sdr_dq_tri_6_ ( .A(sdr_dout[6]), .E(n101), .Z(sdr_dq[6]) );
  BTS4 sdr_dq_tri_7_ ( .A(sdr_dout[7]), .E(n101), .Z(sdr_dq[7]) );
  BTS4 sdr_dq_tri_8_ ( .A(sdr_dout[8]), .E(n101), .Z(sdr_dq[8]) );
  BTS4 sdr_dq_tri_9_ ( .A(sdr_dout[9]), .E(n101), .Z(sdr_dq[9]) );
  BTS4 sdr_dq_tri_10_ ( .A(sdr_dout[10]), .E(n101), .Z(sdr_dq[10]) );
  BTS4 sdr_dq_tri_11_ ( .A(sdr_dout[11]), .E(n101), .Z(sdr_dq[11]) );
  BTS4 sdr_dq_tri_12_ ( .A(sdr_dout[12]), .E(n101), .Z(sdr_dq[12]) );
  BTS4 sdr_dq_tri_13_ ( .A(sdr_dout[13]), .E(n101), .Z(sdr_dq[13]) );
  BTS4 sdr_dq_tri_14_ ( .A(sdr_dout[14]), .E(n101), .Z(sdr_dq[14]) );
  BTS4 sdr_dq_tri_15_ ( .A(sdr_dout[15]), .E(n101), .Z(sdr_dq[15]) );
  ND2 U3 ( .A(sdr_den_n[1]), .B(sdr_den_n[0]), .Z(n1) );
  NR2 U4 ( .A(test_se), .B(n2), .Z(n101) );
  IV U5 ( .A(n1), .Z(n2) );
endmodule

