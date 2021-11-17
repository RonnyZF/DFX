/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5-1
// Date      : Tue Nov 16 15:11:54 2021
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
         mem_3__29_, mem_3__28_, mem_3__27_, mem_3__26_, mem_3__25_,
         mem_3__24_, mem_3__23_, mem_3__22_, mem_3__21_, mem_3__20_,
         mem_3__19_, mem_3__18_, mem_3__17_, mem_3__16_, mem_3__15_,
         mem_3__14_, mem_3__13_, mem_3__12_, mem_3__11_, mem_3__10_, mem_3__9_,
         mem_3__8_, mem_3__7_, mem_3__5_, mem_3__4_, mem_3__3_, mem_3__2_,
         mem_3__1_, mem_3__0_, mem_2__35_, mem_2__34_, mem_2__33_, mem_2__32_,
         mem_2__31_, mem_2__30_, mem_2__29_, mem_2__28_, mem_2__27_,
         mem_2__26_, mem_2__25_, mem_2__24_, mem_2__23_, mem_2__22_,
         mem_2__21_, mem_2__20_, mem_2__19_, mem_2__17_, mem_2__16_,
         mem_2__15_, mem_2__14_, mem_2__13_, mem_2__12_, mem_2__11_,
         mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_, mem_2__6_, mem_2__5_,
         mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_, mem_1__35_,
         mem_1__34_, mem_1__33_, mem_1__32_, mem_1__31_, mem_1__29_,
         mem_1__28_, mem_1__27_, mem_1__26_, mem_1__25_, mem_1__24_,
         mem_1__23_, mem_1__22_, mem_1__21_, mem_1__20_, mem_1__19_,
         mem_1__18_, mem_1__17_, mem_1__16_, mem_1__15_, mem_1__14_,
         mem_1__13_, mem_1__12_, mem_1__11_, mem_1__10_, mem_1__9_, mem_1__8_,
         mem_1__7_, mem_1__5_, mem_1__4_, mem_1__3_, mem_1__2_, mem_1__1_,
         mem_1__0_, mem_0__35_, mem_0__34_, mem_0__33_, mem_0__32_, mem_0__31_,
         mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_, mem_0__26_,
         mem_0__25_, mem_0__24_, mem_0__23_, mem_0__22_, mem_0__21_,
         mem_0__20_, mem_0__19_, mem_0__17_, mem_0__16_, mem_0__15_,
         mem_0__14_, mem_0__13_, mem_0__12_, mem_0__11_, mem_0__10_, mem_0__9_,
         mem_0__8_, mem_0__7_, mem_0__6_, mem_0__5_, mem_0__4_, mem_0__3_,
         mem_0__2_, mem_0__1_, mem_0__0_, n246, n248, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n247, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n711, n712, n713, n714;
  wire   [1:0] wr_ptr;
  wire   [2:0] grey_wr_ptr;
  wire   [2:0] grey_rd_ptr_dly;
  wire   [2:0] sync_rd_ptr_1;
  wire   [2:0] sync_rd_ptr_0;
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
  FD1S mem_reg_3__31_ ( .D(n369), .TI(test_si7), .TE(test_se), .CP(n17), .Q(
        mem_3__31_), .QN(n594) );
  FD1S mem_reg_3__30_ ( .D(n368), .TI(mem_3__29_), .TE(test_se), .CP(n16), .Q(
        test_so6), .QN(n593) );
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
  FD1S mem_reg_3__12_ ( .D(n350), .TI(mem_3__11_), .TE(test_se), .CP(n15), .Q(
        mem_3__12_), .QN(n575) );
  FD1S mem_reg_3__11_ ( .D(n349), .TI(mem_3__10_), .TE(test_se), .CP(n15), .Q(
        mem_3__11_), .QN(n574) );
  FD1S mem_reg_3__10_ ( .D(n348), .TI(mem_3__9_), .TE(test_se), .CP(n15), .Q(
        mem_3__10_), .QN(n573) );
  FD1S mem_reg_3__9_ ( .D(n347), .TI(mem_3__8_), .TE(test_se), .CP(n15), .Q(
        mem_3__9_), .QN(n572) );
  FD1S mem_reg_3__8_ ( .D(n346), .TI(mem_3__7_), .TE(test_se), .CP(n15), .Q(
        mem_3__8_), .QN(n571) );
  FD1S mem_reg_3__7_ ( .D(n345), .TI(test_si6), .TE(test_se), .CP(n15), .Q(
        mem_3__7_), .QN(n570) );
  FD1S mem_reg_3__6_ ( .D(n344), .TI(mem_3__5_), .TE(test_se), .CP(n14), .Q(
        test_so5), .QN(n569) );
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
  FD1S mem_reg_2__23_ ( .D(n397), .TI(mem_2__22_), .TE(test_se), .CP(n19), .Q(
        mem_2__23_), .QN(n622) );
  FD1S mem_reg_2__22_ ( .D(n396), .TI(mem_2__21_), .TE(test_se), .CP(n19), .Q(
        mem_2__22_), .QN(n621) );
  FD1S mem_reg_2__21_ ( .D(n395), .TI(mem_2__20_), .TE(test_se), .CP(n19), .Q(
        mem_2__21_), .QN(n620) );
  FD1S mem_reg_2__20_ ( .D(n394), .TI(mem_2__19_), .TE(test_se), .CP(n19), .Q(
        mem_2__20_), .QN(n619) );
  FD1S mem_reg_2__19_ ( .D(n393), .TI(test_si5), .TE(test_se), .CP(n19), .Q(
        mem_2__19_), .QN(n618) );
  FD1S mem_reg_2__18_ ( .D(n392), .TI(mem_2__17_), .TE(test_se), .CP(n18), .Q(
        test_so4), .QN(n617) );
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
  FD1S mem_reg_1__34_ ( .D(n444), .TI(mem_1__33_), .TE(test_se), .CP(n23), .Q(
        mem_1__34_), .QN(n669) );
  FD1S mem_reg_1__33_ ( .D(n443), .TI(mem_1__32_), .TE(test_se), .CP(n23), .Q(
        mem_1__33_), .QN(n668) );
  FD1S mem_reg_1__32_ ( .D(n442), .TI(mem_1__31_), .TE(test_se), .CP(n23), .Q(
        mem_1__32_), .QN(n667) );
  FD1S mem_reg_1__31_ ( .D(n441), .TI(test_si4), .TE(test_se), .CP(n23), .Q(
        mem_1__31_), .QN(n666) );
  FD1S mem_reg_1__30_ ( .D(n440), .TI(mem_1__29_), .TE(test_se), .CP(n22), .Q(
        test_so3), .QN(n665) );
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
  FD1S mem_reg_1__9_ ( .D(n419), .TI(mem_1__8_), .TE(test_se), .CP(n21), .Q(
        mem_1__9_), .QN(n644) );
  FD1S mem_reg_1__8_ ( .D(n418), .TI(mem_1__7_), .TE(test_se), .CP(n21), .Q(
        mem_1__8_), .QN(n643) );
  FD1S mem_reg_1__7_ ( .D(n417), .TI(test_si3), .TE(test_se), .CP(n21), .Q(
        mem_1__7_), .QN(n642) );
  FD1S mem_reg_1__6_ ( .D(n416), .TI(mem_1__5_), .TE(test_se), .CP(n20), .Q(
        test_so2), .QN(n641) );
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
  FD1S mem_reg_0__20_ ( .D(n466), .TI(mem_0__19_), .TE(test_se), .CP(n25), .Q(
        mem_0__20_), .QN(n691) );
  FD1S mem_reg_0__19_ ( .D(n465), .TI(test_si2), .TE(test_se), .CP(n25), .Q(
        mem_0__19_), .QN(n690) );
  FD1S mem_reg_0__18_ ( .D(n464), .TI(mem_0__17_), .TE(test_se), .CP(n24), .Q(
        test_so1), .QN(n689) );
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
  FD1S rd_data_q_reg_35_ ( .D(rd_data_c[35]), .TI(rd_data[34]), .TE(test_se), 
        .CP(n8), .Q(rd_data[35]) );
  FD1S rd_data_q_reg_28_ ( .D(rd_data_c[28]), .TI(rd_data[27]), .TE(test_se), 
        .CP(n8), .Q(rd_data[28]) );
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
  FD1S rd_data_q_reg_34_ ( .D(rd_data_c[34]), .TI(rd_data[33]), .TE(test_se), 
        .CP(n8), .Q(rd_data[34]) );
  FD1S rd_data_q_reg_30_ ( .D(rd_data_c[30]), .TI(rd_data[29]), .TE(test_se), 
        .CP(n8), .Q(rd_data[30]) );
  FD1S rd_data_q_reg_29_ ( .D(rd_data_c[29]), .TI(rd_data[28]), .TE(test_se), 
        .CP(n8), .Q(rd_data[29]) );
  FD1S rd_data_q_reg_26_ ( .D(rd_data_c[26]), .TI(rd_data[25]), .TE(test_se), 
        .CP(n7), .Q(rd_data[26]) );
  FD1S rd_data_q_reg_24_ ( .D(rd_data_c[24]), .TI(test_si9), .TE(test_se), 
        .CP(n7), .Q(rd_data[24]) );
  FD1S rd_data_q_reg_3_ ( .D(rd_data_c[3]), .TI(rd_data[2]), .TE(test_se), 
        .CP(n5), .Q(rd_data[3]) );
  FD1S rd_data_q_reg_2_ ( .D(rd_data_c[2]), .TI(rd_data[1]), .TE(test_se), 
        .CP(n5), .Q(rd_data[2]) );
  FD2S grey_wr_ptr_reg_1_ ( .D(n335), .TI(grey_wr_ptr[0]), .TE(test_se), .CP(
        n14), .CD(wr_reset_n), .Q(grey_wr_ptr[1]) );
  FD2S rd_ptr_reg_2_ ( .D(n487), .TI(1'b0), .TE(1'b0), .CP(n8), .CD(rd_reset_n), .Q(n712), .QN(n3) );
  FD2S sync_rd_ptr_1_reg_1_ ( .D(sync_rd_ptr_0[1]), .TI(sync_rd_ptr_1[0]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[1]), .QN(
        n711) );
  FD2S sync_rd_ptr_1_reg_0_ ( .D(sync_rd_ptr_0[0]), .TI(sync_rd_ptr_0[2]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[0]) );
  FD2S full_q_reg ( .D(n334), .TI(test_si1), .TE(test_se), .CP(n27), .CD(
        wr_reset_n), .Q(full), .QN(n562) );
  FD2S sync_wr_ptr_1_reg_0_ ( .D(sync_wr_ptr_0[0]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(rd_reset_n), .Q(sync_wr_ptr_1[0]) );
  FD1S rd_data_q_reg_33_ ( .D(rd_data_c[33]), .TI(rd_data[32]), .TE(test_se), 
        .CP(n8), .Q(rd_data[33]) );
  FD1S rd_data_q_reg_32_ ( .D(rd_data_c[32]), .TI(rd_data[31]), .TE(test_se), 
        .CP(n8), .Q(rd_data[32]) );
  FD1S rd_data_q_reg_31_ ( .D(rd_data_c[31]), .TI(rd_data[30]), .TE(test_se), 
        .CP(n8), .Q(rd_data[31]) );
  FD1S rd_data_q_reg_23_ ( .D(rd_data_c[23]), .TI(rd_data[22]), .TE(test_se), 
        .CP(n7), .Q(rd_data[23]) );
  FD1S rd_data_q_reg_22_ ( .D(rd_data_c[22]), .TI(rd_data[21]), .TE(test_se), 
        .CP(n7), .Q(rd_data[22]) );
  FD1S rd_data_q_reg_21_ ( .D(rd_data_c[21]), .TI(rd_data[20]), .TE(test_se), 
        .CP(n7), .Q(rd_data[21]) );
  FD1S rd_data_q_reg_20_ ( .D(rd_data_c[20]), .TI(rd_data[19]), .TE(test_se), 
        .CP(n7), .Q(rd_data[20]) );
  FD1S rd_data_q_reg_19_ ( .D(rd_data_c[19]), .TI(rd_data[18]), .TE(test_se), 
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
  FD1S rd_data_q_reg_27_ ( .D(rd_data_c[27]), .TI(rd_data[26]), .TE(test_se), 
        .CP(n7), .Q(rd_data[27]) );
  FD1S rd_data_q_reg_10_ ( .D(rd_data_c[10]), .TI(rd_data[9]), .TE(test_se), 
        .CP(n6), .Q(rd_data[10]) );
  FD1S rd_data_q_reg_9_ ( .D(rd_data_c[9]), .TI(rd_data[8]), .TE(test_se), 
        .CP(n6), .Q(rd_data[9]) );
  FD1S rd_data_q_reg_8_ ( .D(rd_data_c[8]), .TI(rd_data[7]), .TE(test_se), 
        .CP(n6), .Q(rd_data[8]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0[2]), .TI(sync_rd_ptr_1[1]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]) );
  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(rd_reset_n), .Q(sync_wr_ptr_1[2]) );
  FD2S wr_ptr_reg_1_ ( .D(n483), .TI(wr_ptr[0]), .TE(test_se), .CP(n14), .CD(
        wr_reset_n), .Q(wr_ptr[1]), .QN(n1) );
  FD2S rd_ptr_reg_0_ ( .D(n489), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(N45), .QN(n248) );
  FD2S rd_ptr_reg_1_ ( .D(n488), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(rd_reset_n), .Q(N46), .QN(n246) );
  FD2S wr_ptr_reg_0_ ( .D(n714), .TI(sync_rd_ptr_1[2]), .TE(test_se), .CP(n14), 
        .CD(wr_reset_n), .Q(wr_ptr[0]), .QN(n4) );
  FD2S sync_rd_ptr_0_reg_2_ ( .D(grey_rd_ptr_dly[2]), .TI(sync_rd_ptr_0[1]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_0[2]) );
  FD2S sync_rd_ptr_0_reg_1_ ( .D(grey_rd_ptr_dly[1]), .TI(sync_rd_ptr_0[0]), 
        .TE(test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_0[1]) );
  FD2S sync_rd_ptr_0_reg_0_ ( .D(grey_rd_ptr_dly[0]), .TI(mem_3__35_), .TE(
        test_se), .CP(n26), .CD(wr_reset_n), .Q(sync_rd_ptr_0[0]) );
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
  AO2 U262 ( .A(mem_2__6_), .B(n315), .C(test_so5), .D(n314), .Z(n257) );
  AO2 U263 ( .A(mem_0__6_), .B(n317), .C(test_so2), .D(n316), .Z(n256) );
  ND2 U264 ( .A(n257), .B(n256), .Z(rd_data_c[6]) );
  AO2 U265 ( .A(mem_2__7_), .B(n315), .C(mem_3__7_), .D(n314), .Z(n259) );
  AO2 U266 ( .A(mem_0__7_), .B(n317), .C(mem_1__7_), .D(n316), .Z(n258) );
  ND2 U267 ( .A(n259), .B(n258), .Z(rd_data_c[7]) );
  AO2 U268 ( .A(mem_2__8_), .B(n315), .C(mem_3__8_), .D(n314), .Z(n261) );
  AO2 U269 ( .A(mem_0__8_), .B(n317), .C(mem_1__8_), .D(n316), .Z(n260) );
  ND2 U270 ( .A(n261), .B(n260), .Z(rd_data_c[8]) );
  AO2 U271 ( .A(mem_2__9_), .B(n315), .C(mem_3__9_), .D(n314), .Z(n263) );
  AO2 U272 ( .A(mem_0__9_), .B(n317), .C(mem_1__9_), .D(n316), .Z(n262) );
  ND2 U273 ( .A(n263), .B(n262), .Z(rd_data_c[9]) );
  AO2 U274 ( .A(mem_2__10_), .B(n315), .C(mem_3__10_), .D(n314), .Z(n265) );
  AO2 U275 ( .A(mem_0__10_), .B(n317), .C(mem_1__10_), .D(n316), .Z(n264) );
  ND2 U276 ( .A(n265), .B(n264), .Z(rd_data_c[10]) );
  AO2 U277 ( .A(mem_2__11_), .B(n315), .C(mem_3__11_), .D(n314), .Z(n267) );
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
  AO2 U298 ( .A(test_so4), .B(n315), .C(mem_3__18_), .D(n314), .Z(n281) );
  AO2 U299 ( .A(test_so1), .B(n317), .C(mem_1__18_), .D(n316), .Z(n280) );
  ND2 U300 ( .A(n281), .B(n280), .Z(rd_data_c[18]) );
  AO2 U301 ( .A(mem_2__19_), .B(n315), .C(mem_3__19_), .D(n314), .Z(n283) );
  AO2 U302 ( .A(mem_0__19_), .B(n317), .C(mem_1__19_), .D(n316), .Z(n282) );
  ND2 U303 ( .A(n283), .B(n282), .Z(rd_data_c[19]) );
  AO2 U304 ( .A(mem_2__20_), .B(n315), .C(mem_3__20_), .D(n314), .Z(n285) );
  AO2 U305 ( .A(mem_0__20_), .B(n317), .C(mem_1__20_), .D(n316), .Z(n284) );
  ND2 U306 ( .A(n285), .B(n284), .Z(rd_data_c[20]) );
  AO2 U307 ( .A(mem_2__21_), .B(n315), .C(mem_3__21_), .D(n314), .Z(n287) );
  AO2 U308 ( .A(mem_0__21_), .B(n317), .C(mem_1__21_), .D(n316), .Z(n286) );
  ND2 U309 ( .A(n287), .B(n286), .Z(rd_data_c[21]) );
  AO2 U310 ( .A(mem_2__22_), .B(n315), .C(mem_3__22_), .D(n314), .Z(n289) );
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
  AO2 U334 ( .A(mem_2__30_), .B(n315), .C(test_so6), .D(n314), .Z(n305) );
  AO2 U335 ( .A(mem_0__30_), .B(n317), .C(test_so3), .D(n316), .Z(n304) );
  ND2 U336 ( .A(n305), .B(n304), .Z(rd_data_c[30]) );
  AO2 U337 ( .A(mem_2__31_), .B(n315), .C(mem_3__31_), .D(n314), .Z(n307) );
  AO2 U338 ( .A(mem_0__31_), .B(n317), .C(mem_1__31_), .D(n316), .Z(n306) );
  ND2 U339 ( .A(n307), .B(n306), .Z(rd_data_c[31]) );
  AO2 U340 ( .A(mem_2__32_), .B(n315), .C(mem_3__32_), .D(n314), .Z(n309) );
  AO2 U341 ( .A(mem_0__32_), .B(n317), .C(mem_1__32_), .D(n316), .Z(n308) );
  ND2 U342 ( .A(n309), .B(n308), .Z(rd_data_c[32]) );
  AO2 U343 ( .A(mem_2__33_), .B(n315), .C(mem_3__33_), .D(n314), .Z(n311) );
  AO2 U344 ( .A(mem_0__33_), .B(n317), .C(mem_1__33_), .D(n316), .Z(n310) );
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
        afull, rd_clk, rd_reset_n, rd_en, empty, aempty, rd_data, test_si8, 
        test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, test_si1, 
        test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, test_so2, 
        test_so1, test_se );
  input [32:0] wr_data;
  output [32:0] rd_data;
  input wr_clk, wr_reset_n, wr_en, rd_clk, rd_reset_n, rd_en, test_si8,
         test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, test_si1,
         test_se;
  output full, afull, empty, aempty, test_so8, test_so7, test_so6, test_so5,
         test_so4, test_so3, test_so2, test_so1;
  wire   N45, N46, mem_3__31_, mem_3__30_, mem_3__29_, mem_3__28_, mem_3__27_,
         mem_3__26_, mem_3__25_, mem_3__24_, mem_3__23_, mem_3__22_,
         mem_3__21_, mem_3__20_, mem_3__19_, mem_3__18_, mem_3__17_,
         mem_3__16_, mem_3__15_, mem_3__14_, mem_3__13_, mem_3__12_,
         mem_3__11_, mem_3__10_, mem_3__9_, mem_3__7_, mem_3__6_, mem_3__5_,
         mem_3__4_, mem_3__3_, mem_3__2_, mem_3__1_, mem_3__0_, mem_2__32_,
         mem_2__31_, mem_2__30_, mem_2__29_, mem_2__28_, mem_2__27_,
         mem_2__26_, mem_2__25_, mem_2__24_, mem_2__23_, mem_2__22_,
         mem_2__21_, mem_2__20_, mem_2__19_, mem_2__18_, mem_2__16_,
         mem_2__15_, mem_2__14_, mem_2__13_, mem_2__12_, mem_2__11_,
         mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_, mem_2__6_, mem_2__5_,
         mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_, mem_1__32_,
         mem_1__31_, mem_1__30_, mem_1__29_, mem_1__28_, mem_1__27_,
         mem_1__25_, mem_1__24_, mem_1__23_, mem_1__22_, mem_1__21_,
         mem_1__20_, mem_1__19_, mem_1__18_, mem_1__17_, mem_1__16_,
         mem_1__15_, mem_1__14_, mem_1__13_, mem_1__12_, mem_1__11_,
         mem_1__10_, mem_1__9_, mem_1__8_, mem_1__7_, mem_1__6_, mem_1__5_,
         mem_1__4_, mem_1__3_, mem_1__1_, mem_1__0_, mem_0__32_, mem_0__31_,
         mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_, mem_0__26_,
         mem_0__25_, mem_0__24_, mem_0__23_, mem_0__22_, mem_0__21_,
         mem_0__20_, mem_0__19_, mem_0__18_, mem_0__17_, mem_0__16_,
         mem_0__15_, mem_0__14_, mem_0__13_, mem_0__12_, mem_0__10_, mem_0__9_,
         mem_0__8_, mem_0__7_, mem_0__6_, mem_0__5_, mem_0__4_, mem_0__3_,
         mem_0__2_, mem_0__1_, mem_0__0_, n196, n278, n279, n280, n281, n282,
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
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n188, n189, n190, n191,
         n192, n193, n194, n195, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n619, n620;
  wire   [1:0] wr_ptr;
  wire   [2:0] grey_wr_ptr;
  wire   [2:0] grey_rd_ptr_dly;
  wire   [2:0] sync_rd_ptr_1;
  wire   [2:0] sync_rd_ptr_0;
  wire   [2:0] sync_wr_ptr_0;

  FD2S full_q_reg ( .D(n278), .TI(1'b0), .TE(1'b0), .CP(n6), .CD(wr_reset_n), 
        .Q(full), .QN(n477) );
  FD2S sync_wr_ptr_1_reg_1_ ( .D(sync_wr_ptr_0[1]), .TI(test_si2), .TE(test_se), .CP(n26), .CD(rd_reset_n), .Q(n619), .QN(n616) );
  FD1S mem_reg_3__32_ ( .D(n314), .TI(mem_3__31_), .TE(test_se), .CP(n8), .Q(
        test_so8), .QN(n510) );
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
  FD1S mem_reg_3__9_ ( .D(n291), .TI(test_si8), .TE(test_se), .CP(n6), .Q(
        mem_3__9_), .QN(n487) );
  FD1S mem_reg_3__8_ ( .D(n290), .TI(mem_3__7_), .TE(test_se), .CP(n6), .Q(
        test_so7), .QN(n486) );
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
  FD1S mem_reg_2__18_ ( .D(n333), .TI(test_si7), .TE(test_se), .CP(n10), .Q(
        mem_2__18_), .QN(n529) );
  FD1S mem_reg_2__17_ ( .D(n332), .TI(mem_2__16_), .TE(test_se), .CP(n10), .Q(
        test_so6), .QN(n528) );
  FD1S mem_reg_2__16_ ( .D(n331), .TI(mem_2__15_), .TE(test_se), .CP(n10), .Q(
        mem_2__16_), .QN(n527) );
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
  FD1S mem_reg_1__27_ ( .D(n375), .TI(test_si6), .TE(test_se), .CP(n13), .Q(
        mem_1__27_), .QN(n571) );
  FD1S mem_reg_1__26_ ( .D(n374), .TI(mem_1__25_), .TE(test_se), .CP(n13), .Q(
        test_so5), .QN(n570) );
  FD1S mem_reg_1__25_ ( .D(n373), .TI(mem_1__24_), .TE(test_se), .CP(n13), .Q(
        mem_1__25_), .QN(n569) );
  FD1S mem_reg_1__24_ ( .D(n372), .TI(mem_1__23_), .TE(test_se), .CP(n13), .Q(
        mem_1__24_), .QN(n568) );
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
  FD1S mem_reg_1__3_ ( .D(n351), .TI(test_si5), .TE(test_se), .CP(n11), .Q(
        mem_1__3_), .QN(n547) );
  FD1S mem_reg_1__2_ ( .D(n350), .TI(mem_1__1_), .TE(test_se), .CP(n11), .Q(
        test_so4), .QN(n546) );
  FD1S mem_reg_1__1_ ( .D(n349), .TI(mem_1__0_), .TE(test_se), .CP(n11), .Q(
        mem_1__1_), .QN(n545) );
  FD1S mem_reg_1__0_ ( .D(n381), .TI(mem_0__32_), .TE(test_se), .CP(n14), .Q(
        mem_1__0_), .QN(n577) );
  FD1S mem_reg_0__32_ ( .D(n413), .TI(mem_0__31_), .TE(test_se), .CP(n16), .Q(
        mem_0__32_), .QN(n609) );
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
  FD1S mem_reg_0__12_ ( .D(n393), .TI(test_si4), .TE(test_se), .CP(n15), .Q(
        mem_0__12_), .QN(n589) );
  FD1S mem_reg_0__11_ ( .D(n392), .TI(mem_0__10_), .TE(test_se), .CP(n15), .Q(
        test_so3), .QN(n588) );
  FD1S mem_reg_0__10_ ( .D(n391), .TI(mem_0__9_), .TE(test_se), .CP(n15), .Q(
        mem_0__10_), .QN(n587) );
  FD1S mem_reg_0__9_ ( .D(n390), .TI(mem_0__8_), .TE(test_se), .CP(n15), .Q(
        mem_0__9_), .QN(n586) );
  FD1S mem_reg_0__8_ ( .D(n389), .TI(mem_0__7_), .TE(test_se), .CP(n14), .Q(
        mem_0__8_), .QN(n585) );
  FD1S mem_reg_0__7_ ( .D(n388), .TI(mem_0__6_), .TE(test_se), .CP(n14), .Q(
        mem_0__7_), .QN(n584) );
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
  FD1S mem_reg_0__0_ ( .D(n414), .TI(test_si3), .TE(test_se), .CP(n17), .Q(
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
        .TE(test_se), .CP(n26), .CD(rd_reset_n), .Q(test_so1) );
  FD2S wr_ptr_reg_2_ ( .D(n282), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(wr_reset_n), .Q(n613), .QN(n2) );
  FD2S grey_wr_ptr_reg_0_ ( .D(n280), .TI(1'b0), .TE(1'b0), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr[0]) );
  FD2S grey_rd_ptr_reg_0_ ( .D(n417), .TI(test_si1), .TE(test_se), .CP(n26), 
        .CD(rd_reset_n), .Q(grey_rd_ptr_dly[0]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]) );
  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(n619), .TE(test_se), 
        .CP(n26), .CD(rd_reset_n), .Q(test_so2) );
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
  AO2 U194 ( .A(mem_0__2_), .B(n253), .C(test_so4), .D(n252), .Z(n189) );
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
  AO2 U209 ( .A(mem_0__7_), .B(n253), .C(mem_1__7_), .D(n252), .Z(n200) );
  ND2 U210 ( .A(n201), .B(n200), .Z(rd_data[7]) );
  AO2 U211 ( .A(mem_2__8_), .B(n251), .C(test_so7), .D(n250), .Z(n203) );
  AO2 U212 ( .A(mem_0__8_), .B(n253), .C(mem_1__8_), .D(n252), .Z(n202) );
  ND2 U213 ( .A(n203), .B(n202), .Z(rd_data[8]) );
  AO2 U214 ( .A(mem_2__9_), .B(n251), .C(mem_3__9_), .D(n250), .Z(n205) );
  AO2 U215 ( .A(mem_0__9_), .B(n253), .C(mem_1__9_), .D(n252), .Z(n204) );
  ND2 U216 ( .A(n205), .B(n204), .Z(rd_data[9]) );
  AO2 U217 ( .A(mem_2__10_), .B(n251), .C(mem_3__10_), .D(n250), .Z(n207) );
  AO2 U218 ( .A(mem_0__10_), .B(n253), .C(mem_1__10_), .D(n252), .Z(n206) );
  ND2 U219 ( .A(n207), .B(n206), .Z(rd_data[10]) );
  AO2 U220 ( .A(mem_2__11_), .B(n251), .C(mem_3__11_), .D(n250), .Z(n209) );
  AO2 U221 ( .A(test_so3), .B(n253), .C(mem_1__11_), .D(n252), .Z(n208) );
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
  AO2 U235 ( .A(mem_2__16_), .B(n251), .C(mem_3__16_), .D(n250), .Z(n219) );
  AO2 U236 ( .A(mem_0__16_), .B(n253), .C(mem_1__16_), .D(n252), .Z(n218) );
  ND2 U237 ( .A(n219), .B(n218), .Z(rd_data[16]) );
  AO2 U238 ( .A(test_so6), .B(n251), .C(mem_3__17_), .D(n250), .Z(n221) );
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
  AO2 U260 ( .A(mem_0__24_), .B(n253), .C(mem_1__24_), .D(n252), .Z(n234) );
  ND2 U261 ( .A(n235), .B(n234), .Z(rd_data[24]) );
  AO2 U262 ( .A(mem_2__25_), .B(n251), .C(mem_3__25_), .D(n250), .Z(n237) );
  AO2 U263 ( .A(mem_0__25_), .B(n253), .C(mem_1__25_), .D(n252), .Z(n236) );
  ND2 U264 ( .A(n237), .B(n236), .Z(rd_data[25]) );
  AO2 U265 ( .A(mem_2__26_), .B(n251), .C(mem_3__26_), .D(n250), .Z(n239) );
  AO2 U266 ( .A(mem_0__26_), .B(n253), .C(test_so5), .D(n252), .Z(n238) );
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
  AO2 U283 ( .A(mem_2__32_), .B(n251), .C(test_so8), .D(n250), .Z(n255) );
  AO2 U284 ( .A(mem_0__32_), .B(n253), .C(mem_1__32_), .D(n252), .Z(n254) );
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
  EO U504 ( .A(n3), .B(test_so2), .Z(n471) );
  AO7 U505 ( .A(n474), .B(N45), .C(n473), .Z(n461) );
  EN U506 ( .A(n475), .B(n476), .Z(n459) );
  EO U507 ( .A(n473), .B(n196), .Z(n475) );
  ND2 U508 ( .A(n474), .B(N45), .Z(n473) );
  EN U509 ( .A(n476), .B(test_so1), .Z(n474) );
  EN U510 ( .A(n616), .B(test_so2), .Z(n476) );
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
  wire   N69, N70, N71, wr_ptr_2_, wr_ptr_1_, mem_7__35_, mem_7__34_,
         mem_7__33_, mem_7__32_, mem_7__31_, mem_7__30_, mem_7__29_,
         mem_7__28_, mem_7__27_, mem_7__26_, mem_7__25_, mem_7__23_,
         mem_7__22_, mem_7__21_, mem_7__20_, mem_7__19_, mem_7__18_,
         mem_7__17_, mem_7__16_, mem_7__15_, mem_7__14_, mem_7__13_,
         mem_7__12_, mem_7__11_, mem_7__10_, mem_7__9_, mem_7__8_, mem_7__7_,
         mem_7__6_, mem_7__5_, mem_7__4_, mem_7__3_, mem_7__2_, mem_7__0_,
         mem_6__35_, mem_6__34_, mem_6__33_, mem_6__32_, mem_6__31_,
         mem_6__30_, mem_6__29_, mem_6__28_, mem_6__27_, mem_6__26_,
         mem_6__25_, mem_6__24_, mem_6__23_, mem_6__22_, mem_6__21_,
         mem_6__20_, mem_6__19_, mem_6__18_, mem_6__17_, mem_6__16_,
         mem_6__15_, mem_6__13_, mem_6__12_, mem_6__11_, mem_6__10_, mem_6__9_,
         mem_6__8_, mem_6__7_, mem_6__6_, mem_6__5_, mem_6__4_, mem_6__3_,
         mem_6__2_, mem_6__1_, mem_6__0_, mem_5__35_, mem_5__34_, mem_5__33_,
         mem_5__32_, mem_5__31_, mem_5__30_, mem_5__29_, mem_5__28_,
         mem_5__26_, mem_5__25_, mem_5__24_, mem_5__23_, mem_5__22_,
         mem_5__21_, mem_5__20_, mem_5__19_, mem_5__18_, mem_5__17_,
         mem_5__16_, mem_5__15_, mem_5__14_, mem_5__13_, mem_5__12_,
         mem_5__11_, mem_5__10_, mem_5__9_, mem_5__8_, mem_5__7_, mem_5__6_,
         mem_5__5_, mem_5__3_, mem_5__2_, mem_5__1_, mem_5__0_, mem_4__35_,
         mem_4__34_, mem_4__33_, mem_4__32_, mem_4__31_, mem_4__30_,
         mem_4__29_, mem_4__28_, mem_4__27_, mem_4__26_, mem_4__25_,
         mem_4__24_, mem_4__23_, mem_4__22_, mem_4__21_, mem_4__20_,
         mem_4__19_, mem_4__18_, mem_4__17_, mem_4__15_, mem_4__14_,
         mem_4__13_, mem_4__12_, mem_4__11_, mem_4__10_, mem_4__9_, mem_4__8_,
         mem_4__7_, mem_4__6_, mem_4__5_, mem_4__4_, mem_4__3_, mem_4__2_,
         mem_4__1_, mem_4__0_, mem_3__35_, mem_3__34_, mem_3__33_, mem_3__32_,
         mem_3__31_, mem_3__30_, mem_3__29_, mem_3__27_, mem_3__26_,
         mem_3__25_, mem_3__24_, mem_3__23_, mem_3__22_, mem_3__21_,
         mem_3__20_, mem_3__19_, mem_3__18_, mem_3__17_, mem_3__16_,
         mem_3__15_, mem_3__14_, mem_3__13_, mem_3__12_, mem_3__11_,
         mem_3__10_, mem_3__9_, mem_3__8_, mem_3__7_, mem_3__6_, mem_3__5_,
         mem_3__3_, mem_3__2_, mem_3__1_, mem_3__0_, mem_2__35_, mem_2__34_,
         mem_2__33_, mem_2__32_, mem_2__31_, mem_2__30_, mem_2__29_,
         mem_2__28_, mem_2__27_, mem_2__26_, mem_2__25_, mem_2__24_,
         mem_2__23_, mem_2__22_, mem_2__21_, mem_2__20_, mem_2__19_,
         mem_2__18_, mem_2__17_, mem_2__15_, mem_2__14_, mem_2__13_,
         mem_2__12_, mem_2__11_, mem_2__10_, mem_2__9_, mem_2__8_, mem_2__7_,
         mem_2__6_, mem_2__5_, mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_,
         mem_2__0_, mem_1__35_, mem_1__34_, mem_1__33_, mem_1__32_, mem_1__31_,
         mem_1__30_, mem_1__29_, mem_1__27_, mem_1__26_, mem_1__25_,
         mem_1__24_, mem_1__23_, mem_1__22_, mem_1__21_, mem_1__20_,
         mem_1__19_, mem_1__18_, mem_1__17_, mem_1__16_, mem_1__15_,
         mem_1__14_, mem_1__13_, mem_1__12_, mem_1__11_, mem_1__10_, mem_1__9_,
         mem_1__8_, mem_1__7_, mem_1__6_, mem_1__5_, mem_1__3_, mem_1__2_,
         mem_1__1_, mem_1__0_, mem_0__35_, mem_0__34_, mem_0__33_, mem_0__32_,
         mem_0__31_, mem_0__30_, mem_0__29_, mem_0__28_, mem_0__27_,
         mem_0__26_, mem_0__25_, mem_0__24_, mem_0__23_, mem_0__22_,
         mem_0__21_, mem_0__20_, mem_0__19_, mem_0__18_, mem_0__17_,
         mem_0__15_, mem_0__14_, mem_0__13_, mem_0__12_, mem_0__11_,
         mem_0__10_, mem_0__9_, mem_0__8_, mem_0__7_, mem_0__6_, mem_0__5_,
         mem_0__4_, mem_0__3_, mem_0__2_, mem_0__1_, mem_0__0_, rd_ptr_3_1,
         n360, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n356, n357, n358, n359, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947,
         n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958,
         n959, n960, n961, n962, n963, n964, n965, n966, n967, n968, n969,
         n970, n971, n972, n973, n974, n975, n976, n977, n978, n979, n980,
         n981, n982, n983, n984, n985, n986, n987, n988, n989, n990, n991,
         n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002,
         n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012,
         n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022,
         n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032,
         n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042,
         n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052,
         n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062,
         n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072,
         n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242;
  wire   [3:0] grey_wr_ptr;
  wire   [3:0] grey_rd_ptr_dly;
  wire   [3:0] sync_rd_ptr_1;
  wire   [3:0] sync_rd_ptr_0;
  wire   [3:0] sync_wr_ptr_1;
  wire   [3:0] sync_wr_ptr_0;

  FD2S sync_wr_ptr_1_reg_2_ ( .D(sync_wr_ptr_0[2]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .QN(n972) );
  FD1S mem_reg_7__35_ ( .D(n498), .TI(mem_7__34_), .TE(test_se), .CP(n15), .Q(
        mem_7__35_), .QN(n1013) );
  FD1S mem_reg_7__34_ ( .D(n497), .TI(mem_7__33_), .TE(test_se), .CP(n15), .Q(
        mem_7__34_), .QN(n1012) );
  FD1S mem_reg_7__33_ ( .D(n496), .TI(mem_7__32_), .TE(test_se), .CP(n14), .Q(
        mem_7__33_), .QN(n1011) );
  FD1S mem_reg_7__32_ ( .D(n495), .TI(mem_7__31_), .TE(test_se), .CP(n14), .Q(
        mem_7__32_), .QN(n1010) );
  FD1S mem_reg_7__31_ ( .D(n494), .TI(mem_7__30_), .TE(test_se), .CP(n14), .Q(
        mem_7__31_), .QN(n1009) );
  FD1S mem_reg_7__30_ ( .D(n493), .TI(mem_7__29_), .TE(test_se), .CP(n14), .Q(
        mem_7__30_), .QN(n1008) );
  FD1S mem_reg_7__29_ ( .D(n492), .TI(mem_7__28_), .TE(test_se), .CP(n14), .Q(
        mem_7__29_), .QN(n1007) );
  FD1S mem_reg_7__28_ ( .D(n491), .TI(mem_7__27_), .TE(test_se), .CP(n14), .Q(
        mem_7__28_), .QN(n1006) );
  FD1S mem_reg_7__27_ ( .D(n490), .TI(mem_7__26_), .TE(test_se), .CP(n14), .Q(
        mem_7__27_), .QN(n1005) );
  FD1S mem_reg_7__26_ ( .D(n489), .TI(mem_7__25_), .TE(test_se), .CP(n14), .Q(
        mem_7__26_), .QN(n1004) );
  FD1S mem_reg_7__25_ ( .D(n488), .TI(test_si13), .TE(test_se), .CP(n14), .Q(
        mem_7__25_), .QN(n1003) );
  FD1S mem_reg_7__24_ ( .D(n487), .TI(mem_7__23_), .TE(test_se), .CP(n14), .Q(
        test_so12), .QN(n1002) );
  FD1S mem_reg_7__23_ ( .D(n486), .TI(mem_7__22_), .TE(test_se), .CP(n14), .Q(
        mem_7__23_), .QN(n1001) );
  FD1S mem_reg_7__22_ ( .D(n485), .TI(mem_7__21_), .TE(test_se), .CP(n14), .Q(
        mem_7__22_), .QN(n1000) );
  FD1S mem_reg_7__21_ ( .D(n484), .TI(mem_7__20_), .TE(test_se), .CP(n13), .Q(
        mem_7__21_), .QN(n999) );
  FD1S mem_reg_7__20_ ( .D(n483), .TI(mem_7__19_), .TE(test_se), .CP(n13), .Q(
        mem_7__20_), .QN(n998) );
  FD1S mem_reg_7__19_ ( .D(n482), .TI(mem_7__18_), .TE(test_se), .CP(n13), .Q(
        mem_7__19_), .QN(n997) );
  FD1S mem_reg_7__18_ ( .D(n481), .TI(mem_7__17_), .TE(test_se), .CP(n13), .Q(
        mem_7__18_), .QN(n996) );
  FD1S mem_reg_7__17_ ( .D(n480), .TI(mem_7__16_), .TE(test_se), .CP(n13), .Q(
        mem_7__17_), .QN(n995) );
  FD1S mem_reg_7__16_ ( .D(n479), .TI(mem_7__15_), .TE(test_se), .CP(n13), .Q(
        mem_7__16_), .QN(n994) );
  FD1S mem_reg_7__15_ ( .D(n478), .TI(mem_7__14_), .TE(test_se), .CP(n13), .Q(
        mem_7__15_), .QN(n993) );
  FD1S mem_reg_7__14_ ( .D(n477), .TI(mem_7__13_), .TE(test_se), .CP(n13), .Q(
        mem_7__14_), .QN(n992) );
  FD1S mem_reg_7__13_ ( .D(n476), .TI(mem_7__12_), .TE(test_se), .CP(n13), .Q(
        mem_7__13_), .QN(n991) );
  FD1S mem_reg_7__12_ ( .D(n475), .TI(mem_7__11_), .TE(test_se), .CP(n13), .Q(
        mem_7__12_), .QN(n990) );
  FD1S mem_reg_7__11_ ( .D(n474), .TI(mem_7__10_), .TE(test_se), .CP(n13), .Q(
        mem_7__11_), .QN(n989) );
  FD1S mem_reg_7__10_ ( .D(n473), .TI(mem_7__9_), .TE(test_se), .CP(n13), .Q(
        mem_7__10_), .QN(n988) );
  FD1S mem_reg_7__9_ ( .D(n472), .TI(mem_7__8_), .TE(test_se), .CP(n12), .Q(
        mem_7__9_), .QN(n987) );
  FD1S mem_reg_7__8_ ( .D(n471), .TI(mem_7__7_), .TE(test_se), .CP(n12), .Q(
        mem_7__8_), .QN(n986) );
  FD1S mem_reg_7__7_ ( .D(n470), .TI(mem_7__6_), .TE(test_se), .CP(n12), .Q(
        mem_7__7_), .QN(n985) );
  FD1S mem_reg_7__6_ ( .D(n469), .TI(mem_7__5_), .TE(test_se), .CP(n12), .Q(
        mem_7__6_), .QN(n984) );
  FD1S mem_reg_7__5_ ( .D(n468), .TI(mem_7__4_), .TE(test_se), .CP(n12), .Q(
        mem_7__5_), .QN(n983) );
  FD1S mem_reg_7__4_ ( .D(n467), .TI(mem_7__3_), .TE(test_se), .CP(n12), .Q(
        mem_7__4_), .QN(n982) );
  FD1S mem_reg_7__3_ ( .D(n466), .TI(mem_7__2_), .TE(test_se), .CP(n12), .Q(
        mem_7__3_), .QN(n981) );
  FD1S mem_reg_7__2_ ( .D(n465), .TI(test_si12), .TE(test_se), .CP(n12), .Q(
        mem_7__2_), .QN(n980) );
  FD1S mem_reg_7__1_ ( .D(n464), .TI(mem_7__0_), .TE(test_se), .CP(n12), .Q(
        test_so11), .QN(n979) );
  FD1S mem_reg_7__0_ ( .D(n499), .TI(mem_6__35_), .TE(test_se), .CP(n15), .Q(
        mem_7__0_), .QN(n1014) );
  FD1S mem_reg_6__35_ ( .D(n534), .TI(mem_6__34_), .TE(test_se), .CP(n11), .Q(
        mem_6__35_), .QN(n1049) );
  FD1S mem_reg_6__34_ ( .D(n533), .TI(mem_6__33_), .TE(test_se), .CP(n11), .Q(
        mem_6__34_), .QN(n1048) );
  FD1S mem_reg_6__33_ ( .D(n532), .TI(mem_6__32_), .TE(test_se), .CP(n11), .Q(
        mem_6__33_), .QN(n1047) );
  FD1S mem_reg_6__32_ ( .D(n531), .TI(mem_6__31_), .TE(test_se), .CP(n11), .Q(
        mem_6__32_), .QN(n1046) );
  FD1S mem_reg_6__31_ ( .D(n530), .TI(mem_6__30_), .TE(test_se), .CP(n11), .Q(
        mem_6__31_), .QN(n1045) );
  FD1S mem_reg_6__30_ ( .D(n529), .TI(mem_6__29_), .TE(test_se), .CP(n11), .Q(
        mem_6__30_), .QN(n1044) );
  FD1S mem_reg_6__29_ ( .D(n528), .TI(mem_6__28_), .TE(test_se), .CP(n11), .Q(
        mem_6__29_), .QN(n1043) );
  FD1S mem_reg_6__28_ ( .D(n527), .TI(mem_6__27_), .TE(test_se), .CP(n11), .Q(
        mem_6__28_), .QN(n1042) );
  FD1S mem_reg_6__27_ ( .D(n526), .TI(mem_6__26_), .TE(test_se), .CP(n11), .Q(
        mem_6__27_), .QN(n1041) );
  FD1S mem_reg_6__26_ ( .D(n525), .TI(mem_6__25_), .TE(test_se), .CP(n11), .Q(
        mem_6__26_), .QN(n1040) );
  FD1S mem_reg_6__25_ ( .D(n524), .TI(mem_6__24_), .TE(test_se), .CP(n11), .Q(
        mem_6__25_), .QN(n1039) );
  FD1S mem_reg_6__24_ ( .D(n523), .TI(mem_6__23_), .TE(test_se), .CP(n11), .Q(
        mem_6__24_), .QN(n1038) );
  FD1S mem_reg_6__23_ ( .D(n522), .TI(mem_6__22_), .TE(test_se), .CP(n10), .Q(
        mem_6__23_), .QN(n1037) );
  FD1S mem_reg_6__22_ ( .D(n521), .TI(mem_6__21_), .TE(test_se), .CP(n10), .Q(
        mem_6__22_), .QN(n1036) );
  FD1S mem_reg_6__21_ ( .D(n520), .TI(mem_6__20_), .TE(test_se), .CP(n10), .Q(
        mem_6__21_), .QN(n1035) );
  FD1S mem_reg_6__20_ ( .D(n519), .TI(mem_6__19_), .TE(test_se), .CP(n10), .Q(
        mem_6__20_), .QN(n1034) );
  FD1S mem_reg_6__19_ ( .D(n518), .TI(mem_6__18_), .TE(test_se), .CP(n10), .Q(
        mem_6__19_), .QN(n1033) );
  FD1S mem_reg_6__18_ ( .D(n517), .TI(mem_6__17_), .TE(test_se), .CP(n10), .Q(
        mem_6__18_), .QN(n1032) );
  FD1S mem_reg_6__17_ ( .D(n516), .TI(mem_6__16_), .TE(test_se), .CP(n10), .Q(
        mem_6__17_), .QN(n1031) );
  FD1S mem_reg_6__16_ ( .D(n515), .TI(mem_6__15_), .TE(test_se), .CP(n10), .Q(
        mem_6__16_), .QN(n1030) );
  FD1S mem_reg_6__15_ ( .D(n514), .TI(test_si11), .TE(test_se), .CP(n10), .Q(
        mem_6__15_), .QN(n1029) );
  FD1S mem_reg_6__14_ ( .D(n513), .TI(mem_6__13_), .TE(test_se), .CP(n10), .Q(
        test_so10), .QN(n1028) );
  FD1S mem_reg_6__13_ ( .D(n512), .TI(mem_6__12_), .TE(test_se), .CP(n10), .Q(
        mem_6__13_), .QN(n1027) );
  FD1S mem_reg_6__12_ ( .D(n511), .TI(mem_6__11_), .TE(test_se), .CP(n10), .Q(
        mem_6__12_), .QN(n1026) );
  FD1S mem_reg_6__11_ ( .D(n510), .TI(mem_6__10_), .TE(test_se), .CP(n9), .Q(
        mem_6__11_), .QN(n1025) );
  FD1S mem_reg_6__10_ ( .D(n509), .TI(mem_6__9_), .TE(test_se), .CP(n9), .Q(
        mem_6__10_), .QN(n1024) );
  FD1S mem_reg_6__9_ ( .D(n508), .TI(mem_6__8_), .TE(test_se), .CP(n9), .Q(
        mem_6__9_), .QN(n1023) );
  FD1S mem_reg_6__8_ ( .D(n507), .TI(mem_6__7_), .TE(test_se), .CP(n9), .Q(
        mem_6__8_), .QN(n1022) );
  FD1S mem_reg_6__7_ ( .D(n506), .TI(mem_6__6_), .TE(test_se), .CP(n9), .Q(
        mem_6__7_), .QN(n1021) );
  FD1S mem_reg_6__6_ ( .D(n505), .TI(mem_6__5_), .TE(test_se), .CP(n9), .Q(
        mem_6__6_), .QN(n1020) );
  FD1S mem_reg_6__5_ ( .D(n504), .TI(mem_6__4_), .TE(test_se), .CP(n9), .Q(
        mem_6__5_), .QN(n1019) );
  FD1S mem_reg_6__4_ ( .D(n503), .TI(mem_6__3_), .TE(test_se), .CP(n9), .Q(
        mem_6__4_), .QN(n1018) );
  FD1S mem_reg_6__3_ ( .D(n502), .TI(mem_6__2_), .TE(test_se), .CP(n9), .Q(
        mem_6__3_), .QN(n1017) );
  FD1S mem_reg_6__2_ ( .D(n501), .TI(mem_6__1_), .TE(test_se), .CP(n9), .Q(
        mem_6__2_), .QN(n1016) );
  FD1S mem_reg_6__1_ ( .D(n500), .TI(mem_6__0_), .TE(test_se), .CP(n9), .Q(
        mem_6__1_), .QN(n1015) );
  FD1S mem_reg_6__0_ ( .D(n535), .TI(mem_5__35_), .TE(test_se), .CP(n12), .Q(
        mem_6__0_), .QN(n1050) );
  FD1S mem_reg_5__35_ ( .D(n570), .TI(mem_5__34_), .TE(test_se), .CP(n8), .Q(
        mem_5__35_), .QN(n1085) );
  FD1S mem_reg_5__34_ ( .D(n569), .TI(mem_5__33_), .TE(test_se), .CP(n8), .Q(
        mem_5__34_), .QN(n1084) );
  FD1S mem_reg_5__33_ ( .D(n568), .TI(mem_5__32_), .TE(test_se), .CP(n8), .Q(
        mem_5__33_), .QN(n1083) );
  FD1S mem_reg_5__32_ ( .D(n567), .TI(mem_5__31_), .TE(test_se), .CP(n8), .Q(
        mem_5__32_), .QN(n1082) );
  FD1S mem_reg_5__31_ ( .D(n566), .TI(mem_5__30_), .TE(test_se), .CP(n8), .Q(
        mem_5__31_), .QN(n1081) );
  FD1S mem_reg_5__30_ ( .D(n565), .TI(mem_5__29_), .TE(test_se), .CP(n8), .Q(
        mem_5__30_), .QN(n1080) );
  FD1S mem_reg_5__29_ ( .D(n564), .TI(mem_5__28_), .TE(test_se), .CP(n8), .Q(
        mem_5__29_), .QN(n1079) );
  FD1S mem_reg_5__28_ ( .D(n563), .TI(test_si10), .TE(test_se), .CP(n8), .Q(
        mem_5__28_), .QN(n1078) );
  FD1S mem_reg_5__27_ ( .D(n562), .TI(mem_5__26_), .TE(test_se), .CP(n8), .Q(
        test_so9), .QN(n1077) );
  FD1S mem_reg_5__26_ ( .D(n561), .TI(mem_5__25_), .TE(test_se), .CP(n8), .Q(
        mem_5__26_), .QN(n1076) );
  FD1S mem_reg_5__25_ ( .D(n560), .TI(mem_5__24_), .TE(test_se), .CP(n8), .Q(
        mem_5__25_), .QN(n1075) );
  FD1S mem_reg_5__24_ ( .D(n559), .TI(mem_5__23_), .TE(test_se), .CP(n8), .Q(
        mem_5__24_), .QN(n1074) );
  FD1S mem_reg_5__23_ ( .D(n558), .TI(mem_5__22_), .TE(test_se), .CP(n7), .Q(
        mem_5__23_), .QN(n1073) );
  FD1S mem_reg_5__22_ ( .D(n557), .TI(mem_5__21_), .TE(test_se), .CP(n7), .Q(
        mem_5__22_), .QN(n1072) );
  FD1S mem_reg_5__21_ ( .D(n556), .TI(mem_5__20_), .TE(test_se), .CP(n7), .Q(
        mem_5__21_), .QN(n1071) );
  FD1S mem_reg_5__20_ ( .D(n555), .TI(mem_5__19_), .TE(test_se), .CP(n7), .Q(
        mem_5__20_), .QN(n1070) );
  FD1S mem_reg_5__19_ ( .D(n554), .TI(mem_5__18_), .TE(test_se), .CP(n7), .Q(
        mem_5__19_), .QN(n1069) );
  FD1S mem_reg_5__18_ ( .D(n553), .TI(mem_5__17_), .TE(test_se), .CP(n7), .Q(
        mem_5__18_), .QN(n1068) );
  FD1S mem_reg_5__17_ ( .D(n552), .TI(mem_5__16_), .TE(test_se), .CP(n7), .Q(
        mem_5__17_), .QN(n1067) );
  FD1S mem_reg_5__16_ ( .D(n551), .TI(mem_5__15_), .TE(test_se), .CP(n7), .Q(
        mem_5__16_), .QN(n1066) );
  FD1S mem_reg_5__15_ ( .D(n550), .TI(mem_5__14_), .TE(test_se), .CP(n7), .Q(
        mem_5__15_), .QN(n1065) );
  FD1S mem_reg_5__14_ ( .D(n549), .TI(mem_5__13_), .TE(test_se), .CP(n7), .Q(
        mem_5__14_), .QN(n1064) );
  FD1S mem_reg_5__13_ ( .D(n548), .TI(mem_5__12_), .TE(test_se), .CP(n7), .Q(
        mem_5__13_), .QN(n1063) );
  FD1S mem_reg_5__12_ ( .D(n547), .TI(mem_5__11_), .TE(test_se), .CP(n7), .Q(
        mem_5__12_), .QN(n1062) );
  FD1S mem_reg_5__11_ ( .D(n546), .TI(mem_5__10_), .TE(test_se), .CP(n6), .Q(
        mem_5__11_), .QN(n1061) );
  FD1S mem_reg_5__10_ ( .D(n545), .TI(mem_5__9_), .TE(test_se), .CP(n6), .Q(
        mem_5__10_), .QN(n1060) );
  FD1S mem_reg_5__9_ ( .D(n544), .TI(mem_5__8_), .TE(test_se), .CP(n6), .Q(
        mem_5__9_), .QN(n1059) );
  FD1S mem_reg_5__8_ ( .D(n543), .TI(mem_5__7_), .TE(test_se), .CP(n6), .Q(
        mem_5__8_), .QN(n1058) );
  FD1S mem_reg_5__7_ ( .D(n542), .TI(mem_5__6_), .TE(test_se), .CP(n6), .Q(
        mem_5__7_), .QN(n1057) );
  FD1S mem_reg_5__6_ ( .D(n541), .TI(mem_5__5_), .TE(test_se), .CP(n6), .Q(
        mem_5__6_), .QN(n1056) );
  FD1S mem_reg_5__5_ ( .D(n540), .TI(test_si9), .TE(test_se), .CP(n6), .Q(
        mem_5__5_), .QN(n1055) );
  FD1S mem_reg_5__4_ ( .D(n539), .TI(mem_5__3_), .TE(test_se), .CP(n6), .Q(
        test_so8), .QN(n1054) );
  FD1S mem_reg_5__3_ ( .D(n538), .TI(mem_5__2_), .TE(test_se), .CP(n6), .Q(
        mem_5__3_), .QN(n1053) );
  FD1S mem_reg_5__2_ ( .D(n537), .TI(mem_5__1_), .TE(test_se), .CP(n6), .Q(
        mem_5__2_), .QN(n1052) );
  FD1S mem_reg_5__1_ ( .D(n536), .TI(mem_5__0_), .TE(test_se), .CP(n6), .Q(
        mem_5__1_), .QN(n1051) );
  FD1S mem_reg_5__0_ ( .D(n571), .TI(mem_4__35_), .TE(test_se), .CP(n9), .Q(
        mem_5__0_), .QN(n1086) );
  FD1S mem_reg_4__35_ ( .D(n606), .TI(mem_4__34_), .TE(test_se), .CP(n27), .Q(
        mem_4__35_), .QN(n1121) );
  FD1S mem_reg_4__34_ ( .D(n605), .TI(mem_4__33_), .TE(test_se), .CP(n27), .Q(
        mem_4__34_), .QN(n1120) );
  FD1S mem_reg_4__33_ ( .D(n604), .TI(mem_4__32_), .TE(test_se), .CP(n27), .Q(
        mem_4__33_), .QN(n1119) );
  FD1S mem_reg_4__32_ ( .D(n603), .TI(mem_4__31_), .TE(test_se), .CP(n27), .Q(
        mem_4__32_), .QN(n1118) );
  FD1S mem_reg_4__31_ ( .D(n602), .TI(mem_4__30_), .TE(test_se), .CP(n26), .Q(
        mem_4__31_), .QN(n1117) );
  FD1S mem_reg_4__30_ ( .D(n601), .TI(mem_4__29_), .TE(test_se), .CP(n26), .Q(
        mem_4__30_), .QN(n1116) );
  FD1S mem_reg_4__29_ ( .D(n600), .TI(mem_4__28_), .TE(test_se), .CP(n26), .Q(
        mem_4__29_), .QN(n1115) );
  FD1S mem_reg_4__28_ ( .D(n599), .TI(mem_4__27_), .TE(test_se), .CP(n26), .Q(
        mem_4__28_), .QN(n1114) );
  FD1S mem_reg_4__27_ ( .D(n598), .TI(mem_4__26_), .TE(test_se), .CP(n26), .Q(
        mem_4__27_), .QN(n1113) );
  FD1S mem_reg_4__26_ ( .D(n597), .TI(mem_4__25_), .TE(test_se), .CP(n26), .Q(
        mem_4__26_), .QN(n1112) );
  FD1S mem_reg_4__25_ ( .D(n596), .TI(mem_4__24_), .TE(test_se), .CP(n26), .Q(
        mem_4__25_), .QN(n1111) );
  FD1S mem_reg_4__24_ ( .D(n595), .TI(mem_4__23_), .TE(test_se), .CP(n26), .Q(
        mem_4__24_), .QN(n1110) );
  FD1S mem_reg_4__23_ ( .D(n594), .TI(mem_4__22_), .TE(test_se), .CP(n26), .Q(
        mem_4__23_), .QN(n1109) );
  FD1S mem_reg_4__22_ ( .D(n593), .TI(mem_4__21_), .TE(test_se), .CP(n26), .Q(
        mem_4__22_), .QN(n1108) );
  FD1S mem_reg_4__21_ ( .D(n592), .TI(mem_4__20_), .TE(test_se), .CP(n26), .Q(
        mem_4__21_), .QN(n1107) );
  FD1S mem_reg_4__20_ ( .D(n591), .TI(mem_4__19_), .TE(test_se), .CP(n26), .Q(
        mem_4__20_), .QN(n1106) );
  FD1S mem_reg_4__19_ ( .D(n590), .TI(mem_4__18_), .TE(test_se), .CP(n25), .Q(
        mem_4__19_), .QN(n1105) );
  FD1S mem_reg_4__18_ ( .D(n589), .TI(mem_4__17_), .TE(test_se), .CP(n25), .Q(
        mem_4__18_), .QN(n1104) );
  FD1S mem_reg_4__17_ ( .D(n588), .TI(test_si8), .TE(test_se), .CP(n25), .Q(
        mem_4__17_), .QN(n1103) );
  FD1S mem_reg_4__16_ ( .D(n587), .TI(mem_4__15_), .TE(test_se), .CP(n25), .Q(
        test_so7), .QN(n1102) );
  FD1S mem_reg_4__15_ ( .D(n586), .TI(mem_4__14_), .TE(test_se), .CP(n25), .Q(
        mem_4__15_), .QN(n1101) );
  FD1S mem_reg_4__14_ ( .D(n585), .TI(mem_4__13_), .TE(test_se), .CP(n25), .Q(
        mem_4__14_), .QN(n1100) );
  FD1S mem_reg_4__13_ ( .D(n584), .TI(mem_4__12_), .TE(test_se), .CP(n25), .Q(
        mem_4__13_), .QN(n1099) );
  FD1S mem_reg_4__12_ ( .D(n583), .TI(mem_4__11_), .TE(test_se), .CP(n25), .Q(
        mem_4__12_), .QN(n1098) );
  FD1S mem_reg_4__11_ ( .D(n582), .TI(mem_4__10_), .TE(test_se), .CP(n25), .Q(
        mem_4__11_), .QN(n1097) );
  FD1S mem_reg_4__10_ ( .D(n581), .TI(mem_4__9_), .TE(test_se), .CP(n25), .Q(
        mem_4__10_), .QN(n1096) );
  FD1S mem_reg_4__9_ ( .D(n580), .TI(mem_4__8_), .TE(test_se), .CP(n25), .Q(
        mem_4__9_), .QN(n1095) );
  FD1S mem_reg_4__8_ ( .D(n579), .TI(mem_4__7_), .TE(test_se), .CP(n25), .Q(
        mem_4__8_), .QN(n1094) );
  FD1S mem_reg_4__7_ ( .D(n578), .TI(mem_4__6_), .TE(test_se), .CP(n24), .Q(
        mem_4__7_), .QN(n1093) );
  FD1S mem_reg_4__6_ ( .D(n577), .TI(mem_4__5_), .TE(test_se), .CP(n24), .Q(
        mem_4__6_), .QN(n1092) );
  FD1S mem_reg_4__5_ ( .D(n576), .TI(mem_4__4_), .TE(test_se), .CP(n24), .Q(
        mem_4__5_), .QN(n1091) );
  FD1S mem_reg_4__4_ ( .D(n575), .TI(mem_4__3_), .TE(test_se), .CP(n24), .Q(
        mem_4__4_), .QN(n1090) );
  FD1S mem_reg_4__3_ ( .D(n574), .TI(mem_4__2_), .TE(test_se), .CP(n24), .Q(
        mem_4__3_), .QN(n1089) );
  FD1S mem_reg_4__2_ ( .D(n573), .TI(mem_4__1_), .TE(test_se), .CP(n24), .Q(
        mem_4__2_), .QN(n1088) );
  FD1S mem_reg_4__1_ ( .D(n572), .TI(mem_4__0_), .TE(test_se), .CP(n24), .Q(
        mem_4__1_), .QN(n1087) );
  FD1S mem_reg_4__0_ ( .D(n607), .TI(mem_3__35_), .TE(test_se), .CP(n27), .Q(
        mem_4__0_), .QN(n1122) );
  FD1S mem_reg_3__35_ ( .D(n642), .TI(mem_3__34_), .TE(test_se), .CP(n24), .Q(
        mem_3__35_), .QN(n1157) );
  FD1S mem_reg_3__34_ ( .D(n641), .TI(mem_3__33_), .TE(test_se), .CP(n24), .Q(
        mem_3__34_), .QN(n1156) );
  FD1S mem_reg_3__33_ ( .D(n640), .TI(mem_3__32_), .TE(test_se), .CP(n24), .Q(
        mem_3__33_), .QN(n1155) );
  FD1S mem_reg_3__32_ ( .D(n639), .TI(mem_3__31_), .TE(test_se), .CP(n24), .Q(
        mem_3__32_), .QN(n1154) );
  FD1S mem_reg_3__31_ ( .D(n638), .TI(mem_3__30_), .TE(test_se), .CP(n23), .Q(
        mem_3__31_), .QN(n1153) );
  FD1S mem_reg_3__30_ ( .D(n637), .TI(mem_3__29_), .TE(test_se), .CP(n23), .Q(
        mem_3__30_), .QN(n1152) );
  FD1S mem_reg_3__29_ ( .D(n636), .TI(test_si7), .TE(test_se), .CP(n23), .Q(
        mem_3__29_), .QN(n1151) );
  FD1S mem_reg_3__28_ ( .D(n635), .TI(mem_3__27_), .TE(test_se), .CP(n23), .Q(
        test_so6), .QN(n1150) );
  FD1S mem_reg_3__27_ ( .D(n634), .TI(mem_3__26_), .TE(test_se), .CP(n23), .Q(
        mem_3__27_), .QN(n1149) );
  FD1S mem_reg_3__26_ ( .D(n633), .TI(mem_3__25_), .TE(test_se), .CP(n23), .Q(
        mem_3__26_), .QN(n1148) );
  FD1S mem_reg_3__25_ ( .D(n632), .TI(mem_3__24_), .TE(test_se), .CP(n23), .Q(
        mem_3__25_), .QN(n1147) );
  FD1S mem_reg_3__24_ ( .D(n631), .TI(mem_3__23_), .TE(test_se), .CP(n23), .Q(
        mem_3__24_), .QN(n1146) );
  FD1S mem_reg_3__23_ ( .D(n630), .TI(mem_3__22_), .TE(test_se), .CP(n23), .Q(
        mem_3__23_), .QN(n1145) );
  FD1S mem_reg_3__22_ ( .D(n629), .TI(mem_3__21_), .TE(test_se), .CP(n23), .Q(
        mem_3__22_), .QN(n1144) );
  FD1S mem_reg_3__21_ ( .D(n628), .TI(mem_3__20_), .TE(test_se), .CP(n23), .Q(
        mem_3__21_), .QN(n1143) );
  FD1S mem_reg_3__20_ ( .D(n627), .TI(mem_3__19_), .TE(test_se), .CP(n23), .Q(
        mem_3__20_), .QN(n1142) );
  FD1S mem_reg_3__19_ ( .D(n626), .TI(mem_3__18_), .TE(test_se), .CP(n22), .Q(
        mem_3__19_), .QN(n1141) );
  FD1S mem_reg_3__18_ ( .D(n625), .TI(mem_3__17_), .TE(test_se), .CP(n22), .Q(
        mem_3__18_), .QN(n1140) );
  FD1S mem_reg_3__17_ ( .D(n624), .TI(mem_3__16_), .TE(test_se), .CP(n22), .Q(
        mem_3__17_), .QN(n1139) );
  FD1S mem_reg_3__16_ ( .D(n623), .TI(mem_3__15_), .TE(test_se), .CP(n22), .Q(
        mem_3__16_), .QN(n1138) );
  FD1S mem_reg_3__15_ ( .D(n622), .TI(mem_3__14_), .TE(test_se), .CP(n22), .Q(
        mem_3__15_), .QN(n1137) );
  FD1S mem_reg_3__14_ ( .D(n621), .TI(mem_3__13_), .TE(test_se), .CP(n22), .Q(
        mem_3__14_), .QN(n1136) );
  FD1S mem_reg_3__13_ ( .D(n620), .TI(mem_3__12_), .TE(test_se), .CP(n22), .Q(
        mem_3__13_), .QN(n1135) );
  FD1S mem_reg_3__12_ ( .D(n619), .TI(mem_3__11_), .TE(test_se), .CP(n22), .Q(
        mem_3__12_), .QN(n1134) );
  FD1S mem_reg_3__11_ ( .D(n618), .TI(mem_3__10_), .TE(test_se), .CP(n22), .Q(
        mem_3__11_), .QN(n1133) );
  FD1S mem_reg_3__10_ ( .D(n617), .TI(mem_3__9_), .TE(test_se), .CP(n22), .Q(
        mem_3__10_), .QN(n1132) );
  FD1S mem_reg_3__9_ ( .D(n616), .TI(mem_3__8_), .TE(test_se), .CP(n22), .Q(
        mem_3__9_), .QN(n1131) );
  FD1S mem_reg_3__8_ ( .D(n615), .TI(mem_3__7_), .TE(test_se), .CP(n22), .Q(
        mem_3__8_), .QN(n1130) );
  FD1S mem_reg_3__7_ ( .D(n614), .TI(mem_3__6_), .TE(test_se), .CP(n21), .Q(
        mem_3__7_), .QN(n1129) );
  FD1S mem_reg_3__6_ ( .D(n613), .TI(mem_3__5_), .TE(test_se), .CP(n21), .Q(
        mem_3__6_), .QN(n1128) );
  FD1S mem_reg_3__5_ ( .D(n612), .TI(test_si6), .TE(test_se), .CP(n21), .Q(
        mem_3__5_), .QN(n1127) );
  FD1S mem_reg_3__4_ ( .D(n611), .TI(mem_3__3_), .TE(test_se), .CP(n21), .Q(
        test_so5), .QN(n1126) );
  FD1S mem_reg_3__3_ ( .D(n610), .TI(mem_3__2_), .TE(test_se), .CP(n21), .Q(
        mem_3__3_), .QN(n1125) );
  FD1S mem_reg_3__2_ ( .D(n609), .TI(mem_3__1_), .TE(test_se), .CP(n21), .Q(
        mem_3__2_), .QN(n1124) );
  FD1S mem_reg_3__1_ ( .D(n608), .TI(mem_3__0_), .TE(test_se), .CP(n21), .Q(
        mem_3__1_), .QN(n1123) );
  FD1S mem_reg_3__0_ ( .D(n643), .TI(mem_2__35_), .TE(test_se), .CP(n24), .Q(
        mem_3__0_), .QN(n1158) );
  FD1S mem_reg_2__35_ ( .D(n678), .TI(mem_2__34_), .TE(test_se), .CP(n18), .Q(
        mem_2__35_), .QN(n1193) );
  FD1S mem_reg_2__34_ ( .D(n677), .TI(mem_2__33_), .TE(test_se), .CP(n18), .Q(
        mem_2__34_), .QN(n1192) );
  FD1S mem_reg_2__33_ ( .D(n676), .TI(mem_2__32_), .TE(test_se), .CP(n17), .Q(
        mem_2__33_), .QN(n1191) );
  FD1S mem_reg_2__32_ ( .D(n675), .TI(mem_2__31_), .TE(test_se), .CP(n17), .Q(
        mem_2__32_), .QN(n1190) );
  FD1S mem_reg_2__31_ ( .D(n674), .TI(mem_2__30_), .TE(test_se), .CP(n17), .Q(
        mem_2__31_), .QN(n1189) );
  FD1S mem_reg_2__30_ ( .D(n673), .TI(mem_2__29_), .TE(test_se), .CP(n17), .Q(
        mem_2__30_), .QN(n1188) );
  FD1S mem_reg_2__29_ ( .D(n672), .TI(mem_2__28_), .TE(test_se), .CP(n17), .Q(
        mem_2__29_), .QN(n1187) );
  FD1S mem_reg_2__28_ ( .D(n671), .TI(mem_2__27_), .TE(test_se), .CP(n17), .Q(
        mem_2__28_), .QN(n1186) );
  FD1S mem_reg_2__27_ ( .D(n670), .TI(mem_2__26_), .TE(test_se), .CP(n17), .Q(
        mem_2__27_), .QN(n1185) );
  FD1S mem_reg_2__26_ ( .D(n669), .TI(mem_2__25_), .TE(test_se), .CP(n17), .Q(
        mem_2__26_), .QN(n1184) );
  FD1S mem_reg_2__25_ ( .D(n668), .TI(mem_2__24_), .TE(test_se), .CP(n17), .Q(
        mem_2__25_), .QN(n1183) );
  FD1S mem_reg_2__24_ ( .D(n667), .TI(mem_2__23_), .TE(test_se), .CP(n17), .Q(
        mem_2__24_), .QN(n1182) );
  FD1S mem_reg_2__23_ ( .D(n666), .TI(mem_2__22_), .TE(test_se), .CP(n17), .Q(
        mem_2__23_), .QN(n1181) );
  FD1S mem_reg_2__22_ ( .D(n665), .TI(mem_2__21_), .TE(test_se), .CP(n17), .Q(
        mem_2__22_), .QN(n1180) );
  FD1S mem_reg_2__21_ ( .D(n664), .TI(mem_2__20_), .TE(test_se), .CP(n16), .Q(
        mem_2__21_), .QN(n1179) );
  FD1S mem_reg_2__20_ ( .D(n663), .TI(mem_2__19_), .TE(test_se), .CP(n16), .Q(
        mem_2__20_), .QN(n1178) );
  FD1S mem_reg_2__19_ ( .D(n662), .TI(mem_2__18_), .TE(test_se), .CP(n16), .Q(
        mem_2__19_), .QN(n1177) );
  FD1S mem_reg_2__18_ ( .D(n661), .TI(mem_2__17_), .TE(test_se), .CP(n16), .Q(
        mem_2__18_), .QN(n1176) );
  FD1S mem_reg_2__17_ ( .D(n660), .TI(test_si5), .TE(test_se), .CP(n16), .Q(
        mem_2__17_), .QN(n1175) );
  FD1S mem_reg_2__16_ ( .D(n659), .TI(mem_2__15_), .TE(test_se), .CP(n16), .Q(
        test_so4), .QN(n1174) );
  FD1S mem_reg_2__15_ ( .D(n658), .TI(mem_2__14_), .TE(test_se), .CP(n16), .Q(
        mem_2__15_), .QN(n1173) );
  FD1S mem_reg_2__14_ ( .D(n657), .TI(mem_2__13_), .TE(test_se), .CP(n16), .Q(
        mem_2__14_), .QN(n1172) );
  FD1S mem_reg_2__13_ ( .D(n656), .TI(mem_2__12_), .TE(test_se), .CP(n16), .Q(
        mem_2__13_), .QN(n1171) );
  FD1S mem_reg_2__12_ ( .D(n655), .TI(mem_2__11_), .TE(test_se), .CP(n16), .Q(
        mem_2__12_), .QN(n1170) );
  FD1S mem_reg_2__11_ ( .D(n654), .TI(mem_2__10_), .TE(test_se), .CP(n16), .Q(
        mem_2__11_), .QN(n1169) );
  FD1S mem_reg_2__10_ ( .D(n653), .TI(mem_2__9_), .TE(test_se), .CP(n16), .Q(
        mem_2__10_), .QN(n1168) );
  FD1S mem_reg_2__9_ ( .D(n652), .TI(mem_2__8_), .TE(test_se), .CP(n15), .Q(
        mem_2__9_), .QN(n1167) );
  FD1S mem_reg_2__8_ ( .D(n651), .TI(mem_2__7_), .TE(test_se), .CP(n15), .Q(
        mem_2__8_), .QN(n1166) );
  FD1S mem_reg_2__7_ ( .D(n650), .TI(mem_2__6_), .TE(test_se), .CP(n15), .Q(
        mem_2__7_), .QN(n1165) );
  FD1S mem_reg_2__6_ ( .D(n649), .TI(mem_2__5_), .TE(test_se), .CP(n15), .Q(
        mem_2__6_), .QN(n1164) );
  FD1S mem_reg_2__5_ ( .D(n648), .TI(mem_2__4_), .TE(test_se), .CP(n15), .Q(
        mem_2__5_), .QN(n1163) );
  FD1S mem_reg_2__4_ ( .D(n647), .TI(mem_2__3_), .TE(test_se), .CP(n15), .Q(
        mem_2__4_), .QN(n1162) );
  FD1S mem_reg_2__3_ ( .D(n646), .TI(mem_2__2_), .TE(test_se), .CP(n15), .Q(
        mem_2__3_), .QN(n1161) );
  FD1S mem_reg_2__2_ ( .D(n645), .TI(mem_2__1_), .TE(test_se), .CP(n15), .Q(
        mem_2__2_), .QN(n1160) );
  FD1S mem_reg_2__1_ ( .D(n644), .TI(mem_2__0_), .TE(test_se), .CP(n15), .Q(
        mem_2__1_), .QN(n1159) );
  FD1S mem_reg_2__0_ ( .D(n679), .TI(mem_1__35_), .TE(test_se), .CP(n18), .Q(
        mem_2__0_), .QN(n1194) );
  FD1S mem_reg_1__35_ ( .D(n714), .TI(mem_1__34_), .TE(test_se), .CP(n21), .Q(
        mem_1__35_), .QN(n1229) );
  FD1S mem_reg_1__34_ ( .D(n713), .TI(mem_1__33_), .TE(test_se), .CP(n21), .Q(
        mem_1__34_), .QN(n1228) );
  FD1S mem_reg_1__33_ ( .D(n712), .TI(mem_1__32_), .TE(test_se), .CP(n20), .Q(
        mem_1__33_), .QN(n1227) );
  FD1S mem_reg_1__32_ ( .D(n711), .TI(mem_1__31_), .TE(test_se), .CP(n20), .Q(
        mem_1__32_), .QN(n1226) );
  FD1S mem_reg_1__31_ ( .D(n710), .TI(mem_1__30_), .TE(test_se), .CP(n20), .Q(
        mem_1__31_), .QN(n1225) );
  FD1S mem_reg_1__30_ ( .D(n709), .TI(mem_1__29_), .TE(test_se), .CP(n20), .Q(
        mem_1__30_), .QN(n1224) );
  FD1S mem_reg_1__29_ ( .D(n708), .TI(test_si4), .TE(test_se), .CP(n20), .Q(
        mem_1__29_), .QN(n1223) );
  FD1S mem_reg_1__28_ ( .D(n707), .TI(mem_1__27_), .TE(test_se), .CP(n20), .Q(
        test_so3), .QN(n1222) );
  FD1S mem_reg_1__27_ ( .D(n706), .TI(mem_1__26_), .TE(test_se), .CP(n20), .Q(
        mem_1__27_), .QN(n1221) );
  FD1S mem_reg_1__26_ ( .D(n705), .TI(mem_1__25_), .TE(test_se), .CP(n20), .Q(
        mem_1__26_), .QN(n1220) );
  FD1S mem_reg_1__25_ ( .D(n704), .TI(mem_1__24_), .TE(test_se), .CP(n20), .Q(
        mem_1__25_), .QN(n1219) );
  FD1S mem_reg_1__24_ ( .D(n703), .TI(mem_1__23_), .TE(test_se), .CP(n20), .Q(
        mem_1__24_), .QN(n1218) );
  FD1S mem_reg_1__23_ ( .D(n702), .TI(mem_1__22_), .TE(test_se), .CP(n20), .Q(
        mem_1__23_), .QN(n1217) );
  FD1S mem_reg_1__22_ ( .D(n701), .TI(mem_1__21_), .TE(test_se), .CP(n20), .Q(
        mem_1__22_), .QN(n1216) );
  FD1S mem_reg_1__21_ ( .D(n700), .TI(mem_1__20_), .TE(test_se), .CP(n19), .Q(
        mem_1__21_), .QN(n1215) );
  FD1S mem_reg_1__20_ ( .D(n699), .TI(mem_1__19_), .TE(test_se), .CP(n19), .Q(
        mem_1__20_), .QN(n1214) );
  FD1S mem_reg_1__19_ ( .D(n698), .TI(mem_1__18_), .TE(test_se), .CP(n19), .Q(
        mem_1__19_), .QN(n1213) );
  FD1S mem_reg_1__18_ ( .D(n697), .TI(mem_1__17_), .TE(test_se), .CP(n19), .Q(
        mem_1__18_), .QN(n1212) );
  FD1S mem_reg_1__17_ ( .D(n696), .TI(mem_1__16_), .TE(test_se), .CP(n19), .Q(
        mem_1__17_), .QN(n1211) );
  FD1S mem_reg_1__16_ ( .D(n695), .TI(mem_1__15_), .TE(test_se), .CP(n19), .Q(
        mem_1__16_), .QN(n1210) );
  FD1S mem_reg_1__15_ ( .D(n694), .TI(mem_1__14_), .TE(test_se), .CP(n19), .Q(
        mem_1__15_), .QN(n1209) );
  FD1S mem_reg_1__14_ ( .D(n693), .TI(mem_1__13_), .TE(test_se), .CP(n19), .Q(
        mem_1__14_), .QN(n1208) );
  FD1S mem_reg_1__13_ ( .D(n692), .TI(mem_1__12_), .TE(test_se), .CP(n19), .Q(
        mem_1__13_), .QN(n1207) );
  FD1S mem_reg_1__12_ ( .D(n691), .TI(mem_1__11_), .TE(test_se), .CP(n19), .Q(
        mem_1__12_), .QN(n1206) );
  FD1S mem_reg_1__11_ ( .D(n690), .TI(mem_1__10_), .TE(test_se), .CP(n19), .Q(
        mem_1__11_), .QN(n1205) );
  FD1S mem_reg_1__10_ ( .D(n689), .TI(mem_1__9_), .TE(test_se), .CP(n19), .Q(
        mem_1__10_), .QN(n1204) );
  FD1S mem_reg_1__9_ ( .D(n688), .TI(mem_1__8_), .TE(test_se), .CP(n18), .Q(
        mem_1__9_), .QN(n1203) );
  FD1S mem_reg_1__8_ ( .D(n687), .TI(mem_1__7_), .TE(test_se), .CP(n18), .Q(
        mem_1__8_), .QN(n1202) );
  FD1S mem_reg_1__7_ ( .D(n686), .TI(mem_1__6_), .TE(test_se), .CP(n18), .Q(
        mem_1__7_), .QN(n1201) );
  FD1S mem_reg_1__6_ ( .D(n685), .TI(mem_1__5_), .TE(test_se), .CP(n18), .Q(
        mem_1__6_), .QN(n1200) );
  FD1S mem_reg_1__5_ ( .D(n684), .TI(test_si3), .TE(test_se), .CP(n18), .Q(
        mem_1__5_), .QN(n1199) );
  FD1S mem_reg_1__4_ ( .D(n683), .TI(mem_1__3_), .TE(test_se), .CP(n18), .Q(
        test_so2), .QN(n1198) );
  FD1S mem_reg_1__3_ ( .D(n682), .TI(mem_1__2_), .TE(test_se), .CP(n18), .Q(
        mem_1__3_), .QN(n1197) );
  FD1S mem_reg_1__2_ ( .D(n681), .TI(mem_1__1_), .TE(test_se), .CP(n18), .Q(
        mem_1__2_), .QN(n1196) );
  FD1S mem_reg_1__1_ ( .D(n680), .TI(mem_1__0_), .TE(test_se), .CP(n18), .Q(
        mem_1__1_), .QN(n1195) );
  FD1S mem_reg_1__0_ ( .D(n715), .TI(mem_0__35_), .TE(test_se), .CP(n21), .Q(
        mem_1__0_), .QN(n1230) );
  FD1S mem_reg_0__35_ ( .D(n750), .TI(mem_0__34_), .TE(test_se), .CP(n30), .Q(
        mem_0__35_), .QN(n965) );
  FD1S mem_reg_0__34_ ( .D(n749), .TI(mem_0__33_), .TE(test_se), .CP(n30), .Q(
        mem_0__34_), .QN(n964) );
  FD1S mem_reg_0__33_ ( .D(n748), .TI(mem_0__32_), .TE(test_se), .CP(n30), .Q(
        mem_0__33_), .QN(n963) );
  FD1S mem_reg_0__32_ ( .D(n747), .TI(mem_0__31_), .TE(test_se), .CP(n30), .Q(
        mem_0__32_), .QN(n962) );
  FD1S mem_reg_0__31_ ( .D(n746), .TI(mem_0__30_), .TE(test_se), .CP(n29), .Q(
        mem_0__31_), .QN(n961) );
  FD1S mem_reg_0__30_ ( .D(n745), .TI(mem_0__29_), .TE(test_se), .CP(n29), .Q(
        mem_0__30_), .QN(n960) );
  FD1S mem_reg_0__29_ ( .D(n744), .TI(mem_0__28_), .TE(test_se), .CP(n29), .Q(
        mem_0__29_), .QN(n959) );
  FD1S mem_reg_0__28_ ( .D(n743), .TI(mem_0__27_), .TE(test_se), .CP(n29), .Q(
        mem_0__28_), .QN(n958) );
  FD1S mem_reg_0__27_ ( .D(n742), .TI(mem_0__26_), .TE(test_se), .CP(n29), .Q(
        mem_0__27_), .QN(n957) );
  FD1S mem_reg_0__26_ ( .D(n741), .TI(mem_0__25_), .TE(test_se), .CP(n29), .Q(
        mem_0__26_), .QN(n956) );
  FD1S mem_reg_0__25_ ( .D(n740), .TI(mem_0__24_), .TE(test_se), .CP(n29), .Q(
        mem_0__25_), .QN(n955) );
  FD1S mem_reg_0__24_ ( .D(n739), .TI(mem_0__23_), .TE(test_se), .CP(n29), .Q(
        mem_0__24_), .QN(n954) );
  FD1S mem_reg_0__23_ ( .D(n738), .TI(mem_0__22_), .TE(test_se), .CP(n29), .Q(
        mem_0__23_), .QN(n953) );
  FD1S mem_reg_0__22_ ( .D(n737), .TI(mem_0__21_), .TE(test_se), .CP(n29), .Q(
        mem_0__22_), .QN(n952) );
  FD1S mem_reg_0__21_ ( .D(n736), .TI(mem_0__20_), .TE(test_se), .CP(n29), .Q(
        mem_0__21_), .QN(n951) );
  FD1S mem_reg_0__20_ ( .D(n735), .TI(mem_0__19_), .TE(test_se), .CP(n29), .Q(
        mem_0__20_), .QN(n950) );
  FD1S mem_reg_0__19_ ( .D(n734), .TI(mem_0__18_), .TE(test_se), .CP(n28), .Q(
        mem_0__19_), .QN(n949) );
  FD1S mem_reg_0__18_ ( .D(n733), .TI(mem_0__17_), .TE(test_se), .CP(n28), .Q(
        mem_0__18_), .QN(n948) );
  FD1S mem_reg_0__17_ ( .D(n732), .TI(test_si2), .TE(test_se), .CP(n28), .Q(
        mem_0__17_), .QN(n947) );
  FD1S mem_reg_0__16_ ( .D(n731), .TI(mem_0__15_), .TE(test_se), .CP(n28), .Q(
        test_so1), .QN(n946) );
  FD1S mem_reg_0__15_ ( .D(n730), .TI(mem_0__14_), .TE(test_se), .CP(n28), .Q(
        mem_0__15_), .QN(n945) );
  FD1S mem_reg_0__14_ ( .D(n729), .TI(mem_0__13_), .TE(test_se), .CP(n28), .Q(
        mem_0__14_), .QN(n944) );
  FD1S mem_reg_0__13_ ( .D(n728), .TI(mem_0__12_), .TE(test_se), .CP(n28), .Q(
        mem_0__13_), .QN(n943) );
  FD1S mem_reg_0__12_ ( .D(n727), .TI(mem_0__11_), .TE(test_se), .CP(n28), .Q(
        mem_0__12_), .QN(n942) );
  FD1S mem_reg_0__11_ ( .D(n726), .TI(mem_0__10_), .TE(test_se), .CP(n28), .Q(
        mem_0__11_), .QN(n1241) );
  FD1S mem_reg_0__10_ ( .D(n725), .TI(mem_0__9_), .TE(test_se), .CP(n28), .Q(
        mem_0__10_), .QN(n1240) );
  FD1S mem_reg_0__9_ ( .D(n724), .TI(mem_0__8_), .TE(test_se), .CP(n28), .Q(
        mem_0__9_), .QN(n1239) );
  FD1S mem_reg_0__8_ ( .D(n723), .TI(mem_0__7_), .TE(test_se), .CP(n28), .Q(
        mem_0__8_), .QN(n1238) );
  FD1S mem_reg_0__7_ ( .D(n722), .TI(mem_0__6_), .TE(test_se), .CP(n27), .Q(
        mem_0__7_), .QN(n1237) );
  FD1S mem_reg_0__6_ ( .D(n721), .TI(mem_0__5_), .TE(test_se), .CP(n27), .Q(
        mem_0__6_), .QN(n1236) );
  FD1S mem_reg_0__5_ ( .D(n720), .TI(mem_0__4_), .TE(test_se), .CP(n27), .Q(
        mem_0__5_), .QN(n1235) );
  FD1S mem_reg_0__4_ ( .D(n719), .TI(mem_0__3_), .TE(test_se), .CP(n27), .Q(
        mem_0__4_), .QN(n1234) );
  FD1S mem_reg_0__3_ ( .D(n718), .TI(mem_0__2_), .TE(test_se), .CP(n27), .Q(
        mem_0__3_), .QN(n1233) );
  FD1S mem_reg_0__2_ ( .D(n717), .TI(mem_0__1_), .TE(test_se), .CP(n27), .Q(
        mem_0__2_), .QN(n1232) );
  FD1S mem_reg_0__1_ ( .D(n716), .TI(mem_0__0_), .TE(test_se), .CP(n27), .Q(
        mem_0__1_), .QN(n1231) );
  FD1S mem_reg_0__0_ ( .D(n751), .TI(grey_wr_ptr[3]), .TE(test_se), .CP(n30), 
        .Q(mem_0__0_), .QN(n966) );
  FD2S grey_wr_ptr_reg_3_ ( .D(n461), .TI(grey_wr_ptr[2]), .TE(test_se), .CP(
        n12), .CD(wr_reset_n), .Q(grey_wr_ptr[3]), .QN(n977) );
  FD2S grey_wr_ptr_reg_2_ ( .D(n462), .TI(grey_wr_ptr[1]), .TE(test_se), .CP(
        n21), .CD(wr_reset_n), .Q(grey_wr_ptr[2]), .QN(n978) );
  FD2S grey_wr_ptr_reg_1_ ( .D(n459), .TI(grey_wr_ptr[0]), .TE(test_se), .CP(
        n21), .CD(wr_reset_n), .Q(grey_wr_ptr[1]), .QN(n975) );
  FD2S grey_wr_ptr_reg_0_ ( .D(n460), .TI(full), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(grey_wr_ptr[0]), .QN(n976) );
  FD2S grey_rd_ptr_reg_1_ ( .D(n755), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[1]), .QN(n967) );
  FD2S grey_rd_ptr_reg_3_ ( .D(n757), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[3]), .QN(n968) );
  FD2S grey_rd_ptr_reg_2_ ( .D(n758), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[2]), .QN(n969) );
  FD2S full_q_reg ( .D(n458), .TI(test_si1), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(full), .QN(n973) );
  FD2S sync_rd_ptr_1_reg_0_ ( .D(sync_rd_ptr_0[0]), .TI(sync_rd_ptr_0[3]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[0]) );
  FD2S sync_rd_ptr_1_reg_2_ ( .D(sync_rd_ptr_0[2]), .TI(sync_rd_ptr_1[1]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[2]), .QN(n974) );
  FD2S sync_wr_ptr_1_reg_1_ ( .D(sync_wr_ptr_0[1]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[1]) );
  FD2S sync_wr_ptr_1_reg_0_ ( .D(sync_wr_ptr_0[0]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[0]) );
  FD2S wr_ptr_reg_0_ ( .D(n754), .TI(sync_rd_ptr_1[3]), .TE(test_se), .CP(n5), 
        .CD(wr_reset_n), .Q(n1242), .QN(n1) );
  FD2S wr_ptr_reg_3_ ( .D(n463), .TI(wr_ptr_2_), .TE(test_se), .CP(n12), .CD(
        wr_reset_n), .Q(test_so13) );
  FD2S grey_rd_ptr_reg_0_ ( .D(n756), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(grey_rd_ptr_dly[0]) );
  FD2S sync_rd_ptr_1_reg_1_ ( .D(sync_rd_ptr_0[1]), .TI(sync_rd_ptr_1[0]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[1]) );
  FD2S rd_ptr_reg_3_ ( .D(n759), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(rd_ptr_3_1), .QN(n4) );
  FD2S sync_wr_ptr_1_reg_3_ ( .D(sync_wr_ptr_0[3]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_1[3]) );
  FD2S rd_ptr_reg_1_ ( .D(n761), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N70), .QN(n970) );
  FD2S rd_ptr_reg_2_ ( .D(n760), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N71), .QN(n360) );
  FD2S sync_rd_ptr_1_reg_3_ ( .D(sync_rd_ptr_0[3]), .TI(sync_rd_ptr_1[2]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_1[3]) );
  FD2S rd_ptr_reg_0_ ( .D(n762), .TI(1'b0), .TE(1'b0), .CP(rd_clk), .CD(
        rd_reset_n), .Q(N69), .QN(n971) );
  FD2S wr_ptr_reg_1_ ( .D(n753), .TI(n1242), .TE(test_se), .CP(n5), .CD(
        wr_reset_n), .Q(wr_ptr_1_), .QN(n3) );
  FD2S wr_ptr_reg_2_ ( .D(n752), .TI(wr_ptr_1_), .TE(test_se), .CP(n6), .CD(
        wr_reset_n), .Q(wr_ptr_2_), .QN(n2) );
  FD2S sync_rd_ptr_0_reg_0_ ( .D(grey_rd_ptr_dly[0]), .TI(mem_7__35_), .TE(
        test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[0]) );
  FD2S sync_rd_ptr_0_reg_1_ ( .D(grey_rd_ptr_dly[1]), .TI(sync_rd_ptr_0[0]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[1]) );
  FD2S sync_rd_ptr_0_reg_3_ ( .D(grey_rd_ptr_dly[3]), .TI(sync_rd_ptr_0[2]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[3]) );
  FD2S sync_rd_ptr_0_reg_2_ ( .D(grey_rd_ptr_dly[2]), .TI(sync_rd_ptr_0[1]), 
        .TE(test_se), .CP(n5), .CD(wr_reset_n), .Q(sync_rd_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_3_ ( .D(grey_wr_ptr[3]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[3]) );
  FD2S sync_wr_ptr_0_reg_2_ ( .D(grey_wr_ptr[2]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[2]) );
  FD2S sync_wr_ptr_0_reg_1_ ( .D(grey_wr_ptr[1]), .TI(1'b0), .TE(1'b0), .CP(
        rd_clk), .CD(rd_reset_n), .Q(sync_wr_ptr_0[1]) );
  FD2S sync_wr_ptr_0_reg_0_ ( .D(grey_wr_ptr[0]), .TI(1'b0), .TE(1'b0), .CP(
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
  IVP U345 ( .A(n34), .Z(n21) );
  IVP U346 ( .A(n358), .Z(n12) );
  IVP U347 ( .A(n361), .Z(n6) );
  IVP U348 ( .A(n361), .Z(n5) );
  IVP U349 ( .A(n31), .Z(n30) );
  IVP U350 ( .A(n364), .Z(n31) );
  IVP U351 ( .A(n363), .Z(n356) );
  IVP U352 ( .A(n364), .Z(n33) );
  IVP U353 ( .A(n364), .Z(n32) );
  IVP U354 ( .A(n362), .Z(n359) );
  IVP U355 ( .A(n363), .Z(n357) );
  IVP U356 ( .A(n363), .Z(n34) );
  IVP U357 ( .A(n362), .Z(n358) );
  IVP U358 ( .A(n362), .Z(n361) );
  IVP U359 ( .A(n365), .Z(n364) );
  IVP U360 ( .A(n365), .Z(n363) );
  IVP U361 ( .A(n365), .Z(n362) );
  IVP U362 ( .A(wr_clk), .Z(n365) );
  ND2 U363 ( .A(N71), .B(n970), .Z(n366) );
  NR2 U364 ( .A(n366), .B(n971), .Z(n816) );
  ND2 U365 ( .A(N71), .B(N70), .Z(n367) );
  NR2 U366 ( .A(n971), .B(n367), .Z(n815) );
  AO2 U367 ( .A(mem_5__0_), .B(n816), .C(mem_7__0_), .D(n815), .Z(n373) );
  ND2 U368 ( .A(n970), .B(n360), .Z(n368) );
  NR2 U369 ( .A(n368), .B(n971), .Z(n818) );
  ND2 U370 ( .A(N70), .B(n360), .Z(n369) );
  NR2 U371 ( .A(n369), .B(n971), .Z(n817) );
  AO2 U372 ( .A(mem_1__0_), .B(n818), .C(mem_3__0_), .D(n817), .Z(n372) );
  NR2 U373 ( .A(n366), .B(N69), .Z(n820) );
  NR2 U374 ( .A(n367), .B(N69), .Z(n819) );
  AO2 U375 ( .A(mem_4__0_), .B(n820), .C(mem_6__0_), .D(n819), .Z(n371) );
  NR2 U376 ( .A(n368), .B(N69), .Z(n822) );
  NR2 U377 ( .A(n369), .B(N69), .Z(n821) );
  AO2 U378 ( .A(mem_0__0_), .B(n822), .C(mem_2__0_), .D(n821), .Z(n370) );
  ND4 U379 ( .A(n373), .B(n372), .C(n371), .D(n370), .Z(rd_data[0]) );
  AO2 U380 ( .A(mem_5__1_), .B(n816), .C(test_so11), .D(n815), .Z(n377) );
  AO2 U381 ( .A(mem_1__1_), .B(n818), .C(mem_3__1_), .D(n817), .Z(n376) );
  AO2 U382 ( .A(mem_4__1_), .B(n820), .C(mem_6__1_), .D(n819), .Z(n375) );
  AO2 U383 ( .A(mem_0__1_), .B(n822), .C(mem_2__1_), .D(n821), .Z(n374) );
  ND4 U384 ( .A(n377), .B(n376), .C(n375), .D(n374), .Z(rd_data[1]) );
  AO2 U385 ( .A(mem_5__2_), .B(n816), .C(mem_7__2_), .D(n815), .Z(n381) );
  AO2 U386 ( .A(mem_1__2_), .B(n818), .C(mem_3__2_), .D(n817), .Z(n380) );
  AO2 U387 ( .A(mem_4__2_), .B(n820), .C(mem_6__2_), .D(n819), .Z(n379) );
  AO2 U388 ( .A(mem_0__2_), .B(n822), .C(mem_2__2_), .D(n821), .Z(n378) );
  ND4 U389 ( .A(n381), .B(n380), .C(n379), .D(n378), .Z(rd_data[2]) );
  AO2 U390 ( .A(mem_5__3_), .B(n816), .C(mem_7__3_), .D(n815), .Z(n385) );
  AO2 U391 ( .A(mem_1__3_), .B(n818), .C(mem_3__3_), .D(n817), .Z(n384) );
  AO2 U392 ( .A(mem_4__3_), .B(n820), .C(mem_6__3_), .D(n819), .Z(n383) );
  AO2 U393 ( .A(mem_0__3_), .B(n822), .C(mem_2__3_), .D(n821), .Z(n382) );
  ND4 U394 ( .A(n385), .B(n384), .C(n383), .D(n382), .Z(rd_data[3]) );
  AO2 U395 ( .A(test_so8), .B(n816), .C(mem_7__4_), .D(n815), .Z(n389) );
  AO2 U396 ( .A(test_so2), .B(n818), .C(test_so5), .D(n817), .Z(n388) );
  AO2 U397 ( .A(mem_4__4_), .B(n820), .C(mem_6__4_), .D(n819), .Z(n387) );
  AO2 U398 ( .A(mem_0__4_), .B(n822), .C(mem_2__4_), .D(n821), .Z(n386) );
  ND4 U399 ( .A(n389), .B(n388), .C(n387), .D(n386), .Z(rd_data[4]) );
  AO2 U400 ( .A(mem_5__5_), .B(n816), .C(mem_7__5_), .D(n815), .Z(n393) );
  AO2 U401 ( .A(mem_1__5_), .B(n818), .C(mem_3__5_), .D(n817), .Z(n392) );
  AO2 U402 ( .A(mem_4__5_), .B(n820), .C(mem_6__5_), .D(n819), .Z(n391) );
  AO2 U403 ( .A(mem_0__5_), .B(n822), .C(mem_2__5_), .D(n821), .Z(n390) );
  ND4 U404 ( .A(n393), .B(n392), .C(n391), .D(n390), .Z(rd_data[5]) );
  AO2 U405 ( .A(mem_5__6_), .B(n816), .C(mem_7__6_), .D(n815), .Z(n397) );
  AO2 U406 ( .A(mem_1__6_), .B(n818), .C(mem_3__6_), .D(n817), .Z(n396) );
  AO2 U407 ( .A(mem_4__6_), .B(n820), .C(mem_6__6_), .D(n819), .Z(n395) );
  AO2 U408 ( .A(mem_0__6_), .B(n822), .C(mem_2__6_), .D(n821), .Z(n394) );
  ND4 U409 ( .A(n397), .B(n396), .C(n395), .D(n394), .Z(rd_data[6]) );
  AO2 U410 ( .A(mem_5__7_), .B(n816), .C(mem_7__7_), .D(n815), .Z(n401) );
  AO2 U411 ( .A(mem_1__7_), .B(n818), .C(mem_3__7_), .D(n817), .Z(n400) );
  AO2 U412 ( .A(mem_4__7_), .B(n820), .C(mem_6__7_), .D(n819), .Z(n399) );
  AO2 U413 ( .A(mem_0__7_), .B(n822), .C(mem_2__7_), .D(n821), .Z(n398) );
  ND4 U414 ( .A(n401), .B(n400), .C(n399), .D(n398), .Z(rd_data[7]) );
  AO2 U415 ( .A(mem_5__8_), .B(n816), .C(mem_7__8_), .D(n815), .Z(n405) );
  AO2 U416 ( .A(mem_1__8_), .B(n818), .C(mem_3__8_), .D(n817), .Z(n404) );
  AO2 U417 ( .A(mem_4__8_), .B(n820), .C(mem_6__8_), .D(n819), .Z(n403) );
  AO2 U418 ( .A(mem_0__8_), .B(n822), .C(mem_2__8_), .D(n821), .Z(n402) );
  ND4 U419 ( .A(n405), .B(n404), .C(n403), .D(n402), .Z(rd_data[8]) );
  AO2 U420 ( .A(mem_5__9_), .B(n816), .C(mem_7__9_), .D(n815), .Z(n409) );
  AO2 U421 ( .A(mem_1__9_), .B(n818), .C(mem_3__9_), .D(n817), .Z(n408) );
  AO2 U422 ( .A(mem_4__9_), .B(n820), .C(mem_6__9_), .D(n819), .Z(n407) );
  AO2 U423 ( .A(mem_0__9_), .B(n822), .C(mem_2__9_), .D(n821), .Z(n406) );
  ND4 U424 ( .A(n409), .B(n408), .C(n407), .D(n406), .Z(rd_data[9]) );
  AO2 U425 ( .A(mem_5__10_), .B(n816), .C(mem_7__10_), .D(n815), .Z(n413) );
  AO2 U426 ( .A(mem_1__10_), .B(n818), .C(mem_3__10_), .D(n817), .Z(n412) );
  AO2 U427 ( .A(mem_4__10_), .B(n820), .C(mem_6__10_), .D(n819), .Z(n411) );
  AO2 U428 ( .A(mem_0__10_), .B(n822), .C(mem_2__10_), .D(n821), .Z(n410) );
  ND4 U429 ( .A(n413), .B(n412), .C(n411), .D(n410), .Z(rd_data[10]) );
  AO2 U430 ( .A(mem_5__11_), .B(n816), .C(mem_7__11_), .D(n815), .Z(n417) );
  AO2 U431 ( .A(mem_1__11_), .B(n818), .C(mem_3__11_), .D(n817), .Z(n416) );
  AO2 U432 ( .A(mem_4__11_), .B(n820), .C(mem_6__11_), .D(n819), .Z(n415) );
  AO2 U433 ( .A(mem_0__11_), .B(n822), .C(mem_2__11_), .D(n821), .Z(n414) );
  ND4 U434 ( .A(n417), .B(n416), .C(n415), .D(n414), .Z(rd_data[11]) );
  AO2 U435 ( .A(mem_5__12_), .B(n816), .C(mem_7__12_), .D(n815), .Z(n421) );
  AO2 U436 ( .A(mem_1__12_), .B(n818), .C(mem_3__12_), .D(n817), .Z(n420) );
  AO2 U437 ( .A(mem_4__12_), .B(n820), .C(mem_6__12_), .D(n819), .Z(n419) );
  AO2 U438 ( .A(mem_0__12_), .B(n822), .C(mem_2__12_), .D(n821), .Z(n418) );
  ND4 U439 ( .A(n421), .B(n420), .C(n419), .D(n418), .Z(rd_data[12]) );
  AO2 U440 ( .A(mem_5__13_), .B(n816), .C(mem_7__13_), .D(n815), .Z(n425) );
  AO2 U441 ( .A(mem_1__13_), .B(n818), .C(mem_3__13_), .D(n817), .Z(n424) );
  AO2 U442 ( .A(mem_4__13_), .B(n820), .C(mem_6__13_), .D(n819), .Z(n423) );
  AO2 U443 ( .A(mem_0__13_), .B(n822), .C(mem_2__13_), .D(n821), .Z(n422) );
  ND4 U444 ( .A(n425), .B(n424), .C(n423), .D(n422), .Z(rd_data[13]) );
  AO2 U445 ( .A(mem_5__14_), .B(n816), .C(mem_7__14_), .D(n815), .Z(n429) );
  AO2 U446 ( .A(mem_1__14_), .B(n818), .C(mem_3__14_), .D(n817), .Z(n428) );
  AO2 U447 ( .A(mem_4__14_), .B(n820), .C(test_so10), .D(n819), .Z(n427) );
  AO2 U448 ( .A(mem_0__14_), .B(n822), .C(mem_2__14_), .D(n821), .Z(n426) );
  ND4 U449 ( .A(n429), .B(n428), .C(n427), .D(n426), .Z(rd_data[14]) );
  AO2 U450 ( .A(mem_5__15_), .B(n816), .C(mem_7__15_), .D(n815), .Z(n433) );
  AO2 U451 ( .A(mem_1__15_), .B(n818), .C(mem_3__15_), .D(n817), .Z(n432) );
  AO2 U452 ( .A(mem_4__15_), .B(n820), .C(mem_6__15_), .D(n819), .Z(n431) );
  AO2 U453 ( .A(mem_0__15_), .B(n822), .C(mem_2__15_), .D(n821), .Z(n430) );
  ND4 U454 ( .A(n433), .B(n432), .C(n431), .D(n430), .Z(rd_data[15]) );
  AO2 U455 ( .A(mem_5__16_), .B(n816), .C(mem_7__16_), .D(n815), .Z(n437) );
  AO2 U456 ( .A(mem_1__16_), .B(n818), .C(mem_3__16_), .D(n817), .Z(n436) );
  AO2 U457 ( .A(test_so7), .B(n820), .C(mem_6__16_), .D(n819), .Z(n435) );
  AO2 U458 ( .A(test_so1), .B(n822), .C(test_so4), .D(n821), .Z(n434) );
  ND4 U459 ( .A(n437), .B(n436), .C(n435), .D(n434), .Z(rd_data[16]) );
  AO2 U460 ( .A(mem_5__17_), .B(n816), .C(mem_7__17_), .D(n815), .Z(n441) );
  AO2 U461 ( .A(mem_1__17_), .B(n818), .C(mem_3__17_), .D(n817), .Z(n440) );
  AO2 U462 ( .A(mem_4__17_), .B(n820), .C(mem_6__17_), .D(n819), .Z(n439) );
  AO2 U463 ( .A(mem_0__17_), .B(n822), .C(mem_2__17_), .D(n821), .Z(n438) );
  ND4 U464 ( .A(n441), .B(n440), .C(n439), .D(n438), .Z(rd_data[17]) );
  AO2 U465 ( .A(mem_5__18_), .B(n816), .C(mem_7__18_), .D(n815), .Z(n445) );
  AO2 U466 ( .A(mem_1__18_), .B(n818), .C(mem_3__18_), .D(n817), .Z(n444) );
  AO2 U467 ( .A(mem_4__18_), .B(n820), .C(mem_6__18_), .D(n819), .Z(n443) );
  AO2 U468 ( .A(mem_0__18_), .B(n822), .C(mem_2__18_), .D(n821), .Z(n442) );
  ND4 U469 ( .A(n445), .B(n444), .C(n443), .D(n442), .Z(rd_data[18]) );
  AO2 U470 ( .A(mem_5__19_), .B(n816), .C(mem_7__19_), .D(n815), .Z(n449) );
  AO2 U471 ( .A(mem_1__19_), .B(n818), .C(mem_3__19_), .D(n817), .Z(n448) );
  AO2 U472 ( .A(mem_4__19_), .B(n820), .C(mem_6__19_), .D(n819), .Z(n447) );
  AO2 U473 ( .A(mem_0__19_), .B(n822), .C(mem_2__19_), .D(n821), .Z(n446) );
  ND4 U474 ( .A(n449), .B(n448), .C(n447), .D(n446), .Z(rd_data[19]) );
  AO2 U475 ( .A(mem_5__20_), .B(n816), .C(mem_7__20_), .D(n815), .Z(n453) );
  AO2 U476 ( .A(mem_1__20_), .B(n818), .C(mem_3__20_), .D(n817), .Z(n452) );
  AO2 U477 ( .A(mem_4__20_), .B(n820), .C(mem_6__20_), .D(n819), .Z(n451) );
  AO2 U478 ( .A(mem_0__20_), .B(n822), .C(mem_2__20_), .D(n821), .Z(n450) );
  ND4 U479 ( .A(n453), .B(n452), .C(n451), .D(n450), .Z(rd_data[20]) );
  AO2 U480 ( .A(mem_5__21_), .B(n816), .C(mem_7__21_), .D(n815), .Z(n457) );
  AO2 U481 ( .A(mem_1__21_), .B(n818), .C(mem_3__21_), .D(n817), .Z(n456) );
  AO2 U482 ( .A(mem_4__21_), .B(n820), .C(mem_6__21_), .D(n819), .Z(n455) );
  AO2 U483 ( .A(mem_0__21_), .B(n822), .C(mem_2__21_), .D(n821), .Z(n454) );
  ND4 U484 ( .A(n457), .B(n456), .C(n455), .D(n454), .Z(rd_data[21]) );
  AO2 U485 ( .A(mem_5__22_), .B(n816), .C(mem_7__22_), .D(n815), .Z(n766) );
  AO2 U486 ( .A(mem_1__22_), .B(n818), .C(mem_3__22_), .D(n817), .Z(n765) );
  AO2 U487 ( .A(mem_4__22_), .B(n820), .C(mem_6__22_), .D(n819), .Z(n764) );
  AO2 U488 ( .A(mem_0__22_), .B(n822), .C(mem_2__22_), .D(n821), .Z(n763) );
  ND4 U489 ( .A(n766), .B(n765), .C(n764), .D(n763), .Z(rd_data[22]) );
  AO2 U490 ( .A(mem_5__23_), .B(n816), .C(mem_7__23_), .D(n815), .Z(n770) );
  AO2 U491 ( .A(mem_1__23_), .B(n818), .C(mem_3__23_), .D(n817), .Z(n769) );
  AO2 U492 ( .A(mem_4__23_), .B(n820), .C(mem_6__23_), .D(n819), .Z(n768) );
  AO2 U493 ( .A(mem_0__23_), .B(n822), .C(mem_2__23_), .D(n821), .Z(n767) );
  ND4 U494 ( .A(n770), .B(n769), .C(n768), .D(n767), .Z(rd_data[23]) );
  AO2 U495 ( .A(mem_5__24_), .B(n816), .C(test_so12), .D(n815), .Z(n774) );
  AO2 U496 ( .A(mem_1__24_), .B(n818), .C(mem_3__24_), .D(n817), .Z(n773) );
  AO2 U497 ( .A(mem_4__24_), .B(n820), .C(mem_6__24_), .D(n819), .Z(n772) );
  AO2 U498 ( .A(mem_0__24_), .B(n822), .C(mem_2__24_), .D(n821), .Z(n771) );
  ND4 U499 ( .A(n774), .B(n773), .C(n772), .D(n771), .Z(rd_data[24]) );
  AO2 U500 ( .A(mem_5__25_), .B(n816), .C(mem_7__25_), .D(n815), .Z(n778) );
  AO2 U501 ( .A(mem_1__25_), .B(n818), .C(mem_3__25_), .D(n817), .Z(n777) );
  AO2 U502 ( .A(mem_4__25_), .B(n820), .C(mem_6__25_), .D(n819), .Z(n776) );
  AO2 U503 ( .A(mem_0__25_), .B(n822), .C(mem_2__25_), .D(n821), .Z(n775) );
  ND4 U504 ( .A(n778), .B(n777), .C(n776), .D(n775), .Z(rd_data[25]) );
  AO2 U505 ( .A(mem_5__26_), .B(n816), .C(mem_7__26_), .D(n815), .Z(n782) );
  AO2 U506 ( .A(mem_1__26_), .B(n818), .C(mem_3__26_), .D(n817), .Z(n781) );
  AO2 U507 ( .A(mem_4__26_), .B(n820), .C(mem_6__26_), .D(n819), .Z(n780) );
  AO2 U508 ( .A(mem_0__26_), .B(n822), .C(mem_2__26_), .D(n821), .Z(n779) );
  ND4 U509 ( .A(n782), .B(n781), .C(n780), .D(n779), .Z(rd_data[26]) );
  AO2 U510 ( .A(test_so9), .B(n816), .C(mem_7__27_), .D(n815), .Z(n786) );
  AO2 U511 ( .A(mem_1__27_), .B(n818), .C(mem_3__27_), .D(n817), .Z(n785) );
  AO2 U512 ( .A(mem_4__27_), .B(n820), .C(mem_6__27_), .D(n819), .Z(n784) );
  AO2 U513 ( .A(mem_0__27_), .B(n822), .C(mem_2__27_), .D(n821), .Z(n783) );
  ND4 U514 ( .A(n786), .B(n785), .C(n784), .D(n783), .Z(rd_data[27]) );
  AO2 U515 ( .A(mem_5__28_), .B(n816), .C(mem_7__28_), .D(n815), .Z(n790) );
  AO2 U516 ( .A(test_so3), .B(n818), .C(test_so6), .D(n817), .Z(n789) );
  AO2 U517 ( .A(mem_4__28_), .B(n820), .C(mem_6__28_), .D(n819), .Z(n788) );
  AO2 U518 ( .A(mem_0__28_), .B(n822), .C(mem_2__28_), .D(n821), .Z(n787) );
  ND4 U519 ( .A(n790), .B(n789), .C(n788), .D(n787), .Z(rd_data[28]) );
  AO2 U520 ( .A(mem_5__29_), .B(n816), .C(mem_7__29_), .D(n815), .Z(n794) );
  AO2 U521 ( .A(mem_1__29_), .B(n818), .C(mem_3__29_), .D(n817), .Z(n793) );
  AO2 U522 ( .A(mem_4__29_), .B(n820), .C(mem_6__29_), .D(n819), .Z(n792) );
  AO2 U523 ( .A(mem_0__29_), .B(n822), .C(mem_2__29_), .D(n821), .Z(n791) );
  ND4 U524 ( .A(n794), .B(n793), .C(n792), .D(n791), .Z(rd_data[29]) );
  AO2 U525 ( .A(mem_5__30_), .B(n816), .C(mem_7__30_), .D(n815), .Z(n798) );
  AO2 U526 ( .A(mem_1__30_), .B(n818), .C(mem_3__30_), .D(n817), .Z(n797) );
  AO2 U527 ( .A(mem_4__30_), .B(n820), .C(mem_6__30_), .D(n819), .Z(n796) );
  AO2 U528 ( .A(mem_0__30_), .B(n822), .C(mem_2__30_), .D(n821), .Z(n795) );
  ND4 U529 ( .A(n798), .B(n797), .C(n796), .D(n795), .Z(rd_data[30]) );
  AO2 U530 ( .A(mem_5__31_), .B(n816), .C(mem_7__31_), .D(n815), .Z(n802) );
  AO2 U531 ( .A(mem_1__31_), .B(n818), .C(mem_3__31_), .D(n817), .Z(n801) );
  AO2 U532 ( .A(mem_4__31_), .B(n820), .C(mem_6__31_), .D(n819), .Z(n800) );
  AO2 U533 ( .A(mem_0__31_), .B(n822), .C(mem_2__31_), .D(n821), .Z(n799) );
  ND4 U534 ( .A(n802), .B(n801), .C(n800), .D(n799), .Z(rd_data[31]) );
  AO2 U535 ( .A(mem_5__32_), .B(n816), .C(mem_7__32_), .D(n815), .Z(n806) );
  AO2 U536 ( .A(mem_1__32_), .B(n818), .C(mem_3__32_), .D(n817), .Z(n805) );
  AO2 U537 ( .A(mem_4__32_), .B(n820), .C(mem_6__32_), .D(n819), .Z(n804) );
  AO2 U538 ( .A(mem_0__32_), .B(n822), .C(mem_2__32_), .D(n821), .Z(n803) );
  ND4 U539 ( .A(n806), .B(n805), .C(n804), .D(n803), .Z(rd_data[32]) );
  AO2 U540 ( .A(mem_5__33_), .B(n816), .C(mem_7__33_), .D(n815), .Z(n810) );
  AO2 U541 ( .A(mem_1__33_), .B(n818), .C(mem_3__33_), .D(n817), .Z(n809) );
  AO2 U542 ( .A(mem_4__33_), .B(n820), .C(mem_6__33_), .D(n819), .Z(n808) );
  AO2 U543 ( .A(mem_0__33_), .B(n822), .C(mem_2__33_), .D(n821), .Z(n807) );
  ND4 U544 ( .A(n810), .B(n809), .C(n808), .D(n807), .Z(rd_data[33]) );
  AO2 U545 ( .A(mem_5__34_), .B(n816), .C(mem_7__34_), .D(n815), .Z(n814) );
  AO2 U546 ( .A(mem_1__34_), .B(n818), .C(mem_3__34_), .D(n817), .Z(n813) );
  AO2 U547 ( .A(mem_4__34_), .B(n820), .C(mem_6__34_), .D(n819), .Z(n812) );
  AO2 U548 ( .A(mem_0__34_), .B(n822), .C(mem_2__34_), .D(n821), .Z(n811) );
  ND4 U549 ( .A(n814), .B(n813), .C(n812), .D(n811), .Z(rd_data[34]) );
  AO2 U550 ( .A(mem_5__35_), .B(n816), .C(mem_7__35_), .D(n815), .Z(n826) );
  AO2 U551 ( .A(mem_1__35_), .B(n818), .C(mem_3__35_), .D(n817), .Z(n825) );
  AO2 U552 ( .A(mem_4__35_), .B(n820), .C(mem_6__35_), .D(n819), .Z(n824) );
  AO2 U553 ( .A(mem_0__35_), .B(n822), .C(mem_2__35_), .D(n821), .Z(n823) );
  ND4 U554 ( .A(n826), .B(n825), .C(n824), .D(n823), .Z(rd_data[35]) );
  EN U555 ( .A(n971), .B(rd_en), .Z(n762) );
  AO7 U556 ( .A(rd_en), .B(n970), .C(n827), .Z(n761) );
  IV U557 ( .A(n828), .Z(n760) );
  AO6 U558 ( .A(n829), .B(N71), .C(n830), .Z(n828) );
  AO7 U559 ( .A(rd_en), .B(n4), .C(n831), .Z(n759) );
  AO7 U560 ( .A(rd_en), .B(n969), .C(n832), .Z(n758) );
  AO2 U561 ( .A(n833), .B(n834), .C(n830), .D(n835), .Z(n832) );
  AO7 U562 ( .A(rd_en), .B(n968), .C(n831), .Z(n757) );
  IV U563 ( .A(n833), .Z(n831) );
  NR2 U564 ( .A(n829), .B(n835), .Z(n833) );
  EO U565 ( .A(n836), .B(rd_ptr_3_1), .Z(n835) );
  ND2 U566 ( .A(n837), .B(N71), .Z(n836) );
  AO7 U567 ( .A(n971), .B(n827), .C(n838), .Z(n756) );
  MUX21L U568 ( .A(n839), .B(grey_rd_ptr_dly[0]), .S(n829), .Z(n838) );
  NR2 U569 ( .A(n840), .B(N69), .Z(n839) );
  AO7 U570 ( .A(rd_en), .B(n967), .C(n841), .Z(n755) );
  AO2 U571 ( .A(n842), .B(n834), .C(n830), .D(n843), .Z(n841) );
  IV U572 ( .A(n840), .Z(n843) );
  NR2 U573 ( .A(n834), .B(n829), .Z(n830) );
  IV U574 ( .A(rd_en), .Z(n829) );
  EO U575 ( .A(n360), .B(n837), .Z(n834) );
  IV U576 ( .A(n827), .Z(n842) );
  ND2 U577 ( .A(n840), .B(rd_en), .Z(n827) );
  AO6 U578 ( .A(n971), .B(n970), .C(n837), .Z(n840) );
  AO7 U579 ( .A(wr_en), .B(n1), .C(n844), .Z(n754) );
  IV U580 ( .A(n845), .Z(n844) );
  IV U581 ( .A(n846), .Z(n753) );
  AO6 U582 ( .A(n847), .B(wr_ptr_1_), .C(n848), .Z(n846) );
  IV U583 ( .A(n849), .Z(n752) );
  AO6 U584 ( .A(n847), .B(wr_ptr_2_), .C(n850), .Z(n849) );
  MUX21L U585 ( .A(n966), .B(n851), .S(n852), .Z(n751) );
  MUX21L U586 ( .A(n965), .B(n853), .S(n852), .Z(n750) );
  MUX21L U587 ( .A(n964), .B(n854), .S(n852), .Z(n749) );
  MUX21L U588 ( .A(n963), .B(n855), .S(n852), .Z(n748) );
  MUX21L U589 ( .A(n962), .B(n856), .S(n852), .Z(n747) );
  MUX21L U590 ( .A(n961), .B(n857), .S(n852), .Z(n746) );
  MUX21L U591 ( .A(n960), .B(n858), .S(n852), .Z(n745) );
  MUX21L U592 ( .A(n959), .B(n859), .S(n852), .Z(n744) );
  MUX21L U593 ( .A(n958), .B(n860), .S(n852), .Z(n743) );
  MUX21L U594 ( .A(n957), .B(n861), .S(n852), .Z(n742) );
  MUX21L U595 ( .A(n956), .B(n862), .S(n852), .Z(n741) );
  MUX21L U596 ( .A(n955), .B(n863), .S(n852), .Z(n740) );
  MUX21L U597 ( .A(n954), .B(n864), .S(n852), .Z(n739) );
  MUX21L U598 ( .A(n953), .B(n865), .S(n852), .Z(n738) );
  MUX21L U599 ( .A(n952), .B(n866), .S(n852), .Z(n737) );
  MUX21L U600 ( .A(n951), .B(n867), .S(n852), .Z(n736) );
  MUX21L U601 ( .A(n950), .B(n868), .S(n852), .Z(n735) );
  MUX21L U602 ( .A(n949), .B(n869), .S(n852), .Z(n734) );
  MUX21L U603 ( .A(n948), .B(n870), .S(n852), .Z(n733) );
  MUX21L U604 ( .A(n947), .B(n871), .S(n852), .Z(n732) );
  MUX21L U605 ( .A(n946), .B(n872), .S(n852), .Z(n731) );
  MUX21L U606 ( .A(n945), .B(n873), .S(n852), .Z(n730) );
  MUX21L U607 ( .A(n944), .B(n874), .S(n852), .Z(n729) );
  MUX21L U608 ( .A(n943), .B(n875), .S(n852), .Z(n728) );
  MUX21L U609 ( .A(n942), .B(n876), .S(n852), .Z(n727) );
  MUX21L U610 ( .A(n1241), .B(n877), .S(n852), .Z(n726) );
  MUX21L U611 ( .A(n1240), .B(n878), .S(n852), .Z(n725) );
  MUX21L U612 ( .A(n1239), .B(n879), .S(n852), .Z(n724) );
  MUX21L U613 ( .A(n1238), .B(n880), .S(n852), .Z(n723) );
  MUX21L U614 ( .A(n1237), .B(n881), .S(n852), .Z(n722) );
  MUX21L U615 ( .A(n1236), .B(n882), .S(n852), .Z(n721) );
  MUX21L U616 ( .A(n1235), .B(n883), .S(n852), .Z(n720) );
  MUX21L U617 ( .A(n1234), .B(n884), .S(n852), .Z(n719) );
  MUX21L U618 ( .A(n1233), .B(n885), .S(n852), .Z(n718) );
  MUX21L U619 ( .A(n1232), .B(n886), .S(n852), .Z(n717) );
  MUX21L U620 ( .A(n1231), .B(n887), .S(n852), .Z(n716) );
  AN3 U621 ( .A(n2), .B(n3), .C(n845), .Z(n852) );
  MUX21L U622 ( .A(n1230), .B(n851), .S(n888), .Z(n715) );
  MUX21L U623 ( .A(n1229), .B(n853), .S(n888), .Z(n714) );
  MUX21L U624 ( .A(n1228), .B(n854), .S(n888), .Z(n713) );
  MUX21L U625 ( .A(n1227), .B(n855), .S(n888), .Z(n712) );
  MUX21L U626 ( .A(n1226), .B(n856), .S(n888), .Z(n711) );
  MUX21L U627 ( .A(n1225), .B(n857), .S(n888), .Z(n710) );
  MUX21L U628 ( .A(n1224), .B(n858), .S(n888), .Z(n709) );
  MUX21L U629 ( .A(n1223), .B(n859), .S(n888), .Z(n708) );
  MUX21L U630 ( .A(n1222), .B(n860), .S(n888), .Z(n707) );
  MUX21L U631 ( .A(n1221), .B(n861), .S(n888), .Z(n706) );
  MUX21L U632 ( .A(n1220), .B(n862), .S(n888), .Z(n705) );
  MUX21L U633 ( .A(n1219), .B(n863), .S(n888), .Z(n704) );
  MUX21L U634 ( .A(n1218), .B(n864), .S(n888), .Z(n703) );
  MUX21L U635 ( .A(n1217), .B(n865), .S(n888), .Z(n702) );
  MUX21L U636 ( .A(n1216), .B(n866), .S(n888), .Z(n701) );
  MUX21L U637 ( .A(n1215), .B(n867), .S(n888), .Z(n700) );
  MUX21L U638 ( .A(n1214), .B(n868), .S(n888), .Z(n699) );
  MUX21L U639 ( .A(n1213), .B(n869), .S(n888), .Z(n698) );
  MUX21L U640 ( .A(n1212), .B(n870), .S(n888), .Z(n697) );
  MUX21L U641 ( .A(n1211), .B(n871), .S(n888), .Z(n696) );
  MUX21L U642 ( .A(n1210), .B(n872), .S(n888), .Z(n695) );
  MUX21L U643 ( .A(n1209), .B(n873), .S(n888), .Z(n694) );
  MUX21L U644 ( .A(n1208), .B(n874), .S(n888), .Z(n693) );
  MUX21L U645 ( .A(n1207), .B(n875), .S(n888), .Z(n692) );
  MUX21L U646 ( .A(n1206), .B(n876), .S(n888), .Z(n691) );
  MUX21L U647 ( .A(n1205), .B(n877), .S(n888), .Z(n690) );
  MUX21L U648 ( .A(n1204), .B(n878), .S(n888), .Z(n689) );
  MUX21L U649 ( .A(n1203), .B(n879), .S(n888), .Z(n688) );
  MUX21L U650 ( .A(n1202), .B(n880), .S(n888), .Z(n687) );
  MUX21L U651 ( .A(n1201), .B(n881), .S(n888), .Z(n686) );
  MUX21L U652 ( .A(n1200), .B(n882), .S(n888), .Z(n685) );
  MUX21L U653 ( .A(n1199), .B(n883), .S(n888), .Z(n684) );
  MUX21L U654 ( .A(n1198), .B(n884), .S(n888), .Z(n683) );
  MUX21L U655 ( .A(n1197), .B(n885), .S(n888), .Z(n682) );
  MUX21L U656 ( .A(n1196), .B(n886), .S(n888), .Z(n681) );
  MUX21L U657 ( .A(n1195), .B(n887), .S(n888), .Z(n680) );
  AN3 U658 ( .A(wr_en), .B(n2), .C(n889), .Z(n888) );
  MUX21L U659 ( .A(n1194), .B(n851), .S(n890), .Z(n679) );
  MUX21L U660 ( .A(n1193), .B(n853), .S(n890), .Z(n678) );
  MUX21L U661 ( .A(n1192), .B(n854), .S(n890), .Z(n677) );
  MUX21L U662 ( .A(n1191), .B(n855), .S(n890), .Z(n676) );
  MUX21L U663 ( .A(n1190), .B(n856), .S(n890), .Z(n675) );
  MUX21L U664 ( .A(n1189), .B(n857), .S(n890), .Z(n674) );
  MUX21L U665 ( .A(n1188), .B(n858), .S(n890), .Z(n673) );
  MUX21L U666 ( .A(n1187), .B(n859), .S(n890), .Z(n672) );
  MUX21L U667 ( .A(n1186), .B(n860), .S(n890), .Z(n671) );
  MUX21L U668 ( .A(n1185), .B(n861), .S(n890), .Z(n670) );
  MUX21L U669 ( .A(n1184), .B(n862), .S(n890), .Z(n669) );
  MUX21L U670 ( .A(n1183), .B(n863), .S(n890), .Z(n668) );
  MUX21L U671 ( .A(n1182), .B(n864), .S(n890), .Z(n667) );
  MUX21L U672 ( .A(n1181), .B(n865), .S(n890), .Z(n666) );
  MUX21L U673 ( .A(n1180), .B(n866), .S(n890), .Z(n665) );
  MUX21L U674 ( .A(n1179), .B(n867), .S(n890), .Z(n664) );
  MUX21L U675 ( .A(n1178), .B(n868), .S(n890), .Z(n663) );
  MUX21L U676 ( .A(n1177), .B(n869), .S(n890), .Z(n662) );
  MUX21L U677 ( .A(n1176), .B(n870), .S(n890), .Z(n661) );
  MUX21L U678 ( .A(n1175), .B(n871), .S(n890), .Z(n660) );
  MUX21L U679 ( .A(n1174), .B(n872), .S(n890), .Z(n659) );
  MUX21L U680 ( .A(n1173), .B(n873), .S(n890), .Z(n658) );
  MUX21L U681 ( .A(n1172), .B(n874), .S(n890), .Z(n657) );
  MUX21L U682 ( .A(n1171), .B(n875), .S(n890), .Z(n656) );
  MUX21L U683 ( .A(n1170), .B(n876), .S(n890), .Z(n655) );
  MUX21L U684 ( .A(n1169), .B(n877), .S(n890), .Z(n654) );
  MUX21L U685 ( .A(n1168), .B(n878), .S(n890), .Z(n653) );
  MUX21L U686 ( .A(n1167), .B(n879), .S(n890), .Z(n652) );
  MUX21L U687 ( .A(n1166), .B(n880), .S(n890), .Z(n651) );
  MUX21L U688 ( .A(n1165), .B(n881), .S(n890), .Z(n650) );
  MUX21L U689 ( .A(n1164), .B(n882), .S(n890), .Z(n649) );
  MUX21L U690 ( .A(n1163), .B(n883), .S(n890), .Z(n648) );
  MUX21L U691 ( .A(n1162), .B(n884), .S(n890), .Z(n647) );
  MUX21L U692 ( .A(n1161), .B(n885), .S(n890), .Z(n646) );
  MUX21L U693 ( .A(n1160), .B(n886), .S(n890), .Z(n645) );
  MUX21L U694 ( .A(n1159), .B(n887), .S(n890), .Z(n644) );
  AN3 U695 ( .A(n2), .B(wr_ptr_1_), .C(n845), .Z(n890) );
  MUX21L U696 ( .A(n1158), .B(n851), .S(n891), .Z(n643) );
  MUX21L U697 ( .A(n1157), .B(n853), .S(n891), .Z(n642) );
  MUX21L U698 ( .A(n1156), .B(n854), .S(n891), .Z(n641) );
  MUX21L U699 ( .A(n1155), .B(n855), .S(n891), .Z(n640) );
  MUX21L U700 ( .A(n1154), .B(n856), .S(n891), .Z(n639) );
  MUX21L U701 ( .A(n1153), .B(n857), .S(n891), .Z(n638) );
  MUX21L U702 ( .A(n1152), .B(n858), .S(n891), .Z(n637) );
  MUX21L U703 ( .A(n1151), .B(n859), .S(n891), .Z(n636) );
  MUX21L U704 ( .A(n1150), .B(n860), .S(n891), .Z(n635) );
  MUX21L U705 ( .A(n1149), .B(n861), .S(n891), .Z(n634) );
  MUX21L U706 ( .A(n1148), .B(n862), .S(n891), .Z(n633) );
  MUX21L U707 ( .A(n1147), .B(n863), .S(n891), .Z(n632) );
  MUX21L U708 ( .A(n1146), .B(n864), .S(n891), .Z(n631) );
  MUX21L U709 ( .A(n1145), .B(n865), .S(n891), .Z(n630) );
  MUX21L U710 ( .A(n1144), .B(n866), .S(n891), .Z(n629) );
  MUX21L U711 ( .A(n1143), .B(n867), .S(n891), .Z(n628) );
  MUX21L U712 ( .A(n1142), .B(n868), .S(n891), .Z(n627) );
  MUX21L U713 ( .A(n1141), .B(n869), .S(n891), .Z(n626) );
  MUX21L U714 ( .A(n1140), .B(n870), .S(n891), .Z(n625) );
  MUX21L U715 ( .A(n1139), .B(n871), .S(n891), .Z(n624) );
  MUX21L U716 ( .A(n1138), .B(n872), .S(n891), .Z(n623) );
  MUX21L U717 ( .A(n1137), .B(n873), .S(n891), .Z(n622) );
  MUX21L U718 ( .A(n1136), .B(n874), .S(n891), .Z(n621) );
  MUX21L U719 ( .A(n1135), .B(n875), .S(n891), .Z(n620) );
  MUX21L U720 ( .A(n1134), .B(n876), .S(n891), .Z(n619) );
  MUX21L U721 ( .A(n1133), .B(n877), .S(n891), .Z(n618) );
  MUX21L U722 ( .A(n1132), .B(n878), .S(n891), .Z(n617) );
  MUX21L U723 ( .A(n1131), .B(n879), .S(n891), .Z(n616) );
  MUX21L U724 ( .A(n1130), .B(n880), .S(n891), .Z(n615) );
  MUX21L U725 ( .A(n1129), .B(n881), .S(n891), .Z(n614) );
  MUX21L U726 ( .A(n1128), .B(n882), .S(n891), .Z(n613) );
  MUX21L U727 ( .A(n1127), .B(n883), .S(n891), .Z(n612) );
  MUX21L U728 ( .A(n1126), .B(n884), .S(n891), .Z(n611) );
  MUX21L U729 ( .A(n1125), .B(n885), .S(n891), .Z(n610) );
  MUX21L U730 ( .A(n1124), .B(n886), .S(n891), .Z(n609) );
  MUX21L U731 ( .A(n1123), .B(n887), .S(n891), .Z(n608) );
  AN3 U732 ( .A(n2), .B(wr_en), .C(n892), .Z(n891) );
  MUX21L U733 ( .A(n1122), .B(n851), .S(n893), .Z(n607) );
  MUX21L U734 ( .A(n1121), .B(n853), .S(n893), .Z(n606) );
  MUX21L U735 ( .A(n1120), .B(n854), .S(n893), .Z(n605) );
  MUX21L U736 ( .A(n1119), .B(n855), .S(n893), .Z(n604) );
  MUX21L U737 ( .A(n1118), .B(n856), .S(n893), .Z(n603) );
  MUX21L U738 ( .A(n1117), .B(n857), .S(n893), .Z(n602) );
  MUX21L U739 ( .A(n1116), .B(n858), .S(n893), .Z(n601) );
  MUX21L U740 ( .A(n1115), .B(n859), .S(n893), .Z(n600) );
  MUX21L U741 ( .A(n1114), .B(n860), .S(n893), .Z(n599) );
  MUX21L U742 ( .A(n1113), .B(n861), .S(n893), .Z(n598) );
  MUX21L U743 ( .A(n1112), .B(n862), .S(n893), .Z(n597) );
  MUX21L U744 ( .A(n1111), .B(n863), .S(n893), .Z(n596) );
  MUX21L U745 ( .A(n1110), .B(n864), .S(n893), .Z(n595) );
  MUX21L U746 ( .A(n1109), .B(n865), .S(n893), .Z(n594) );
  MUX21L U747 ( .A(n1108), .B(n866), .S(n893), .Z(n593) );
  MUX21L U748 ( .A(n1107), .B(n867), .S(n893), .Z(n592) );
  MUX21L U749 ( .A(n1106), .B(n868), .S(n893), .Z(n591) );
  MUX21L U750 ( .A(n1105), .B(n869), .S(n893), .Z(n590) );
  MUX21L U751 ( .A(n1104), .B(n870), .S(n893), .Z(n589) );
  MUX21L U752 ( .A(n1103), .B(n871), .S(n893), .Z(n588) );
  MUX21L U753 ( .A(n1102), .B(n872), .S(n893), .Z(n587) );
  MUX21L U754 ( .A(n1101), .B(n873), .S(n893), .Z(n586) );
  MUX21L U755 ( .A(n1100), .B(n874), .S(n893), .Z(n585) );
  MUX21L U756 ( .A(n1099), .B(n875), .S(n893), .Z(n584) );
  MUX21L U757 ( .A(n1098), .B(n876), .S(n893), .Z(n583) );
  MUX21L U758 ( .A(n1097), .B(n877), .S(n893), .Z(n582) );
  MUX21L U759 ( .A(n1096), .B(n878), .S(n893), .Z(n581) );
  MUX21L U760 ( .A(n1095), .B(n879), .S(n893), .Z(n580) );
  MUX21L U761 ( .A(n1094), .B(n880), .S(n893), .Z(n579) );
  MUX21L U762 ( .A(n1093), .B(n881), .S(n893), .Z(n578) );
  MUX21L U763 ( .A(n1092), .B(n882), .S(n893), .Z(n577) );
  MUX21L U764 ( .A(n1091), .B(n883), .S(n893), .Z(n576) );
  MUX21L U765 ( .A(n1090), .B(n884), .S(n893), .Z(n575) );
  MUX21L U766 ( .A(n1089), .B(n885), .S(n893), .Z(n574) );
  MUX21L U767 ( .A(n1088), .B(n886), .S(n893), .Z(n573) );
  MUX21L U768 ( .A(n1087), .B(n887), .S(n893), .Z(n572) );
  AN3 U769 ( .A(n3), .B(wr_ptr_2_), .C(n845), .Z(n893) );
  MUX21L U770 ( .A(n1086), .B(n851), .S(n894), .Z(n571) );
  MUX21L U771 ( .A(n1085), .B(n853), .S(n894), .Z(n570) );
  MUX21L U772 ( .A(n1084), .B(n854), .S(n894), .Z(n569) );
  MUX21L U773 ( .A(n1083), .B(n855), .S(n894), .Z(n568) );
  MUX21L U774 ( .A(n1082), .B(n856), .S(n894), .Z(n567) );
  MUX21L U775 ( .A(n1081), .B(n857), .S(n894), .Z(n566) );
  MUX21L U776 ( .A(n1080), .B(n858), .S(n894), .Z(n565) );
  MUX21L U777 ( .A(n1079), .B(n859), .S(n894), .Z(n564) );
  MUX21L U778 ( .A(n1078), .B(n860), .S(n894), .Z(n563) );
  MUX21L U779 ( .A(n1077), .B(n861), .S(n894), .Z(n562) );
  MUX21L U780 ( .A(n1076), .B(n862), .S(n894), .Z(n561) );
  MUX21L U781 ( .A(n1075), .B(n863), .S(n894), .Z(n560) );
  MUX21L U782 ( .A(n1074), .B(n864), .S(n894), .Z(n559) );
  MUX21L U783 ( .A(n1073), .B(n865), .S(n894), .Z(n558) );
  MUX21L U784 ( .A(n1072), .B(n866), .S(n894), .Z(n557) );
  MUX21L U785 ( .A(n1071), .B(n867), .S(n894), .Z(n556) );
  MUX21L U786 ( .A(n1070), .B(n868), .S(n894), .Z(n555) );
  MUX21L U787 ( .A(n1069), .B(n869), .S(n894), .Z(n554) );
  MUX21L U788 ( .A(n1068), .B(n870), .S(n894), .Z(n553) );
  MUX21L U789 ( .A(n1067), .B(n871), .S(n894), .Z(n552) );
  MUX21L U790 ( .A(n1066), .B(n872), .S(n894), .Z(n551) );
  MUX21L U791 ( .A(n1065), .B(n873), .S(n894), .Z(n550) );
  MUX21L U792 ( .A(n1064), .B(n874), .S(n894), .Z(n549) );
  MUX21L U793 ( .A(n1063), .B(n875), .S(n894), .Z(n548) );
  MUX21L U794 ( .A(n1062), .B(n876), .S(n894), .Z(n547) );
  MUX21L U795 ( .A(n1061), .B(n877), .S(n894), .Z(n546) );
  MUX21L U796 ( .A(n1060), .B(n878), .S(n894), .Z(n545) );
  MUX21L U797 ( .A(n1059), .B(n879), .S(n894), .Z(n544) );
  MUX21L U798 ( .A(n1058), .B(n880), .S(n894), .Z(n543) );
  MUX21L U799 ( .A(n1057), .B(n881), .S(n894), .Z(n542) );
  MUX21L U800 ( .A(n1056), .B(n882), .S(n894), .Z(n541) );
  MUX21L U801 ( .A(n1055), .B(n883), .S(n894), .Z(n540) );
  MUX21L U802 ( .A(n1054), .B(n884), .S(n894), .Z(n539) );
  MUX21L U803 ( .A(n1053), .B(n885), .S(n894), .Z(n538) );
  MUX21L U804 ( .A(n1052), .B(n886), .S(n894), .Z(n537) );
  MUX21L U805 ( .A(n1051), .B(n887), .S(n894), .Z(n536) );
  AN3 U806 ( .A(wr_ptr_2_), .B(wr_en), .C(n889), .Z(n894) );
  MUX21L U807 ( .A(n1050), .B(n851), .S(n895), .Z(n535) );
  MUX21L U808 ( .A(n1049), .B(n853), .S(n895), .Z(n534) );
  MUX21L U809 ( .A(n1048), .B(n854), .S(n895), .Z(n533) );
  MUX21L U810 ( .A(n1047), .B(n855), .S(n895), .Z(n532) );
  MUX21L U811 ( .A(n1046), .B(n856), .S(n895), .Z(n531) );
  MUX21L U812 ( .A(n1045), .B(n857), .S(n895), .Z(n530) );
  MUX21L U813 ( .A(n1044), .B(n858), .S(n895), .Z(n529) );
  MUX21L U814 ( .A(n1043), .B(n859), .S(n895), .Z(n528) );
  MUX21L U815 ( .A(n1042), .B(n860), .S(n895), .Z(n527) );
  MUX21L U816 ( .A(n1041), .B(n861), .S(n895), .Z(n526) );
  MUX21L U817 ( .A(n1040), .B(n862), .S(n895), .Z(n525) );
  MUX21L U818 ( .A(n1039), .B(n863), .S(n895), .Z(n524) );
  MUX21L U819 ( .A(n1038), .B(n864), .S(n895), .Z(n523) );
  MUX21L U820 ( .A(n1037), .B(n865), .S(n895), .Z(n522) );
  MUX21L U821 ( .A(n1036), .B(n866), .S(n895), .Z(n521) );
  MUX21L U822 ( .A(n1035), .B(n867), .S(n895), .Z(n520) );
  MUX21L U823 ( .A(n1034), .B(n868), .S(n895), .Z(n519) );
  MUX21L U824 ( .A(n1033), .B(n869), .S(n895), .Z(n518) );
  MUX21L U825 ( .A(n1032), .B(n870), .S(n895), .Z(n517) );
  MUX21L U826 ( .A(n1031), .B(n871), .S(n895), .Z(n516) );
  MUX21L U827 ( .A(n1030), .B(n872), .S(n895), .Z(n515) );
  MUX21L U828 ( .A(n1029), .B(n873), .S(n895), .Z(n514) );
  MUX21L U829 ( .A(n1028), .B(n874), .S(n895), .Z(n513) );
  MUX21L U830 ( .A(n1027), .B(n875), .S(n895), .Z(n512) );
  MUX21L U831 ( .A(n1026), .B(n876), .S(n895), .Z(n511) );
  MUX21L U832 ( .A(n1025), .B(n877), .S(n895), .Z(n510) );
  MUX21L U833 ( .A(n1024), .B(n878), .S(n895), .Z(n509) );
  MUX21L U834 ( .A(n1023), .B(n879), .S(n895), .Z(n508) );
  MUX21L U835 ( .A(n1022), .B(n880), .S(n895), .Z(n507) );
  MUX21L U836 ( .A(n1021), .B(n881), .S(n895), .Z(n506) );
  MUX21L U837 ( .A(n1020), .B(n882), .S(n895), .Z(n505) );
  MUX21L U838 ( .A(n1019), .B(n883), .S(n895), .Z(n504) );
  MUX21L U839 ( .A(n1018), .B(n884), .S(n895), .Z(n503) );
  MUX21L U840 ( .A(n1017), .B(n885), .S(n895), .Z(n502) );
  MUX21L U841 ( .A(n1016), .B(n886), .S(n895), .Z(n501) );
  MUX21L U842 ( .A(n1015), .B(n887), .S(n895), .Z(n500) );
  AN3 U843 ( .A(wr_ptr_1_), .B(wr_ptr_2_), .C(n845), .Z(n895) );
  MUX21L U844 ( .A(n1014), .B(n851), .S(n896), .Z(n499) );
  IV U845 ( .A(wr_data[0]), .Z(n851) );
  MUX21L U846 ( .A(n1013), .B(n853), .S(n896), .Z(n498) );
  IV U847 ( .A(wr_data[35]), .Z(n853) );
  MUX21L U848 ( .A(n1012), .B(n854), .S(n896), .Z(n497) );
  IV U849 ( .A(wr_data[34]), .Z(n854) );
  MUX21L U850 ( .A(n1011), .B(n855), .S(n896), .Z(n496) );
  IV U851 ( .A(wr_data[33]), .Z(n855) );
  MUX21L U852 ( .A(n1010), .B(n856), .S(n896), .Z(n495) );
  IV U853 ( .A(wr_data[32]), .Z(n856) );
  MUX21L U854 ( .A(n1009), .B(n857), .S(n896), .Z(n494) );
  IV U855 ( .A(wr_data[31]), .Z(n857) );
  MUX21L U856 ( .A(n1008), .B(n858), .S(n896), .Z(n493) );
  IV U857 ( .A(wr_data[30]), .Z(n858) );
  MUX21L U858 ( .A(n1007), .B(n859), .S(n896), .Z(n492) );
  IV U859 ( .A(wr_data[29]), .Z(n859) );
  MUX21L U860 ( .A(n1006), .B(n860), .S(n896), .Z(n491) );
  IV U861 ( .A(wr_data[28]), .Z(n860) );
  MUX21L U862 ( .A(n1005), .B(n861), .S(n896), .Z(n490) );
  IV U863 ( .A(wr_data[27]), .Z(n861) );
  MUX21L U864 ( .A(n1004), .B(n862), .S(n896), .Z(n489) );
  IV U865 ( .A(wr_data[26]), .Z(n862) );
  MUX21L U866 ( .A(n1003), .B(n863), .S(n896), .Z(n488) );
  IV U867 ( .A(wr_data[25]), .Z(n863) );
  MUX21L U868 ( .A(n1002), .B(n864), .S(n896), .Z(n487) );
  IV U869 ( .A(wr_data[24]), .Z(n864) );
  MUX21L U870 ( .A(n1001), .B(n865), .S(n896), .Z(n486) );
  IV U871 ( .A(wr_data[23]), .Z(n865) );
  MUX21L U872 ( .A(n1000), .B(n866), .S(n896), .Z(n485) );
  IV U873 ( .A(wr_data[22]), .Z(n866) );
  MUX21L U874 ( .A(n999), .B(n867), .S(n896), .Z(n484) );
  IV U875 ( .A(wr_data[21]), .Z(n867) );
  MUX21L U876 ( .A(n998), .B(n868), .S(n896), .Z(n483) );
  IV U877 ( .A(wr_data[20]), .Z(n868) );
  MUX21L U878 ( .A(n997), .B(n869), .S(n896), .Z(n482) );
  IV U879 ( .A(wr_data[19]), .Z(n869) );
  MUX21L U880 ( .A(n996), .B(n870), .S(n896), .Z(n481) );
  IV U881 ( .A(wr_data[18]), .Z(n870) );
  MUX21L U882 ( .A(n995), .B(n871), .S(n896), .Z(n480) );
  IV U883 ( .A(wr_data[17]), .Z(n871) );
  MUX21L U884 ( .A(n994), .B(n872), .S(n896), .Z(n479) );
  IV U885 ( .A(wr_data[16]), .Z(n872) );
  MUX21L U886 ( .A(n993), .B(n873), .S(n896), .Z(n478) );
  IV U887 ( .A(wr_data[15]), .Z(n873) );
  MUX21L U888 ( .A(n992), .B(n874), .S(n896), .Z(n477) );
  IV U889 ( .A(wr_data[14]), .Z(n874) );
  MUX21L U890 ( .A(n991), .B(n875), .S(n896), .Z(n476) );
  IV U891 ( .A(wr_data[13]), .Z(n875) );
  MUX21L U892 ( .A(n990), .B(n876), .S(n896), .Z(n475) );
  IV U893 ( .A(wr_data[12]), .Z(n876) );
  MUX21L U894 ( .A(n989), .B(n877), .S(n896), .Z(n474) );
  IV U895 ( .A(wr_data[11]), .Z(n877) );
  MUX21L U896 ( .A(n988), .B(n878), .S(n896), .Z(n473) );
  IV U897 ( .A(wr_data[10]), .Z(n878) );
  MUX21L U898 ( .A(n987), .B(n879), .S(n896), .Z(n472) );
  IV U899 ( .A(wr_data[9]), .Z(n879) );
  MUX21L U900 ( .A(n986), .B(n880), .S(n896), .Z(n471) );
  IV U901 ( .A(wr_data[8]), .Z(n880) );
  MUX21L U902 ( .A(n985), .B(n881), .S(n896), .Z(n470) );
  IV U903 ( .A(wr_data[7]), .Z(n881) );
  MUX21L U904 ( .A(n984), .B(n882), .S(n896), .Z(n469) );
  IV U905 ( .A(wr_data[6]), .Z(n882) );
  MUX21L U906 ( .A(n983), .B(n883), .S(n896), .Z(n468) );
  IV U907 ( .A(wr_data[5]), .Z(n883) );
  MUX21L U908 ( .A(n982), .B(n884), .S(n896), .Z(n467) );
  IV U909 ( .A(wr_data[4]), .Z(n884) );
  MUX21L U910 ( .A(n981), .B(n885), .S(n896), .Z(n466) );
  IV U911 ( .A(wr_data[3]), .Z(n885) );
  MUX21L U912 ( .A(n980), .B(n886), .S(n896), .Z(n465) );
  IV U913 ( .A(wr_data[2]), .Z(n886) );
  MUX21L U914 ( .A(n979), .B(n887), .S(n896), .Z(n464) );
  NR2 U915 ( .A(n897), .B(n847), .Z(n896) );
  IV U916 ( .A(wr_data[1]), .Z(n887) );
  IV U917 ( .A(n898), .Z(n463) );
  AO6 U918 ( .A(n847), .B(test_so13), .C(n899), .Z(n898) );
  AO7 U919 ( .A(wr_en), .B(n978), .C(n900), .Z(n462) );
  AO2 U920 ( .A(n899), .B(n901), .C(n850), .D(n902), .Z(n900) );
  AO7 U921 ( .A(wr_en), .B(n977), .C(n903), .Z(n461) );
  IV U922 ( .A(n899), .Z(n903) );
  NR2 U923 ( .A(n847), .B(n902), .Z(n899) );
  EO U924 ( .A(test_so13), .B(n897), .Z(n902) );
  AO7 U925 ( .A(wr_en), .B(n976), .C(n904), .Z(n460) );
  AO2 U926 ( .A(n848), .B(n1242), .C(n905), .D(n845), .Z(n904) );
  NR2 U927 ( .A(n847), .B(n1242), .Z(n845) );
  AO7 U928 ( .A(wr_en), .B(n975), .C(n906), .Z(n459) );
  AO2 U929 ( .A(n905), .B(n850), .C(n848), .D(n901), .Z(n906) );
  NR2 U930 ( .A(n847), .B(n905), .Z(n848) );
  NR2 U931 ( .A(n901), .B(n847), .Z(n850) );
  AO7 U932 ( .A(wr_ptr_2_), .B(n892), .C(n897), .Z(n901) );
  ND2 U933 ( .A(n892), .B(wr_ptr_2_), .Z(n897) );
  NR2 U934 ( .A(n3), .B(n1), .Z(n892) );
  AO6 U935 ( .A(n1), .B(wr_ptr_1_), .C(n889), .Z(n905) );
  NR2 U936 ( .A(n1), .B(wr_ptr_1_), .Z(n889) );
  AO4 U937 ( .A(n907), .B(n847), .C(n973), .D(n908), .Z(n458) );
  IV U938 ( .A(wr_en), .Z(n847) );
  NR2 U939 ( .A(afull), .B(full), .Z(n907) );
  NR2 U940 ( .A(n909), .B(n910), .Z(empty) );
  EN U941 ( .A(n911), .B(N69), .Z(n909) );
  AN4 U942 ( .A(n908), .B(n912), .C(n913), .D(n914), .Z(afull) );
  AO7 U943 ( .A(n1), .B(n915), .C(n916), .Z(n914) );
  EN U944 ( .A(n917), .B(n918), .Z(n913) );
  EN U945 ( .A(wr_ptr_1_), .B(n916), .Z(n918) );
  EO U946 ( .A(n919), .B(n920), .Z(n912) );
  EN U947 ( .A(wr_ptr_2_), .B(n921), .Z(n920) );
  AO5 U948 ( .A(n922), .B(n923), .C(n3), .Z(n921) );
  EO U949 ( .A(sync_rd_ptr_1[1]), .B(n919), .Z(n923) );
  AN2 U950 ( .A(n1), .B(n915), .Z(n922) );
  EO U951 ( .A(n924), .B(n925), .Z(n908) );
  EO U952 ( .A(test_so13), .B(sync_rd_ptr_1[3]), .Z(n925) );
  AO5 U953 ( .A(n926), .B(n927), .C(n2), .Z(n924) );
  EO U954 ( .A(sync_rd_ptr_1[3]), .B(sync_rd_ptr_1[2]), .Z(n927) );
  AO2 U955 ( .A(wr_ptr_1_), .B(n928), .C(n917), .D(n916), .Z(n926) );
  OR2 U956 ( .A(n916), .B(n917), .Z(n928) );
  ND2 U957 ( .A(n915), .B(n1), .Z(n916) );
  EN U958 ( .A(n917), .B(sync_rd_ptr_1[0]), .Z(n915) );
  EN U959 ( .A(n919), .B(sync_rd_ptr_1[1]), .Z(n917) );
  EN U960 ( .A(n974), .B(sync_rd_ptr_1[3]), .Z(n919) );
  NR2 U961 ( .A(n910), .B(n929), .Z(aempty) );
  EN U962 ( .A(n971), .B(n911), .Z(n929) );
  AO3 U963 ( .A(n930), .B(n931), .C(n932), .D(n933), .Z(n910) );
  MUX21L U964 ( .A(n934), .B(n935), .S(n936), .Z(n933) );
  AN3 U965 ( .A(n937), .B(N69), .C(n911), .Z(n936) );
  AN2 U966 ( .A(n938), .B(n931), .Z(n935) );
  AO7 U967 ( .A(n360), .B(n939), .C(n938), .Z(n934) );
  ND2 U968 ( .A(n360), .B(n939), .Z(n938) );
  EO U969 ( .A(n937), .B(n940), .Z(n932) );
  AO2 U970 ( .A(n970), .B(n941), .C(n911), .D(n837), .Z(n940) );
  NR2 U971 ( .A(n970), .B(n971), .Z(n837) );
  ND2 U972 ( .A(n911), .B(N69), .Z(n941) );
  EO U973 ( .A(n937), .B(sync_wr_ptr_1[0]), .Z(n911) );
  EN U974 ( .A(n939), .B(sync_wr_ptr_1[1]), .Z(n937) );
  EO U975 ( .A(n4), .B(sync_wr_ptr_1[3]), .Z(n931) );
  NR2 U976 ( .A(n360), .B(n939), .Z(n930) );
  EN U977 ( .A(n972), .B(sync_wr_ptr_1[3]), .Z(n939) );
endmodule


module wb2sdrc_dw32_tw8_bl9_test_1 ( wb_rst_i, wb_clk_i, wb_stb_i, wb_ack_o, 
        wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, wb_cti_i, 
        sdram_clk, sdram_resetn, sdr_req, sdr_req_addr, sdr_req_len, 
        sdr_req_wr_n, sdr_req_ack, sdr_busy_n, sdr_wr_en_n, sdr_wr_next, 
        sdr_rd_valid, sdr_last_rd, sdr_wr_data, sdr_rd_data, test_si27, 
        test_si26, test_si25, test_si24, test_si23, test_si22, test_si21, 
        test_si20, test_si19, test_si18, test_si17, test_si16, test_si15, 
        test_si14, test_si13, test_si12, test_si11, test_si10, test_si9, 
        test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, 
        test_si1, test_so26, test_so25, test_so24, test_so23, test_so22, 
        test_so21, test_so20, test_so19, test_so18, test_so17, test_so16, 
        test_so15, test_so14, test_so13, test_so12, test_so11, test_so10, 
        test_so9, test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, 
        test_so2, test_so1, test_se );
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
         sdr_last_rd, test_si27, test_si26, test_si25, test_si24, test_si23,
         test_si22, test_si21, test_si20, test_si19, test_si18, test_si17,
         test_si16, test_si15, test_si14, test_si13, test_si12, test_si11,
         test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output wb_ack_o, sdr_req, sdr_req_wr_n, test_so26, test_so25, test_so24,
         test_so23, test_so22, test_so21, test_so20, test_so19, test_so18,
         test_so17, test_so16, test_so15, test_so14, test_so13, test_so12,
         test_so11, test_so10, test_so9, test_so8, test_so7, test_so6,
         test_so5, test_so4, test_so3, test_so2, test_so1;
  wire   cmdfifo_full, wrdatafifo_full, rddatafifo_empty, cmdfifo_wr,
         cmdfifo_empty, wrdatafifo_wr, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n14, n15, n16, n17, n18, n19, n40, n42, n49,
         SYNOPSYS_UNCONNECTED_1;

  async_fifo_36_4_0_0_test_1 u_cmdfifo ( .wr_clk(n5), .wr_reset_n(n14), 
        .wr_en(cmdfifo_wr), .wr_data({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, n15, wb_addr_i}), .full(cmdfifo_full), .rd_clk(n3), 
        .rd_reset_n(sdram_resetn), .rd_en(sdr_req_ack), .empty(cmdfifo_empty), 
        .rd_data({sdr_req_len, sdr_req_wr_n, sdr_req_addr}), .test_si9(
        test_si18), .test_si8(test_si16), .test_si7(test_si7), .test_si6(
        test_si6), .test_si5(test_si5), .test_si4(test_si4), .test_si3(
        test_si3), .test_si2(test_si2), .test_si1(n49), .test_so7(n42), 
        .test_so6(test_so6), .test_so5(test_so5), .test_so4(test_so4), 
        .test_so3(test_so3), .test_so2(test_so2), .test_so1(test_so1), 
        .test_se(test_se) );
  async_fifo_36_8_0_1_test_1 u_wrdatafifo ( .wr_clk(n5), .wr_reset_n(n14), 
        .wr_en(wrdatafifo_wr), .wr_data({n16, n17, n18, n19, wb_dat_i}), 
        .full(wrdatafifo_full), .rd_clk(n3), .rd_reset_n(sdram_resetn), 
        .rd_en(sdr_wr_next), .rd_data({sdr_wr_en_n, sdr_wr_data}), .test_si13(
        test_si27), .test_si12(test_si24), .test_si11(test_si22), .test_si10(
        test_si19), .test_si9(test_si17), .test_si8(test_si15), .test_si7(
        test_si14), .test_si6(test_si13), .test_si5(test_si12), .test_si4(
        test_si11), .test_si3(test_si10), .test_si2(test_si9), .test_si1(n40), 
        .test_so13(test_so26), .test_so12(test_so23), .test_so11(test_so21), 
        .test_so10(test_so18), .test_so9(test_so16), .test_so8(test_so15), 
        .test_so7(test_so14), .test_so6(test_so13), .test_so5(test_so12), 
        .test_so4(test_so11), .test_so3(test_so10), .test_so2(test_so9), 
        .test_so1(test_so8), .test_se(test_se) );
  async_fifo_33_4_0_1_test_1 u_rddatafifo ( .wr_clk(n3), .wr_reset_n(
        sdram_resetn), .wr_en(sdr_rd_valid), .wr_data({sdr_last_rd, 
        sdr_rd_data}), .rd_clk(n5), .rd_reset_n(n14), .rd_en(n12), .empty(
        rddatafifo_empty), .rd_data({SYNOPSYS_UNCONNECTED_1, wb_dat_o}), 
        .test_si8(test_si26), .test_si7(test_si25), .test_si6(test_si23), 
        .test_si5(test_si21), .test_si4(test_si20), .test_si3(sdr_req_len[8]), 
        .test_si2(test_si8), .test_si1(n42), .test_so8(test_so25), .test_so7(
        test_so24), .test_so6(test_so22), .test_so5(test_so20), .test_so4(
        test_so19), .test_so3(test_so17), .test_so2(n40), .test_so1(test_so7), 
        .test_se(test_se) );
  FD2S pending_read_reg ( .D(n11), .TI(test_si1), .TE(test_se), .CP(n5), .CD(
        n14), .Q(n49), .QN(n2) );
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
  input [6:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [6:0] b2x_len;
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
         tras_cntr_3_, tras_cntr_2_, tras_cntr_0_, N73, N74, N75, N77, N78,
         N79, N80, N81, N82, N83, n82, n84, n109, n110, n111, n127, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n1, n2, n79, n80, n81, n83,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400;
  wire   [3:2] timer0;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n132), .Q(n357), .QN(n318) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n356), .TE(test_se), .CP(n137), .Q(n355), 
        .QN(n320) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n355), .TE(test_se), .CP(n132), .Q(test_so4), .QN(n319) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n357), .TE(test_se), .CP(n137), .Q(n356), 
        .QN(n321) );
  FD1S bank_row_reg_0_ ( .D(n340), .TI(b2x_cmd[1]), .TE(test_se), .CP(n137), 
        .Q(bank_row[0]), .QN(n329) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n80), .TE(test_se), .CP(n132), .Q(n112), 
        .QN(n110) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n132), 
        .Q(n80), .QN(n111) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n112), .TE(test_se), .CP(n132), .Q(
        test_so1), .QN(n109) );
  FD1S l_write_reg ( .D(n289), .TI(n361), .TE(test_se), .CP(n135), .Q(n108), 
        .QN(n127) );
  FD1S bank_row_reg_10_ ( .D(n352), .TI(bank_row[9]), .TE(test_se), .CP(n134), 
        .Q(bank_row[10]), .QN(n336) );
  FD1S bank_row_reg_12_ ( .D(n351), .TI(bank_row[11]), .TE(test_se), .CP(n133), 
        .Q(bank_row[12]), .QN(n335) );
  FD1S bank_row_reg_9_ ( .D(n350), .TI(bank_row[8]), .TE(test_se), .CP(n138), 
        .Q(bank_row[9]), .QN(n332) );
  FD1S bank_row_reg_8_ ( .D(n349), .TI(bank_row[7]), .TE(test_se), .CP(n138), 
        .Q(bank_row[8]), .QN(n334) );
  FD1S bank_row_reg_7_ ( .D(n348), .TI(bank_row[6]), .TE(test_se), .CP(n138), 
        .Q(bank_row[7]), .QN(n333) );
  FD1S bank_row_reg_6_ ( .D(n347), .TI(bank_row[5]), .TE(test_se), .CP(n138), 
        .Q(bank_row[6]), .QN(n328) );
  FD1S bank_row_reg_5_ ( .D(n346), .TI(bank_row[4]), .TE(test_se), .CP(n137), 
        .Q(bank_row[5]), .QN(n327) );
  FD1S bank_row_reg_4_ ( .D(n345), .TI(bank_row[3]), .TE(test_se), .CP(n137), 
        .Q(bank_row[4]), .QN(n326) );
  FD1S bank_row_reg_3_ ( .D(n344), .TI(bank_row[2]), .TE(test_se), .CP(n137), 
        .Q(bank_row[3]), .QN(n331) );
  FD1S bank_row_reg_2_ ( .D(n343), .TI(bank_row[1]), .TE(test_se), .CP(n132), 
        .Q(bank_row[2]), .QN(n330) );
  FD1S bank_row_reg_1_ ( .D(n342), .TI(bank_row[0]), .TE(test_se), .CP(n137), 
        .Q(bank_row[1]), .QN(n325) );
  FD1S bank_row_reg_11_ ( .D(n341), .TI(bank_row[10]), .TE(test_se), .CP(n133), 
        .Q(bank_row[11]), .QN(n337) );
  FD1S bank_valid_reg ( .D(n339), .TI(test_si2), .TE(test_se), .CP(n137), .Q(
        n131), .QN(n323) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n135), 
        .Q(n358), .QN(n84) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n137), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n304), .TI(n131), .TE(test_se), .CP(n137), .Q(n400), 
        .QN(n125) );
  FD1S l_caddr_reg_12_ ( .D(n264), .TI(n389), .TE(test_se), .CP(n132), .Q(n388), .QN(n122) );
  FD1S l_caddr_reg_11_ ( .D(n265), .TI(n390), .TE(test_se), .CP(n132), .Q(n389), .QN(n123) );
  FD1S l_caddr_reg_10_ ( .D(n266), .TI(n391), .TE(test_se), .CP(n132), .Q(n390), .QN(n124) );
  FD1S l_caddr_reg_9_ ( .D(n267), .TI(n392), .TE(test_se), .CP(n133), .Q(n391), 
        .QN(n113) );
  FD1S l_caddr_reg_8_ ( .D(n268), .TI(n393), .TE(test_se), .CP(n133), .Q(n392), 
        .QN(n114) );
  FD1S l_caddr_reg_7_ ( .D(n269), .TI(n394), .TE(test_se), .CP(n133), .Q(n393), 
        .QN(n115) );
  FD1S l_caddr_reg_6_ ( .D(n270), .TI(n395), .TE(test_se), .CP(n133), .Q(n394), 
        .QN(n116) );
  FD1S l_caddr_reg_5_ ( .D(n271), .TI(n396), .TE(test_se), .CP(n133), .Q(n395), 
        .QN(n117) );
  FD1S l_caddr_reg_4_ ( .D(n272), .TI(n397), .TE(test_se), .CP(n133), .Q(n396), 
        .QN(n118) );
  FD1S l_caddr_reg_3_ ( .D(n273), .TI(n398), .TE(test_se), .CP(n133), .Q(n397), 
        .QN(n119) );
  FD1S l_caddr_reg_2_ ( .D(n274), .TI(n399), .TE(test_se), .CP(n132), .Q(n398), 
        .QN(n120) );
  FD1S l_caddr_reg_1_ ( .D(n275), .TI(n400), .TE(test_se), .CP(n133), .Q(n399), 
        .QN(n121) );
  FD1S l_raddr_reg_12_ ( .D(n276), .TI(n364), .TE(test_se), .CP(n133), .Q(n363), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n277), .TI(n365), .TE(test_se), .CP(n133), .Q(n364), .QN(n92) );
  FD1S l_raddr_reg_10_ ( .D(n278), .TI(n366), .TE(test_se), .CP(n134), .Q(n365), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n279), .TI(n367), .TE(test_se), .CP(n134), .Q(n366), 
        .QN(n81) );
  FD1S l_raddr_reg_8_ ( .D(n280), .TI(n368), .TE(test_se), .CP(n134), .Q(n367), 
        .QN(n83) );
  FD1S l_raddr_reg_7_ ( .D(n281), .TI(n369), .TE(test_se), .CP(n134), .Q(n368), 
        .QN(n85) );
  FD1S l_raddr_reg_6_ ( .D(n282), .TI(n370), .TE(test_se), .CP(n134), .Q(n369), 
        .QN(n86) );
  FD1S l_raddr_reg_5_ ( .D(n283), .TI(n371), .TE(test_se), .CP(n134), .Q(n370), 
        .QN(n87) );
  FD1S l_raddr_reg_4_ ( .D(n284), .TI(n372), .TE(test_se), .CP(n134), .Q(n371), 
        .QN(n88) );
  FD1S l_raddr_reg_3_ ( .D(n285), .TI(n373), .TE(test_se), .CP(n134), .Q(n372), 
        .QN(n89) );
  FD1S l_raddr_reg_2_ ( .D(n286), .TI(n374), .TE(test_se), .CP(n134), .Q(n373), 
        .QN(n90) );
  FD1S l_raddr_reg_1_ ( .D(n287), .TI(n375), .TE(test_se), .CP(n134), .Q(n374), 
        .QN(n91) );
  FD1S l_raddr_reg_0_ ( .D(n288), .TI(n376), .TE(test_se), .CP(n134), .Q(n375), 
        .QN(n93) );
  FD1S l_wrap_reg ( .D(n290), .TI(n362), .TE(test_se), .CP(n136), .Q(n361), 
        .QN(n94) );
  FD1S l_len_reg_6_ ( .D(n291), .TI(test_si3), .TE(test_se), .CP(n136), .Q(
        n376), .QN(n96) );
  FD1S l_len_reg_5_ ( .D(n292), .TI(n378), .TE(test_se), .CP(n136), .Q(
        test_so2), .QN(n97) );
  FD1S l_len_reg_4_ ( .D(n293), .TI(n379), .TE(test_se), .CP(n136), .Q(n378), 
        .QN(n98) );
  FD1S l_len_reg_3_ ( .D(n294), .TI(n380), .TE(test_se), .CP(n136), .Q(n379), 
        .QN(n99) );
  FD1S l_len_reg_2_ ( .D(n295), .TI(n381), .TE(test_se), .CP(n136), .Q(n380), 
        .QN(n100) );
  FD1S l_len_reg_1_ ( .D(n296), .TI(n382), .TE(test_se), .CP(n136), .Q(n381), 
        .QN(n101) );
  FD1S l_len_reg_0_ ( .D(n297), .TI(n383), .TE(test_se), .CP(n136), .Q(n382), 
        .QN(n102) );
  FD1S l_id_reg_3_ ( .D(n298), .TI(n385), .TE(test_se), .CP(n136), .Q(n384), 
        .QN(n104) );
  FD1S l_id_reg_2_ ( .D(n299), .TI(n386), .TE(test_se), .CP(n136), .Q(n385), 
        .QN(n105) );
  FD1S l_id_reg_1_ ( .D(n300), .TI(n387), .TE(test_se), .CP(n136), .Q(n386), 
        .QN(n106) );
  FD1S l_id_reg_0_ ( .D(n301), .TI(n388), .TE(test_se), .CP(n136), .Q(n387), 
        .QN(n107) );
  FD1S l_last_reg ( .D(n302), .TI(n384), .TE(test_se), .CP(n137), .Q(n383), 
        .QN(n103) );
  FD1S l_start_reg ( .D(n303), .TI(n322), .TE(test_se), .CP(n137), .Q(n362), 
        .QN(n95) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n132), 
        .Q(b2x_cmd[1]), .QN(n82) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n135), .Q(
        b2x_cmd[0]), .QN(n324) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n108), .TE(test_se), .CP(n135), .Q(n360), 
        .QN(n79) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n360), .TE(test_se), .CP(n135), .Q(n359), 
        .QN(n126) );
  FD1S l_sdr_dma_last_reg ( .D(n263), .TI(n363), .TE(test_se), .CP(n132), .Q(
        n322), .QN(n128) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr_3_), .TE(test_se), .CP(n135), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(test_si4), .TE(test_se), .CP(n135), .Q(
        tras_cntr_2_) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr_0_), .TE(test_se), .CP(n135), 
        .Q(test_so3) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n358), .TE(test_se), .CP(n135), .Q(
        tras_cntr_0_) );
  FD1S tras_cntr_reg_3_ ( .D(n338), .TI(tras_cntr_2_), .TE(test_se), .CP(n135), 
        .Q(tras_cntr_3_) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n135), .Q(
        timer0[3]), .QN(n129) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n359), .TE(test_se), .CP(n135), .Q(
        timer0[2]), .QN(n130) );
  IVP U6 ( .A(n139), .Z(n136) );
  IVP U80 ( .A(n140), .Z(n135) );
  IVP U81 ( .A(n140), .Z(n134) );
  IVP U82 ( .A(n140), .Z(n133) );
  IVP U83 ( .A(n139), .Z(n137) );
  IVP U84 ( .A(n139), .Z(n138) );
  IVP U85 ( .A(n142), .Z(n140) );
  IVP U86 ( .A(n142), .Z(n139) );
  IVP U87 ( .A(n141), .Z(n132) );
  IVP U88 ( .A(n142), .Z(n141) );
  IVP U89 ( .A(n143), .Z(n142) );
  IVP U90 ( .A(clk), .Z(n143) );
  IV U91 ( .A(n144), .Z(n338) );
  AO2 U92 ( .A(tras_cntr_3_), .B(n145), .C(tras_delay[3]), .D(n146), .Z(n144)
         );
  NR2 U93 ( .A(n147), .B(n148), .Z(n145) );
  AO1 U94 ( .A(n323), .B(n149), .C(n150), .D(n151), .Z(n339) );
  ND2 U95 ( .A(n152), .B(n153), .Z(n150) );
  MUX21L U96 ( .A(n154), .B(n329), .S(n155), .Z(n340) );
  IV U97 ( .A(b2x_addr[0]), .Z(n154) );
  MUX21L U98 ( .A(n156), .B(n337), .S(n155), .Z(n341) );
  IV U99 ( .A(b2x_addr[11]), .Z(n156) );
  MUX21L U100 ( .A(n325), .B(n157), .S(n158), .Z(n342) );
  IV U101 ( .A(b2x_addr[1]), .Z(n157) );
  MUX21L U102 ( .A(n159), .B(n330), .S(n155), .Z(n343) );
  IV U103 ( .A(b2x_addr[2]), .Z(n159) );
  MUX21L U104 ( .A(n160), .B(n331), .S(n155), .Z(n344) );
  IV U105 ( .A(b2x_addr[3]), .Z(n160) );
  MUX21L U106 ( .A(n326), .B(n161), .S(n158), .Z(n345) );
  IV U107 ( .A(b2x_addr[4]), .Z(n161) );
  MUX21L U108 ( .A(n327), .B(n162), .S(n158), .Z(n346) );
  IV U109 ( .A(b2x_addr[5]), .Z(n162) );
  MUX21L U110 ( .A(n163), .B(n328), .S(n155), .Z(n347) );
  IV U111 ( .A(b2x_addr[6]), .Z(n163) );
  MUX21L U112 ( .A(n333), .B(n164), .S(n158), .Z(n348) );
  IV U113 ( .A(b2x_addr[7]), .Z(n164) );
  MUX21L U114 ( .A(n334), .B(n165), .S(n158), .Z(n349) );
  IV U115 ( .A(b2x_addr[8]), .Z(n165) );
  MUX21L U116 ( .A(n332), .B(n166), .S(n158), .Z(n350) );
  IV U117 ( .A(b2x_addr[9]), .Z(n166) );
  MUX21L U118 ( .A(n1), .B(n335), .S(n155), .Z(n351) );
  MUX21L U119 ( .A(n2), .B(n336), .S(n155), .Z(n352) );
  AO4 U120 ( .A(n125), .B(n167), .C(n168), .D(n169), .Z(n304) );
  IV U121 ( .A(r2b_caddr[0]), .Z(n168) );
  AO4 U122 ( .A(n169), .B(n170), .C(n167), .D(n95), .Z(n303) );
  AO4 U123 ( .A(n169), .B(n171), .C(n167), .D(n103), .Z(n302) );
  AO4 U124 ( .A(n169), .B(n172), .C(n167), .D(n107), .Z(n301) );
  AO4 U125 ( .A(n169), .B(n173), .C(n167), .D(n106), .Z(n300) );
  AO4 U126 ( .A(n169), .B(n174), .C(n167), .D(n105), .Z(n299) );
  AO4 U127 ( .A(n169), .B(n175), .C(n167), .D(n104), .Z(n298) );
  AO4 U128 ( .A(n169), .B(n176), .C(n167), .D(n102), .Z(n297) );
  AO4 U129 ( .A(n169), .B(n177), .C(n167), .D(n101), .Z(n296) );
  AO4 U130 ( .A(n169), .B(n178), .C(n167), .D(n100), .Z(n295) );
  AO4 U131 ( .A(n169), .B(n179), .C(n167), .D(n99), .Z(n294) );
  AO4 U132 ( .A(n169), .B(n180), .C(n167), .D(n98), .Z(n293) );
  AO4 U133 ( .A(n169), .B(n181), .C(n167), .D(n97), .Z(n292) );
  AO4 U134 ( .A(n169), .B(n182), .C(n167), .D(n96), .Z(n291) );
  AO4 U135 ( .A(n169), .B(n183), .C(n167), .D(n94), .Z(n290) );
  AO4 U136 ( .A(n169), .B(n184), .C(n127), .D(n167), .Z(n289) );
  AO4 U137 ( .A(n169), .B(n185), .C(n93), .D(n167), .Z(n288) );
  AO4 U138 ( .A(n169), .B(n186), .C(n91), .D(n167), .Z(n287) );
  IV U139 ( .A(r2b_raddr[1]), .Z(n186) );
  AO4 U140 ( .A(n169), .B(n187), .C(n90), .D(n167), .Z(n286) );
  AO4 U141 ( .A(n169), .B(n188), .C(n89), .D(n167), .Z(n285) );
  AO4 U142 ( .A(n169), .B(n189), .C(n88), .D(n167), .Z(n284) );
  IV U143 ( .A(r2b_raddr[4]), .Z(n189) );
  AO4 U144 ( .A(n169), .B(n190), .C(n87), .D(n167), .Z(n283) );
  IV U145 ( .A(r2b_raddr[5]), .Z(n190) );
  AO4 U146 ( .A(n169), .B(n191), .C(n86), .D(n167), .Z(n282) );
  AO4 U147 ( .A(n169), .B(n192), .C(n85), .D(n167), .Z(n281) );
  IV U148 ( .A(r2b_raddr[7]), .Z(n192) );
  AO4 U149 ( .A(n169), .B(n193), .C(n83), .D(n167), .Z(n280) );
  IV U150 ( .A(r2b_raddr[8]), .Z(n193) );
  AO4 U151 ( .A(n169), .B(n194), .C(n81), .D(n167), .Z(n279) );
  IV U152 ( .A(r2b_raddr[9]), .Z(n194) );
  AO4 U153 ( .A(n169), .B(n195), .C(n2), .D(n167), .Z(n278) );
  AO4 U154 ( .A(n169), .B(n196), .C(n92), .D(n167), .Z(n277) );
  AO4 U155 ( .A(n169), .B(n197), .C(n1), .D(n167), .Z(n276) );
  AO4 U156 ( .A(n121), .B(n167), .C(n198), .D(n169), .Z(n275) );
  IV U157 ( .A(r2b_caddr[1]), .Z(n198) );
  AO4 U158 ( .A(n120), .B(n167), .C(n199), .D(n169), .Z(n274) );
  IV U159 ( .A(r2b_caddr[2]), .Z(n199) );
  AO4 U160 ( .A(n119), .B(n167), .C(n200), .D(n169), .Z(n273) );
  IV U161 ( .A(r2b_caddr[3]), .Z(n200) );
  AO4 U162 ( .A(n118), .B(n167), .C(n201), .D(n169), .Z(n272) );
  IV U163 ( .A(r2b_caddr[4]), .Z(n201) );
  AO4 U164 ( .A(n117), .B(n167), .C(n202), .D(n169), .Z(n271) );
  IV U165 ( .A(r2b_caddr[5]), .Z(n202) );
  AO4 U166 ( .A(n116), .B(n167), .C(n203), .D(n169), .Z(n270) );
  IV U167 ( .A(r2b_caddr[6]), .Z(n203) );
  AO4 U168 ( .A(n115), .B(n167), .C(n204), .D(n169), .Z(n269) );
  IV U169 ( .A(r2b_caddr[7]), .Z(n204) );
  AO4 U170 ( .A(n114), .B(n167), .C(n205), .D(n169), .Z(n268) );
  IV U171 ( .A(r2b_caddr[8]), .Z(n205) );
  AO4 U172 ( .A(n113), .B(n167), .C(n206), .D(n169), .Z(n267) );
  IV U173 ( .A(r2b_caddr[9]), .Z(n206) );
  AO4 U174 ( .A(n167), .B(n124), .C(n207), .D(n169), .Z(n266) );
  IV U175 ( .A(r2b_caddr[10]), .Z(n207) );
  AO4 U176 ( .A(n123), .B(n167), .C(n208), .D(n169), .Z(n265) );
  IV U177 ( .A(r2b_caddr[11]), .Z(n208) );
  AO4 U178 ( .A(n167), .B(n122), .C(n209), .D(n169), .Z(n264) );
  IV U179 ( .A(r2b_caddr[12]), .Z(n209) );
  AO4 U180 ( .A(n167), .B(n128), .C(n210), .D(n169), .Z(n263) );
  IV U181 ( .A(sdr_dma_last), .Z(n210) );
  ND2 U182 ( .A(reset_n), .B(n169), .Z(n167) );
  MUX21L U183 ( .A(n183), .B(n94), .S(n211), .Z(b2x_wrap) );
  IV U184 ( .A(r2b_wrap), .Z(n183) );
  MUX21L U185 ( .A(n170), .B(n95), .S(n211), .Z(b2x_start) );
  IV U186 ( .A(r2b_start), .Z(n170) );
  AO4 U187 ( .A(n212), .B(n84), .C(n318), .D(n213), .Z(b2x_req) );
  ND2 U188 ( .A(tras_ok), .B(n214), .Z(n213) );
  AO2 U189 ( .A(n215), .B(n216), .C(x2b_act_ok_r_0_), .D(n158), .Z(n212) );
  MUX21L U190 ( .A(n321), .B(n320), .S(n108), .Z(n216) );
  NR2 U191 ( .A(n217), .B(n319), .Z(n215) );
  MUX21L U192 ( .A(n182), .B(n96), .S(n211), .Z(b2x_len[6]) );
  IV U193 ( .A(r2b_len[6]), .Z(n182) );
  MUX21L U194 ( .A(n181), .B(n97), .S(n211), .Z(b2x_len[5]) );
  IV U195 ( .A(r2b_len[5]), .Z(n181) );
  MUX21L U196 ( .A(n180), .B(n98), .S(n211), .Z(b2x_len[4]) );
  IV U197 ( .A(r2b_len[4]), .Z(n180) );
  MUX21L U198 ( .A(n179), .B(n99), .S(n211), .Z(b2x_len[3]) );
  IV U199 ( .A(r2b_len[3]), .Z(n179) );
  MUX21L U200 ( .A(n178), .B(n100), .S(n211), .Z(b2x_len[2]) );
  IV U201 ( .A(r2b_len[2]), .Z(n178) );
  MUX21L U202 ( .A(n177), .B(n101), .S(n211), .Z(b2x_len[1]) );
  IV U203 ( .A(r2b_len[1]), .Z(n177) );
  MUX21L U204 ( .A(n176), .B(n102), .S(n211), .Z(b2x_len[0]) );
  IV U205 ( .A(r2b_len[0]), .Z(n176) );
  MUX21L U206 ( .A(n171), .B(n103), .S(n211), .Z(b2x_last) );
  IV U207 ( .A(r2b_last), .Z(n171) );
  MUX21L U208 ( .A(n175), .B(n104), .S(n211), .Z(b2x_id[3]) );
  IV U209 ( .A(r2b_req_id[3]), .Z(n175) );
  MUX21L U210 ( .A(n174), .B(n105), .S(n211), .Z(b2x_id[2]) );
  IV U211 ( .A(r2b_req_id[2]), .Z(n174) );
  MUX21L U212 ( .A(n173), .B(n106), .S(n211), .Z(b2x_id[1]) );
  IV U213 ( .A(r2b_req_id[1]), .Z(n173) );
  MUX21L U214 ( .A(n172), .B(n107), .S(n211), .Z(b2x_id[0]) );
  IV U215 ( .A(r2b_req_id[0]), .Z(n172) );
  AO4 U216 ( .A(n217), .B(n113), .C(n218), .D(n81), .Z(b2x_addr[9]) );
  AO4 U217 ( .A(n217), .B(n114), .C(n218), .D(n83), .Z(b2x_addr[8]) );
  AO4 U218 ( .A(n217), .B(n115), .C(n218), .D(n85), .Z(b2x_addr[7]) );
  AO4 U219 ( .A(n217), .B(n116), .C(n218), .D(n86), .Z(b2x_addr[6]) );
  AO4 U220 ( .A(n217), .B(n117), .C(n218), .D(n87), .Z(b2x_addr[5]) );
  AO4 U221 ( .A(n217), .B(n118), .C(n218), .D(n88), .Z(b2x_addr[4]) );
  AO4 U222 ( .A(n217), .B(n119), .C(n218), .D(n89), .Z(b2x_addr[3]) );
  AO4 U223 ( .A(n217), .B(n120), .C(n218), .D(n90), .Z(b2x_addr[2]) );
  AO4 U224 ( .A(n217), .B(n121), .C(n218), .D(n91), .Z(b2x_addr[1]) );
  AO4 U225 ( .A(n217), .B(n122), .C(n155), .D(n1), .Z(b2x_addr[12]) );
  AO4 U226 ( .A(n217), .B(n123), .C(n218), .D(n92), .Z(b2x_addr[11]) );
  AO4 U227 ( .A(n217), .B(n124), .C(n155), .D(n2), .Z(b2x_addr[10]) );
  IV U228 ( .A(n158), .Z(n155) );
  AO4 U229 ( .A(n217), .B(n125), .C(n218), .D(n93), .Z(b2x_addr[0]) );
  AO6 U230 ( .A(n219), .B(n220), .C(n151), .Z(N83) );
  MUX21L U231 ( .A(n221), .B(n222), .S(n223), .Z(n219) );
  AN3 U232 ( .A(n322), .B(n153), .C(n224), .Z(n221) );
  AO4 U233 ( .A(n169), .B(n225), .C(n226), .D(n151), .Z(N82) );
  AO1 U234 ( .A(n224), .B(n227), .C(n228), .D(n158), .Z(n226) );
  AO4 U235 ( .A(n223), .B(n229), .C(n110), .D(n220), .Z(n228) );
  ND2 U236 ( .A(x2b_ack), .B(n153), .Z(n227) );
  IV U237 ( .A(x2b_refresh), .Z(n153) );
  AO7 U238 ( .A(n230), .B(n151), .C(n169), .Z(N81) );
  ND2 U239 ( .A(b2r_ack), .B(reset_n), .Z(n169) );
  NR2 U240 ( .A(n231), .B(n211), .Z(b2r_ack) );
  IV U241 ( .A(r2b_req), .Z(n231) );
  IV U242 ( .A(n232), .Z(n230) );
  AO7 U243 ( .A(n220), .B(n111), .C(n233), .Z(n232) );
  MUX21L U244 ( .A(n158), .B(n234), .S(n223), .Z(n233) );
  AO7 U245 ( .A(n217), .B(x2b_refresh), .C(n229), .Z(n234) );
  ND3 U246 ( .A(n211), .B(n217), .C(n218), .Z(n220) );
  NR2 U247 ( .A(n214), .B(n158), .Z(n218) );
  ND2 U248 ( .A(n152), .B(n229), .Z(n214) );
  ND3 U249 ( .A(n110), .B(n80), .C(n109), .Z(n229) );
  IV U250 ( .A(n222), .Z(n152) );
  NR3 U251 ( .A(n112), .B(n109), .C(n80), .Z(n222) );
  AO4 U252 ( .A(n129), .B(n235), .C(n236), .D(n151), .Z(N80) );
  AO11 U253 ( .A(trp_delay[3]), .B(n237), .C(n238), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n239), .Z(n236) );
  AN2 U254 ( .A(n240), .B(timer0[2]), .Z(n238) );
  AO4 U255 ( .A(n130), .B(n235), .C(n241), .D(n151), .Z(N79) );
  AO11 U256 ( .A(trp_delay[2]), .B(n237), .C(n242), .D(n240), .E(trcd_delay[2]), .F(n239), .Z(n241) );
  NR2 U257 ( .A(timer0[2]), .B(n243), .Z(n242) );
  ND3 U258 ( .A(reset_n), .B(n243), .C(n240), .Z(n235) );
  AO6 U259 ( .A(n244), .B(n245), .C(n151), .Z(N78) );
  ND2 U260 ( .A(trp_delay[1]), .B(n237), .Z(n245) );
  AO2 U261 ( .A(n240), .B(n246), .C(trcd_delay[1]), .D(n239), .Z(n244) );
  AO7 U262 ( .A(n126), .B(n79), .C(n243), .Z(n246) );
  AO6 U263 ( .A(n247), .B(n248), .C(n151), .Z(N77) );
  ND2 U264 ( .A(trp_delay[0]), .B(n237), .Z(n248) );
  AO2 U265 ( .A(n240), .B(n79), .C(trcd_delay[0]), .D(n239), .Z(n247) );
  NR3 U266 ( .A(n237), .B(n239), .C(n249), .Z(n240) );
  IV U267 ( .A(n250), .Z(n249) );
  EON1 U268 ( .A(n251), .B(n147), .C(tras_delay[2]), .D(n146), .Z(N75) );
  AO6 U269 ( .A(tras_cntr_2_), .B(n252), .C(n148), .Z(n251) );
  EON1 U270 ( .A(n253), .B(n147), .C(tras_delay[1]), .D(n146), .Z(N74) );
  AO6 U271 ( .A(test_so3), .B(tras_cntr_0_), .C(n254), .Z(n253) );
  EON1 U272 ( .A(tras_cntr_0_), .B(n147), .C(tras_delay[0]), .D(n146), .Z(N73)
         );
  NR2 U273 ( .A(n149), .B(n151), .Z(n146) );
  AO3 U274 ( .A(tras_cntr_3_), .B(n255), .C(n149), .D(reset_n), .Z(n147) );
  IV U275 ( .A(n239), .Z(n149) );
  AN2 U276 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U277 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U278 ( .A(n151), .B(tras_cntr_3_), .C(n255), .Z(N40) );
  IV U279 ( .A(n148), .Z(n255) );
  NR2 U280 ( .A(n252), .B(tras_cntr_2_), .Z(n148) );
  IV U281 ( .A(n254), .Z(n252) );
  NR2 U282 ( .A(test_so3), .B(tras_cntr_0_), .Z(n254) );
  NR4 U283 ( .A(n239), .B(n237), .C(n151), .D(n250), .Z(N39) );
  OR3 U284 ( .A(timer0[2]), .B(timer0[3]), .C(n243), .Z(n250) );
  ND2 U285 ( .A(n126), .B(n79), .Z(n243) );
  AN3 U286 ( .A(x2b_ack), .B(n82), .C(n324), .Z(n237) );
  NR3 U287 ( .A(b2x_cmd[1]), .B(n324), .C(n223), .Z(n239) );
  IV U288 ( .A(x2b_ack), .Z(n223) );
  AN2 U289 ( .A(n256), .B(reset_n), .Z(N38) );
  AO7 U290 ( .A(n225), .B(n211), .C(n217), .Z(n256) );
  IV U291 ( .A(n224), .Z(n217) );
  NR2 U292 ( .A(n257), .B(n151), .Z(N37) );
  IV U293 ( .A(reset_n), .Z(n151) );
  AO1 U294 ( .A(n224), .B(n108), .C(n158), .D(n258), .Z(n257) );
  NR3 U295 ( .A(n225), .B(n211), .C(n184), .Z(n258) );
  IV U296 ( .A(r2b_write), .Z(n184) );
  ND3 U297 ( .A(n111), .B(n110), .C(n109), .Z(n211) );
  ND2 U298 ( .A(n259), .B(n260), .Z(n225) );
  NR4 U299 ( .A(n261), .B(n262), .C(n305), .D(n306), .Z(n260) );
  EN U300 ( .A(n334), .B(r2b_raddr[8]), .Z(n306) );
  EN U301 ( .A(n332), .B(r2b_raddr[9]), .Z(n305) );
  EN U302 ( .A(n333), .B(r2b_raddr[7]), .Z(n262) );
  ND4 U303 ( .A(n307), .B(n308), .C(n309), .D(n131), .Z(n261) );
  EN U304 ( .A(n196), .B(n337), .Z(n309) );
  IV U305 ( .A(r2b_raddr[11]), .Z(n196) );
  EN U306 ( .A(n195), .B(n336), .Z(n308) );
  IV U307 ( .A(r2b_raddr[10]), .Z(n195) );
  EN U308 ( .A(n197), .B(n335), .Z(n307) );
  IV U309 ( .A(r2b_raddr[12]), .Z(n197) );
  NR4 U310 ( .A(n310), .B(n311), .C(n312), .D(n313), .Z(n259) );
  EN U311 ( .A(n327), .B(r2b_raddr[5]), .Z(n313) );
  EN U312 ( .A(n325), .B(r2b_raddr[1]), .Z(n312) );
  EN U313 ( .A(n326), .B(r2b_raddr[4]), .Z(n311) );
  ND4 U314 ( .A(n314), .B(n315), .C(n316), .D(n317), .Z(n310) );
  EN U315 ( .A(n188), .B(n331), .Z(n317) );
  IV U316 ( .A(r2b_raddr[3]), .Z(n188) );
  EN U317 ( .A(n187), .B(n330), .Z(n316) );
  IV U318 ( .A(r2b_raddr[2]), .Z(n187) );
  EN U319 ( .A(n185), .B(n329), .Z(n315) );
  IV U320 ( .A(r2b_raddr[0]), .Z(n185) );
  EN U321 ( .A(n191), .B(n328), .Z(n314) );
  IV U322 ( .A(r2b_raddr[6]), .Z(n191) );
  AN3 U323 ( .A(n111), .B(n112), .C(n109), .Z(n158) );
  AN3 U324 ( .A(n112), .B(n80), .C(n109), .Z(n224) );
  AN2 U325 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U326 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U327 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_1 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so4, test_so3, 
        test_so2, test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [6:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [6:0] b2x_len;
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
         tras_cntr_3_, tras_cntr_2_, tras_cntr_1_, N73, N74, N75, N77, N78,
         N79, N80, N81, N82, N83, n1, n2, n79, n80, n81, n83, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
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
         n260, n261, n262, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525;
  wire   [3:2] timer0;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n132), .Q(n481), .QN(n318) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n480), .TE(test_se), .CP(n138), .Q(n479), 
        .QN(n320) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n479), .TE(test_se), .CP(n132), .Q(test_so4), .QN(n319) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n481), .TE(test_se), .CP(n138), .Q(n480), 
        .QN(n321) );
  FD1S bank_row_reg_0_ ( .D(n340), .TI(b2x_cmd[1]), .TE(test_se), .CP(n136), 
        .Q(bank_row[0]), .QN(n329) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n80), .TE(test_se), .CP(n132), .Q(
        test_so1), .QN(n397) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n132), 
        .Q(n80), .QN(n396) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(test_si2), .TE(test_se), .CP(n132), .Q(
        n525), .QN(n398) );
  FD1S l_write_reg ( .D(n368), .TI(n485), .TE(test_se), .CP(n134), .Q(n108), 
        .QN(n395) );
  FD1S bank_row_reg_10_ ( .D(n352), .TI(bank_row[9]), .TE(test_se), .CP(n135), 
        .Q(bank_row[10]), .QN(n336) );
  FD1S bank_row_reg_12_ ( .D(n351), .TI(bank_row[11]), .TE(test_se), .CP(n136), 
        .Q(bank_row[12]), .QN(n335) );
  FD1S bank_row_reg_9_ ( .D(n350), .TI(bank_row[8]), .TE(test_se), .CP(n136), 
        .Q(bank_row[9]), .QN(n332) );
  FD1S bank_row_reg_8_ ( .D(n349), .TI(bank_row[7]), .TE(test_se), .CP(n136), 
        .Q(bank_row[8]), .QN(n334) );
  FD1S bank_row_reg_7_ ( .D(n348), .TI(bank_row[6]), .TE(test_se), .CP(n136), 
        .Q(bank_row[7]), .QN(n333) );
  FD1S bank_row_reg_6_ ( .D(n347), .TI(bank_row[5]), .TE(test_se), .CP(n136), 
        .Q(bank_row[6]), .QN(n328) );
  FD1S bank_row_reg_5_ ( .D(n346), .TI(bank_row[4]), .TE(test_se), .CP(n136), 
        .Q(bank_row[5]), .QN(n327) );
  FD1S bank_row_reg_4_ ( .D(n345), .TI(bank_row[3]), .TE(test_se), .CP(n136), 
        .Q(bank_row[4]), .QN(n326) );
  FD1S bank_row_reg_3_ ( .D(n344), .TI(bank_row[2]), .TE(test_se), .CP(n136), 
        .Q(bank_row[3]), .QN(n331) );
  FD1S bank_row_reg_2_ ( .D(n343), .TI(bank_row[1]), .TE(test_se), .CP(n136), 
        .Q(bank_row[2]), .QN(n330) );
  FD1S bank_row_reg_1_ ( .D(n342), .TI(bank_row[0]), .TE(test_se), .CP(n136), 
        .Q(bank_row[1]), .QN(n325) );
  FD1S bank_row_reg_11_ ( .D(n341), .TI(bank_row[10]), .TE(test_se), .CP(n136), 
        .Q(bank_row[11]), .QN(n337) );
  FD1S bank_valid_reg ( .D(n339), .TI(n525), .TE(test_se), .CP(n137), .Q(n131), 
        .QN(n323) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n137), 
        .Q(n482), .QN(n399) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n138), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n353), .TI(n131), .TE(test_se), .CP(n135), .Q(n524), 
        .QN(n125) );
  FD1S l_caddr_reg_12_ ( .D(n393), .TI(n513), .TE(test_se), .CP(n132), .Q(n512), .QN(n122) );
  FD1S l_caddr_reg_11_ ( .D(n392), .TI(n514), .TE(test_se), .CP(n132), .Q(n513), .QN(n123) );
  FD1S l_caddr_reg_10_ ( .D(n391), .TI(n515), .TE(test_se), .CP(n132), .Q(n514), .QN(n124) );
  FD1S l_caddr_reg_9_ ( .D(n390), .TI(n516), .TE(test_se), .CP(n132), .Q(n515), 
        .QN(n113) );
  FD1S l_caddr_reg_8_ ( .D(n389), .TI(n517), .TE(test_se), .CP(n132), .Q(n516), 
        .QN(n114) );
  FD1S l_caddr_reg_7_ ( .D(n388), .TI(n518), .TE(test_se), .CP(n132), .Q(n517), 
        .QN(n115) );
  FD1S l_caddr_reg_6_ ( .D(n387), .TI(n519), .TE(test_se), .CP(n133), .Q(n518), 
        .QN(n116) );
  FD1S l_caddr_reg_5_ ( .D(n386), .TI(n520), .TE(test_se), .CP(n133), .Q(n519), 
        .QN(n117) );
  FD1S l_caddr_reg_4_ ( .D(n385), .TI(n521), .TE(test_se), .CP(n133), .Q(n520), 
        .QN(n118) );
  FD1S l_caddr_reg_3_ ( .D(n384), .TI(n522), .TE(test_se), .CP(n133), .Q(n521), 
        .QN(n119) );
  FD1S l_caddr_reg_2_ ( .D(n383), .TI(n523), .TE(test_se), .CP(n133), .Q(n522), 
        .QN(n120) );
  FD1S l_caddr_reg_1_ ( .D(n382), .TI(n524), .TE(test_se), .CP(n133), .Q(n523), 
        .QN(n121) );
  FD1S l_raddr_reg_12_ ( .D(n381), .TI(n488), .TE(test_se), .CP(n133), .Q(n487), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n380), .TI(n489), .TE(test_se), .CP(n133), .Q(n488), .QN(n92) );
  FD1S l_raddr_reg_10_ ( .D(n379), .TI(n490), .TE(test_se), .CP(n133), .Q(n489), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n378), .TI(n491), .TE(test_se), .CP(n133), .Q(n490), 
        .QN(n81) );
  FD1S l_raddr_reg_8_ ( .D(n377), .TI(n492), .TE(test_se), .CP(n133), .Q(n491), 
        .QN(n83) );
  FD1S l_raddr_reg_7_ ( .D(n376), .TI(n493), .TE(test_se), .CP(n133), .Q(n492), 
        .QN(n85) );
  FD1S l_raddr_reg_6_ ( .D(n375), .TI(n494), .TE(test_se), .CP(n134), .Q(n493), 
        .QN(n86) );
  FD1S l_raddr_reg_5_ ( .D(n374), .TI(n495), .TE(test_se), .CP(n134), .Q(n494), 
        .QN(n87) );
  FD1S l_raddr_reg_4_ ( .D(n373), .TI(n496), .TE(test_se), .CP(n134), .Q(n495), 
        .QN(n88) );
  FD1S l_raddr_reg_3_ ( .D(n372), .TI(n497), .TE(test_se), .CP(n134), .Q(n496), 
        .QN(n89) );
  FD1S l_raddr_reg_2_ ( .D(n371), .TI(n498), .TE(test_se), .CP(n134), .Q(n497), 
        .QN(n90) );
  FD1S l_raddr_reg_1_ ( .D(n370), .TI(n499), .TE(test_se), .CP(n134), .Q(n498), 
        .QN(n91) );
  FD1S l_raddr_reg_0_ ( .D(n369), .TI(n500), .TE(test_se), .CP(n134), .Q(n499), 
        .QN(n93) );
  FD1S l_wrap_reg ( .D(n367), .TI(n486), .TE(test_se), .CP(n134), .Q(n485), 
        .QN(n94) );
  FD1S l_len_reg_6_ ( .D(n366), .TI(n501), .TE(test_se), .CP(n134), .Q(n500), 
        .QN(n96) );
  FD1S l_len_reg_5_ ( .D(n365), .TI(test_si3), .TE(test_se), .CP(n134), .Q(
        n501), .QN(n97) );
  FD1S l_len_reg_4_ ( .D(n364), .TI(n503), .TE(test_se), .CP(n134), .Q(
        test_so2), .QN(n98) );
  FD1S l_len_reg_3_ ( .D(n363), .TI(n504), .TE(test_se), .CP(n135), .Q(n503), 
        .QN(n99) );
  FD1S l_len_reg_2_ ( .D(n362), .TI(n505), .TE(test_se), .CP(n135), .Q(n504), 
        .QN(n100) );
  FD1S l_len_reg_1_ ( .D(n361), .TI(n506), .TE(test_se), .CP(n135), .Q(n505), 
        .QN(n101) );
  FD1S l_len_reg_0_ ( .D(n360), .TI(n507), .TE(test_se), .CP(n135), .Q(n506), 
        .QN(n102) );
  FD1S l_id_reg_3_ ( .D(n359), .TI(n509), .TE(test_se), .CP(n135), .Q(n508), 
        .QN(n104) );
  FD1S l_id_reg_2_ ( .D(n358), .TI(n510), .TE(test_se), .CP(n135), .Q(n509), 
        .QN(n105) );
  FD1S l_id_reg_1_ ( .D(n357), .TI(n511), .TE(test_se), .CP(n135), .Q(n510), 
        .QN(n106) );
  FD1S l_id_reg_0_ ( .D(n356), .TI(n512), .TE(test_se), .CP(n135), .Q(n511), 
        .QN(n107) );
  FD1S l_last_reg ( .D(n355), .TI(n508), .TE(test_se), .CP(n135), .Q(n507), 
        .QN(n103) );
  FD1S l_start_reg ( .D(n354), .TI(n322), .TE(test_se), .CP(n135), .Q(n486), 
        .QN(n95) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n137), 
        .Q(b2x_cmd[1]), .QN(n400) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n137), .Q(
        b2x_cmd[0]), .QN(n324) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n108), .TE(test_se), .CP(n137), .Q(n484), 
        .QN(n79) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n484), .TE(test_se), .CP(n137), .Q(n483), 
        .QN(n126) );
  FD1S l_sdr_dma_last_reg ( .D(n394), .TI(n487), .TE(test_se), .CP(n132), .Q(
        n322), .QN(n128) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr_3_), .TE(test_se), .CP(n137), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr_1_), .TE(test_se), .CP(n137), 
        .Q(tras_cntr_2_) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(test_si4), .TE(test_se), .CP(n137), .Q(
        tras_cntr_1_) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n482), .TE(test_se), .CP(n137), .Q(
        test_so3) );
  FD1S tras_cntr_reg_3_ ( .D(n338), .TI(tras_cntr_2_), .TE(test_se), .CP(n137), 
        .Q(tras_cntr_3_) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n137), .Q(
        timer0[3]), .QN(n129) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n483), .TE(test_se), .CP(n138), .Q(
        timer0[2]), .QN(n130) );
  IVP U6 ( .A(n139), .Z(n137) );
  IVP U80 ( .A(n140), .Z(n134) );
  IVP U81 ( .A(n140), .Z(n133) );
  IVP U82 ( .A(n139), .Z(n136) );
  IVP U83 ( .A(n140), .Z(n135) );
  IVP U84 ( .A(n139), .Z(n138) );
  IVP U85 ( .A(n142), .Z(n140) );
  IVP U86 ( .A(n142), .Z(n139) );
  IVP U87 ( .A(n141), .Z(n132) );
  IVP U88 ( .A(n142), .Z(n141) );
  IVP U89 ( .A(n143), .Z(n142) );
  IVP U90 ( .A(clk), .Z(n143) );
  IV U91 ( .A(n144), .Z(n338) );
  AO2 U92 ( .A(tras_cntr_3_), .B(n145), .C(tras_delay[3]), .D(n146), .Z(n144)
         );
  NR2 U93 ( .A(n147), .B(n148), .Z(n145) );
  AO1 U94 ( .A(n323), .B(n149), .C(n150), .D(n151), .Z(n339) );
  ND2 U95 ( .A(n152), .B(n153), .Z(n150) );
  MUX21L U96 ( .A(n154), .B(n329), .S(n155), .Z(n340) );
  IV U97 ( .A(b2x_addr[0]), .Z(n154) );
  MUX21L U98 ( .A(n156), .B(n337), .S(n155), .Z(n341) );
  IV U99 ( .A(b2x_addr[11]), .Z(n156) );
  MUX21L U100 ( .A(n325), .B(n157), .S(n158), .Z(n342) );
  IV U101 ( .A(b2x_addr[1]), .Z(n157) );
  MUX21L U102 ( .A(n159), .B(n330), .S(n155), .Z(n343) );
  IV U103 ( .A(b2x_addr[2]), .Z(n159) );
  MUX21L U104 ( .A(n160), .B(n331), .S(n155), .Z(n344) );
  IV U105 ( .A(b2x_addr[3]), .Z(n160) );
  MUX21L U106 ( .A(n326), .B(n161), .S(n158), .Z(n345) );
  IV U107 ( .A(b2x_addr[4]), .Z(n161) );
  MUX21L U108 ( .A(n327), .B(n162), .S(n158), .Z(n346) );
  IV U109 ( .A(b2x_addr[5]), .Z(n162) );
  MUX21L U110 ( .A(n163), .B(n328), .S(n155), .Z(n347) );
  IV U111 ( .A(b2x_addr[6]), .Z(n163) );
  MUX21L U112 ( .A(n333), .B(n164), .S(n158), .Z(n348) );
  IV U113 ( .A(b2x_addr[7]), .Z(n164) );
  MUX21L U114 ( .A(n334), .B(n165), .S(n158), .Z(n349) );
  IV U115 ( .A(b2x_addr[8]), .Z(n165) );
  MUX21L U116 ( .A(n332), .B(n166), .S(n158), .Z(n350) );
  IV U117 ( .A(b2x_addr[9]), .Z(n166) );
  MUX21L U118 ( .A(n1), .B(n335), .S(n155), .Z(n351) );
  MUX21L U119 ( .A(n2), .B(n336), .S(n155), .Z(n352) );
  AO4 U120 ( .A(n125), .B(n167), .C(n168), .D(n169), .Z(n353) );
  IV U121 ( .A(r2b_caddr[0]), .Z(n168) );
  AO4 U122 ( .A(n169), .B(n170), .C(n167), .D(n95), .Z(n354) );
  AO4 U123 ( .A(n169), .B(n171), .C(n167), .D(n103), .Z(n355) );
  AO4 U124 ( .A(n169), .B(n172), .C(n167), .D(n107), .Z(n356) );
  AO4 U125 ( .A(n169), .B(n173), .C(n167), .D(n106), .Z(n357) );
  AO4 U126 ( .A(n169), .B(n174), .C(n167), .D(n105), .Z(n358) );
  AO4 U127 ( .A(n169), .B(n175), .C(n167), .D(n104), .Z(n359) );
  AO4 U128 ( .A(n169), .B(n176), .C(n167), .D(n102), .Z(n360) );
  AO4 U129 ( .A(n169), .B(n177), .C(n167), .D(n101), .Z(n361) );
  AO4 U130 ( .A(n169), .B(n178), .C(n167), .D(n100), .Z(n362) );
  AO4 U131 ( .A(n169), .B(n179), .C(n167), .D(n99), .Z(n363) );
  AO4 U132 ( .A(n169), .B(n180), .C(n167), .D(n98), .Z(n364) );
  AO4 U133 ( .A(n169), .B(n181), .C(n167), .D(n97), .Z(n365) );
  AO4 U134 ( .A(n169), .B(n182), .C(n167), .D(n96), .Z(n366) );
  AO4 U135 ( .A(n169), .B(n183), .C(n167), .D(n94), .Z(n367) );
  AO4 U136 ( .A(n169), .B(n184), .C(n395), .D(n167), .Z(n368) );
  AO4 U137 ( .A(n169), .B(n185), .C(n93), .D(n167), .Z(n369) );
  AO4 U138 ( .A(n169), .B(n186), .C(n91), .D(n167), .Z(n370) );
  IV U139 ( .A(r2b_raddr[1]), .Z(n186) );
  AO4 U140 ( .A(n169), .B(n187), .C(n90), .D(n167), .Z(n371) );
  AO4 U141 ( .A(n169), .B(n188), .C(n89), .D(n167), .Z(n372) );
  AO4 U142 ( .A(n169), .B(n189), .C(n88), .D(n167), .Z(n373) );
  IV U143 ( .A(r2b_raddr[4]), .Z(n189) );
  AO4 U144 ( .A(n169), .B(n190), .C(n87), .D(n167), .Z(n374) );
  IV U145 ( .A(r2b_raddr[5]), .Z(n190) );
  AO4 U146 ( .A(n169), .B(n191), .C(n86), .D(n167), .Z(n375) );
  AO4 U147 ( .A(n169), .B(n192), .C(n85), .D(n167), .Z(n376) );
  IV U148 ( .A(r2b_raddr[7]), .Z(n192) );
  AO4 U149 ( .A(n169), .B(n193), .C(n83), .D(n167), .Z(n377) );
  IV U150 ( .A(r2b_raddr[8]), .Z(n193) );
  AO4 U151 ( .A(n169), .B(n194), .C(n81), .D(n167), .Z(n378) );
  IV U152 ( .A(r2b_raddr[9]), .Z(n194) );
  AO4 U153 ( .A(n169), .B(n195), .C(n2), .D(n167), .Z(n379) );
  AO4 U154 ( .A(n169), .B(n196), .C(n92), .D(n167), .Z(n380) );
  AO4 U155 ( .A(n169), .B(n197), .C(n1), .D(n167), .Z(n381) );
  AO4 U156 ( .A(n121), .B(n167), .C(n198), .D(n169), .Z(n382) );
  IV U157 ( .A(r2b_caddr[1]), .Z(n198) );
  AO4 U158 ( .A(n120), .B(n167), .C(n199), .D(n169), .Z(n383) );
  IV U159 ( .A(r2b_caddr[2]), .Z(n199) );
  AO4 U160 ( .A(n119), .B(n167), .C(n200), .D(n169), .Z(n384) );
  IV U161 ( .A(r2b_caddr[3]), .Z(n200) );
  AO4 U162 ( .A(n118), .B(n167), .C(n201), .D(n169), .Z(n385) );
  IV U163 ( .A(r2b_caddr[4]), .Z(n201) );
  AO4 U164 ( .A(n117), .B(n167), .C(n202), .D(n169), .Z(n386) );
  IV U165 ( .A(r2b_caddr[5]), .Z(n202) );
  AO4 U166 ( .A(n116), .B(n167), .C(n203), .D(n169), .Z(n387) );
  IV U167 ( .A(r2b_caddr[6]), .Z(n203) );
  AO4 U168 ( .A(n115), .B(n167), .C(n204), .D(n169), .Z(n388) );
  IV U169 ( .A(r2b_caddr[7]), .Z(n204) );
  AO4 U170 ( .A(n114), .B(n167), .C(n205), .D(n169), .Z(n389) );
  IV U171 ( .A(r2b_caddr[8]), .Z(n205) );
  AO4 U172 ( .A(n113), .B(n167), .C(n206), .D(n169), .Z(n390) );
  IV U173 ( .A(r2b_caddr[9]), .Z(n206) );
  AO4 U174 ( .A(n167), .B(n124), .C(n207), .D(n169), .Z(n391) );
  IV U175 ( .A(r2b_caddr[10]), .Z(n207) );
  AO4 U176 ( .A(n123), .B(n167), .C(n208), .D(n169), .Z(n392) );
  IV U177 ( .A(r2b_caddr[11]), .Z(n208) );
  AO4 U178 ( .A(n167), .B(n122), .C(n209), .D(n169), .Z(n393) );
  IV U179 ( .A(r2b_caddr[12]), .Z(n209) );
  AO4 U180 ( .A(n167), .B(n128), .C(n210), .D(n169), .Z(n394) );
  IV U181 ( .A(sdr_dma_last), .Z(n210) );
  ND2 U182 ( .A(reset_n), .B(n169), .Z(n167) );
  MUX21L U183 ( .A(n183), .B(n94), .S(n211), .Z(b2x_wrap) );
  IV U184 ( .A(r2b_wrap), .Z(n183) );
  MUX21L U185 ( .A(n170), .B(n95), .S(n211), .Z(b2x_start) );
  IV U186 ( .A(r2b_start), .Z(n170) );
  AO4 U187 ( .A(n212), .B(n399), .C(n318), .D(n213), .Z(b2x_req) );
  ND2 U188 ( .A(tras_ok), .B(n214), .Z(n213) );
  AO2 U189 ( .A(n215), .B(n216), .C(x2b_act_ok_r_0_), .D(n158), .Z(n212) );
  MUX21L U190 ( .A(n321), .B(n320), .S(n108), .Z(n216) );
  NR2 U191 ( .A(n217), .B(n319), .Z(n215) );
  MUX21L U192 ( .A(n182), .B(n96), .S(n211), .Z(b2x_len[6]) );
  IV U193 ( .A(r2b_len[6]), .Z(n182) );
  MUX21L U194 ( .A(n181), .B(n97), .S(n211), .Z(b2x_len[5]) );
  IV U195 ( .A(r2b_len[5]), .Z(n181) );
  MUX21L U196 ( .A(n180), .B(n98), .S(n211), .Z(b2x_len[4]) );
  IV U197 ( .A(r2b_len[4]), .Z(n180) );
  MUX21L U198 ( .A(n179), .B(n99), .S(n211), .Z(b2x_len[3]) );
  IV U199 ( .A(r2b_len[3]), .Z(n179) );
  MUX21L U200 ( .A(n178), .B(n100), .S(n211), .Z(b2x_len[2]) );
  IV U201 ( .A(r2b_len[2]), .Z(n178) );
  MUX21L U202 ( .A(n177), .B(n101), .S(n211), .Z(b2x_len[1]) );
  IV U203 ( .A(r2b_len[1]), .Z(n177) );
  MUX21L U204 ( .A(n176), .B(n102), .S(n211), .Z(b2x_len[0]) );
  IV U205 ( .A(r2b_len[0]), .Z(n176) );
  MUX21L U206 ( .A(n171), .B(n103), .S(n211), .Z(b2x_last) );
  IV U207 ( .A(r2b_last), .Z(n171) );
  MUX21L U208 ( .A(n175), .B(n104), .S(n211), .Z(b2x_id[3]) );
  IV U209 ( .A(r2b_req_id[3]), .Z(n175) );
  MUX21L U210 ( .A(n174), .B(n105), .S(n211), .Z(b2x_id[2]) );
  IV U211 ( .A(r2b_req_id[2]), .Z(n174) );
  MUX21L U212 ( .A(n173), .B(n106), .S(n211), .Z(b2x_id[1]) );
  IV U213 ( .A(r2b_req_id[1]), .Z(n173) );
  MUX21L U214 ( .A(n172), .B(n107), .S(n211), .Z(b2x_id[0]) );
  IV U215 ( .A(r2b_req_id[0]), .Z(n172) );
  AO4 U216 ( .A(n217), .B(n113), .C(n218), .D(n81), .Z(b2x_addr[9]) );
  AO4 U217 ( .A(n217), .B(n114), .C(n218), .D(n83), .Z(b2x_addr[8]) );
  AO4 U218 ( .A(n217), .B(n115), .C(n218), .D(n85), .Z(b2x_addr[7]) );
  AO4 U219 ( .A(n217), .B(n116), .C(n218), .D(n86), .Z(b2x_addr[6]) );
  AO4 U220 ( .A(n217), .B(n117), .C(n218), .D(n87), .Z(b2x_addr[5]) );
  AO4 U221 ( .A(n217), .B(n118), .C(n218), .D(n88), .Z(b2x_addr[4]) );
  AO4 U222 ( .A(n217), .B(n119), .C(n218), .D(n89), .Z(b2x_addr[3]) );
  AO4 U223 ( .A(n217), .B(n120), .C(n218), .D(n90), .Z(b2x_addr[2]) );
  AO4 U224 ( .A(n217), .B(n121), .C(n218), .D(n91), .Z(b2x_addr[1]) );
  AO4 U225 ( .A(n217), .B(n122), .C(n155), .D(n1), .Z(b2x_addr[12]) );
  AO4 U226 ( .A(n217), .B(n123), .C(n218), .D(n92), .Z(b2x_addr[11]) );
  AO4 U227 ( .A(n217), .B(n124), .C(n155), .D(n2), .Z(b2x_addr[10]) );
  IV U228 ( .A(n158), .Z(n155) );
  AO4 U229 ( .A(n217), .B(n125), .C(n218), .D(n93), .Z(b2x_addr[0]) );
  AO6 U230 ( .A(n219), .B(n220), .C(n151), .Z(N83) );
  MUX21L U231 ( .A(n221), .B(n222), .S(n223), .Z(n219) );
  AN3 U232 ( .A(n322), .B(n153), .C(n224), .Z(n221) );
  AO4 U233 ( .A(n169), .B(n225), .C(n226), .D(n151), .Z(N82) );
  AO1 U234 ( .A(n224), .B(n227), .C(n228), .D(n158), .Z(n226) );
  AO4 U235 ( .A(n223), .B(n229), .C(n397), .D(n220), .Z(n228) );
  ND2 U236 ( .A(x2b_ack), .B(n153), .Z(n227) );
  IV U237 ( .A(x2b_refresh), .Z(n153) );
  AO7 U238 ( .A(n230), .B(n151), .C(n169), .Z(N81) );
  ND2 U239 ( .A(b2r_ack), .B(reset_n), .Z(n169) );
  NR2 U240 ( .A(n231), .B(n211), .Z(b2r_ack) );
  IV U241 ( .A(r2b_req), .Z(n231) );
  IV U242 ( .A(n232), .Z(n230) );
  AO7 U243 ( .A(n220), .B(n396), .C(n233), .Z(n232) );
  MUX21L U244 ( .A(n158), .B(n234), .S(n223), .Z(n233) );
  AO7 U245 ( .A(n217), .B(x2b_refresh), .C(n229), .Z(n234) );
  ND3 U246 ( .A(n211), .B(n217), .C(n218), .Z(n220) );
  NR2 U247 ( .A(n214), .B(n158), .Z(n218) );
  ND2 U248 ( .A(n152), .B(n229), .Z(n214) );
  ND3 U249 ( .A(n397), .B(n80), .C(n398), .Z(n229) );
  IV U250 ( .A(n222), .Z(n152) );
  NR3 U251 ( .A(test_so1), .B(n398), .C(n80), .Z(n222) );
  AO4 U252 ( .A(n129), .B(n235), .C(n236), .D(n151), .Z(N80) );
  AO11 U253 ( .A(trp_delay[3]), .B(n237), .C(n238), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n239), .Z(n236) );
  AN2 U254 ( .A(n240), .B(timer0[2]), .Z(n238) );
  AO4 U255 ( .A(n130), .B(n235), .C(n241), .D(n151), .Z(N79) );
  AO11 U256 ( .A(trp_delay[2]), .B(n237), .C(n242), .D(n240), .E(trcd_delay[2]), .F(n239), .Z(n241) );
  NR2 U257 ( .A(timer0[2]), .B(n243), .Z(n242) );
  ND3 U258 ( .A(reset_n), .B(n243), .C(n240), .Z(n235) );
  AO6 U259 ( .A(n244), .B(n245), .C(n151), .Z(N78) );
  ND2 U260 ( .A(trp_delay[1]), .B(n237), .Z(n245) );
  AO2 U261 ( .A(n240), .B(n246), .C(trcd_delay[1]), .D(n239), .Z(n244) );
  AO7 U262 ( .A(n126), .B(n79), .C(n243), .Z(n246) );
  AO6 U263 ( .A(n247), .B(n248), .C(n151), .Z(N77) );
  ND2 U264 ( .A(trp_delay[0]), .B(n237), .Z(n248) );
  AO2 U265 ( .A(n240), .B(n79), .C(trcd_delay[0]), .D(n239), .Z(n247) );
  NR3 U266 ( .A(n237), .B(n239), .C(n249), .Z(n240) );
  IV U267 ( .A(n250), .Z(n249) );
  EON1 U268 ( .A(n251), .B(n147), .C(tras_delay[2]), .D(n146), .Z(N75) );
  AO6 U269 ( .A(tras_cntr_2_), .B(n252), .C(n148), .Z(n251) );
  EON1 U270 ( .A(n253), .B(n147), .C(tras_delay[1]), .D(n146), .Z(N74) );
  AO6 U271 ( .A(tras_cntr_1_), .B(test_so3), .C(n254), .Z(n253) );
  EON1 U272 ( .A(test_so3), .B(n147), .C(tras_delay[0]), .D(n146), .Z(N73) );
  NR2 U273 ( .A(n149), .B(n151), .Z(n146) );
  AO3 U274 ( .A(tras_cntr_3_), .B(n255), .C(n149), .D(reset_n), .Z(n147) );
  IV U275 ( .A(n239), .Z(n149) );
  AN2 U276 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U277 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U278 ( .A(n151), .B(tras_cntr_3_), .C(n255), .Z(N40) );
  IV U279 ( .A(n148), .Z(n255) );
  NR2 U280 ( .A(n252), .B(tras_cntr_2_), .Z(n148) );
  IV U281 ( .A(n254), .Z(n252) );
  NR2 U282 ( .A(tras_cntr_1_), .B(test_so3), .Z(n254) );
  NR4 U283 ( .A(n239), .B(n237), .C(n151), .D(n250), .Z(N39) );
  OR3 U284 ( .A(timer0[2]), .B(timer0[3]), .C(n243), .Z(n250) );
  ND2 U285 ( .A(n126), .B(n79), .Z(n243) );
  AN3 U286 ( .A(x2b_ack), .B(n400), .C(n324), .Z(n237) );
  NR3 U287 ( .A(b2x_cmd[1]), .B(n324), .C(n223), .Z(n239) );
  IV U288 ( .A(x2b_ack), .Z(n223) );
  AN2 U289 ( .A(n256), .B(reset_n), .Z(N38) );
  AO7 U290 ( .A(n225), .B(n211), .C(n217), .Z(n256) );
  IV U291 ( .A(n224), .Z(n217) );
  NR2 U292 ( .A(n257), .B(n151), .Z(N37) );
  IV U293 ( .A(reset_n), .Z(n151) );
  AO1 U294 ( .A(n224), .B(n108), .C(n158), .D(n258), .Z(n257) );
  NR3 U295 ( .A(n225), .B(n211), .C(n184), .Z(n258) );
  IV U296 ( .A(r2b_write), .Z(n184) );
  ND3 U297 ( .A(n396), .B(n397), .C(n398), .Z(n211) );
  ND2 U298 ( .A(n259), .B(n260), .Z(n225) );
  NR4 U299 ( .A(n261), .B(n262), .C(n305), .D(n306), .Z(n260) );
  EN U300 ( .A(n334), .B(r2b_raddr[8]), .Z(n306) );
  EN U301 ( .A(n332), .B(r2b_raddr[9]), .Z(n305) );
  EN U302 ( .A(n333), .B(r2b_raddr[7]), .Z(n262) );
  ND4 U303 ( .A(n307), .B(n308), .C(n309), .D(n131), .Z(n261) );
  EN U304 ( .A(n196), .B(n337), .Z(n309) );
  IV U305 ( .A(r2b_raddr[11]), .Z(n196) );
  EN U306 ( .A(n195), .B(n336), .Z(n308) );
  IV U307 ( .A(r2b_raddr[10]), .Z(n195) );
  EN U308 ( .A(n197), .B(n335), .Z(n307) );
  IV U309 ( .A(r2b_raddr[12]), .Z(n197) );
  NR4 U310 ( .A(n310), .B(n311), .C(n312), .D(n313), .Z(n259) );
  EN U311 ( .A(n327), .B(r2b_raddr[5]), .Z(n313) );
  EN U312 ( .A(n325), .B(r2b_raddr[1]), .Z(n312) );
  EN U313 ( .A(n326), .B(r2b_raddr[4]), .Z(n311) );
  ND4 U314 ( .A(n314), .B(n315), .C(n316), .D(n317), .Z(n310) );
  EN U315 ( .A(n188), .B(n331), .Z(n317) );
  IV U316 ( .A(r2b_raddr[3]), .Z(n188) );
  EN U317 ( .A(n187), .B(n330), .Z(n316) );
  IV U318 ( .A(r2b_raddr[2]), .Z(n187) );
  EN U319 ( .A(n185), .B(n329), .Z(n315) );
  IV U320 ( .A(r2b_raddr[0]), .Z(n185) );
  EN U321 ( .A(n191), .B(n328), .Z(n314) );
  IV U322 ( .A(r2b_raddr[6]), .Z(n191) );
  AN3 U323 ( .A(n396), .B(test_so1), .C(n398), .Z(n158) );
  AN3 U324 ( .A(test_so1), .B(n80), .C(n398), .Z(n224) );
  AN2 U325 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U326 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U327 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_2 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so4, test_so3, 
        test_so2, test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [6:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [6:0] b2x_len;
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
         N74, N75, N77, N78, N79, N80, N81, N82, N83, n1, n2, n79, n81, n83,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n479, n480, n481, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525;
  wire   [3:2] timer0;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n132), .Q(n481), .QN(n318) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n480), .TE(test_se), .CP(n138), .Q(n479), 
        .QN(n320) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n479), .TE(test_se), .CP(n132), .Q(test_so4), .QN(n319) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n481), .TE(test_se), .CP(n138), .Q(n480), 
        .QN(n321) );
  FD1S bank_row_reg_0_ ( .D(n340), .TI(b2x_cmd[1]), .TE(test_se), .CP(n136), 
        .Q(bank_row[0]), .QN(n329) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(test_si2), .TE(test_se), .CP(n132), .Q(
        n112), .QN(n397) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n132), 
        .Q(test_so1), .QN(n396) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n112), .TE(test_se), .CP(n132), .Q(n525), 
        .QN(n398) );
  FD1S l_write_reg ( .D(n368), .TI(n485), .TE(test_se), .CP(n134), .Q(n108), 
        .QN(n395) );
  FD1S bank_row_reg_10_ ( .D(n352), .TI(bank_row[9]), .TE(test_se), .CP(n135), 
        .Q(bank_row[10]), .QN(n336) );
  FD1S bank_row_reg_12_ ( .D(n351), .TI(bank_row[11]), .TE(test_se), .CP(n136), 
        .Q(bank_row[12]), .QN(n335) );
  FD1S bank_row_reg_9_ ( .D(n350), .TI(bank_row[8]), .TE(test_se), .CP(n136), 
        .Q(bank_row[9]), .QN(n332) );
  FD1S bank_row_reg_8_ ( .D(n349), .TI(bank_row[7]), .TE(test_se), .CP(n136), 
        .Q(bank_row[8]), .QN(n334) );
  FD1S bank_row_reg_7_ ( .D(n348), .TI(bank_row[6]), .TE(test_se), .CP(n136), 
        .Q(bank_row[7]), .QN(n333) );
  FD1S bank_row_reg_6_ ( .D(n347), .TI(bank_row[5]), .TE(test_se), .CP(n136), 
        .Q(bank_row[6]), .QN(n328) );
  FD1S bank_row_reg_5_ ( .D(n346), .TI(bank_row[4]), .TE(test_se), .CP(n136), 
        .Q(bank_row[5]), .QN(n327) );
  FD1S bank_row_reg_4_ ( .D(n345), .TI(bank_row[3]), .TE(test_se), .CP(n136), 
        .Q(bank_row[4]), .QN(n326) );
  FD1S bank_row_reg_3_ ( .D(n344), .TI(bank_row[2]), .TE(test_se), .CP(n136), 
        .Q(bank_row[3]), .QN(n331) );
  FD1S bank_row_reg_2_ ( .D(n343), .TI(bank_row[1]), .TE(test_se), .CP(n136), 
        .Q(bank_row[2]), .QN(n330) );
  FD1S bank_row_reg_1_ ( .D(n342), .TI(bank_row[0]), .TE(test_se), .CP(n136), 
        .Q(bank_row[1]), .QN(n325) );
  FD1S bank_row_reg_11_ ( .D(n341), .TI(bank_row[10]), .TE(test_se), .CP(n136), 
        .Q(bank_row[11]), .QN(n337) );
  FD1S bank_valid_reg ( .D(n339), .TI(n525), .TE(test_se), .CP(n137), .Q(n131), 
        .QN(n323) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n137), 
        .Q(test_so3), .QN(n399) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n138), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n353), .TI(n131), .TE(test_se), .CP(n135), .Q(n524), 
        .QN(n125) );
  FD1S l_caddr_reg_12_ ( .D(n393), .TI(n513), .TE(test_se), .CP(n132), .Q(n512), .QN(n122) );
  FD1S l_caddr_reg_11_ ( .D(n392), .TI(n514), .TE(test_se), .CP(n132), .Q(n513), .QN(n123) );
  FD1S l_caddr_reg_10_ ( .D(n391), .TI(n515), .TE(test_se), .CP(n132), .Q(n514), .QN(n124) );
  FD1S l_caddr_reg_9_ ( .D(n390), .TI(n516), .TE(test_se), .CP(n132), .Q(n515), 
        .QN(n113) );
  FD1S l_caddr_reg_8_ ( .D(n389), .TI(n517), .TE(test_se), .CP(n132), .Q(n516), 
        .QN(n114) );
  FD1S l_caddr_reg_7_ ( .D(n388), .TI(n518), .TE(test_se), .CP(n132), .Q(n517), 
        .QN(n115) );
  FD1S l_caddr_reg_6_ ( .D(n387), .TI(n519), .TE(test_se), .CP(n133), .Q(n518), 
        .QN(n116) );
  FD1S l_caddr_reg_5_ ( .D(n386), .TI(n520), .TE(test_se), .CP(n133), .Q(n519), 
        .QN(n117) );
  FD1S l_caddr_reg_4_ ( .D(n385), .TI(n521), .TE(test_se), .CP(n133), .Q(n520), 
        .QN(n118) );
  FD1S l_caddr_reg_3_ ( .D(n384), .TI(n522), .TE(test_se), .CP(n133), .Q(n521), 
        .QN(n119) );
  FD1S l_caddr_reg_2_ ( .D(n383), .TI(n523), .TE(test_se), .CP(n133), .Q(n522), 
        .QN(n120) );
  FD1S l_caddr_reg_1_ ( .D(n382), .TI(n524), .TE(test_se), .CP(n133), .Q(n523), 
        .QN(n121) );
  FD1S l_raddr_reg_12_ ( .D(n381), .TI(n488), .TE(test_se), .CP(n133), .Q(n487), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n380), .TI(n489), .TE(test_se), .CP(n133), .Q(n488), .QN(n92) );
  FD1S l_raddr_reg_10_ ( .D(n379), .TI(n490), .TE(test_se), .CP(n133), .Q(n489), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n378), .TI(n491), .TE(test_se), .CP(n133), .Q(n490), 
        .QN(n81) );
  FD1S l_raddr_reg_8_ ( .D(n377), .TI(n492), .TE(test_se), .CP(n133), .Q(n491), 
        .QN(n83) );
  FD1S l_raddr_reg_7_ ( .D(n376), .TI(n493), .TE(test_se), .CP(n133), .Q(n492), 
        .QN(n85) );
  FD1S l_raddr_reg_6_ ( .D(n375), .TI(n494), .TE(test_se), .CP(n134), .Q(n493), 
        .QN(n86) );
  FD1S l_raddr_reg_5_ ( .D(n374), .TI(n495), .TE(test_se), .CP(n134), .Q(n494), 
        .QN(n87) );
  FD1S l_raddr_reg_4_ ( .D(n373), .TI(n496), .TE(test_se), .CP(n134), .Q(n495), 
        .QN(n88) );
  FD1S l_raddr_reg_3_ ( .D(n372), .TI(n497), .TE(test_se), .CP(n134), .Q(n496), 
        .QN(n89) );
  FD1S l_raddr_reg_2_ ( .D(n371), .TI(n498), .TE(test_se), .CP(n134), .Q(n497), 
        .QN(n90) );
  FD1S l_raddr_reg_1_ ( .D(n370), .TI(n499), .TE(test_se), .CP(n134), .Q(n498), 
        .QN(n91) );
  FD1S l_raddr_reg_0_ ( .D(n369), .TI(n500), .TE(test_se), .CP(n134), .Q(n499), 
        .QN(n93) );
  FD1S l_wrap_reg ( .D(n367), .TI(n486), .TE(test_se), .CP(n134), .Q(n485), 
        .QN(n94) );
  FD1S l_len_reg_6_ ( .D(n366), .TI(n501), .TE(test_se), .CP(n134), .Q(n500), 
        .QN(n96) );
  FD1S l_len_reg_5_ ( .D(n365), .TI(n502), .TE(test_se), .CP(n134), .Q(n501), 
        .QN(n97) );
  FD1S l_len_reg_4_ ( .D(n364), .TI(test_si3), .TE(test_se), .CP(n134), .Q(
        n502), .QN(n98) );
  FD1S l_len_reg_3_ ( .D(n363), .TI(n504), .TE(test_se), .CP(n135), .Q(
        test_so2), .QN(n99) );
  FD1S l_len_reg_2_ ( .D(n362), .TI(n505), .TE(test_se), .CP(n135), .Q(n504), 
        .QN(n100) );
  FD1S l_len_reg_1_ ( .D(n361), .TI(n506), .TE(test_se), .CP(n135), .Q(n505), 
        .QN(n101) );
  FD1S l_len_reg_0_ ( .D(n360), .TI(n507), .TE(test_se), .CP(n135), .Q(n506), 
        .QN(n102) );
  FD1S l_id_reg_3_ ( .D(n359), .TI(n509), .TE(test_se), .CP(n135), .Q(n508), 
        .QN(n104) );
  FD1S l_id_reg_2_ ( .D(n358), .TI(n510), .TE(test_se), .CP(n135), .Q(n509), 
        .QN(n105) );
  FD1S l_id_reg_1_ ( .D(n357), .TI(n511), .TE(test_se), .CP(n135), .Q(n510), 
        .QN(n106) );
  FD1S l_id_reg_0_ ( .D(n356), .TI(n512), .TE(test_se), .CP(n135), .Q(n511), 
        .QN(n107) );
  FD1S l_last_reg ( .D(n355), .TI(n508), .TE(test_se), .CP(n135), .Q(n507), 
        .QN(n103) );
  FD1S l_start_reg ( .D(n354), .TI(n322), .TE(test_se), .CP(n135), .Q(n486), 
        .QN(n95) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n137), 
        .Q(b2x_cmd[1]), .QN(n400) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n137), .Q(
        b2x_cmd[0]), .QN(n324) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n108), .TE(test_se), .CP(n137), .Q(n484), 
        .QN(n79) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n484), .TE(test_se), .CP(n137), .Q(n483), 
        .QN(n126) );
  FD1S l_sdr_dma_last_reg ( .D(n394), .TI(n487), .TE(test_se), .CP(n132), .Q(
        n322), .QN(n128) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n137), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n137), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n137), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(test_si4), .TE(test_se), .CP(n137), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n338), .TI(tras_cntr[2]), .TE(test_se), .CP(n137), 
        .Q(tras_cntr[3]) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0[2]), .TE(test_se), .CP(n137), .Q(
        timer0[3]), .QN(n129) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n483), .TE(test_se), .CP(n138), .Q(
        timer0[2]), .QN(n130) );
  IVP U6 ( .A(n139), .Z(n137) );
  IVP U80 ( .A(n140), .Z(n134) );
  IVP U81 ( .A(n140), .Z(n133) );
  IVP U82 ( .A(n139), .Z(n136) );
  IVP U83 ( .A(n140), .Z(n135) );
  IVP U84 ( .A(n139), .Z(n138) );
  IVP U85 ( .A(n142), .Z(n140) );
  IVP U86 ( .A(n142), .Z(n139) );
  IVP U87 ( .A(n141), .Z(n132) );
  IVP U88 ( .A(n142), .Z(n141) );
  IVP U89 ( .A(n143), .Z(n142) );
  IVP U90 ( .A(clk), .Z(n143) );
  IV U91 ( .A(n144), .Z(n338) );
  AO2 U92 ( .A(tras_cntr[3]), .B(n145), .C(tras_delay[3]), .D(n146), .Z(n144)
         );
  NR2 U93 ( .A(n147), .B(n148), .Z(n145) );
  AO1 U94 ( .A(n323), .B(n149), .C(n150), .D(n151), .Z(n339) );
  ND2 U95 ( .A(n152), .B(n153), .Z(n150) );
  MUX21L U96 ( .A(n154), .B(n329), .S(n155), .Z(n340) );
  IV U97 ( .A(b2x_addr[0]), .Z(n154) );
  MUX21L U98 ( .A(n156), .B(n337), .S(n155), .Z(n341) );
  IV U99 ( .A(b2x_addr[11]), .Z(n156) );
  MUX21L U100 ( .A(n325), .B(n157), .S(n158), .Z(n342) );
  IV U101 ( .A(b2x_addr[1]), .Z(n157) );
  MUX21L U102 ( .A(n159), .B(n330), .S(n155), .Z(n343) );
  IV U103 ( .A(b2x_addr[2]), .Z(n159) );
  MUX21L U104 ( .A(n160), .B(n331), .S(n155), .Z(n344) );
  IV U105 ( .A(b2x_addr[3]), .Z(n160) );
  MUX21L U106 ( .A(n326), .B(n161), .S(n158), .Z(n345) );
  IV U107 ( .A(b2x_addr[4]), .Z(n161) );
  MUX21L U108 ( .A(n327), .B(n162), .S(n158), .Z(n346) );
  IV U109 ( .A(b2x_addr[5]), .Z(n162) );
  MUX21L U110 ( .A(n163), .B(n328), .S(n155), .Z(n347) );
  IV U111 ( .A(b2x_addr[6]), .Z(n163) );
  MUX21L U112 ( .A(n333), .B(n164), .S(n158), .Z(n348) );
  IV U113 ( .A(b2x_addr[7]), .Z(n164) );
  MUX21L U114 ( .A(n334), .B(n165), .S(n158), .Z(n349) );
  IV U115 ( .A(b2x_addr[8]), .Z(n165) );
  MUX21L U116 ( .A(n332), .B(n166), .S(n158), .Z(n350) );
  IV U117 ( .A(b2x_addr[9]), .Z(n166) );
  MUX21L U118 ( .A(n1), .B(n335), .S(n155), .Z(n351) );
  MUX21L U119 ( .A(n2), .B(n336), .S(n155), .Z(n352) );
  AO4 U120 ( .A(n125), .B(n167), .C(n168), .D(n169), .Z(n353) );
  IV U121 ( .A(r2b_caddr[0]), .Z(n168) );
  AO4 U122 ( .A(n169), .B(n170), .C(n167), .D(n95), .Z(n354) );
  AO4 U123 ( .A(n169), .B(n171), .C(n167), .D(n103), .Z(n355) );
  AO4 U124 ( .A(n169), .B(n172), .C(n167), .D(n107), .Z(n356) );
  AO4 U125 ( .A(n169), .B(n173), .C(n167), .D(n106), .Z(n357) );
  AO4 U126 ( .A(n169), .B(n174), .C(n167), .D(n105), .Z(n358) );
  AO4 U127 ( .A(n169), .B(n175), .C(n167), .D(n104), .Z(n359) );
  AO4 U128 ( .A(n169), .B(n176), .C(n167), .D(n102), .Z(n360) );
  AO4 U129 ( .A(n169), .B(n177), .C(n167), .D(n101), .Z(n361) );
  AO4 U130 ( .A(n169), .B(n178), .C(n167), .D(n100), .Z(n362) );
  AO4 U131 ( .A(n169), .B(n179), .C(n167), .D(n99), .Z(n363) );
  AO4 U132 ( .A(n169), .B(n180), .C(n167), .D(n98), .Z(n364) );
  AO4 U133 ( .A(n169), .B(n181), .C(n167), .D(n97), .Z(n365) );
  AO4 U134 ( .A(n169), .B(n182), .C(n167), .D(n96), .Z(n366) );
  AO4 U135 ( .A(n169), .B(n183), .C(n167), .D(n94), .Z(n367) );
  AO4 U136 ( .A(n169), .B(n184), .C(n395), .D(n167), .Z(n368) );
  AO4 U137 ( .A(n169), .B(n185), .C(n93), .D(n167), .Z(n369) );
  AO4 U138 ( .A(n169), .B(n186), .C(n91), .D(n167), .Z(n370) );
  IV U139 ( .A(r2b_raddr[1]), .Z(n186) );
  AO4 U140 ( .A(n169), .B(n187), .C(n90), .D(n167), .Z(n371) );
  AO4 U141 ( .A(n169), .B(n188), .C(n89), .D(n167), .Z(n372) );
  AO4 U142 ( .A(n169), .B(n189), .C(n88), .D(n167), .Z(n373) );
  IV U143 ( .A(r2b_raddr[4]), .Z(n189) );
  AO4 U144 ( .A(n169), .B(n190), .C(n87), .D(n167), .Z(n374) );
  IV U145 ( .A(r2b_raddr[5]), .Z(n190) );
  AO4 U146 ( .A(n169), .B(n191), .C(n86), .D(n167), .Z(n375) );
  AO4 U147 ( .A(n169), .B(n192), .C(n85), .D(n167), .Z(n376) );
  IV U148 ( .A(r2b_raddr[7]), .Z(n192) );
  AO4 U149 ( .A(n169), .B(n193), .C(n83), .D(n167), .Z(n377) );
  IV U150 ( .A(r2b_raddr[8]), .Z(n193) );
  AO4 U151 ( .A(n169), .B(n194), .C(n81), .D(n167), .Z(n378) );
  IV U152 ( .A(r2b_raddr[9]), .Z(n194) );
  AO4 U153 ( .A(n169), .B(n195), .C(n2), .D(n167), .Z(n379) );
  AO4 U154 ( .A(n169), .B(n196), .C(n92), .D(n167), .Z(n380) );
  AO4 U155 ( .A(n169), .B(n197), .C(n1), .D(n167), .Z(n381) );
  AO4 U156 ( .A(n121), .B(n167), .C(n198), .D(n169), .Z(n382) );
  IV U157 ( .A(r2b_caddr[1]), .Z(n198) );
  AO4 U158 ( .A(n120), .B(n167), .C(n199), .D(n169), .Z(n383) );
  IV U159 ( .A(r2b_caddr[2]), .Z(n199) );
  AO4 U160 ( .A(n119), .B(n167), .C(n200), .D(n169), .Z(n384) );
  IV U161 ( .A(r2b_caddr[3]), .Z(n200) );
  AO4 U162 ( .A(n118), .B(n167), .C(n201), .D(n169), .Z(n385) );
  IV U163 ( .A(r2b_caddr[4]), .Z(n201) );
  AO4 U164 ( .A(n117), .B(n167), .C(n202), .D(n169), .Z(n386) );
  IV U165 ( .A(r2b_caddr[5]), .Z(n202) );
  AO4 U166 ( .A(n116), .B(n167), .C(n203), .D(n169), .Z(n387) );
  IV U167 ( .A(r2b_caddr[6]), .Z(n203) );
  AO4 U168 ( .A(n115), .B(n167), .C(n204), .D(n169), .Z(n388) );
  IV U169 ( .A(r2b_caddr[7]), .Z(n204) );
  AO4 U170 ( .A(n114), .B(n167), .C(n205), .D(n169), .Z(n389) );
  IV U171 ( .A(r2b_caddr[8]), .Z(n205) );
  AO4 U172 ( .A(n113), .B(n167), .C(n206), .D(n169), .Z(n390) );
  IV U173 ( .A(r2b_caddr[9]), .Z(n206) );
  AO4 U174 ( .A(n167), .B(n124), .C(n207), .D(n169), .Z(n391) );
  IV U175 ( .A(r2b_caddr[10]), .Z(n207) );
  AO4 U176 ( .A(n123), .B(n167), .C(n208), .D(n169), .Z(n392) );
  IV U177 ( .A(r2b_caddr[11]), .Z(n208) );
  AO4 U178 ( .A(n167), .B(n122), .C(n209), .D(n169), .Z(n393) );
  IV U179 ( .A(r2b_caddr[12]), .Z(n209) );
  AO4 U180 ( .A(n167), .B(n128), .C(n210), .D(n169), .Z(n394) );
  IV U181 ( .A(sdr_dma_last), .Z(n210) );
  ND2 U182 ( .A(reset_n), .B(n169), .Z(n167) );
  MUX21L U183 ( .A(n183), .B(n94), .S(n211), .Z(b2x_wrap) );
  IV U184 ( .A(r2b_wrap), .Z(n183) );
  MUX21L U185 ( .A(n170), .B(n95), .S(n211), .Z(b2x_start) );
  IV U186 ( .A(r2b_start), .Z(n170) );
  AO4 U187 ( .A(n212), .B(n399), .C(n318), .D(n213), .Z(b2x_req) );
  ND2 U188 ( .A(tras_ok), .B(n214), .Z(n213) );
  AO2 U189 ( .A(n215), .B(n216), .C(x2b_act_ok_r_0_), .D(n158), .Z(n212) );
  MUX21L U190 ( .A(n321), .B(n320), .S(n108), .Z(n216) );
  NR2 U191 ( .A(n217), .B(n319), .Z(n215) );
  MUX21L U192 ( .A(n182), .B(n96), .S(n211), .Z(b2x_len[6]) );
  IV U193 ( .A(r2b_len[6]), .Z(n182) );
  MUX21L U194 ( .A(n181), .B(n97), .S(n211), .Z(b2x_len[5]) );
  IV U195 ( .A(r2b_len[5]), .Z(n181) );
  MUX21L U196 ( .A(n180), .B(n98), .S(n211), .Z(b2x_len[4]) );
  IV U197 ( .A(r2b_len[4]), .Z(n180) );
  MUX21L U198 ( .A(n179), .B(n99), .S(n211), .Z(b2x_len[3]) );
  IV U199 ( .A(r2b_len[3]), .Z(n179) );
  MUX21L U200 ( .A(n178), .B(n100), .S(n211), .Z(b2x_len[2]) );
  IV U201 ( .A(r2b_len[2]), .Z(n178) );
  MUX21L U202 ( .A(n177), .B(n101), .S(n211), .Z(b2x_len[1]) );
  IV U203 ( .A(r2b_len[1]), .Z(n177) );
  MUX21L U204 ( .A(n176), .B(n102), .S(n211), .Z(b2x_len[0]) );
  IV U205 ( .A(r2b_len[0]), .Z(n176) );
  MUX21L U206 ( .A(n171), .B(n103), .S(n211), .Z(b2x_last) );
  IV U207 ( .A(r2b_last), .Z(n171) );
  MUX21L U208 ( .A(n175), .B(n104), .S(n211), .Z(b2x_id[3]) );
  IV U209 ( .A(r2b_req_id[3]), .Z(n175) );
  MUX21L U210 ( .A(n174), .B(n105), .S(n211), .Z(b2x_id[2]) );
  IV U211 ( .A(r2b_req_id[2]), .Z(n174) );
  MUX21L U212 ( .A(n173), .B(n106), .S(n211), .Z(b2x_id[1]) );
  IV U213 ( .A(r2b_req_id[1]), .Z(n173) );
  MUX21L U214 ( .A(n172), .B(n107), .S(n211), .Z(b2x_id[0]) );
  IV U215 ( .A(r2b_req_id[0]), .Z(n172) );
  AO4 U216 ( .A(n217), .B(n113), .C(n218), .D(n81), .Z(b2x_addr[9]) );
  AO4 U217 ( .A(n217), .B(n114), .C(n218), .D(n83), .Z(b2x_addr[8]) );
  AO4 U218 ( .A(n217), .B(n115), .C(n218), .D(n85), .Z(b2x_addr[7]) );
  AO4 U219 ( .A(n217), .B(n116), .C(n218), .D(n86), .Z(b2x_addr[6]) );
  AO4 U220 ( .A(n217), .B(n117), .C(n218), .D(n87), .Z(b2x_addr[5]) );
  AO4 U221 ( .A(n217), .B(n118), .C(n218), .D(n88), .Z(b2x_addr[4]) );
  AO4 U222 ( .A(n217), .B(n119), .C(n218), .D(n89), .Z(b2x_addr[3]) );
  AO4 U223 ( .A(n217), .B(n120), .C(n218), .D(n90), .Z(b2x_addr[2]) );
  AO4 U224 ( .A(n217), .B(n121), .C(n218), .D(n91), .Z(b2x_addr[1]) );
  AO4 U225 ( .A(n217), .B(n122), .C(n155), .D(n1), .Z(b2x_addr[12]) );
  AO4 U226 ( .A(n217), .B(n123), .C(n218), .D(n92), .Z(b2x_addr[11]) );
  AO4 U227 ( .A(n217), .B(n124), .C(n155), .D(n2), .Z(b2x_addr[10]) );
  IV U228 ( .A(n158), .Z(n155) );
  AO4 U229 ( .A(n217), .B(n125), .C(n218), .D(n93), .Z(b2x_addr[0]) );
  AO6 U230 ( .A(n219), .B(n220), .C(n151), .Z(N83) );
  MUX21L U231 ( .A(n221), .B(n222), .S(n223), .Z(n219) );
  AN3 U232 ( .A(n322), .B(n153), .C(n224), .Z(n221) );
  AO4 U233 ( .A(n169), .B(n225), .C(n226), .D(n151), .Z(N82) );
  AO1 U234 ( .A(n224), .B(n227), .C(n228), .D(n158), .Z(n226) );
  AO4 U235 ( .A(n223), .B(n229), .C(n397), .D(n220), .Z(n228) );
  ND2 U236 ( .A(x2b_ack), .B(n153), .Z(n227) );
  IV U237 ( .A(x2b_refresh), .Z(n153) );
  AO7 U238 ( .A(n230), .B(n151), .C(n169), .Z(N81) );
  ND2 U239 ( .A(b2r_ack), .B(reset_n), .Z(n169) );
  NR2 U240 ( .A(n231), .B(n211), .Z(b2r_ack) );
  IV U241 ( .A(r2b_req), .Z(n231) );
  IV U242 ( .A(n232), .Z(n230) );
  AO7 U243 ( .A(n220), .B(n396), .C(n233), .Z(n232) );
  MUX21L U244 ( .A(n158), .B(n234), .S(n223), .Z(n233) );
  AO7 U245 ( .A(n217), .B(x2b_refresh), .C(n229), .Z(n234) );
  ND3 U246 ( .A(n211), .B(n217), .C(n218), .Z(n220) );
  NR2 U247 ( .A(n214), .B(n158), .Z(n218) );
  ND2 U248 ( .A(n152), .B(n229), .Z(n214) );
  ND3 U249 ( .A(n397), .B(test_so1), .C(n398), .Z(n229) );
  IV U250 ( .A(n222), .Z(n152) );
  NR3 U251 ( .A(n112), .B(n398), .C(test_so1), .Z(n222) );
  AO4 U252 ( .A(n129), .B(n235), .C(n236), .D(n151), .Z(N80) );
  AO11 U253 ( .A(trp_delay[3]), .B(n237), .C(n238), .D(timer0[3]), .E(
        trcd_delay[3]), .F(n239), .Z(n236) );
  AN2 U254 ( .A(n240), .B(timer0[2]), .Z(n238) );
  AO4 U255 ( .A(n130), .B(n235), .C(n241), .D(n151), .Z(N79) );
  AO11 U256 ( .A(trp_delay[2]), .B(n237), .C(n242), .D(n240), .E(trcd_delay[2]), .F(n239), .Z(n241) );
  NR2 U257 ( .A(timer0[2]), .B(n243), .Z(n242) );
  ND3 U258 ( .A(reset_n), .B(n243), .C(n240), .Z(n235) );
  AO6 U259 ( .A(n244), .B(n245), .C(n151), .Z(N78) );
  ND2 U260 ( .A(trp_delay[1]), .B(n237), .Z(n245) );
  AO2 U261 ( .A(n240), .B(n246), .C(trcd_delay[1]), .D(n239), .Z(n244) );
  AO7 U262 ( .A(n126), .B(n79), .C(n243), .Z(n246) );
  AO6 U263 ( .A(n247), .B(n248), .C(n151), .Z(N77) );
  ND2 U264 ( .A(trp_delay[0]), .B(n237), .Z(n248) );
  AO2 U265 ( .A(n240), .B(n79), .C(trcd_delay[0]), .D(n239), .Z(n247) );
  NR3 U266 ( .A(n237), .B(n239), .C(n249), .Z(n240) );
  IV U267 ( .A(n250), .Z(n249) );
  EON1 U268 ( .A(n251), .B(n147), .C(tras_delay[2]), .D(n146), .Z(N75) );
  AO6 U269 ( .A(tras_cntr[2]), .B(n252), .C(n148), .Z(n251) );
  EON1 U270 ( .A(n253), .B(n147), .C(tras_delay[1]), .D(n146), .Z(N74) );
  AO6 U271 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .C(n254), .Z(n253) );
  EON1 U272 ( .A(tras_cntr[0]), .B(n147), .C(tras_delay[0]), .D(n146), .Z(N73)
         );
  NR2 U273 ( .A(n149), .B(n151), .Z(n146) );
  AO3 U274 ( .A(tras_cntr[3]), .B(n255), .C(n149), .D(reset_n), .Z(n147) );
  IV U275 ( .A(n239), .Z(n149) );
  AN2 U276 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U277 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U278 ( .A(n151), .B(tras_cntr[3]), .C(n255), .Z(N40) );
  IV U279 ( .A(n148), .Z(n255) );
  NR2 U280 ( .A(n252), .B(tras_cntr[2]), .Z(n148) );
  IV U281 ( .A(n254), .Z(n252) );
  NR2 U282 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .Z(n254) );
  NR4 U283 ( .A(n239), .B(n237), .C(n151), .D(n250), .Z(N39) );
  OR3 U284 ( .A(timer0[2]), .B(timer0[3]), .C(n243), .Z(n250) );
  ND2 U285 ( .A(n126), .B(n79), .Z(n243) );
  AN3 U286 ( .A(x2b_ack), .B(n400), .C(n324), .Z(n237) );
  NR3 U287 ( .A(b2x_cmd[1]), .B(n324), .C(n223), .Z(n239) );
  IV U288 ( .A(x2b_ack), .Z(n223) );
  AN2 U289 ( .A(n256), .B(reset_n), .Z(N38) );
  AO7 U290 ( .A(n225), .B(n211), .C(n217), .Z(n256) );
  IV U291 ( .A(n224), .Z(n217) );
  NR2 U292 ( .A(n257), .B(n151), .Z(N37) );
  IV U293 ( .A(reset_n), .Z(n151) );
  AO1 U294 ( .A(n224), .B(n108), .C(n158), .D(n258), .Z(n257) );
  NR3 U295 ( .A(n225), .B(n211), .C(n184), .Z(n258) );
  IV U296 ( .A(r2b_write), .Z(n184) );
  ND3 U297 ( .A(n396), .B(n397), .C(n398), .Z(n211) );
  ND2 U298 ( .A(n259), .B(n260), .Z(n225) );
  NR4 U299 ( .A(n261), .B(n262), .C(n305), .D(n306), .Z(n260) );
  EN U300 ( .A(n334), .B(r2b_raddr[8]), .Z(n306) );
  EN U301 ( .A(n332), .B(r2b_raddr[9]), .Z(n305) );
  EN U302 ( .A(n333), .B(r2b_raddr[7]), .Z(n262) );
  ND4 U303 ( .A(n307), .B(n308), .C(n309), .D(n131), .Z(n261) );
  EN U304 ( .A(n196), .B(n337), .Z(n309) );
  IV U305 ( .A(r2b_raddr[11]), .Z(n196) );
  EN U306 ( .A(n195), .B(n336), .Z(n308) );
  IV U307 ( .A(r2b_raddr[10]), .Z(n195) );
  EN U308 ( .A(n197), .B(n335), .Z(n307) );
  IV U309 ( .A(r2b_raddr[12]), .Z(n197) );
  NR4 U310 ( .A(n310), .B(n311), .C(n312), .D(n313), .Z(n259) );
  EN U311 ( .A(n327), .B(r2b_raddr[5]), .Z(n313) );
  EN U312 ( .A(n325), .B(r2b_raddr[1]), .Z(n312) );
  EN U313 ( .A(n326), .B(r2b_raddr[4]), .Z(n311) );
  ND4 U314 ( .A(n314), .B(n315), .C(n316), .D(n317), .Z(n310) );
  EN U315 ( .A(n188), .B(n331), .Z(n317) );
  IV U316 ( .A(r2b_raddr[3]), .Z(n188) );
  EN U317 ( .A(n187), .B(n330), .Z(n316) );
  IV U318 ( .A(r2b_raddr[2]), .Z(n187) );
  EN U319 ( .A(n185), .B(n329), .Z(n315) );
  IV U320 ( .A(r2b_raddr[0]), .Z(n185) );
  EN U321 ( .A(n191), .B(n328), .Z(n314) );
  IV U322 ( .A(r2b_raddr[6]), .Z(n191) );
  AN3 U323 ( .A(n396), .B(n112), .C(n398), .Z(n158) );
  AN3 U324 ( .A(n112), .B(test_so1), .C(n398), .Z(n224) );
  AN2 U325 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U326 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U327 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_fsm_test_3 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, 
        test_so1, test_se );
  input [3:0] r2b_req_id;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [6:0] r2b_len;
  output [3:0] b2x_id;
  output [12:0] b2x_addr;
  output [6:0] b2x_len;
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
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42,
         timer0_2_, N73, N74, N75, N77, N78, N79, N80, N81, N82, N83, n1, n2,
         n79, n80, n81, n83, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n132), .Q(n481), .QN(n318) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n480), .TE(test_se), .CP(n137), .Q(n479), 
        .QN(n320) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n479), .TE(test_se), .CP(n137), .Q(test_so3), .QN(n319) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n481), .TE(test_se), .CP(n137), .Q(n480), 
        .QN(n321) );
  FD1S bank_row_reg_0_ ( .D(n340), .TI(b2x_cmd[1]), .TE(test_se), .CP(n137), 
        .Q(bank_row[0]), .QN(n329) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n80), .TE(test_se), .CP(n132), .Q(n112), 
        .QN(n397) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(test_si2), .TE(test_se), .CP(n132), .Q(
        n80), .QN(n396) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(n112), .TE(test_se), .CP(n132), .Q(n525), 
        .QN(n398) );
  FD1S l_write_reg ( .D(n368), .TI(n485), .TE(test_se), .CP(n136), .Q(n108), 
        .QN(n395) );
  FD1S bank_row_reg_10_ ( .D(n352), .TI(bank_row[9]), .TE(test_se), .CP(n134), 
        .Q(bank_row[10]), .QN(n336) );
  FD1S bank_row_reg_12_ ( .D(n351), .TI(bank_row[11]), .TE(test_se), .CP(n134), 
        .Q(bank_row[12]), .QN(n335) );
  FD1S bank_row_reg_9_ ( .D(n350), .TI(bank_row[8]), .TE(test_se), .CP(n132), 
        .Q(bank_row[9]), .QN(n332) );
  FD1S bank_row_reg_8_ ( .D(n349), .TI(bank_row[7]), .TE(test_se), .CP(n134), 
        .Q(bank_row[8]), .QN(n334) );
  FD1S bank_row_reg_7_ ( .D(n348), .TI(bank_row[6]), .TE(test_se), .CP(n134), 
        .Q(bank_row[7]), .QN(n333) );
  FD1S bank_row_reg_6_ ( .D(n347), .TI(bank_row[5]), .TE(test_se), .CP(n135), 
        .Q(bank_row[6]), .QN(n328) );
  FD1S bank_row_reg_5_ ( .D(n346), .TI(bank_row[4]), .TE(test_se), .CP(n135), 
        .Q(bank_row[5]), .QN(n327) );
  FD1S bank_row_reg_4_ ( .D(n345), .TI(bank_row[3]), .TE(test_se), .CP(n135), 
        .Q(bank_row[4]), .QN(n326) );
  FD1S bank_row_reg_3_ ( .D(n344), .TI(bank_row[2]), .TE(test_se), .CP(n135), 
        .Q(bank_row[3]), .QN(n331) );
  FD1S bank_row_reg_2_ ( .D(n343), .TI(bank_row[1]), .TE(test_se), .CP(n135), 
        .Q(bank_row[2]), .QN(n330) );
  FD1S bank_row_reg_1_ ( .D(n342), .TI(bank_row[0]), .TE(test_se), .CP(n135), 
        .Q(bank_row[1]), .QN(n325) );
  FD1S bank_row_reg_11_ ( .D(n341), .TI(bank_row[10]), .TE(test_se), .CP(n134), 
        .Q(bank_row[11]), .QN(n337) );
  FD1S bank_valid_reg ( .D(n339), .TI(n525), .TE(test_se), .CP(n137), .Q(n131), 
        .QN(n323) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(test_si4), .TE(test_se), .CP(n138), 
        .Q(n482), .QN(n399) );
  FD1S x2b_act_ok_r_reg_0_ ( .D(N42), .TI(tras_ok), .TE(test_se), .CP(n137), 
        .Q(x2b_act_ok_r_0_) );
  FD1S l_caddr_reg_0_ ( .D(n353), .TI(n131), .TE(test_se), .CP(n137), .Q(n524), 
        .QN(n125) );
  FD1S l_caddr_reg_12_ ( .D(n393), .TI(n513), .TE(test_se), .CP(n133), .Q(n512), .QN(n122) );
  FD1S l_caddr_reg_11_ ( .D(n392), .TI(n514), .TE(test_se), .CP(n133), .Q(n513), .QN(n123) );
  FD1S l_caddr_reg_10_ ( .D(n391), .TI(n515), .TE(test_se), .CP(n133), .Q(n514), .QN(n124) );
  FD1S l_caddr_reg_9_ ( .D(n390), .TI(n516), .TE(test_se), .CP(n133), .Q(n515), 
        .QN(n113) );
  FD1S l_caddr_reg_8_ ( .D(n389), .TI(n517), .TE(test_se), .CP(n133), .Q(n516), 
        .QN(n114) );
  FD1S l_caddr_reg_7_ ( .D(n388), .TI(n518), .TE(test_se), .CP(n133), .Q(n517), 
        .QN(n115) );
  FD1S l_caddr_reg_6_ ( .D(n387), .TI(n519), .TE(test_se), .CP(n133), .Q(n518), 
        .QN(n116) );
  FD1S l_caddr_reg_5_ ( .D(n386), .TI(n520), .TE(test_se), .CP(n133), .Q(n519), 
        .QN(n117) );
  FD1S l_caddr_reg_4_ ( .D(n385), .TI(n521), .TE(test_se), .CP(n133), .Q(n520), 
        .QN(n118) );
  FD1S l_caddr_reg_3_ ( .D(n384), .TI(n522), .TE(test_se), .CP(n133), .Q(n521), 
        .QN(n119) );
  FD1S l_caddr_reg_2_ ( .D(n383), .TI(n523), .TE(test_se), .CP(n133), .Q(n522), 
        .QN(n120) );
  FD1S l_caddr_reg_1_ ( .D(n382), .TI(n524), .TE(test_se), .CP(n133), .Q(n523), 
        .QN(n121) );
  FD1S l_raddr_reg_12_ ( .D(n381), .TI(n488), .TE(test_se), .CP(n134), .Q(n487), .QN(n1) );
  FD1S l_raddr_reg_11_ ( .D(n380), .TI(n489), .TE(test_se), .CP(n134), .Q(n488), .QN(n92) );
  FD1S l_raddr_reg_10_ ( .D(n379), .TI(n490), .TE(test_se), .CP(n134), .Q(n489), .QN(n2) );
  FD1S l_raddr_reg_9_ ( .D(n378), .TI(n491), .TE(test_se), .CP(n134), .Q(n490), 
        .QN(n81) );
  FD1S l_raddr_reg_8_ ( .D(n377), .TI(n492), .TE(test_se), .CP(n134), .Q(n491), 
        .QN(n83) );
  FD1S l_raddr_reg_7_ ( .D(n376), .TI(n493), .TE(test_se), .CP(n134), .Q(n492), 
        .QN(n85) );
  FD1S l_raddr_reg_6_ ( .D(n375), .TI(n494), .TE(test_se), .CP(n134), .Q(n493), 
        .QN(n86) );
  FD1S l_raddr_reg_5_ ( .D(n374), .TI(n495), .TE(test_se), .CP(n135), .Q(n494), 
        .QN(n87) );
  FD1S l_raddr_reg_4_ ( .D(n373), .TI(n496), .TE(test_se), .CP(n135), .Q(n495), 
        .QN(n88) );
  FD1S l_raddr_reg_3_ ( .D(n372), .TI(n497), .TE(test_se), .CP(n135), .Q(n496), 
        .QN(n89) );
  FD1S l_raddr_reg_2_ ( .D(n371), .TI(n498), .TE(test_se), .CP(n135), .Q(n497), 
        .QN(n90) );
  FD1S l_raddr_reg_1_ ( .D(n370), .TI(n499), .TE(test_se), .CP(n135), .Q(n498), 
        .QN(n91) );
  FD1S l_raddr_reg_0_ ( .D(n369), .TI(n500), .TE(test_se), .CP(n135), .Q(n499), 
        .QN(n93) );
  FD1S l_wrap_reg ( .D(n367), .TI(n486), .TE(test_se), .CP(n136), .Q(n485), 
        .QN(n94) );
  FD1S l_len_reg_6_ ( .D(n366), .TI(n501), .TE(test_se), .CP(n136), .Q(n500), 
        .QN(n96) );
  FD1S l_len_reg_5_ ( .D(n365), .TI(n502), .TE(test_se), .CP(n136), .Q(n501), 
        .QN(n97) );
  FD1S l_len_reg_4_ ( .D(n364), .TI(n503), .TE(test_se), .CP(n136), .Q(n502), 
        .QN(n98) );
  FD1S l_len_reg_3_ ( .D(n363), .TI(test_si3), .TE(test_se), .CP(n136), .Q(
        n503), .QN(n99) );
  FD1S l_len_reg_2_ ( .D(n362), .TI(n505), .TE(test_se), .CP(n136), .Q(
        test_so1), .QN(n100) );
  FD1S l_len_reg_1_ ( .D(n361), .TI(n506), .TE(test_se), .CP(n136), .Q(n505), 
        .QN(n101) );
  FD1S l_len_reg_0_ ( .D(n360), .TI(n507), .TE(test_se), .CP(n136), .Q(n506), 
        .QN(n102) );
  FD1S l_id_reg_3_ ( .D(n359), .TI(n509), .TE(test_se), .CP(n136), .Q(n508), 
        .QN(n104) );
  FD1S l_id_reg_2_ ( .D(n358), .TI(n510), .TE(test_se), .CP(n136), .Q(n509), 
        .QN(n105) );
  FD1S l_id_reg_1_ ( .D(n357), .TI(n511), .TE(test_se), .CP(n137), .Q(n510), 
        .QN(n106) );
  FD1S l_id_reg_0_ ( .D(n356), .TI(n512), .TE(test_se), .CP(n137), .Q(n511), 
        .QN(n107) );
  FD1S l_last_reg ( .D(n355), .TI(n508), .TE(test_se), .CP(n137), .Q(n507), 
        .QN(n103) );
  FD1S l_start_reg ( .D(n354), .TI(n322), .TE(test_se), .CP(n137), .Q(n486), 
        .QN(n95) );
  FD1S b2x_cmd_r_reg_1_ ( .D(N38), .TI(b2x_cmd[0]), .TE(test_se), .CP(n132), 
        .Q(b2x_cmd[1]), .QN(n400) );
  FD1S b2x_cmd_r_reg_0_ ( .D(N37), .TI(test_si1), .TE(test_se), .CP(n136), .Q(
        b2x_cmd[0]), .QN(n324) );
  FD1S timer0_reg_0_ ( .D(N77), .TI(n108), .TE(test_se), .CP(n138), .Q(n484), 
        .QN(n79) );
  FD1S timer0_reg_1_ ( .D(N78), .TI(n484), .TE(test_se), .CP(n138), .Q(n483), 
        .QN(n126) );
  FD1S l_sdr_dma_last_reg ( .D(n394), .TI(n487), .TE(test_se), .CP(n132), .Q(
        n322), .QN(n128) );
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n132), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n132), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n132), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(n482), .TE(test_se), .CP(n132), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n338), .TI(tras_cntr[2]), .TE(test_se), .CP(n132), 
        .Q(tras_cntr[3]) );
  FD1S timer0_reg_3_ ( .D(N80), .TI(timer0_2_), .TE(test_se), .CP(n137), .Q(
        test_so2), .QN(n129) );
  FD1S timer0_reg_2_ ( .D(N79), .TI(n483), .TE(test_se), .CP(n138), .Q(
        timer0_2_), .QN(n130) );
  IVP U6 ( .A(n139), .Z(n136) );
  IVP U80 ( .A(n140), .Z(n135) );
  IVP U81 ( .A(n140), .Z(n134) );
  IVP U82 ( .A(n140), .Z(n133) );
  IVP U83 ( .A(n139), .Z(n137) );
  IVP U84 ( .A(n139), .Z(n138) );
  IVP U85 ( .A(n142), .Z(n140) );
  IVP U86 ( .A(n142), .Z(n139) );
  IVP U87 ( .A(n141), .Z(n132) );
  IVP U88 ( .A(n142), .Z(n141) );
  IVP U89 ( .A(n143), .Z(n142) );
  IVP U90 ( .A(clk), .Z(n143) );
  IV U91 ( .A(n144), .Z(n338) );
  AO2 U92 ( .A(tras_cntr[3]), .B(n145), .C(tras_delay[3]), .D(n146), .Z(n144)
         );
  NR2 U93 ( .A(n147), .B(n148), .Z(n145) );
  AO1 U94 ( .A(n323), .B(n149), .C(n150), .D(n151), .Z(n339) );
  ND2 U95 ( .A(n152), .B(n153), .Z(n150) );
  MUX21L U96 ( .A(n154), .B(n329), .S(n155), .Z(n340) );
  IV U97 ( .A(b2x_addr[0]), .Z(n154) );
  MUX21L U98 ( .A(n156), .B(n337), .S(n155), .Z(n341) );
  IV U99 ( .A(b2x_addr[11]), .Z(n156) );
  MUX21L U100 ( .A(n325), .B(n157), .S(n158), .Z(n342) );
  IV U101 ( .A(b2x_addr[1]), .Z(n157) );
  MUX21L U102 ( .A(n159), .B(n330), .S(n155), .Z(n343) );
  IV U103 ( .A(b2x_addr[2]), .Z(n159) );
  MUX21L U104 ( .A(n160), .B(n331), .S(n155), .Z(n344) );
  IV U105 ( .A(b2x_addr[3]), .Z(n160) );
  MUX21L U106 ( .A(n326), .B(n161), .S(n158), .Z(n345) );
  IV U107 ( .A(b2x_addr[4]), .Z(n161) );
  MUX21L U108 ( .A(n327), .B(n162), .S(n158), .Z(n346) );
  IV U109 ( .A(b2x_addr[5]), .Z(n162) );
  MUX21L U110 ( .A(n163), .B(n328), .S(n155), .Z(n347) );
  IV U111 ( .A(b2x_addr[6]), .Z(n163) );
  MUX21L U112 ( .A(n333), .B(n164), .S(n158), .Z(n348) );
  IV U113 ( .A(b2x_addr[7]), .Z(n164) );
  MUX21L U114 ( .A(n334), .B(n165), .S(n158), .Z(n349) );
  IV U115 ( .A(b2x_addr[8]), .Z(n165) );
  MUX21L U116 ( .A(n332), .B(n166), .S(n158), .Z(n350) );
  IV U117 ( .A(b2x_addr[9]), .Z(n166) );
  MUX21L U118 ( .A(n1), .B(n335), .S(n155), .Z(n351) );
  MUX21L U119 ( .A(n2), .B(n336), .S(n155), .Z(n352) );
  AO4 U120 ( .A(n125), .B(n167), .C(n168), .D(n169), .Z(n353) );
  IV U121 ( .A(r2b_caddr[0]), .Z(n168) );
  AO4 U122 ( .A(n169), .B(n170), .C(n167), .D(n95), .Z(n354) );
  AO4 U123 ( .A(n169), .B(n171), .C(n167), .D(n103), .Z(n355) );
  AO4 U124 ( .A(n169), .B(n172), .C(n167), .D(n107), .Z(n356) );
  AO4 U125 ( .A(n169), .B(n173), .C(n167), .D(n106), .Z(n357) );
  AO4 U126 ( .A(n169), .B(n174), .C(n167), .D(n105), .Z(n358) );
  AO4 U127 ( .A(n169), .B(n175), .C(n167), .D(n104), .Z(n359) );
  AO4 U128 ( .A(n169), .B(n176), .C(n167), .D(n102), .Z(n360) );
  AO4 U129 ( .A(n169), .B(n177), .C(n167), .D(n101), .Z(n361) );
  AO4 U130 ( .A(n169), .B(n178), .C(n167), .D(n100), .Z(n362) );
  AO4 U131 ( .A(n169), .B(n179), .C(n167), .D(n99), .Z(n363) );
  AO4 U132 ( .A(n169), .B(n180), .C(n167), .D(n98), .Z(n364) );
  AO4 U133 ( .A(n169), .B(n181), .C(n167), .D(n97), .Z(n365) );
  AO4 U134 ( .A(n169), .B(n182), .C(n167), .D(n96), .Z(n366) );
  AO4 U135 ( .A(n169), .B(n183), .C(n167), .D(n94), .Z(n367) );
  AO4 U136 ( .A(n169), .B(n184), .C(n395), .D(n167), .Z(n368) );
  AO4 U137 ( .A(n169), .B(n185), .C(n93), .D(n167), .Z(n369) );
  AO4 U138 ( .A(n169), .B(n186), .C(n91), .D(n167), .Z(n370) );
  IV U139 ( .A(r2b_raddr[1]), .Z(n186) );
  AO4 U140 ( .A(n169), .B(n187), .C(n90), .D(n167), .Z(n371) );
  AO4 U141 ( .A(n169), .B(n188), .C(n89), .D(n167), .Z(n372) );
  AO4 U142 ( .A(n169), .B(n189), .C(n88), .D(n167), .Z(n373) );
  IV U143 ( .A(r2b_raddr[4]), .Z(n189) );
  AO4 U144 ( .A(n169), .B(n190), .C(n87), .D(n167), .Z(n374) );
  IV U145 ( .A(r2b_raddr[5]), .Z(n190) );
  AO4 U146 ( .A(n169), .B(n191), .C(n86), .D(n167), .Z(n375) );
  AO4 U147 ( .A(n169), .B(n192), .C(n85), .D(n167), .Z(n376) );
  IV U148 ( .A(r2b_raddr[7]), .Z(n192) );
  AO4 U149 ( .A(n169), .B(n193), .C(n83), .D(n167), .Z(n377) );
  IV U150 ( .A(r2b_raddr[8]), .Z(n193) );
  AO4 U151 ( .A(n169), .B(n194), .C(n81), .D(n167), .Z(n378) );
  IV U152 ( .A(r2b_raddr[9]), .Z(n194) );
  AO4 U153 ( .A(n169), .B(n195), .C(n2), .D(n167), .Z(n379) );
  AO4 U154 ( .A(n169), .B(n196), .C(n92), .D(n167), .Z(n380) );
  AO4 U155 ( .A(n169), .B(n197), .C(n1), .D(n167), .Z(n381) );
  AO4 U156 ( .A(n121), .B(n167), .C(n198), .D(n169), .Z(n382) );
  IV U157 ( .A(r2b_caddr[1]), .Z(n198) );
  AO4 U158 ( .A(n120), .B(n167), .C(n199), .D(n169), .Z(n383) );
  IV U159 ( .A(r2b_caddr[2]), .Z(n199) );
  AO4 U160 ( .A(n119), .B(n167), .C(n200), .D(n169), .Z(n384) );
  IV U161 ( .A(r2b_caddr[3]), .Z(n200) );
  AO4 U162 ( .A(n118), .B(n167), .C(n201), .D(n169), .Z(n385) );
  IV U163 ( .A(r2b_caddr[4]), .Z(n201) );
  AO4 U164 ( .A(n117), .B(n167), .C(n202), .D(n169), .Z(n386) );
  IV U165 ( .A(r2b_caddr[5]), .Z(n202) );
  AO4 U166 ( .A(n116), .B(n167), .C(n203), .D(n169), .Z(n387) );
  IV U167 ( .A(r2b_caddr[6]), .Z(n203) );
  AO4 U168 ( .A(n115), .B(n167), .C(n204), .D(n169), .Z(n388) );
  IV U169 ( .A(r2b_caddr[7]), .Z(n204) );
  AO4 U170 ( .A(n114), .B(n167), .C(n205), .D(n169), .Z(n389) );
  IV U171 ( .A(r2b_caddr[8]), .Z(n205) );
  AO4 U172 ( .A(n113), .B(n167), .C(n206), .D(n169), .Z(n390) );
  IV U173 ( .A(r2b_caddr[9]), .Z(n206) );
  AO4 U174 ( .A(n167), .B(n124), .C(n207), .D(n169), .Z(n391) );
  IV U175 ( .A(r2b_caddr[10]), .Z(n207) );
  AO4 U176 ( .A(n123), .B(n167), .C(n208), .D(n169), .Z(n392) );
  IV U177 ( .A(r2b_caddr[11]), .Z(n208) );
  AO4 U178 ( .A(n167), .B(n122), .C(n209), .D(n169), .Z(n393) );
  IV U179 ( .A(r2b_caddr[12]), .Z(n209) );
  AO4 U180 ( .A(n167), .B(n128), .C(n210), .D(n169), .Z(n394) );
  IV U181 ( .A(sdr_dma_last), .Z(n210) );
  ND2 U182 ( .A(reset_n), .B(n169), .Z(n167) );
  MUX21L U183 ( .A(n183), .B(n94), .S(n211), .Z(b2x_wrap) );
  IV U184 ( .A(r2b_wrap), .Z(n183) );
  MUX21L U185 ( .A(n170), .B(n95), .S(n211), .Z(b2x_start) );
  IV U186 ( .A(r2b_start), .Z(n170) );
  AO4 U187 ( .A(n212), .B(n399), .C(n318), .D(n213), .Z(b2x_req) );
  ND2 U188 ( .A(tras_ok), .B(n214), .Z(n213) );
  AO2 U189 ( .A(n215), .B(n216), .C(x2b_act_ok_r_0_), .D(n158), .Z(n212) );
  MUX21L U190 ( .A(n321), .B(n320), .S(n108), .Z(n216) );
  NR2 U191 ( .A(n217), .B(n319), .Z(n215) );
  MUX21L U192 ( .A(n182), .B(n96), .S(n211), .Z(b2x_len[6]) );
  IV U193 ( .A(r2b_len[6]), .Z(n182) );
  MUX21L U194 ( .A(n181), .B(n97), .S(n211), .Z(b2x_len[5]) );
  IV U195 ( .A(r2b_len[5]), .Z(n181) );
  MUX21L U196 ( .A(n180), .B(n98), .S(n211), .Z(b2x_len[4]) );
  IV U197 ( .A(r2b_len[4]), .Z(n180) );
  MUX21L U198 ( .A(n179), .B(n99), .S(n211), .Z(b2x_len[3]) );
  IV U199 ( .A(r2b_len[3]), .Z(n179) );
  MUX21L U200 ( .A(n178), .B(n100), .S(n211), .Z(b2x_len[2]) );
  IV U201 ( .A(r2b_len[2]), .Z(n178) );
  MUX21L U202 ( .A(n177), .B(n101), .S(n211), .Z(b2x_len[1]) );
  IV U203 ( .A(r2b_len[1]), .Z(n177) );
  MUX21L U204 ( .A(n176), .B(n102), .S(n211), .Z(b2x_len[0]) );
  IV U205 ( .A(r2b_len[0]), .Z(n176) );
  MUX21L U206 ( .A(n171), .B(n103), .S(n211), .Z(b2x_last) );
  IV U207 ( .A(r2b_last), .Z(n171) );
  MUX21L U208 ( .A(n175), .B(n104), .S(n211), .Z(b2x_id[3]) );
  IV U209 ( .A(r2b_req_id[3]), .Z(n175) );
  MUX21L U210 ( .A(n174), .B(n105), .S(n211), .Z(b2x_id[2]) );
  IV U211 ( .A(r2b_req_id[2]), .Z(n174) );
  MUX21L U212 ( .A(n173), .B(n106), .S(n211), .Z(b2x_id[1]) );
  IV U213 ( .A(r2b_req_id[1]), .Z(n173) );
  MUX21L U214 ( .A(n172), .B(n107), .S(n211), .Z(b2x_id[0]) );
  IV U215 ( .A(r2b_req_id[0]), .Z(n172) );
  AO4 U216 ( .A(n217), .B(n113), .C(n218), .D(n81), .Z(b2x_addr[9]) );
  AO4 U217 ( .A(n217), .B(n114), .C(n218), .D(n83), .Z(b2x_addr[8]) );
  AO4 U218 ( .A(n217), .B(n115), .C(n218), .D(n85), .Z(b2x_addr[7]) );
  AO4 U219 ( .A(n217), .B(n116), .C(n218), .D(n86), .Z(b2x_addr[6]) );
  AO4 U220 ( .A(n217), .B(n117), .C(n218), .D(n87), .Z(b2x_addr[5]) );
  AO4 U221 ( .A(n217), .B(n118), .C(n218), .D(n88), .Z(b2x_addr[4]) );
  AO4 U222 ( .A(n217), .B(n119), .C(n218), .D(n89), .Z(b2x_addr[3]) );
  AO4 U223 ( .A(n217), .B(n120), .C(n218), .D(n90), .Z(b2x_addr[2]) );
  AO4 U224 ( .A(n217), .B(n121), .C(n218), .D(n91), .Z(b2x_addr[1]) );
  AO4 U225 ( .A(n217), .B(n122), .C(n155), .D(n1), .Z(b2x_addr[12]) );
  AO4 U226 ( .A(n217), .B(n123), .C(n218), .D(n92), .Z(b2x_addr[11]) );
  AO4 U227 ( .A(n217), .B(n124), .C(n155), .D(n2), .Z(b2x_addr[10]) );
  IV U228 ( .A(n158), .Z(n155) );
  AO4 U229 ( .A(n217), .B(n125), .C(n218), .D(n93), .Z(b2x_addr[0]) );
  AO6 U230 ( .A(n219), .B(n220), .C(n151), .Z(N83) );
  MUX21L U231 ( .A(n221), .B(n222), .S(n223), .Z(n219) );
  AN3 U232 ( .A(n322), .B(n153), .C(n224), .Z(n221) );
  AO4 U233 ( .A(n169), .B(n225), .C(n226), .D(n151), .Z(N82) );
  AO1 U234 ( .A(n224), .B(n227), .C(n228), .D(n158), .Z(n226) );
  AO4 U235 ( .A(n223), .B(n229), .C(n397), .D(n220), .Z(n228) );
  ND2 U236 ( .A(x2b_ack), .B(n153), .Z(n227) );
  IV U237 ( .A(x2b_refresh), .Z(n153) );
  AO7 U238 ( .A(n230), .B(n151), .C(n169), .Z(N81) );
  ND2 U239 ( .A(b2r_ack), .B(reset_n), .Z(n169) );
  NR2 U240 ( .A(n231), .B(n211), .Z(b2r_ack) );
  IV U241 ( .A(r2b_req), .Z(n231) );
  IV U242 ( .A(n232), .Z(n230) );
  AO7 U243 ( .A(n220), .B(n396), .C(n233), .Z(n232) );
  MUX21L U244 ( .A(n158), .B(n234), .S(n223), .Z(n233) );
  AO7 U245 ( .A(n217), .B(x2b_refresh), .C(n229), .Z(n234) );
  ND3 U246 ( .A(n211), .B(n217), .C(n218), .Z(n220) );
  NR2 U247 ( .A(n214), .B(n158), .Z(n218) );
  ND2 U248 ( .A(n152), .B(n229), .Z(n214) );
  ND3 U249 ( .A(n397), .B(n80), .C(n398), .Z(n229) );
  IV U250 ( .A(n222), .Z(n152) );
  NR3 U251 ( .A(n112), .B(n398), .C(n80), .Z(n222) );
  AO4 U252 ( .A(n129), .B(n235), .C(n236), .D(n151), .Z(N80) );
  AO11 U253 ( .A(trp_delay[3]), .B(n237), .C(n238), .D(test_so2), .E(
        trcd_delay[3]), .F(n239), .Z(n236) );
  AN2 U254 ( .A(n240), .B(timer0_2_), .Z(n238) );
  AO4 U255 ( .A(n130), .B(n235), .C(n241), .D(n151), .Z(N79) );
  AO11 U256 ( .A(trp_delay[2]), .B(n237), .C(n242), .D(n240), .E(trcd_delay[2]), .F(n239), .Z(n241) );
  NR2 U257 ( .A(timer0_2_), .B(n243), .Z(n242) );
  ND3 U258 ( .A(reset_n), .B(n243), .C(n240), .Z(n235) );
  AO6 U259 ( .A(n244), .B(n245), .C(n151), .Z(N78) );
  ND2 U260 ( .A(trp_delay[1]), .B(n237), .Z(n245) );
  AO2 U261 ( .A(n240), .B(n246), .C(trcd_delay[1]), .D(n239), .Z(n244) );
  AO7 U262 ( .A(n126), .B(n79), .C(n243), .Z(n246) );
  AO6 U263 ( .A(n247), .B(n248), .C(n151), .Z(N77) );
  ND2 U264 ( .A(trp_delay[0]), .B(n237), .Z(n248) );
  AO2 U265 ( .A(n240), .B(n79), .C(trcd_delay[0]), .D(n239), .Z(n247) );
  NR3 U266 ( .A(n237), .B(n239), .C(n249), .Z(n240) );
  IV U267 ( .A(n250), .Z(n249) );
  EON1 U268 ( .A(n251), .B(n147), .C(tras_delay[2]), .D(n146), .Z(N75) );
  AO6 U269 ( .A(tras_cntr[2]), .B(n252), .C(n148), .Z(n251) );
  EON1 U270 ( .A(n253), .B(n147), .C(tras_delay[1]), .D(n146), .Z(N74) );
  AO6 U271 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .C(n254), .Z(n253) );
  EON1 U272 ( .A(tras_cntr[0]), .B(n147), .C(tras_delay[0]), .D(n146), .Z(N73)
         );
  NR2 U273 ( .A(n149), .B(n151), .Z(n146) );
  AO3 U274 ( .A(tras_cntr[3]), .B(n255), .C(n149), .D(reset_n), .Z(n147) );
  IV U275 ( .A(n239), .Z(n149) );
  AN2 U276 ( .A(x2b_act_ok), .B(reset_n), .Z(N42) );
  AN2 U277 ( .A(x2b_pre_ok), .B(reset_n), .Z(N41) );
  NR3 U278 ( .A(n151), .B(tras_cntr[3]), .C(n255), .Z(N40) );
  IV U279 ( .A(n148), .Z(n255) );
  NR2 U280 ( .A(n252), .B(tras_cntr[2]), .Z(n148) );
  IV U281 ( .A(n254), .Z(n252) );
  NR2 U282 ( .A(tras_cntr[1]), .B(tras_cntr[0]), .Z(n254) );
  NR4 U283 ( .A(n239), .B(n237), .C(n151), .D(n250), .Z(N39) );
  OR3 U284 ( .A(timer0_2_), .B(test_so2), .C(n243), .Z(n250) );
  ND2 U285 ( .A(n126), .B(n79), .Z(n243) );
  AN3 U286 ( .A(x2b_ack), .B(n400), .C(n324), .Z(n237) );
  NR3 U287 ( .A(b2x_cmd[1]), .B(n324), .C(n223), .Z(n239) );
  IV U288 ( .A(x2b_ack), .Z(n223) );
  AN2 U289 ( .A(n256), .B(reset_n), .Z(N38) );
  AO7 U290 ( .A(n225), .B(n211), .C(n217), .Z(n256) );
  IV U291 ( .A(n224), .Z(n217) );
  NR2 U292 ( .A(n257), .B(n151), .Z(N37) );
  IV U293 ( .A(reset_n), .Z(n151) );
  AO1 U294 ( .A(n224), .B(n108), .C(n158), .D(n258), .Z(n257) );
  NR3 U295 ( .A(n225), .B(n211), .C(n184), .Z(n258) );
  IV U296 ( .A(r2b_write), .Z(n184) );
  ND3 U297 ( .A(n396), .B(n397), .C(n398), .Z(n211) );
  ND2 U298 ( .A(n259), .B(n260), .Z(n225) );
  NR4 U299 ( .A(n261), .B(n262), .C(n305), .D(n306), .Z(n260) );
  EN U300 ( .A(n334), .B(r2b_raddr[8]), .Z(n306) );
  EN U301 ( .A(n332), .B(r2b_raddr[9]), .Z(n305) );
  EN U302 ( .A(n333), .B(r2b_raddr[7]), .Z(n262) );
  ND4 U303 ( .A(n307), .B(n308), .C(n309), .D(n131), .Z(n261) );
  EN U304 ( .A(n196), .B(n337), .Z(n309) );
  IV U305 ( .A(r2b_raddr[11]), .Z(n196) );
  EN U306 ( .A(n195), .B(n336), .Z(n308) );
  IV U307 ( .A(r2b_raddr[10]), .Z(n195) );
  EN U308 ( .A(n197), .B(n335), .Z(n307) );
  IV U309 ( .A(r2b_raddr[12]), .Z(n197) );
  NR4 U310 ( .A(n310), .B(n311), .C(n312), .D(n313), .Z(n259) );
  EN U311 ( .A(n327), .B(r2b_raddr[5]), .Z(n313) );
  EN U312 ( .A(n325), .B(r2b_raddr[1]), .Z(n312) );
  EN U313 ( .A(n326), .B(r2b_raddr[4]), .Z(n311) );
  ND4 U314 ( .A(n314), .B(n315), .C(n316), .D(n317), .Z(n310) );
  EN U315 ( .A(n188), .B(n331), .Z(n317) );
  IV U316 ( .A(r2b_raddr[3]), .Z(n188) );
  EN U317 ( .A(n187), .B(n330), .Z(n316) );
  IV U318 ( .A(r2b_raddr[2]), .Z(n187) );
  EN U319 ( .A(n185), .B(n329), .Z(n315) );
  IV U320 ( .A(r2b_raddr[0]), .Z(n185) );
  EN U321 ( .A(n191), .B(n328), .Z(n314) );
  IV U322 ( .A(r2b_raddr[6]), .Z(n191) );
  AN3 U323 ( .A(n396), .B(n112), .C(n398), .Z(n158) );
  AN3 U324 ( .A(n112), .B(n80), .C(n398), .Z(n224) );
  AN2 U325 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U326 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U327 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule


module sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, a2b_req_depth, 
        r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, r2b_raddr, 
        r2b_caddr, r2b_len, r2b_write, b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, 
        b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok, 
        x2b_rdok, x2b_wrok, xfr_bank_sel, sdr_req_norm_dma_last, tras_delay, 
        trp_delay, trcd_delay, test_si13, test_si12, test_si11, test_si10, 
        test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, 
        test_si2, test_si1, test_so13, test_so12, test_so11, test_so10, 
        test_so9, test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, 
        test_so2, test_so1, test_se );
  input [1:0] a2b_req_depth;
  input [3:0] r2b_req_id;
  input [1:0] r2b_ba;
  input [12:0] r2b_raddr;
  input [12:0] r2b_caddr;
  input [6:0] r2b_len;
  output [3:0] b2x_id;
  output [1:0] b2x_ba;
  output [12:0] b2x_addr;
  output [6:0] b2x_len;
  output [1:0] b2x_cmd;
  input [3:0] x2b_pre_ok;
  input [1:0] xfr_bank_sel;
  input [3:0] tras_delay;
  input [3:0] trp_delay;
  input [3:0] trcd_delay;
  input clk, reset_n, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         x2b_ack, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok,
         sdr_req_norm_dma_last, test_si13, test_si12, test_si11, test_si10,
         test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, test_si3,
         test_si2, test_si1, test_se;
  output b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, b2x_start, b2x_last, b2x_wrap,
         b2x_tras_ok, test_so13, test_so12, test_so11, test_so10, test_so9,
         test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, test_so2,
         test_so1;
  wire   rank_cnt_1_, rank_cnt_0_, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N172, n32, n33, n136, n137, n138, n1, n2, n3,
         n4, n5, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n139, n143, n147, n151, n155, SYNOPSYS_UNCONNECTED_1,
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
         SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51;
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
  wire   [6:0] i2x_len3;
  wire   [6:0] i2x_len2;
  wire   [6:0] i2x_len1;
  wire   [6:0] i2x_len0;
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
        tras_ok[0]), .xfr_ok(n137), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[0]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si4(test_si4), .test_si3(test_si3), .test_si2(test_si2), 
        .test_si1(test_si1), .test_so4(n155), .test_so3(test_so3), .test_so2(
        test_so2), .test_so1(test_so1), .test_se(test_se) );
  sdrc_bank_fsm_test_1 bank1_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[1]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[1]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[1]), 
        .b2x_start(i2x_start[1]), .b2x_last(i2x_last[1]), .b2x_wrap(
        i2x_wrap[1]), .b2x_id(i2x_id1), .b2x_addr(i2x_addr1), .b2x_len(
        i2x_len1), .b2x_cmd(i2x_cmd1), .x2b_ack(x2i_ack[1]), .tras_ok(
        tras_ok[1]), .xfr_ok(n136), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[1]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si4(test_si7), .test_si3(test_si6), .test_si2(test_si5), 
        .test_si1(n155), .test_so4(n151), .test_so3(test_so6), .test_so2(
        test_so5), .test_so1(test_so4), .test_se(test_se) );
  sdrc_bank_fsm_test_2 bank2_fsm ( .clk(n18), .reset_n(reset_n), .r2b_req(
        r2i_req[2]), .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), 
        .r2b_last(r2b_last), .r2b_wrap(r2b_wrap), .r2b_raddr(r2b_raddr), 
        .r2b_caddr(r2b_caddr), .r2b_len(r2b_len), .r2b_write(r2b_write), 
        .b2r_ack(i2r_ack[2]), .sdr_dma_last(1'b0), .b2x_req(i2x_req[2]), 
        .b2x_start(i2x_start[2]), .b2x_last(i2x_last[2]), .b2x_wrap(
        i2x_wrap[2]), .b2x_id(i2x_id2), .b2x_addr(i2x_addr2), .b2x_len(
        i2x_len2), .b2x_cmd(i2x_cmd2), .x2b_ack(x2i_ack[2]), .tras_ok(
        tras_ok[2]), .xfr_ok(n138), .x2b_refresh(x2b_refresh), .x2b_pre_ok(
        x2b_pre_ok[2]), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, 
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, 
        SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si4(test_si10), .test_si3(test_si9), .test_si2(test_si8), 
        .test_si1(n151), .test_so4(n147), .test_so3(test_so9), .test_so2(
        test_so8), .test_so1(test_so7), .test_se(test_se) );
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
        .x2b_wrok(x2b_wrok), .bank_row({test_so10, SYNOPSYS_UNCONNECTED_40, 
        SYNOPSYS_UNCONNECTED_41, SYNOPSYS_UNCONNECTED_42, 
        SYNOPSYS_UNCONNECTED_43, SYNOPSYS_UNCONNECTED_44, 
        SYNOPSYS_UNCONNECTED_45, SYNOPSYS_UNCONNECTED_46, 
        SYNOPSYS_UNCONNECTED_47, SYNOPSYS_UNCONNECTED_48, 
        SYNOPSYS_UNCONNECTED_49, SYNOPSYS_UNCONNECTED_50, 
        SYNOPSYS_UNCONNECTED_51}), .tras_delay(tras_delay), .trp_delay(
        trp_delay), .trcd_delay(trcd_delay), .test_si4(test_si13), .test_si3(
        test_si12), .test_si2(test_si11), .test_si1(n147), .test_so3(n143), 
        .test_so2(test_so12), .test_so1(test_so11), .test_se(test_se) );
  FD1S rank_ba_reg_1_ ( .D(N115), .TI(b2x_ba[0]), .TE(test_se), .CP(n18), .Q(
        b2x_ba[1]), .QN(n32) );
  FD1S rank_ba_reg_7_ ( .D(N121), .TI(n132), .TE(test_se), .CP(n18), .Q(n131), 
        .QN(n5) );
  FD1S rank_ba_reg_6_ ( .D(N120), .TI(n133), .TE(test_se), .CP(n18), .Q(n132), 
        .QN(n17) );
  FD1S rank_ba_reg_3_ ( .D(N117), .TI(n139), .TE(test_se), .CP(n18), .Q(n135), 
        .QN(n4) );
  FD1S rank_ba_reg_2_ ( .D(N116), .TI(b2x_ba[1]), .TE(test_se), .CP(n18), .Q(
        n139) );
  FD1S rank_ba_reg_0_ ( .D(N114), .TI(n143), .TE(test_se), .CP(n18), .Q(
        b2x_ba[0]), .QN(n33) );
  FD1S rank_cnt_reg_0_ ( .D(N111), .TI(n131), .TE(test_se), .CP(n18), .Q(
        rank_cnt_0_), .QN(n1) );
  FD1S rank_cnt_reg_2_ ( .D(N113), .TI(rank_cnt_1_), .TE(test_se), .CP(n18), 
        .Q(test_so13), .QN(n2) );
  FD1S rank_ba_reg_5_ ( .D(N119), .TI(n134), .TE(test_se), .CP(n18), .Q(n133)
         );
  FD1S rank_ba_reg_4_ ( .D(N118), .TI(n135), .TE(test_se), .CP(n18), .Q(n134)
         );
  FD1S rank_cnt_reg_1_ ( .D(N112), .TI(rank_cnt_0_), .TE(test_se), .CP(n18), 
        .Q(rank_cnt_1_), .QN(n3) );
  IVP U18 ( .A(n19), .Z(n18) );
  IVP U19 ( .A(clk), .Z(n19) );
  AN2 U20 ( .A(N172), .B(x2b_ack), .Z(x2i_ack[3]) );
  AN2 U21 ( .A(x2b_ack), .B(n138), .Z(x2i_ack[2]) );
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
  AO2 U37 ( .A(i2x_wrap[3]), .B(N172), .C(i2x_wrap[1]), .D(n136), .Z(n30) );
  AO2 U38 ( .A(i2x_wrap[0]), .B(n137), .C(i2x_wrap[2]), .D(n138), .Z(n29) );
  AN4 U39 ( .A(tras_ok[3]), .B(tras_ok[2]), .C(tras_ok[1]), .D(tras_ok[0]), 
        .Z(b2x_tras_ok) );
  ND2 U40 ( .A(n31), .B(n34), .Z(b2x_start) );
  AO2 U41 ( .A(i2x_start[3]), .B(N172), .C(i2x_start[1]), .D(n136), .Z(n34) );
  AO2 U42 ( .A(i2x_start[0]), .B(n137), .C(i2x_start[2]), .D(n138), .Z(n31) );
  ND2 U43 ( .A(n35), .B(n36), .Z(b2x_len[6]) );
  AO2 U44 ( .A(i2x_len3[6]), .B(N172), .C(i2x_len1[6]), .D(n136), .Z(n36) );
  AO2 U45 ( .A(i2x_len0[6]), .B(n137), .C(i2x_len2[6]), .D(n138), .Z(n35) );
  ND2 U46 ( .A(n37), .B(n38), .Z(b2x_len[5]) );
  AO2 U47 ( .A(i2x_len3[5]), .B(N172), .C(i2x_len1[5]), .D(n136), .Z(n38) );
  AO2 U48 ( .A(i2x_len0[5]), .B(n137), .C(i2x_len2[5]), .D(n138), .Z(n37) );
  ND2 U49 ( .A(n39), .B(n40), .Z(b2x_len[4]) );
  AO2 U50 ( .A(i2x_len3[4]), .B(N172), .C(i2x_len1[4]), .D(n136), .Z(n40) );
  AO2 U51 ( .A(i2x_len0[4]), .B(n137), .C(i2x_len2[4]), .D(n138), .Z(n39) );
  ND2 U52 ( .A(n41), .B(n42), .Z(b2x_len[3]) );
  AO2 U53 ( .A(i2x_len3[3]), .B(N172), .C(i2x_len1[3]), .D(n136), .Z(n42) );
  AO2 U54 ( .A(i2x_len0[3]), .B(n137), .C(i2x_len2[3]), .D(n138), .Z(n41) );
  ND2 U55 ( .A(n43), .B(n44), .Z(b2x_len[2]) );
  AO2 U56 ( .A(i2x_len3[2]), .B(N172), .C(i2x_len1[2]), .D(n136), .Z(n44) );
  AO2 U57 ( .A(i2x_len0[2]), .B(n137), .C(i2x_len2[2]), .D(n138), .Z(n43) );
  ND2 U58 ( .A(n45), .B(n46), .Z(b2x_len[1]) );
  AO2 U59 ( .A(i2x_len3[1]), .B(N172), .C(i2x_len1[1]), .D(n136), .Z(n46) );
  AO2 U60 ( .A(i2x_len0[1]), .B(n137), .C(i2x_len2[1]), .D(n138), .Z(n45) );
  ND2 U61 ( .A(n47), .B(n48), .Z(b2x_len[0]) );
  AO2 U62 ( .A(i2x_len3[0]), .B(N172), .C(i2x_len1[0]), .D(n136), .Z(n48) );
  AO2 U63 ( .A(i2x_len0[0]), .B(n137), .C(i2x_len2[0]), .D(n138), .Z(n47) );
  ND2 U64 ( .A(n49), .B(n50), .Z(b2x_last) );
  AO2 U65 ( .A(i2x_last[3]), .B(N172), .C(i2x_last[1]), .D(n136), .Z(n50) );
  AO2 U66 ( .A(i2x_last[0]), .B(n137), .C(i2x_last[2]), .D(n138), .Z(n49) );
  ND2 U67 ( .A(n51), .B(n52), .Z(b2x_id[3]) );
  AO2 U68 ( .A(i2x_id3[3]), .B(N172), .C(i2x_id1[3]), .D(n136), .Z(n52) );
  AO2 U69 ( .A(i2x_id0[3]), .B(n137), .C(i2x_id2[3]), .D(n138), .Z(n51) );
  ND2 U70 ( .A(n53), .B(n54), .Z(b2x_id[2]) );
  AO2 U71 ( .A(i2x_id3[2]), .B(N172), .C(i2x_id1[2]), .D(n136), .Z(n54) );
  AO2 U72 ( .A(i2x_id0[2]), .B(n137), .C(i2x_id2[2]), .D(n138), .Z(n53) );
  ND2 U73 ( .A(n55), .B(n56), .Z(b2x_id[1]) );
  AO2 U74 ( .A(i2x_id3[1]), .B(N172), .C(i2x_id1[1]), .D(n136), .Z(n56) );
  AO2 U75 ( .A(i2x_id0[1]), .B(n137), .C(i2x_id2[1]), .D(n138), .Z(n55) );
  ND2 U76 ( .A(n57), .B(n58), .Z(b2x_id[0]) );
  AO2 U77 ( .A(i2x_id3[0]), .B(N172), .C(i2x_id1[0]), .D(n136), .Z(n58) );
  AO2 U78 ( .A(i2x_id0[0]), .B(n137), .C(i2x_id2[0]), .D(n138), .Z(n57) );
  ND2 U79 ( .A(n59), .B(n60), .Z(b2x_cmd[0]) );
  AO2 U80 ( .A(i2x_cmd3[0]), .B(N172), .C(i2x_cmd1[0]), .D(n136), .Z(n60) );
  AO2 U81 ( .A(i2x_cmd0[0]), .B(n137), .C(i2x_cmd2[0]), .D(n138), .Z(n59) );
  ND2 U82 ( .A(n61), .B(n62), .Z(b2x_addr[9]) );
  AO2 U83 ( .A(i2x_addr3[9]), .B(N172), .C(i2x_addr1[9]), .D(n136), .Z(n62) );
  AO2 U84 ( .A(i2x_addr0[9]), .B(n137), .C(i2x_addr2[9]), .D(n138), .Z(n61) );
  ND2 U85 ( .A(n63), .B(n64), .Z(b2x_addr[8]) );
  AO2 U86 ( .A(i2x_addr3[8]), .B(N172), .C(i2x_addr1[8]), .D(n136), .Z(n64) );
  AO2 U87 ( .A(i2x_addr0[8]), .B(n137), .C(i2x_addr2[8]), .D(n138), .Z(n63) );
  ND2 U88 ( .A(n65), .B(n66), .Z(b2x_addr[7]) );
  AO2 U89 ( .A(i2x_addr3[7]), .B(N172), .C(i2x_addr1[7]), .D(n136), .Z(n66) );
  AO2 U90 ( .A(i2x_addr0[7]), .B(n137), .C(i2x_addr2[7]), .D(n138), .Z(n65) );
  ND2 U91 ( .A(n67), .B(n68), .Z(b2x_addr[6]) );
  AO2 U92 ( .A(i2x_addr3[6]), .B(N172), .C(i2x_addr1[6]), .D(n136), .Z(n68) );
  AO2 U93 ( .A(i2x_addr0[6]), .B(n137), .C(i2x_addr2[6]), .D(n138), .Z(n67) );
  ND2 U94 ( .A(n69), .B(n70), .Z(b2x_addr[5]) );
  AO2 U95 ( .A(i2x_addr3[5]), .B(N172), .C(i2x_addr1[5]), .D(n136), .Z(n70) );
  AO2 U96 ( .A(i2x_addr0[5]), .B(n137), .C(i2x_addr2[5]), .D(n138), .Z(n69) );
  ND2 U97 ( .A(n71), .B(n72), .Z(b2x_addr[4]) );
  AO2 U98 ( .A(i2x_addr3[4]), .B(N172), .C(i2x_addr1[4]), .D(n136), .Z(n72) );
  AO2 U99 ( .A(i2x_addr0[4]), .B(n137), .C(i2x_addr2[4]), .D(n138), .Z(n71) );
  ND2 U100 ( .A(n73), .B(n74), .Z(b2x_addr[3]) );
  AO2 U101 ( .A(i2x_addr3[3]), .B(N172), .C(i2x_addr1[3]), .D(n136), .Z(n74)
         );
  AO2 U102 ( .A(i2x_addr0[3]), .B(n137), .C(i2x_addr2[3]), .D(n138), .Z(n73)
         );
  ND2 U103 ( .A(n75), .B(n76), .Z(b2x_addr[2]) );
  AO2 U104 ( .A(i2x_addr3[2]), .B(N172), .C(i2x_addr1[2]), .D(n136), .Z(n76)
         );
  AO2 U105 ( .A(i2x_addr0[2]), .B(n137), .C(i2x_addr2[2]), .D(n138), .Z(n75)
         );
  ND2 U106 ( .A(n77), .B(n78), .Z(b2x_addr[1]) );
  AO2 U107 ( .A(i2x_addr3[1]), .B(N172), .C(i2x_addr1[1]), .D(n136), .Z(n78)
         );
  AO2 U108 ( .A(i2x_addr0[1]), .B(n137), .C(i2x_addr2[1]), .D(n138), .Z(n77)
         );
  ND2 U109 ( .A(n79), .B(n80), .Z(b2x_addr[12]) );
  AO2 U110 ( .A(i2x_addr3[12]), .B(N172), .C(i2x_addr1[12]), .D(n136), .Z(n80)
         );
  AO2 U111 ( .A(i2x_addr0[12]), .B(n137), .C(i2x_addr2[12]), .D(n138), .Z(n79)
         );
  ND2 U112 ( .A(n81), .B(n82), .Z(b2x_addr[11]) );
  AO2 U113 ( .A(i2x_addr3[11]), .B(N172), .C(i2x_addr1[11]), .D(n136), .Z(n82)
         );
  AO2 U114 ( .A(i2x_addr0[11]), .B(n137), .C(i2x_addr2[11]), .D(n138), .Z(n81)
         );
  ND2 U115 ( .A(n83), .B(n84), .Z(b2x_addr[10]) );
  AO2 U116 ( .A(i2x_addr3[10]), .B(N172), .C(i2x_addr1[10]), .D(n136), .Z(n84)
         );
  AO2 U117 ( .A(i2x_addr0[10]), .B(n137), .C(i2x_addr2[10]), .D(n138), .Z(n83)
         );
  ND2 U118 ( .A(n85), .B(n86), .Z(b2x_addr[0]) );
  AO2 U119 ( .A(i2x_addr3[0]), .B(N172), .C(i2x_addr1[0]), .D(n136), .Z(n86)
         );
  AO2 U120 ( .A(i2x_addr0[0]), .B(n137), .C(i2x_addr2[0]), .D(n138), .Z(n85)
         );
  AO4 U121 ( .A(n87), .B(n5), .C(n88), .D(n89), .Z(N121) );
  ND2 U122 ( .A(r2b_ba[1]), .B(n90), .Z(n89) );
  AO4 U123 ( .A(n87), .B(n17), .C(n88), .D(n91), .Z(N120) );
  ND2 U124 ( .A(r2b_ba[0]), .B(n90), .Z(n91) );
  OR3 U125 ( .A(n88), .B(n92), .C(n90), .Z(n87) );
  MUX21H U126 ( .A(n93), .B(n94), .S(n92), .Z(n90) );
  NR3 U127 ( .A(n95), .B(n96), .C(n2), .Z(n94) );
  NR2 U128 ( .A(n97), .B(n98), .Z(n93) );
  NR2 U129 ( .A(n88), .B(n99), .Z(N119) );
  MUX31L U130 ( .D0(n131), .D1(n133), .D2(r2b_ba[1]), .A(n100), .B(n101), .Z(
        n99) );
  NR2 U131 ( .A(n88), .B(n102), .Z(N118) );
  MUX31L U132 ( .D0(n132), .D1(n134), .D2(r2b_ba[0]), .A(n100), .B(n101), .Z(
        n102) );
  NR2 U133 ( .A(n103), .B(n97), .Z(n101) );
  IV U134 ( .A(n104), .Z(n97) );
  MUX21H U135 ( .A(n105), .B(n98), .S(n92), .Z(n103) );
  ND2 U136 ( .A(rank_cnt_1_), .B(n1), .Z(n105) );
  NR2 U137 ( .A(n88), .B(n106), .Z(N117) );
  MUX31L U138 ( .D0(n133), .D1(n135), .D2(r2b_ba[1]), .A(n100), .B(n107), .Z(
        n106) );
  NR2 U139 ( .A(n88), .B(n108), .Z(N116) );
  MUX31L U140 ( .D0(n134), .D1(n139), .D2(r2b_ba[0]), .A(n100), .B(n107), .Z(
        n108) );
  AN3 U141 ( .A(n104), .B(n95), .C(n109), .Z(n107) );
  MUX21L U142 ( .A(rank_cnt_0_), .B(rank_cnt_1_), .S(n100), .Z(n109) );
  NR2 U143 ( .A(n88), .B(n110), .Z(N115) );
  MUX21L U144 ( .A(r2b_ba[1]), .B(n111), .S(n112), .Z(n110) );
  MUX21L U145 ( .A(n4), .B(n32), .S(n100), .Z(n111) );
  NR2 U146 ( .A(n88), .B(n113), .Z(N114) );
  MUX21L U147 ( .A(r2b_ba[0]), .B(n114), .S(n112), .Z(n113) );
  AO2 U148 ( .A(b2r_ack), .B(b2x_idle), .C(n104), .D(n115), .Z(n112) );
  NR2 U149 ( .A(n100), .B(rank_cnt_1_), .Z(n115) );
  IV U150 ( .A(n92), .Z(n100) );
  NR2 U151 ( .A(n96), .B(test_so13), .Z(n104) );
  NR2 U152 ( .A(n95), .B(test_so13), .Z(b2x_idle) );
  IV U153 ( .A(n96), .Z(b2r_ack) );
  MUX21H U154 ( .A(b2x_ba[0]), .B(n139), .S(n92), .Z(n114) );
  IV U155 ( .A(reset_n), .Z(n88) );
  AO4 U156 ( .A(n2), .B(n116), .C(n117), .D(n118), .Z(N113) );
  MUX21L U157 ( .A(n119), .B(n120), .S(n98), .Z(n118) );
  EN U158 ( .A(test_so13), .B(n121), .Z(n120) );
  MUX21L U159 ( .A(n121), .B(n92), .S(n2), .Z(n119) );
  IV U160 ( .A(n122), .Z(n121) );
  AO4 U161 ( .A(n3), .B(n116), .C(n123), .D(n117), .Z(N112) );
  AO6 U162 ( .A(n124), .B(n125), .C(n122), .Z(n123) );
  NR2 U163 ( .A(n125), .B(n124), .Z(n122) );
  AN2 U164 ( .A(n98), .B(n95), .Z(n124) );
  ND2 U165 ( .A(n1), .B(n3), .Z(n95) );
  ND2 U166 ( .A(rank_cnt_1_), .B(rank_cnt_0_), .Z(n98) );
  MUX21L U167 ( .A(n116), .B(n117), .S(n1), .Z(N111) );
  ND2 U168 ( .A(n126), .B(reset_n), .Z(n117) );
  EN U169 ( .A(n92), .B(n96), .Z(n126) );
  AO3 U170 ( .A(n92), .B(n96), .C(n125), .D(reset_n), .Z(n116) );
  ND2 U171 ( .A(n92), .B(n96), .Z(n125) );
  NR4 U172 ( .A(i2r_ack[1]), .B(i2r_ack[0]), .C(i2r_ack[3]), .D(i2r_ack[2]), 
        .Z(n96) );
  AN3 U173 ( .A(b2x_cmd[1]), .B(b2x_req), .C(x2b_ack), .Z(n92) );
  ND2 U174 ( .A(n127), .B(n128), .Z(b2x_req) );
  AO2 U175 ( .A(i2x_req[3]), .B(N172), .C(i2x_req[1]), .D(n136), .Z(n128) );
  AO2 U176 ( .A(i2x_req[0]), .B(n137), .C(i2x_req[2]), .D(n138), .Z(n127) );
  ND2 U177 ( .A(n129), .B(n130), .Z(b2x_cmd[1]) );
  AO2 U178 ( .A(i2x_cmd3[1]), .B(N172), .C(i2x_cmd1[1]), .D(n136), .Z(n130) );
  IV U179 ( .A(n21), .Z(n136) );
  ND2 U180 ( .A(n32), .B(b2x_ba[0]), .Z(n21) );
  NR2 U181 ( .A(n32), .B(n33), .Z(N172) );
  AO2 U182 ( .A(i2x_cmd0[1]), .B(n137), .C(i2x_cmd2[1]), .D(n138), .Z(n129) );
  NR2 U183 ( .A(b2x_ba[0]), .B(n32), .Z(n138) );
  IV U184 ( .A(n22), .Z(n137) );
  ND2 U185 ( .A(n32), .B(n33), .Z(n22) );
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
         n214, n215, n216, n217, n218, n219, n220, n221;
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
  FD1S saved_rd_data_reg_6_ ( .D(n173), .TI(n217), .TE(test_se), .CP(n58), .Q(
        n216), .QN(n35) );
  FD1S saved_rd_data_reg_5_ ( .D(n172), .TI(n218), .TE(test_se), .CP(n58), .Q(
        n217), .QN(n36) );
  FD1S saved_rd_data_reg_4_ ( .D(n171), .TI(n219), .TE(test_se), .CP(n58), .Q(
        n218), .QN(n37) );
  FD1S saved_rd_data_reg_3_ ( .D(n170), .TI(n220), .TE(test_se), .CP(n57), .Q(
        n219), .QN(n38) );
  FD1S saved_rd_data_reg_2_ ( .D(n169), .TI(n221), .TE(test_se), .CP(n57), .Q(
        n220), .QN(n39) );
  FD1S saved_rd_data_reg_1_ ( .D(n168), .TI(test_si2), .TE(test_se), .CP(n57), 
        .Q(n221), .QN(n44) );
  FD1S saved_rd_data_reg_0_ ( .D(n167), .TI(rd_xfr_count[1]), .TE(test_se), 
        .CP(n57), .Q(test_so1), .QN(n55) );
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


module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, r2x_idle, b2x_idle, 
        b2x_req, b2x_start, b2x_last, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, b2x_wrap, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_din, sdr_dout, 
        sdr_den_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_id, 
        a2x_wrdt, a2x_wren_n, x2a_wrnext, x2a_rddt, x2a_rdok, sdr_init_done, 
        sdram_enable, sdram_mode_reg, xfr_bank_sel, cas_latency, trp_delay, 
        trcar_delay, twr_delay, rfsh_time, rfsh_rmax, test_si5, test_si4, 
        test_si3, test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] b2x_id;
  input [1:0] b2x_ba;
  input [12:0] b2x_addr;
  input [6:0] b2x_len;
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
         b2x_wrap, b2x_tras_ok, sdram_enable, test_si5, test_si4, test_si3,
         test_si2, test_si1, test_se;
  output x2b_ack, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n,
         sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n, x2a_rdstart, x2a_wrstart,
         x2a_rdlast, x2a_wrlast, x2a_wrnext, x2a_rdok, sdr_init_done, test_so2,
         test_so1;
  wire   N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         l_rd_next_6_, l_rd_last_6_, l_rd_start_6_, d_act_cmd, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N137, N138, N139, N140,
         N143, N144, N145, N146, N149, N150, N151, N152, N153, N154, N155,
         N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177,
         N178, N179, N180, N267, N268, N269, N270, N271, N272, N273, N274,
         rfsh_row_cnt_1_, rfsh_row_cnt_0_, N317, N318, N319, N320, N321, N322,
         N323, N324, N325, N326, N327, N328, N351, N352, N353, N354, N355,
         N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366,
         N367, N368, N369, N370, N371, N372, N373, N374, N375, N376, N377,
         n191, n195, n196, n207, n208, n209, n212, n213, n214, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n192, n193, n194, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n210, n211, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n573, n574, n575, n576, n577, n578, n579, n580, n581;
  wire   [12:0] xfr_caddr;
  wire   [3:0] l_id;
  wire   [1:0] xfr_st;
  wire   [3:2] tmr0;
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

  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_0_DW01_inc_10 add_620 ( .A(rfsh_timer), .SUM({N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317}) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_DW01_inc_1_DW01_inc_11 r183 ( .A(xfr_caddr), 
        .SUM({N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46}) );
  FD1S cntr1_reg_0_ ( .D(N358), .TI(n138), .TE(test_se), .CP(n150), .Q(n581), 
        .QN(n214) );
  FD1S mgmt_st_reg_1_ ( .D(N352), .TI(n1), .TE(test_se), .CP(n144), .Q(n131), 
        .QN(n208) );
  FD1S mgmt_st_reg_2_ ( .D(N353), .TI(n131), .TE(test_se), .CP(n144), .Q(n4), 
        .QN(n207) );
  FD1S mgmt_st_reg_0_ ( .D(N351), .TI(n136), .TE(test_se), .CP(n145), .Q(n1), 
        .QN(n209) );
  FD1S l_wrap_reg ( .D(n540), .TI(l_rd_start_6_), .TE(test_se), .CP(n146), .Q(
        n136), .QN(n191) );
  FD1S l_last_reg ( .D(n541), .TI(l_id[3]), .TE(test_se), .CP(n146), .Q(n579), 
        .QN(n510) );
  FD1S l_rd_start_reg_0_ ( .D(N163), .TI(l_rd_next_6_), .TE(test_se), .CP(n145), .Q(n566), .QN(n509) );
  FD1S l_rd_start_reg_1_ ( .D(N164), .TI(n566), .TE(test_se), .CP(n145), .Q(
        n565), .QN(n508) );
  FD1S l_rd_start_reg_2_ ( .D(N165), .TI(n565), .TE(test_se), .CP(n145), .Q(
        n564), .QN(n507) );
  FD1S l_rd_start_reg_3_ ( .D(N166), .TI(n564), .TE(test_se), .CP(n145), .Q(
        n563), .QN(n506) );
  FD1S l_rd_start_reg_5_ ( .D(N168), .TI(n562), .TE(test_se), .CP(n145), .Q(
        n561), .QN(n505) );
  FD1S l_len_reg_1_ ( .D(N150), .TI(n142), .TE(test_se), .CP(n146), .Q(n578), 
        .QN(n533) );
  FD1S l_len_reg_6_ ( .D(N155), .TI(n7), .TE(test_se), .CP(n146), .Q(n576), 
        .QN(n529) );
  FD1S l_len_reg_5_ ( .D(N154), .TI(n134), .TE(test_se), .CP(n146), .Q(n7), 
        .QN(n530) );
  FD1S l_len_reg_4_ ( .D(N153), .TI(n141), .TE(test_se), .CP(n146), .Q(n134), 
        .QN(n527) );
  FD1S l_len_reg_3_ ( .D(N152), .TI(n577), .TE(test_se), .CP(n146), .Q(n141), 
        .QN(n531) );
  FD1S l_len_reg_2_ ( .D(N151), .TI(n578), .TE(test_se), .CP(n146), .Q(n577), 
        .QN(n528) );
  FD1S l_len_reg_0_ ( .D(N149), .TI(n579), .TE(test_se), .CP(n146), .Q(n142), 
        .QN(n532) );
  FD1S l_rd_next_reg_2_ ( .D(N158), .TI(n511), .TE(test_se), .CP(n144), .Q(
        n569), .QN(n513) );
  FD1S l_rd_next_reg_3_ ( .D(N159), .TI(n569), .TE(test_se), .CP(n144), .Q(
        n135), .QN(n196) );
  FD1S l_rd_next_reg_4_ ( .D(N160), .TI(n135), .TE(test_se), .CP(n145), .Q(
        n568), .QN(n195) );
  FD1S l_rd_next_reg_5_ ( .D(N161), .TI(n568), .TE(test_se), .CP(n145), .Q(
        n567), .QN(n514) );
  FD1S l_rd_last_reg_0_ ( .D(N170), .TI(n576), .TE(test_se), .CP(n149), .Q(
        n575), .QN(n504) );
  FD1S l_rd_last_reg_1_ ( .D(N171), .TI(n575), .TE(test_se), .CP(n149), .Q(
        n574), .QN(n503) );
  FD1S l_rd_last_reg_2_ ( .D(N172), .TI(n574), .TE(test_se), .CP(n149), .Q(
        n573), .QN(n502) );
  FD1S l_rd_last_reg_3_ ( .D(N173), .TI(n573), .TE(test_se), .CP(n149), .Q(
        test_so1), .QN(n501) );
  FD1S l_rd_last_reg_5_ ( .D(N175), .TI(n571), .TE(test_se), .CP(n149), .Q(
        n570), .QN(n500) );
  FD1S cntr1_reg_1_ ( .D(N359), .TI(n581), .TE(test_se), .CP(n150), .Q(n9), 
        .QN(n213) );
  FD1S cntr1_reg_2_ ( .D(N360), .TI(n9), .TE(test_se), .CP(n150), .Q(n139), 
        .QN(n212) );
  FD1S cntr1_reg_3_ ( .D(N361), .TI(n139), .TE(test_se), .CP(n150), .Q(n580), 
        .QN(n498) );
  FD1S act_cmd_reg ( .D(N177), .TI(test_si1), .TE(test_se), .CP(n149), .Q(n138), .QN(n499) );
  FD1S l_rd_start_reg_4_ ( .D(N167), .TI(n563), .TE(test_se), .CP(n145), .Q(
        n562), .QN(n133) );
  FD1S l_rd_start_reg_6_ ( .D(N169), .TI(n561), .TE(test_se), .CP(n145), .Q(
        l_rd_start_6_) );
  FD1S l_rd_next_reg_6_ ( .D(N162), .TI(n567), .TE(test_se), .CP(n145), .Q(
        l_rd_next_6_) );
  FD1S sdr_den_n_reg_0_ ( .D(N274), .TI(sdr_cke), .TE(test_se), .CP(n148), .Q(
        sdr_den_n[0]) );
  FD1S sdr_den_n_reg_1_ ( .D(N274), .TI(sdr_den_n[0]), .TE(test_se), .CP(n148), 
        .Q(sdr_den_n[1]) );
  FD1S l_rd_last_reg_4_ ( .D(N174), .TI(test_si2), .TE(test_se), .CP(n149), 
        .Q(n571), .QN(n132) );
  FD1S l_rd_last_reg_6_ ( .D(N176), .TI(n570), .TE(test_se), .CP(n149), .Q(
        l_rd_last_6_) );
  FD1S tmr0_reg_0_ ( .D(N354), .TI(sdr_ras_n), .TE(test_se), .CP(n150), .Q(
        n560), .QN(n3) );
  FD1S tmr0_reg_1_ ( .D(N355), .TI(n560), .TE(test_se), .CP(n150), .Q(n559), 
        .QN(n10) );
  FD1S sdr_addr_reg_0_ ( .D(n483), .TI(rfsh_timer[11]), .TE(test_se), .CP(n150), .Q(sdr_addr[0]) );
  FD1S sdr_ba_reg_1_ ( .D(n484), .TI(sdr_ba[0]), .TE(test_se), .CP(n151), .Q(
        sdr_ba[1]) );
  FD1S sdr_ba_reg_0_ ( .D(n485), .TI(sdr_addr[12]), .TE(test_se), .CP(n151), 
        .Q(sdr_ba[0]) );
  FD1S sdr_addr_reg_12_ ( .D(n486), .TI(test_si4), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[12]) );
  FD1S sdr_addr_reg_11_ ( .D(n487), .TI(sdr_addr[10]), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[11]) );
  FD1S sdr_addr_reg_9_ ( .D(n489), .TI(sdr_addr[8]), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[9]) );
  FD1S sdr_addr_reg_8_ ( .D(n490), .TI(sdr_addr[7]), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[8]) );
  FD1S sdr_addr_reg_7_ ( .D(n491), .TI(sdr_addr[6]), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[7]) );
  FD1S sdr_addr_reg_6_ ( .D(n492), .TI(sdr_addr[5]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[6]) );
  FD1S sdr_addr_reg_5_ ( .D(n493), .TI(sdr_addr[4]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[5]) );
  FD1S sdr_addr_reg_4_ ( .D(n494), .TI(sdr_addr[3]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[4]) );
  FD1S sdr_addr_reg_3_ ( .D(n495), .TI(sdr_addr[2]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[3]) );
  FD1S sdr_addr_reg_2_ ( .D(n496), .TI(sdr_addr[1]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[2]) );
  FD1S sdr_addr_reg_1_ ( .D(n497), .TI(sdr_addr[0]), .TE(test_se), .CP(n151), 
        .Q(sdr_addr[1]) );
  FD1S d_act_cmd_reg ( .D(N178), .TI(n580), .TE(test_se), .CP(n149), .Q(
        d_act_cmd) );
  FD1S rfsh_timer_reg_11_ ( .D(N373), .TI(rfsh_timer[10]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[11]), .QN(n525) );
  FD1S rfsh_timer_reg_10_ ( .D(N372), .TI(rfsh_timer[9]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[10]), .QN(n519) );
  FD1S rfsh_timer_reg_9_ ( .D(N371), .TI(rfsh_timer[8]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[9]), .QN(n521) );
  FD1S rfsh_timer_reg_8_ ( .D(N370), .TI(rfsh_timer[7]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[8]), .QN(n520) );
  FD1S rfsh_timer_reg_7_ ( .D(N369), .TI(rfsh_timer[6]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[7]), .QN(n516) );
  FD1S rfsh_timer_reg_6_ ( .D(N368), .TI(rfsh_timer[5]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[6]), .QN(n518) );
  FD1S rfsh_timer_reg_5_ ( .D(N367), .TI(rfsh_timer[4]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[5]), .QN(n517) );
  FD1S rfsh_timer_reg_4_ ( .D(N366), .TI(rfsh_timer[3]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[4]), .QN(n522) );
  FD1S rfsh_timer_reg_3_ ( .D(N365), .TI(rfsh_timer[2]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[3]), .QN(n524) );
  FD1S rfsh_timer_reg_2_ ( .D(N364), .TI(rfsh_timer[1]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[2]), .QN(n523) );
  FD1S rfsh_timer_reg_1_ ( .D(N363), .TI(rfsh_timer[0]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[1]), .QN(n515) );
  FD1S sdr_init_done_reg ( .D(N377), .TI(sdr_dqm[1]), .TE(test_se), .CP(n144), 
        .Q(sdr_init_done), .QN(n5) );
  FD1S l_id_reg_3_ ( .D(N146), .TI(l_id[2]), .TE(test_se), .CP(n147), .Q(
        l_id[3]) );
  FD1S l_id_reg_2_ ( .D(N145), .TI(l_id[1]), .TE(test_se), .CP(n147), .Q(
        l_id[2]) );
  FD1S l_id_reg_1_ ( .D(N144), .TI(l_id[0]), .TE(test_se), .CP(n147), .Q(
        l_id[1]) );
  FD1S l_id_reg_0_ ( .D(N143), .TI(xfr_bank_sel[1]), .TE(test_se), .CP(n146), 
        .Q(l_id[0]) );
  FD1S l_ba_reg_0_ ( .D(n539), .TI(d_act_cmd), .TE(test_se), .CP(n146), .Q(
        xfr_bank_sel[0]), .QN(n8) );
  FD1S l_rd_next_reg_0_ ( .D(N156), .TI(l_rd_last_6_), .TE(test_se), .CP(n144), 
        .Q(n512) );
  FD1S l_rd_next_reg_1_ ( .D(N157), .TI(n512), .TE(test_se), .CP(n144), .Q(
        n511) );
  FD1S tmr0_reg_3_ ( .D(N357), .TI(tmr0[2]), .TE(test_se), .CP(n144), .Q(
        tmr0[3]) );
  FD1S sdr_addr_reg_10_ ( .D(n488), .TI(sdr_addr[9]), .TE(test_se), .CP(n152), 
        .Q(sdr_addr[10]) );
  FD1S l_ba_reg_1_ ( .D(n538), .TI(xfr_bank_sel[0]), .TE(test_se), .CP(n146), 
        .Q(xfr_bank_sel[1]) );
  FD1S xfr_st_reg_0_ ( .D(N179), .TI(xfr_caddr[12]), .TE(test_se), .CP(n144), 
        .Q(xfr_st[0]), .QN(n137) );
  FD1S sdr_dout_reg_15_ ( .D(n542), .TI(sdr_dout[14]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[15]) );
  FD1S sdr_dout_reg_14_ ( .D(n543), .TI(sdr_dout[13]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[14]) );
  FD1S sdr_dout_reg_13_ ( .D(n544), .TI(sdr_dout[12]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[13]) );
  FD1S sdr_dout_reg_12_ ( .D(n545), .TI(sdr_dout[11]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[12]) );
  FD1S sdr_dout_reg_11_ ( .D(n546), .TI(sdr_dout[10]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[11]) );
  FD1S sdr_dout_reg_10_ ( .D(n547), .TI(sdr_dout[9]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[10]) );
  FD1S sdr_dout_reg_9_ ( .D(n548), .TI(sdr_dout[8]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[9]) );
  FD1S sdr_dout_reg_8_ ( .D(n549), .TI(sdr_dout[7]), .TE(test_se), .CP(n147), 
        .Q(sdr_dout[8]) );
  FD1S sdr_dout_reg_7_ ( .D(n550), .TI(sdr_dout[6]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[7]) );
  FD1S sdr_dout_reg_6_ ( .D(n551), .TI(sdr_dout[5]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[6]) );
  FD1S sdr_dout_reg_5_ ( .D(n552), .TI(sdr_dout[4]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[5]) );
  FD1S sdr_dout_reg_4_ ( .D(n553), .TI(sdr_dout[3]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[4]) );
  FD1S sdr_dout_reg_3_ ( .D(n554), .TI(sdr_dout[2]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[3]) );
  FD1S sdr_dout_reg_2_ ( .D(n555), .TI(sdr_dout[1]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[2]) );
  FD1S sdr_dout_reg_1_ ( .D(n556), .TI(sdr_dout[0]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[1]) );
  FD1S sdr_dout_reg_0_ ( .D(n557), .TI(sdr_den_n[1]), .TE(test_se), .CP(n148), 
        .Q(sdr_dout[0]) );
  FD1S xfr_caddr_reg_2_ ( .D(N130), .TI(xfr_caddr[1]), .TE(test_se), .CP(n149), 
        .Q(xfr_caddr[2]) );
  FD1S xfr_caddr_reg_3_ ( .D(N131), .TI(xfr_caddr[2]), .TE(test_se), .CP(n151), 
        .Q(xfr_caddr[3]) );
  FD1S xfr_caddr_reg_4_ ( .D(N132), .TI(xfr_caddr[3]), .TE(test_se), .CP(n151), 
        .Q(xfr_caddr[4]) );
  FD1S xfr_caddr_reg_5_ ( .D(N133), .TI(xfr_caddr[4]), .TE(test_se), .CP(n151), 
        .Q(xfr_caddr[5]) );
  FD1S xfr_caddr_reg_6_ ( .D(N134), .TI(xfr_caddr[5]), .TE(test_se), .CP(n151), 
        .Q(xfr_caddr[6]) );
  FD1S xfr_caddr_reg_7_ ( .D(N135), .TI(xfr_caddr[6]), .TE(test_se), .CP(n152), 
        .Q(xfr_caddr[7]) );
  FD1S xfr_caddr_reg_8_ ( .D(N136), .TI(xfr_caddr[7]), .TE(test_se), .CP(n152), 
        .Q(xfr_caddr[8]) );
  FD1S xfr_caddr_reg_9_ ( .D(N137), .TI(xfr_caddr[8]), .TE(test_se), .CP(n152), 
        .Q(xfr_caddr[9]) );
  FD1S xfr_caddr_reg_10_ ( .D(N138), .TI(xfr_caddr[9]), .TE(test_se), .CP(n152), .Q(xfr_caddr[10]) );
  FD1S xfr_caddr_reg_11_ ( .D(N139), .TI(xfr_caddr[10]), .TE(test_se), .CP(
        n152), .Q(xfr_caddr[11]) );
  FD1S xfr_caddr_reg_12_ ( .D(N140), .TI(xfr_caddr[11]), .TE(test_se), .CP(
        n152), .Q(xfr_caddr[12]) );
  FD1S xfr_st_reg_1_ ( .D(N180), .TI(xfr_st[0]), .TE(test_se), .CP(n145), .Q(
        xfr_st[1]) );
  FD1S rfsh_row_cnt_reg_0_ ( .D(N374), .TI(n4), .TE(test_se), .CP(n144), .Q(
        rfsh_row_cnt_0_), .QN(n2) );
  FD1S rfsh_row_cnt_reg_2_ ( .D(N376), .TI(rfsh_row_cnt_1_), .TE(test_se), 
        .CP(n150), .Q(test_so2), .QN(n140) );
  FD1S tmr0_reg_2_ ( .D(N356), .TI(n559), .TE(test_se), .CP(n150), .Q(tmr0[2])
         );
  FD1S xfr_caddr_reg_1_ ( .D(N129), .TI(xfr_caddr[0]), .TE(test_se), .CP(n144), 
        .Q(xfr_caddr[1]) );
  FD1S rfsh_row_cnt_reg_1_ ( .D(N375), .TI(rfsh_row_cnt_0_), .TE(test_se), 
        .CP(n150), .Q(rfsh_row_cnt_1_), .QN(n6) );
  FD1S rfsh_timer_reg_0_ ( .D(N362), .TI(test_si3), .TE(test_se), .CP(n143), 
        .Q(rfsh_timer[0]), .QN(n526) );
  FD1S xfr_caddr_reg_0_ ( .D(N128), .TI(tmr0[3]), .TE(test_se), .CP(n149), .Q(
        xfr_caddr[0]) );
  FD1S sdr_dqm_reg_1_ ( .D(N273), .TI(sdr_dqm[0]), .TE(test_se), .CP(n148), 
        .Q(sdr_dqm[1]) );
  FD1S sdr_dqm_reg_0_ ( .D(N272), .TI(test_si5), .TE(test_se), .CP(n148), .Q(
        sdr_dqm[0]) );
  FD1S sdr_cke_reg ( .D(N268), .TI(sdr_cas_n), .TE(test_se), .CP(n150), .Q(
        sdr_cke) );
  FD1S sdr_cas_n_reg ( .D(N270), .TI(sdr_ba[1]), .TE(test_se), .CP(n149), .Q(
        sdr_cas_n) );
  FD1S sdr_we_n_reg ( .D(N271), .TI(xfr_st[1]), .TE(test_se), .CP(n144), .Q(
        sdr_we_n) );
  FD1S sdr_ras_n_reg ( .D(N269), .TI(sdr_init_done), .TE(test_se), .CP(n147), 
        .Q(sdr_ras_n) );
  FD1S sdr_cs_n_reg ( .D(N267), .TI(sdr_dout[15]), .TE(test_se), .CP(n150), 
        .Q(sdr_cs_n) );
  IVP U13 ( .A(n154), .Z(n149) );
  IVP U14 ( .A(n154), .Z(n148) );
  IVP U125 ( .A(n155), .Z(n146) );
  IVP U126 ( .A(n154), .Z(n147) );
  IVP U127 ( .A(n155), .Z(n145) );
  IVP U128 ( .A(n155), .Z(n144) );
  IVP U129 ( .A(n157), .Z(n154) );
  IVP U130 ( .A(n157), .Z(n155) );
  IVP U131 ( .A(n153), .Z(n152) );
  IVP U132 ( .A(n153), .Z(n151) );
  IVP U133 ( .A(n153), .Z(n150) );
  IVP U134 ( .A(n156), .Z(n143) );
  IVP U135 ( .A(n157), .Z(n156) );
  IVP U136 ( .A(n159), .Z(n157) );
  IVP U137 ( .A(n158), .Z(n153) );
  IVP U138 ( .A(n159), .Z(n158) );
  IVP U139 ( .A(clk), .Z(n159) );
  NR2 U140 ( .A(n160), .B(n161), .Z(x2b_wrok) );
  AO1 U141 ( .A(n162), .B(n163), .C(n164), .D(n165), .Z(n160) );
  NR2 U142 ( .A(n166), .B(n167), .Z(n165) );
  IV U143 ( .A(n168), .Z(n166) );
  NR4 U144 ( .A(n169), .B(n170), .C(n171), .D(n172), .Z(x2b_refresh) );
  IV U145 ( .A(n173), .Z(n172) );
  NR2 U146 ( .A(n174), .B(n161), .Z(x2b_rdok) );
  NR2 U147 ( .A(n138), .B(d_act_cmd), .Z(x2b_act_ok) );
  NR3 U148 ( .A(n175), .B(n176), .C(n177), .Z(x2a_wrstart) );
  AN2 U149 ( .A(n178), .B(n179), .Z(x2a_wrlast) );
  MUX21L U150 ( .A(n510), .B(n180), .S(n169), .Z(n179) );
  AO3 U151 ( .A(n181), .B(n133), .C(n182), .D(n183), .Z(x2a_rdstart) );
  IV U152 ( .A(n184), .Z(n183) );
  AO4 U153 ( .A(n185), .B(n505), .C(n186), .D(n506), .Z(n184) );
  EO1 U154 ( .A(n187), .B(l_rd_start_6_), .C(n188), .D(n507), .Z(n182) );
  AO3 U155 ( .A(n195), .B(n181), .C(n189), .D(n190), .Z(x2a_rdok) );
  EO1 U156 ( .A(n192), .B(n135), .C(n185), .D(n514), .Z(n190) );
  EO1 U157 ( .A(n187), .B(l_rd_next_6_), .C(n188), .D(n513), .Z(n189) );
  AO3 U158 ( .A(n181), .B(n132), .C(n193), .D(n194), .Z(x2a_rdlast) );
  IV U159 ( .A(n197), .Z(n194) );
  AO4 U160 ( .A(n185), .B(n500), .C(n186), .D(n501), .Z(n197) );
  IV U161 ( .A(n192), .Z(n186) );
  EO1 U162 ( .A(n187), .B(l_rd_last_6_), .C(n188), .D(n502), .Z(n193) );
  EO U163 ( .A(cas_latency[2]), .B(n198), .Z(n187) );
  IV U164 ( .A(n199), .Z(x2a_id[3]) );
  IV U165 ( .A(n200), .Z(x2a_id[2]) );
  IV U166 ( .A(n201), .Z(x2a_id[1]) );
  IV U167 ( .A(n202), .Z(x2a_id[0]) );
  EON1 U168 ( .A(n203), .B(n204), .C(xfr_bank_sel[1]), .D(n205), .Z(n538) );
  EON1 U169 ( .A(n8), .B(n206), .C(b2x_ba[0]), .D(n210), .Z(n539) );
  EON1 U170 ( .A(n191), .B(n206), .C(b2x_wrap), .D(n210), .Z(n540) );
  MUX21H U171 ( .A(sdr_dout[15]), .B(a2x_wrdt[15]), .S(x2a_wrnext), .Z(n542)
         );
  MUX21H U172 ( .A(sdr_dout[14]), .B(a2x_wrdt[14]), .S(x2a_wrnext), .Z(n543)
         );
  MUX21H U173 ( .A(sdr_dout[13]), .B(a2x_wrdt[13]), .S(x2a_wrnext), .Z(n544)
         );
  MUX21H U174 ( .A(sdr_dout[12]), .B(a2x_wrdt[12]), .S(x2a_wrnext), .Z(n545)
         );
  MUX21H U175 ( .A(sdr_dout[11]), .B(a2x_wrdt[11]), .S(x2a_wrnext), .Z(n546)
         );
  MUX21H U176 ( .A(sdr_dout[10]), .B(a2x_wrdt[10]), .S(x2a_wrnext), .Z(n547)
         );
  MUX21H U177 ( .A(sdr_dout[9]), .B(a2x_wrdt[9]), .S(x2a_wrnext), .Z(n548) );
  MUX21H U178 ( .A(sdr_dout[8]), .B(a2x_wrdt[8]), .S(x2a_wrnext), .Z(n549) );
  MUX21H U179 ( .A(sdr_dout[7]), .B(a2x_wrdt[7]), .S(x2a_wrnext), .Z(n550) );
  MUX21H U180 ( .A(sdr_dout[6]), .B(a2x_wrdt[6]), .S(x2a_wrnext), .Z(n551) );
  MUX21H U181 ( .A(sdr_dout[5]), .B(a2x_wrdt[5]), .S(x2a_wrnext), .Z(n552) );
  MUX21H U182 ( .A(sdr_dout[4]), .B(a2x_wrdt[4]), .S(x2a_wrnext), .Z(n553) );
  MUX21H U183 ( .A(sdr_dout[3]), .B(a2x_wrdt[3]), .S(x2a_wrnext), .Z(n554) );
  MUX21H U184 ( .A(sdr_dout[2]), .B(a2x_wrdt[2]), .S(x2a_wrnext), .Z(n555) );
  MUX21H U185 ( .A(sdr_dout[1]), .B(a2x_wrdt[1]), .S(x2a_wrnext), .Z(n556) );
  MUX21H U186 ( .A(sdr_dout[0]), .B(a2x_wrdt[0]), .S(x2a_wrnext), .Z(n557) );
  AO3 U187 ( .A(n211), .B(n215), .C(n216), .D(n217), .Z(n497) );
  AO2 U188 ( .A(sdr_addr[1]), .B(n218), .C(b2x_addr[1]), .D(x2b_ack), .Z(n217)
         );
  ND2 U189 ( .A(sdram_mode_reg[1]), .B(n219), .Z(n216) );
  IV U190 ( .A(N47), .Z(n215) );
  AO3 U191 ( .A(n211), .B(n220), .C(n221), .D(n222), .Z(n496) );
  AO2 U192 ( .A(sdr_addr[2]), .B(n218), .C(b2x_addr[2]), .D(x2b_ack), .Z(n222)
         );
  ND2 U193 ( .A(sdram_mode_reg[2]), .B(n219), .Z(n221) );
  IV U194 ( .A(N48), .Z(n220) );
  AO3 U195 ( .A(n211), .B(n223), .C(n224), .D(n225), .Z(n495) );
  AO2 U196 ( .A(sdr_addr[3]), .B(n218), .C(b2x_addr[3]), .D(x2b_ack), .Z(n225)
         );
  ND2 U197 ( .A(sdram_mode_reg[3]), .B(n219), .Z(n224) );
  IV U198 ( .A(N49), .Z(n223) );
  AO3 U199 ( .A(n211), .B(n226), .C(n227), .D(n228), .Z(n494) );
  AO2 U200 ( .A(sdr_addr[4]), .B(n218), .C(b2x_addr[4]), .D(x2b_ack), .Z(n228)
         );
  ND2 U201 ( .A(sdram_mode_reg[4]), .B(n219), .Z(n227) );
  IV U202 ( .A(N50), .Z(n226) );
  AO3 U203 ( .A(n211), .B(n229), .C(n230), .D(n231), .Z(n493) );
  AO2 U204 ( .A(sdr_addr[5]), .B(n218), .C(b2x_addr[5]), .D(x2b_ack), .Z(n231)
         );
  ND2 U205 ( .A(sdram_mode_reg[5]), .B(n219), .Z(n230) );
  IV U206 ( .A(N51), .Z(n229) );
  AO3 U207 ( .A(n211), .B(n232), .C(n233), .D(n234), .Z(n492) );
  AO2 U208 ( .A(sdr_addr[6]), .B(n218), .C(b2x_addr[6]), .D(x2b_ack), .Z(n234)
         );
  ND2 U209 ( .A(sdram_mode_reg[6]), .B(n219), .Z(n233) );
  IV U210 ( .A(N52), .Z(n232) );
  AO3 U211 ( .A(n211), .B(n235), .C(n236), .D(n237), .Z(n491) );
  AO2 U212 ( .A(sdr_addr[7]), .B(n218), .C(b2x_addr[7]), .D(x2b_ack), .Z(n237)
         );
  ND2 U213 ( .A(sdram_mode_reg[7]), .B(n219), .Z(n236) );
  IV U214 ( .A(N53), .Z(n235) );
  AO3 U215 ( .A(n211), .B(n238), .C(n239), .D(n240), .Z(n490) );
  AO2 U216 ( .A(sdr_addr[8]), .B(n218), .C(b2x_addr[8]), .D(x2b_ack), .Z(n240)
         );
  ND2 U217 ( .A(sdram_mode_reg[8]), .B(n219), .Z(n239) );
  IV U218 ( .A(N54), .Z(n238) );
  AO3 U219 ( .A(n211), .B(n241), .C(n242), .D(n243), .Z(n489) );
  AO2 U220 ( .A(sdr_addr[9]), .B(n218), .C(b2x_addr[9]), .D(x2b_ack), .Z(n243)
         );
  ND2 U221 ( .A(sdram_mode_reg[9]), .B(n219), .Z(n242) );
  IV U222 ( .A(N55), .Z(n241) );
  AO7 U223 ( .A(n211), .B(n244), .C(n245), .Z(n488) );
  MUX21L U224 ( .A(n246), .B(sdr_addr[10]), .S(n218), .Z(n245) );
  AO4 U225 ( .A(n247), .B(n248), .C(n249), .D(n250), .Z(n246) );
  NR2 U226 ( .A(sdram_mode_reg[10]), .B(n251), .Z(n249) );
  IV U227 ( .A(N56), .Z(n244) );
  AO3 U228 ( .A(n211), .B(n252), .C(n253), .D(n254), .Z(n487) );
  AO2 U229 ( .A(sdr_addr[11]), .B(n218), .C(b2x_addr[11]), .D(x2b_ack), .Z(
        n254) );
  IV U230 ( .A(N57), .Z(n252) );
  AO3 U231 ( .A(n211), .B(n255), .C(n256), .D(n257), .Z(n486) );
  AO2 U232 ( .A(sdr_addr[12]), .B(n218), .C(b2x_addr[12]), .D(x2b_ack), .Z(
        n257) );
  ND2 U233 ( .A(sdram_mode_reg[12]), .B(n219), .Z(n256) );
  IV U234 ( .A(N58), .Z(n255) );
  AO3 U235 ( .A(n8), .B(n211), .C(n253), .D(n258), .Z(n485) );
  AO2 U236 ( .A(sdr_ba[0]), .B(n218), .C(b2x_ba[0]), .D(x2b_ack), .Z(n258) );
  ND2 U237 ( .A(sdram_mode_reg[11]), .B(n219), .Z(n253) );
  AO7 U238 ( .A(n247), .B(n203), .C(n259), .Z(n484) );
  AO2 U239 ( .A(n260), .B(xfr_bank_sel[1]), .C(sdr_ba[1]), .D(n218), .Z(n259)
         );
  IV U240 ( .A(b2x_ba[1]), .Z(n203) );
  AO3 U241 ( .A(xfr_caddr[0]), .B(n211), .C(n261), .D(n262), .Z(n483) );
  AO2 U242 ( .A(sdr_addr[0]), .B(n218), .C(b2x_addr[0]), .D(x2b_ack), .Z(n262)
         );
  ND2 U243 ( .A(sdram_mode_reg[0]), .B(n219), .Z(n261) );
  IV U244 ( .A(n260), .Z(n211) );
  NR2 U245 ( .A(n218), .B(n263), .Z(n260) );
  AO1 U246 ( .A(n5), .B(n264), .C(n265), .D(n266), .Z(N377) );
  IV U247 ( .A(sdram_enable), .Z(n265) );
  MUX21L U248 ( .A(n267), .B(n268), .S(test_so2), .Z(N376) );
  AO2 U249 ( .A(n269), .B(n270), .C(n271), .D(n6), .Z(n268) );
  ND3 U250 ( .A(n271), .B(rfsh_row_cnt_0_), .C(rfsh_row_cnt_1_), .Z(n267) );
  MUX21L U251 ( .A(n272), .B(n273), .S(rfsh_row_cnt_1_), .Z(N375) );
  ND2 U252 ( .A(n269), .B(n270), .Z(n273) );
  AO7 U253 ( .A(rfsh_row_cnt_0_), .B(n266), .C(n274), .Z(n270) );
  ND2 U254 ( .A(rfsh_row_cnt_0_), .B(n271), .Z(n272) );
  MUX21H U255 ( .A(n275), .B(n271), .S(n2), .Z(N374) );
  NR4 U256 ( .A(n264), .B(n276), .C(n277), .D(n266), .Z(n271) );
  NR2 U257 ( .A(n274), .B(n264), .Z(n275) );
  NR2 U258 ( .A(n278), .B(n274), .Z(N373) );
  IV U259 ( .A(N328), .Z(n278) );
  NR2 U260 ( .A(n279), .B(n274), .Z(N372) );
  IV U261 ( .A(N327), .Z(n279) );
  NR2 U262 ( .A(n280), .B(n274), .Z(N371) );
  IV U263 ( .A(N326), .Z(n280) );
  NR2 U264 ( .A(n281), .B(n274), .Z(N370) );
  IV U265 ( .A(N325), .Z(n281) );
  NR2 U266 ( .A(n282), .B(n274), .Z(N369) );
  IV U267 ( .A(N324), .Z(n282) );
  NR2 U268 ( .A(n283), .B(n274), .Z(N368) );
  IV U269 ( .A(N323), .Z(n283) );
  NR2 U270 ( .A(n284), .B(n274), .Z(N367) );
  IV U271 ( .A(N322), .Z(n284) );
  NR2 U272 ( .A(n285), .B(n274), .Z(N366) );
  IV U273 ( .A(N321), .Z(n285) );
  NR2 U274 ( .A(n286), .B(n274), .Z(N365) );
  IV U275 ( .A(N320), .Z(n286) );
  NR2 U276 ( .A(n287), .B(n274), .Z(N364) );
  IV U277 ( .A(N319), .Z(n287) );
  NR2 U278 ( .A(n288), .B(n274), .Z(N363) );
  IV U279 ( .A(N318), .Z(n288) );
  NR2 U280 ( .A(n289), .B(n274), .Z(N362) );
  AO7 U281 ( .A(n277), .B(n276), .C(reset_n), .Z(n274) );
  ND4 U282 ( .A(n290), .B(n291), .C(n292), .D(n293), .Z(n276) );
  AN3 U283 ( .A(n294), .B(n295), .C(n296), .Z(n293) );
  EO U284 ( .A(n525), .B(rfsh_time[11]), .Z(n296) );
  EO U285 ( .A(n515), .B(rfsh_time[1]), .Z(n295) );
  EO U286 ( .A(n526), .B(rfsh_time[0]), .Z(n294) );
  EO U287 ( .A(n524), .B(rfsh_time[3]), .Z(n292) );
  EO U288 ( .A(n522), .B(rfsh_time[4]), .Z(n291) );
  EO U289 ( .A(n523), .B(rfsh_time[2]), .Z(n290) );
  ND4 U290 ( .A(n297), .B(n298), .C(n299), .D(n300), .Z(n277) );
  AN3 U291 ( .A(n301), .B(n302), .C(n303), .Z(n300) );
  EO U292 ( .A(n517), .B(rfsh_time[5]), .Z(n303) );
  EO U293 ( .A(n518), .B(rfsh_time[6]), .Z(n302) );
  EO U294 ( .A(n519), .B(rfsh_time[10]), .Z(n301) );
  EO U295 ( .A(n520), .B(rfsh_time[8]), .Z(n299) );
  EO U296 ( .A(n521), .B(rfsh_time[9]), .Z(n298) );
  EO U297 ( .A(n516), .B(rfsh_time[7]), .Z(n297) );
  IV U298 ( .A(N317), .Z(n289) );
  NR2 U299 ( .A(n304), .B(n266), .Z(N361) );
  AO1 U300 ( .A(n305), .B(n306), .C(n307), .D(n308), .Z(n304) );
  AO6 U301 ( .A(n309), .B(n310), .C(n498), .Z(n308) );
  ND2 U302 ( .A(n306), .B(n139), .Z(n310) );
  AO3 U303 ( .A(n140), .B(n311), .C(n312), .D(n313), .Z(N360) );
  MUX21H U304 ( .A(n309), .B(n314), .S(n212), .Z(n313) );
  ND2 U305 ( .A(n306), .B(n315), .Z(n314) );
  AO6 U306 ( .A(n9), .B(n306), .C(n316), .Z(n309) );
  AO3 U307 ( .A(n6), .B(n311), .C(n312), .D(n317), .Z(N359) );
  AO2 U308 ( .A(n315), .B(n306), .C(n316), .D(n9), .Z(n317) );
  MUX21L U309 ( .A(n318), .B(n214), .S(n306), .Z(n316) );
  AO3 U310 ( .A(n2), .B(n311), .C(n312), .D(n319), .Z(N358) );
  MUX21L U311 ( .A(n320), .B(n306), .S(n214), .Z(n319) );
  NR2 U312 ( .A(n306), .B(n318), .Z(n320) );
  NR2 U313 ( .A(n266), .B(n307), .Z(n312) );
  AN3 U314 ( .A(n209), .B(n208), .C(n207), .Z(n307) );
  IV U315 ( .A(n318), .Z(n311) );
  NR2 U316 ( .A(n321), .B(n264), .Z(n318) );
  IV U317 ( .A(n269), .Z(n264) );
  AO6 U318 ( .A(n322), .B(n323), .C(n266), .Z(N357) );
  ND2 U319 ( .A(trcar_delay[3]), .B(n306), .Z(n323) );
  AO2 U320 ( .A(tmr0[3]), .B(n324), .C(trp_delay[3]), .D(n325), .Z(n322) );
  IV U321 ( .A(n326), .Z(n324) );
  AO6 U322 ( .A(n327), .B(tmr0[2]), .C(n328), .Z(n326) );
  IV U323 ( .A(n329), .Z(n328) );
  NR2 U324 ( .A(n330), .B(n266), .Z(N356) );
  AO1 U325 ( .A(trcar_delay[2]), .B(n306), .C(n331), .D(n332), .Z(n330) );
  MUX21L U326 ( .A(n333), .B(n329), .S(tmr0[2]), .Z(n332) );
  ND2 U327 ( .A(n327), .B(n334), .Z(n329) );
  ND2 U328 ( .A(n327), .B(n335), .Z(n333) );
  IV U329 ( .A(n334), .Z(n335) );
  ND2 U330 ( .A(n336), .B(n337), .Z(n331) );
  IV U331 ( .A(n219), .Z(n337) );
  ND2 U332 ( .A(trp_delay[2]), .B(n325), .Z(n336) );
  AO6 U333 ( .A(n338), .B(n339), .C(n266), .Z(N355) );
  AO6 U334 ( .A(n327), .B(n340), .C(n219), .Z(n339) );
  AO7 U335 ( .A(n3), .B(n10), .C(n334), .Z(n340) );
  AO2 U336 ( .A(trp_delay[1]), .B(n325), .C(trcar_delay[1]), .D(n306), .Z(n338) );
  AO6 U337 ( .A(n341), .B(n342), .C(n266), .Z(N354) );
  AO6 U338 ( .A(n327), .B(n3), .C(n219), .Z(n342) );
  AO6 U339 ( .A(n343), .B(n344), .C(n345), .Z(n327) );
  AO2 U340 ( .A(trp_delay[0]), .B(n325), .C(trcar_delay[0]), .D(n306), .Z(n341) );
  NR2 U341 ( .A(n346), .B(n266), .Z(N353) );
  AO1 U342 ( .A(n347), .B(n348), .C(n306), .D(n349), .Z(n346) );
  NR2 U343 ( .A(n350), .B(n251), .Z(n349) );
  AO6 U344 ( .A(sdram_enable), .B(n321), .C(n208), .Z(n350) );
  OR3 U345 ( .A(n131), .B(n305), .C(n351), .Z(n348) );
  IV U346 ( .A(n352), .Z(n347) );
  NR2 U347 ( .A(n353), .B(n266), .Z(N352) );
  NR4 U348 ( .A(n219), .B(n354), .C(n355), .D(n356), .Z(n353) );
  AO6 U349 ( .A(n357), .B(n1), .C(n208), .Z(n356) );
  MUX21H U350 ( .A(n344), .B(n358), .S(n4), .Z(n357) );
  ND2 U351 ( .A(n321), .B(sdram_enable), .Z(n358) );
  AO1 U352 ( .A(n305), .B(n5), .C(n352), .D(n351), .Z(n355) );
  AN3 U353 ( .A(n315), .B(n212), .C(n498), .Z(n305) );
  AN2 U354 ( .A(n214), .B(n213), .Z(n315) );
  NR3 U355 ( .A(n359), .B(n360), .C(n250), .Z(n354) );
  NR2 U356 ( .A(n251), .B(n250), .Z(n219) );
  AO6 U357 ( .A(n361), .B(n362), .C(n266), .Z(N351) );
  AO2 U358 ( .A(n345), .B(n363), .C(n343), .D(n250), .Z(n362) );
  AO7 U359 ( .A(n209), .B(n4), .C(n360), .Z(n343) );
  AO7 U360 ( .A(n208), .B(n1), .C(n352), .Z(n363) );
  IV U361 ( .A(n351), .Z(n345) );
  OR3 U362 ( .A(tmr0[2]), .B(tmr0[3]), .C(n334), .Z(n351) );
  ND2 U363 ( .A(n3), .B(n10), .Z(n334) );
  AO2 U364 ( .A(n364), .B(n359), .C(sdram_enable), .D(n365), .Z(n361) );
  ND2 U365 ( .A(reset_n), .B(x2a_wrnext), .Z(N274) );
  ND2 U366 ( .A(reset_n), .B(n366), .Z(N273) );
  ND2 U367 ( .A(a2x_wren_n[1]), .B(x2a_wrnext), .Z(n366) );
  ND2 U368 ( .A(reset_n), .B(n367), .Z(N272) );
  ND2 U369 ( .A(a2x_wren_n[0]), .B(x2a_wrnext), .Z(n367) );
  ND2 U370 ( .A(n171), .B(reset_n), .Z(N271) );
  ND2 U371 ( .A(reset_n), .B(n173), .Z(N270) );
  ND4 U372 ( .A(n164), .B(n321), .C(reset_n), .D(n368), .Z(N268) );
  AN3 U373 ( .A(b2x_idle), .B(n269), .C(r2x_idle), .Z(n368) );
  NR2 U374 ( .A(n251), .B(n208), .Z(n269) );
  ND2 U375 ( .A(n1), .B(n4), .Z(n251) );
  EON1 U376 ( .A(test_so2), .B(n369), .C(n370), .D(rfsh_rmax[2]), .Z(n321) );
  NR2 U377 ( .A(rfsh_rmax[2]), .B(n370), .Z(n369) );
  AO7 U378 ( .A(rfsh_row_cnt_1_), .B(n371), .C(n372), .Z(n370) );
  AO3 U379 ( .A(rfsh_rmax[1]), .B(n6), .C(n2), .D(rfsh_rmax[0]), .Z(n372) );
  IV U380 ( .A(rfsh_rmax[1]), .Z(n371) );
  OR2 U381 ( .A(n266), .B(n218), .Z(N267) );
  AO6 U382 ( .A(n373), .B(n374), .C(n266), .Z(N180) );
  EO1 U383 ( .A(sdr_init_done), .B(n375), .C(n167), .D(n168), .Z(n373) );
  NR2 U384 ( .A(n376), .B(n266), .Z(N179) );
  AO1 U385 ( .A(n377), .B(n378), .C(n379), .D(n380), .Z(n376) );
  AO4 U386 ( .A(n168), .B(n167), .C(n5), .D(n381), .Z(n377) );
  ND2 U387 ( .A(n375), .B(n163), .Z(n381) );
  NR2 U388 ( .A(n499), .B(n266), .Z(N178) );
  NR3 U389 ( .A(n173), .B(N269), .C(n171), .Z(N177) );
  AO1 U390 ( .A(n170), .B(n382), .C(n218), .D(n383), .Z(n171) );
  IV U391 ( .A(n384), .Z(n383) );
  AO6 U392 ( .A(n385), .B(x2b_ack), .C(n306), .Z(n384) );
  AN3 U393 ( .A(n1), .B(n131), .C(n344), .Z(n306) );
  AO7 U394 ( .A(b2x_cmd[1]), .B(n386), .C(n387), .Z(n385) );
  AO7 U395 ( .A(n388), .B(n263), .C(n389), .Z(n218) );
  NR3 U396 ( .A(n390), .B(x2b_pre_ok[3]), .C(n136), .Z(n388) );
  ND3 U397 ( .A(n263), .B(n389), .C(n205), .Z(N269) );
  AO2 U398 ( .A(n209), .B(n344), .C(n359), .D(n325), .Z(n389) );
  IV U399 ( .A(b2x_tras_ok), .Z(n359) );
  AO1 U400 ( .A(n391), .B(n170), .C(n325), .D(n392), .Z(n173) );
  AO4 U401 ( .A(n250), .B(n1), .C(n247), .D(b2x_cmd[1]), .Z(n392) );
  AN2 U402 ( .A(n364), .B(n344), .Z(n325) );
  IV U403 ( .A(n250), .Z(n344) );
  NR2 U404 ( .A(n360), .B(n4), .Z(n364) );
  IV U405 ( .A(n263), .Z(n170) );
  ND2 U406 ( .A(n250), .B(n247), .Z(n263) );
  ND2 U407 ( .A(x2b_pre_ok[3]), .B(n161), .Z(n250) );
  ND4 U408 ( .A(n191), .B(xfr_caddr[0]), .C(xfr_caddr[1]), .D(n174), .Z(n391)
         );
  NR2 U409 ( .A(n163), .B(x2b_pre_ok[3]), .Z(n174) );
  ND2 U410 ( .A(n167), .B(n393), .Z(x2b_pre_ok[3]) );
  NR2 U411 ( .A(n500), .B(n266), .Z(N176) );
  NR2 U412 ( .A(n132), .B(n266), .Z(N175) );
  NR2 U413 ( .A(n501), .B(n266), .Z(N174) );
  NR2 U414 ( .A(n502), .B(n266), .Z(N173) );
  NR2 U415 ( .A(n503), .B(n266), .Z(N172) );
  NR2 U416 ( .A(n504), .B(n266), .Z(N171) );
  AN3 U417 ( .A(n541), .B(n394), .C(n178), .Z(N170) );
  MUX21L U418 ( .A(n395), .B(n396), .S(n169), .Z(n178) );
  ND4 U419 ( .A(n397), .B(n398), .C(n399), .D(n400), .Z(n396) );
  NR3 U420 ( .A(b2x_len[4]), .B(b2x_len[6]), .C(b2x_len[5]), .Z(n400) );
  IV U421 ( .A(b2x_len[1]), .Z(n399) );
  AO4 U422 ( .A(n204), .B(n180), .C(n510), .D(n206), .Z(n541) );
  IV U423 ( .A(b2x_last), .Z(n180) );
  NR2 U424 ( .A(n505), .B(n266), .Z(N169) );
  NR2 U425 ( .A(n133), .B(n266), .Z(N168) );
  NR2 U426 ( .A(n506), .B(n266), .Z(N167) );
  NR2 U427 ( .A(n507), .B(n266), .Z(N166) );
  NR2 U428 ( .A(n508), .B(n266), .Z(N165) );
  NR2 U429 ( .A(n509), .B(n266), .Z(N164) );
  NR3 U430 ( .A(n204), .B(n387), .C(n175), .Z(N163) );
  IV U431 ( .A(b2x_start), .Z(n175) );
  NR2 U432 ( .A(n514), .B(n266), .Z(N162) );
  NR2 U433 ( .A(n195), .B(n266), .Z(N161) );
  NR2 U434 ( .A(n196), .B(n266), .Z(N160) );
  NR2 U435 ( .A(n513), .B(n266), .Z(N159) );
  AN2 U436 ( .A(reset_n), .B(n511), .Z(N158) );
  AN2 U437 ( .A(reset_n), .B(n512), .Z(N157) );
  NR2 U438 ( .A(n401), .B(n266), .Z(N156) );
  AO7 U439 ( .A(n204), .B(n402), .C(n403), .Z(N155) );
  MUX21L U440 ( .A(n404), .B(n405), .S(n529), .Z(n403) );
  NR2 U441 ( .A(n7), .B(n406), .Z(n405) );
  AO7 U442 ( .A(n530), .B(n206), .C(n407), .Z(n404) );
  IV U443 ( .A(b2x_len[6]), .Z(n402) );
  IV U444 ( .A(n408), .Z(N154) );
  AO6 U445 ( .A(n210), .B(b2x_len[5]), .C(n409), .Z(n408) );
  MUX21L U446 ( .A(n406), .B(n407), .S(n7), .Z(n409) );
  AO6 U447 ( .A(n134), .B(n205), .C(n410), .Z(n407) );
  AO3 U448 ( .A(n204), .B(n411), .C(n412), .D(n406), .Z(N153) );
  ND3 U449 ( .A(n527), .B(n205), .C(n413), .Z(n406) );
  ND2 U450 ( .A(n410), .B(n134), .Z(n412) );
  NR2 U451 ( .A(n206), .B(n413), .Z(n410) );
  IV U452 ( .A(b2x_len[4]), .Z(n411) );
  AO7 U453 ( .A(n204), .B(n398), .C(n414), .Z(N152) );
  AO2 U454 ( .A(n415), .B(n141), .C(n413), .D(n205), .Z(n414) );
  AN3 U455 ( .A(n531), .B(n528), .C(n416), .Z(n413) );
  IV U456 ( .A(n417), .Z(n416) );
  AO7 U457 ( .A(n528), .B(n206), .C(n418), .Z(n415) );
  IV U458 ( .A(b2x_len[3]), .Z(n398) );
  AO7 U459 ( .A(n204), .B(n397), .C(n419), .Z(N151) );
  MUX21L U460 ( .A(n420), .B(n421), .S(n528), .Z(n419) );
  NR2 U461 ( .A(n206), .B(n417), .Z(n421) );
  IV U462 ( .A(n418), .Z(n420) );
  ND2 U463 ( .A(n205), .B(n417), .Z(n418) );
  IV U464 ( .A(b2x_len[2]), .Z(n397) );
  AO3 U465 ( .A(n206), .B(n417), .C(n422), .D(n423), .Z(N150) );
  ND2 U466 ( .A(b2x_len[1]), .B(n210), .Z(n423) );
  OR3 U467 ( .A(n532), .B(n533), .C(n206), .Z(n422) );
  ND2 U468 ( .A(n532), .B(n533), .Z(n417) );
  AO7 U469 ( .A(n206), .B(n142), .C(n424), .Z(N149) );
  AO2 U470 ( .A(n205), .B(n163), .C(b2x_len[0]), .D(n210), .Z(n424) );
  IV U471 ( .A(n204), .Z(n210) );
  IV U472 ( .A(n206), .Z(n205) );
  NR2 U473 ( .A(n199), .B(n266), .Z(N146) );
  MUX21L U474 ( .A(l_id[3]), .B(b2x_id[3]), .S(n169), .Z(n199) );
  NR2 U475 ( .A(n200), .B(n266), .Z(N145) );
  MUX21L U476 ( .A(l_id[2]), .B(b2x_id[2]), .S(n169), .Z(n200) );
  NR2 U477 ( .A(n201), .B(n266), .Z(N144) );
  MUX21L U478 ( .A(l_id[1]), .B(b2x_id[1]), .S(n169), .Z(n201) );
  NR2 U479 ( .A(n202), .B(n266), .Z(N143) );
  IV U480 ( .A(reset_n), .Z(n266) );
  MUX21L U481 ( .A(l_id[0]), .B(b2x_id[0]), .S(n169), .Z(n202) );
  AO7 U482 ( .A(n204), .B(n425), .C(n426), .Z(N140) );
  AO2 U483 ( .A(n427), .B(N58), .C(xfr_caddr[12]), .D(n428), .Z(n426) );
  IV U484 ( .A(b2x_addr[12]), .Z(n425) );
  AO7 U485 ( .A(n204), .B(n429), .C(n430), .Z(N139) );
  AO2 U486 ( .A(n427), .B(N57), .C(xfr_caddr[11]), .D(n428), .Z(n430) );
  IV U487 ( .A(b2x_addr[11]), .Z(n429) );
  AO7 U488 ( .A(n204), .B(n248), .C(n431), .Z(N138) );
  AO2 U489 ( .A(n427), .B(N56), .C(xfr_caddr[10]), .D(n428), .Z(n431) );
  IV U490 ( .A(b2x_addr[10]), .Z(n248) );
  AO7 U491 ( .A(n204), .B(n432), .C(n433), .Z(N137) );
  AO2 U492 ( .A(n427), .B(N55), .C(xfr_caddr[9]), .D(n428), .Z(n433) );
  IV U493 ( .A(b2x_addr[9]), .Z(n432) );
  AO7 U494 ( .A(n204), .B(n434), .C(n435), .Z(N136) );
  AO2 U495 ( .A(n427), .B(N54), .C(xfr_caddr[8]), .D(n428), .Z(n435) );
  IV U496 ( .A(b2x_addr[8]), .Z(n434) );
  AO7 U497 ( .A(n204), .B(n436), .C(n437), .Z(N135) );
  AO2 U498 ( .A(n427), .B(N53), .C(xfr_caddr[7]), .D(n428), .Z(n437) );
  IV U499 ( .A(b2x_addr[7]), .Z(n436) );
  AO7 U500 ( .A(n204), .B(n438), .C(n439), .Z(N134) );
  AO2 U501 ( .A(n427), .B(N52), .C(xfr_caddr[6]), .D(n428), .Z(n439) );
  IV U502 ( .A(b2x_addr[6]), .Z(n438) );
  AO7 U503 ( .A(n204), .B(n440), .C(n441), .Z(N133) );
  AO2 U504 ( .A(n427), .B(N51), .C(xfr_caddr[5]), .D(n428), .Z(n441) );
  IV U505 ( .A(b2x_addr[5]), .Z(n440) );
  AO7 U506 ( .A(n204), .B(n442), .C(n443), .Z(N132) );
  AO2 U507 ( .A(n427), .B(N50), .C(xfr_caddr[4]), .D(n428), .Z(n443) );
  IV U508 ( .A(b2x_addr[4]), .Z(n442) );
  AO7 U509 ( .A(n204), .B(n444), .C(n445), .Z(N131) );
  AO2 U510 ( .A(n427), .B(N49), .C(xfr_caddr[3]), .D(n428), .Z(n445) );
  IV U511 ( .A(b2x_addr[3]), .Z(n444) );
  AO7 U512 ( .A(n204), .B(n446), .C(n447), .Z(N130) );
  AO2 U513 ( .A(n427), .B(N48), .C(xfr_caddr[2]), .D(n428), .Z(n447) );
  IV U514 ( .A(b2x_addr[2]), .Z(n446) );
  AO7 U515 ( .A(n204), .B(n448), .C(n449), .Z(N129) );
  AO2 U516 ( .A(n427), .B(N47), .C(n428), .D(xfr_caddr[1]), .Z(n449) );
  IV U517 ( .A(b2x_addr[1]), .Z(n448) );
  AO7 U518 ( .A(n204), .B(n450), .C(n451), .Z(N128) );
  AO2 U519 ( .A(N46), .B(n427), .C(n428), .D(xfr_caddr[0]), .Z(n451) );
  NR3 U520 ( .A(x2a_wrnext), .B(n206), .C(n394), .Z(n428) );
  IV U521 ( .A(n452), .Z(x2a_wrnext) );
  AO6 U522 ( .A(n452), .B(n401), .C(n206), .Z(n427) );
  ND2 U523 ( .A(reset_n), .B(n177), .Z(n206) );
  IV U524 ( .A(n169), .Z(n177) );
  IV U525 ( .A(n394), .Z(n401) );
  AO7 U526 ( .A(n378), .B(n453), .C(n374), .Z(n394) );
  AO6 U527 ( .A(n454), .B(n455), .C(n382), .Z(n374) );
  NR2 U528 ( .A(n453), .B(n163), .Z(n382) );
  IV U529 ( .A(n456), .Z(n454) );
  AO6 U530 ( .A(n162), .B(n163), .C(n457), .Z(n456) );
  IV U531 ( .A(n455), .Z(n378) );
  AO6 U532 ( .A(n168), .B(n380), .C(n379), .Z(n452) );
  AO7 U533 ( .A(n163), .B(n458), .C(n459), .Z(n379) );
  AO3 U534 ( .A(n460), .B(n162), .C(n461), .D(n462), .Z(n459) );
  IV U535 ( .A(n463), .Z(n461) );
  NR2 U536 ( .A(n393), .B(n5), .Z(n460) );
  IV U537 ( .A(n162), .Z(n458) );
  NR3 U538 ( .A(n463), .B(n167), .C(n176), .Z(n380) );
  AO1 U539 ( .A(n188), .B(n464), .C(n512), .D(n511), .Z(n168) );
  AO7 U540 ( .A(n465), .B(n192), .C(n513), .Z(n464) );
  AN3 U541 ( .A(n466), .B(n467), .C(cas_latency[1]), .Z(n192) );
  AO6 U542 ( .A(n181), .B(n468), .C(n135), .Z(n465) );
  AO7 U543 ( .A(n469), .B(n514), .C(n195), .Z(n468) );
  IV U544 ( .A(n185), .Z(n469) );
  ND2 U545 ( .A(cas_latency[2]), .B(n198), .Z(n185) );
  NR2 U546 ( .A(cas_latency[1]), .B(cas_latency[0]), .Z(n198) );
  ND3 U547 ( .A(cas_latency[0]), .B(n467), .C(cas_latency[1]), .Z(n181) );
  IV U548 ( .A(cas_latency[2]), .Z(n467) );
  OR3 U549 ( .A(cas_latency[1]), .B(cas_latency[2]), .C(n466), .Z(n188) );
  IV U550 ( .A(cas_latency[0]), .Z(n466) );
  IV U551 ( .A(b2x_addr[0]), .Z(n450) );
  ND2 U552 ( .A(reset_n), .B(n169), .Z(n204) );
  AO6 U553 ( .A(n387), .B(n176), .C(n247), .Z(n169) );
  IV U554 ( .A(x2b_ack), .Z(n247) );
  AO3 U555 ( .A(n470), .B(n463), .C(n471), .D(n472), .Z(x2b_ack) );
  AO3 U556 ( .A(n375), .B(n162), .C(n163), .D(n455), .Z(n472) );
  NR2 U557 ( .A(n387), .B(n463), .Z(n455) );
  ND3 U558 ( .A(n375), .B(b2x_req), .C(n390), .Z(n471) );
  IV U559 ( .A(n453), .Z(n375) );
  ND2 U560 ( .A(b2x_req), .B(n365), .Z(n463) );
  IV U561 ( .A(n161), .Z(n365) );
  AO3 U562 ( .A(n208), .B(n4), .C(n352), .D(n360), .Z(n161) );
  ND2 U563 ( .A(n208), .B(n1), .Z(n360) );
  ND2 U564 ( .A(n209), .B(n4), .Z(n352) );
  AO1 U565 ( .A(n162), .B(n473), .C(n457), .D(n474), .Z(n470) );
  NR2 U566 ( .A(n475), .B(n453), .Z(n474) );
  ND2 U567 ( .A(xfr_st[1]), .B(n137), .Z(n453) );
  AO2 U568 ( .A(n476), .B(n163), .C(n176), .D(n136), .Z(n475) );
  AO7 U569 ( .A(n393), .B(n5), .C(n167), .Z(n457) );
  ND2 U570 ( .A(xfr_st[1]), .B(xfr_st[0]), .Z(n167) );
  IV U571 ( .A(n164), .Z(n393) );
  NR2 U572 ( .A(xfr_st[0]), .B(xfr_st[1]), .Z(n164) );
  IV U573 ( .A(n477), .Z(n473) );
  AO1 U574 ( .A(n163), .B(n462), .C(n478), .D(n390), .Z(n477) );
  NR2 U575 ( .A(n163), .B(n479), .Z(n390) );
  AN3 U576 ( .A(xfr_caddr[0]), .B(n191), .C(xfr_caddr[1]), .Z(n479) );
  NR2 U577 ( .A(n476), .B(n191), .Z(n478) );
  NR3 U578 ( .A(b2x_cmd[0]), .B(n480), .C(n481), .Z(n476) );
  EO U579 ( .A(xfr_bank_sel[0]), .B(b2x_ba[0]), .Z(n481) );
  EO U580 ( .A(xfr_bank_sel[1]), .B(b2x_ba[1]), .Z(n480) );
  IV U581 ( .A(n176), .Z(n462) );
  NR2 U582 ( .A(n395), .B(n532), .Z(n163) );
  ND4 U583 ( .A(n528), .B(n529), .C(n527), .D(n482), .Z(n395) );
  AN3 U584 ( .A(n531), .B(n533), .C(n530), .Z(n482) );
  NR2 U585 ( .A(n137), .B(xfr_st[1]), .Z(n162) );
  ND2 U586 ( .A(b2x_cmd[0]), .B(b2x_cmd[1]), .Z(n176) );
  ND2 U587 ( .A(b2x_cmd[1]), .B(n386), .Z(n387) );
  IV U588 ( .A(b2x_cmd[0]), .Z(n386) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 ( A, B, CI, DIFF, 
        CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [6:1] carry;

  FA1A U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1A U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1A U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1A U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1A U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  EO3P U2_6 ( .A(A[6]), .B(n3), .C(carry[6]), .Z(DIFF[6]) );
  IVP U1 ( .A(n9), .Z(n2) );
  IVP U2 ( .A(B[0]), .Z(n9) );
  IVP U3 ( .A(B[6]), .Z(n3) );
  EN U4 ( .A(A[0]), .B(n9), .Z(DIFF[0]) );
  IVP U5 ( .A(B[1]), .Z(n8) );
  ND2 U6 ( .A(n1), .B(n2), .Z(carry[1]) );
  IVP U7 ( .A(A[0]), .Z(n1) );
  IVP U8 ( .A(B[2]), .Z(n7) );
  IVP U9 ( .A(B[5]), .Z(n4) );
  IVP U10 ( .A(B[3]), .Z(n6) );
  IVP U11 ( .A(B[4]), .Z(n5) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:1] carry;

  FA1A U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1A U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1A U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1A U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1A U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FA1A U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  EO U1 ( .A(A[11]), .B(carry[11]), .Z(SUM[11]) );
  EO U2 ( .A(A[10]), .B(carry[10]), .Z(SUM[10]) );
  EO U3 ( .A(A[9]), .B(carry[9]), .Z(SUM[9]) );
  EO U4 ( .A(A[8]), .B(carry[8]), .Z(SUM[8]) );
  EO U5 ( .A(A[7]), .B(carry[7]), .Z(SUM[7]) );
  EO U6 ( .A(A[0]), .B(B[0]), .Z(SUM[0]) );
  EN U7 ( .A(A[25]), .B(n1), .Z(SUM[25]) );
  ND2 U8 ( .A(A[24]), .B(carry[24]), .Z(n1) );
  EO U9 ( .A(A[24]), .B(carry[24]), .Z(SUM[24]) );
  EO U10 ( .A(A[23]), .B(carry[23]), .Z(SUM[23]) );
  EO U11 ( .A(A[22]), .B(carry[22]), .Z(SUM[22]) );
  EO U12 ( .A(A[21]), .B(carry[21]), .Z(SUM[21]) );
  EO U13 ( .A(A[20]), .B(carry[20]), .Z(SUM[20]) );
  EO U14 ( .A(A[19]), .B(carry[19]), .Z(SUM[19]) );
  EO U15 ( .A(A[18]), .B(carry[18]), .Z(SUM[18]) );
  EO U16 ( .A(A[17]), .B(carry[17]), .Z(SUM[17]) );
  EO U17 ( .A(A[16]), .B(carry[16]), .Z(SUM[16]) );
  EO U18 ( .A(A[15]), .B(carry[15]), .Z(SUM[15]) );
  EO U19 ( .A(A[14]), .B(carry[14]), .Z(SUM[14]) );
  EO U20 ( .A(A[13]), .B(carry[13]), .Z(SUM[13]) );
  EO U21 ( .A(A[12]), .B(carry[12]), .Z(SUM[12]) );
  AN2P U22 ( .A(A[23]), .B(carry[23]), .Z(carry[24]) );
  AN2P U23 ( .A(A[22]), .B(carry[22]), .Z(carry[23]) );
  AN2P U24 ( .A(A[21]), .B(carry[21]), .Z(carry[22]) );
  AN2P U25 ( .A(A[20]), .B(carry[20]), .Z(carry[21]) );
  AN2P U26 ( .A(A[19]), .B(carry[19]), .Z(carry[20]) );
  AN2P U27 ( .A(A[18]), .B(carry[18]), .Z(carry[19]) );
  AN2P U28 ( .A(A[17]), .B(carry[17]), .Z(carry[18]) );
  AN2P U29 ( .A(A[16]), .B(carry[16]), .Z(carry[17]) );
  AN2P U30 ( .A(A[15]), .B(carry[15]), .Z(carry[16]) );
  AN2P U31 ( .A(A[14]), .B(carry[14]), .Z(carry[15]) );
  AN2P U32 ( .A(A[13]), .B(carry[13]), .Z(carry[14]) );
  AN2P U33 ( .A(A[12]), .B(carry[12]), .Z(carry[13]) );
  AN2P U34 ( .A(A[11]), .B(carry[11]), .Z(carry[12]) );
  AN2P U35 ( .A(A[10]), .B(carry[10]), .Z(carry[11]) );
  AN2P U36 ( .A(A[9]), .B(carry[9]), .Z(carry[10]) );
  AN2P U37 ( .A(A[8]), .B(carry[8]), .Z(carry[9]) );
  AN2P U38 ( .A(A[7]), .B(carry[7]), .Z(carry[8]) );
  AN2P U39 ( .A(A[0]), .B(B[0]), .Z(carry[1]) );
endmodule


module sdrc_req_gen_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, cfg_colbits, 
        sdr_width, req, req_id, req_addr, req_len, req_wrap, req_wr_n, req_ack, 
        r2x_idle, r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, 
        r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, b2r_arb_ok, 
        test_si4, test_si3, test_si2, test_si1, test_so3, test_so2, test_so1, 
        test_se );
  input [1:0] cfg_colbits;
  input [1:0] sdr_width;
  input [3:0] req_id;
  input [25:0] req_addr;
  input [8:0] req_len;
  output [3:0] r2b_req_id;
  output [1:0] r2b_ba;
  output [12:0] r2b_raddr;
  output [12:0] r2b_caddr;
  output [6:0] r2b_len;
  input clk, reset_n, req, req_wrap, req_wr_n, b2r_ack, b2r_arb_ok, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output req_ack, r2x_idle, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         test_so3, test_so2, test_so1;
  wire   page_ovflw_r, curr_sdr_addr_25_, curr_sdr_addr_23_, curr_sdr_addr_22_,
         curr_sdr_addr_21_, curr_sdr_addr_20_, curr_sdr_addr_19_,
         curr_sdr_addr_18_, curr_sdr_addr_17_, curr_sdr_addr_16_,
         curr_sdr_addr_15_, curr_sdr_addr_14_, curr_sdr_addr_13_,
         curr_sdr_addr_12_, curr_sdr_addr_11_, curr_sdr_addr_10_,
         curr_sdr_addr_9_, curr_sdr_addr_8_, curr_sdr_addr_7_,
         curr_sdr_addr_6_, curr_sdr_addr_5_, curr_sdr_addr_4_,
         curr_sdr_addr_3_, curr_sdr_addr_2_, curr_sdr_addr_1_,
         curr_sdr_addr_0_, N78, N79, N80, N81, N82, N83, N84, N85, N88, N90,
         N95, N98, N99, N100, N101, N102, N103, N104, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N151, N152, N156, N157, N158, N159, N160, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, n1, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
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
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n363, n364, n365, n366, n367, n368,
         n369;
  wire   [6:0] lcl_req_len;
  wire   [6:0] next_req_len;
  wire   [25:0] next_sdr_addr;
  wire   [7:0] map_address;
  assign r2b_caddr[12] = 1'b0;
  assign r2b_caddr[11] = 1'b0;

  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 sub_229 ( .A(
        lcl_req_len), .B(r2b_len), .CI(1'b0), .DIFF(next_req_len) );
  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_add_0 add_231 ( .A({curr_sdr_addr_25_, 
        test_so1, curr_sdr_addr_23_, curr_sdr_addr_22_, curr_sdr_addr_21_, 
        curr_sdr_addr_20_, curr_sdr_addr_19_, curr_sdr_addr_18_, 
        curr_sdr_addr_17_, curr_sdr_addr_16_, curr_sdr_addr_15_, 
        curr_sdr_addr_14_, curr_sdr_addr_13_, curr_sdr_addr_12_, 
        curr_sdr_addr_11_, curr_sdr_addr_10_, curr_sdr_addr_9_, 
        curr_sdr_addr_8_, curr_sdr_addr_7_, curr_sdr_addr_6_, curr_sdr_addr_5_, 
        curr_sdr_addr_4_, curr_sdr_addr_3_, curr_sdr_addr_2_, curr_sdr_addr_1_, 
        curr_sdr_addr_0_}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r2b_len}), .CI(1'b0), .SUM(next_sdr_addr) );
  FD1S max_r2b_len_r_reg_6_ ( .D(N85), .TI(n364), .TE(test_se), .CP(n6), .Q(
        n363), .QN(n326) );
  FD1S max_r2b_len_r_reg_5_ ( .D(N84), .TI(n365), .TE(test_se), .CP(n6), .Q(
        n364), .QN(n327) );
  FD1S max_r2b_len_r_reg_4_ ( .D(N83), .TI(n366), .TE(test_se), .CP(n6), .Q(
        n365), .QN(n328) );
  FD1S max_r2b_len_r_reg_3_ ( .D(N82), .TI(n367), .TE(test_se), .CP(n6), .Q(
        n366), .QN(n329) );
  FD1S max_r2b_len_r_reg_2_ ( .D(N81), .TI(n368), .TE(test_se), .CP(n6), .Q(
        n367), .QN(n330) );
  FD1S max_r2b_len_r_reg_1_ ( .D(N80), .TI(n369), .TE(test_se), .CP(n6), .Q(
        n368), .QN(n331) );
  FD1S max_r2b_len_r_reg_0_ ( .D(N79), .TI(r2b_wrap), .TE(test_se), .CP(n6), 
        .Q(n369), .QN(n332) );
  FD1S lcl_req_len_reg_2_ ( .D(N100), .TI(lcl_req_len[1]), .TE(test_se), .CP(
        n8), .Q(lcl_req_len[2]), .QN(n348) );
  FD1S lcl_req_len_reg_1_ ( .D(N99), .TI(lcl_req_len[0]), .TE(test_se), .CP(n7), .Q(lcl_req_len[1]), .QN(n333) );
  FD1S lcl_req_len_reg_3_ ( .D(N101), .TI(lcl_req_len[2]), .TE(test_se), .CP(
        n8), .Q(lcl_req_len[3]), .QN(n347) );
  FD1S lcl_req_len_reg_4_ ( .D(N102), .TI(lcl_req_len[3]), .TE(test_se), .CP(
        n7), .Q(lcl_req_len[4]), .QN(n346) );
  FD1S lcl_req_len_reg_5_ ( .D(N103), .TI(lcl_req_len[4]), .TE(test_se), .CP(
        n7), .Q(lcl_req_len[5]), .QN(n345) );
  FD1S lcl_req_len_reg_6_ ( .D(N104), .TI(lcl_req_len[5]), .TE(test_se), .CP(
        n7), .Q(lcl_req_len[6]), .QN(n344) );
  FD1S curr_sdr_addr_reg_1_ ( .D(map_address[1]), .TI(curr_sdr_addr_0_), .TE(
        test_se), .CP(n8), .Q(curr_sdr_addr_1_), .QN(n342) );
  FD1S curr_sdr_addr_reg_2_ ( .D(map_address[2]), .TI(curr_sdr_addr_1_), .TE(
        test_se), .CP(n6), .Q(curr_sdr_addr_2_), .QN(n341) );
  FD1S curr_sdr_addr_reg_3_ ( .D(map_address[3]), .TI(curr_sdr_addr_2_), .TE(
        test_se), .CP(n8), .Q(curr_sdr_addr_3_), .QN(n340) );
  FD1S curr_sdr_addr_reg_4_ ( .D(map_address[4]), .TI(curr_sdr_addr_3_), .TE(
        test_se), .CP(n8), .Q(curr_sdr_addr_4_), .QN(n339) );
  FD1S curr_sdr_addr_reg_5_ ( .D(map_address[5]), .TI(curr_sdr_addr_4_), .TE(
        test_se), .CP(n8), .Q(curr_sdr_addr_5_), .QN(n338) );
  FD1S curr_sdr_addr_reg_6_ ( .D(map_address[6]), .TI(curr_sdr_addr_5_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_6_), .QN(n337) );
  FD1S req_st_reg_1_ ( .D(N152), .TI(test_si4), .TE(test_se), .CP(n6), .Q(
        test_so3), .QN(n3) );
  FD1S curr_sdr_addr_reg_0_ ( .D(map_address[0]), .TI(test_si1), .TE(test_se), 
        .CP(n8), .Q(curr_sdr_addr_0_), .QN(n343) );
  FD1S curr_sdr_addr_reg_7_ ( .D(map_address[7]), .TI(curr_sdr_addr_6_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_7_), .QN(n336) );
  FD1S curr_sdr_addr_reg_25_ ( .D(N132), .TI(test_si2), .TE(test_se), .CP(n12), 
        .Q(curr_sdr_addr_25_) );
  FD1S page_ovflw_r_reg ( .D(N78), .TI(n363), .TE(test_se), .CP(n7), .Q(
        page_ovflw_r) );
  FD1S curr_sdr_addr_reg_8_ ( .D(N115), .TI(curr_sdr_addr_7_), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_8_) );
  FD1S curr_sdr_addr_reg_9_ ( .D(N116), .TI(curr_sdr_addr_8_), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_9_) );
  FD1S curr_sdr_addr_reg_10_ ( .D(N117), .TI(curr_sdr_addr_9_), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_10_) );
  FD1S curr_sdr_addr_reg_11_ ( .D(N118), .TI(curr_sdr_addr_10_), .TE(test_se), 
        .CP(n9), .Q(curr_sdr_addr_11_) );
  FD1S curr_sdr_addr_reg_12_ ( .D(N119), .TI(curr_sdr_addr_11_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_12_) );
  FD1S curr_sdr_addr_reg_13_ ( .D(N120), .TI(curr_sdr_addr_12_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_13_) );
  FD1S curr_sdr_addr_reg_14_ ( .D(N121), .TI(curr_sdr_addr_13_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_14_) );
  FD1S curr_sdr_addr_reg_15_ ( .D(N122), .TI(curr_sdr_addr_14_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_15_) );
  FD1S curr_sdr_addr_reg_16_ ( .D(N123), .TI(curr_sdr_addr_15_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_16_) );
  FD1S curr_sdr_addr_reg_17_ ( .D(N124), .TI(curr_sdr_addr_16_), .TE(test_se), 
        .CP(n10), .Q(curr_sdr_addr_17_) );
  FD1S curr_sdr_addr_reg_18_ ( .D(N125), .TI(curr_sdr_addr_17_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_18_) );
  FD1S curr_sdr_addr_reg_19_ ( .D(N126), .TI(curr_sdr_addr_18_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_19_) );
  FD1S curr_sdr_addr_reg_20_ ( .D(N127), .TI(curr_sdr_addr_19_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_20_) );
  FD1S curr_sdr_addr_reg_21_ ( .D(N128), .TI(curr_sdr_addr_20_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_21_) );
  FD1S curr_sdr_addr_reg_22_ ( .D(N129), .TI(curr_sdr_addr_21_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_22_) );
  FD1S curr_sdr_addr_reg_23_ ( .D(N130), .TI(curr_sdr_addr_22_), .TE(test_se), 
        .CP(n11), .Q(curr_sdr_addr_23_) );
  FD1S curr_sdr_addr_reg_24_ ( .D(N131), .TI(curr_sdr_addr_23_), .TE(test_se), 
        .CP(n12), .Q(test_so1) );
  FD1S req_st_reg_0_ ( .D(N151), .TI(r2b_write), .TE(test_se), .CP(n6), .Q(
        test_so2) );
  FD1S r2b_write_reg ( .D(N90), .TI(r2b_start), .TE(test_se), .CP(n6), .Q(
        r2b_write), .QN(n335) );
  FD1S lcl_req_len_reg_0_ ( .D(N98), .TI(curr_sdr_addr_25_), .TE(test_se), 
        .CP(n7), .Q(lcl_req_len[0]), .QN(n334) );
  FD1S r2b_raddr_reg_12_ ( .D(N174), .TI(r2b_raddr[11]), .TE(test_se), .CP(n12), .Q(r2b_raddr[12]) );
  FD1S r2b_raddr_reg_11_ ( .D(N173), .TI(r2b_raddr[10]), .TE(test_se), .CP(n11), .Q(r2b_raddr[11]) );
  FD1S r2b_raddr_reg_10_ ( .D(N172), .TI(r2b_raddr[9]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[10]) );
  FD1S r2b_raddr_reg_6_ ( .D(N168), .TI(r2b_raddr[5]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[6]) );
  FD1S r2b_raddr_reg_3_ ( .D(N165), .TI(r2b_raddr[2]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[3]) );
  FD1S r2b_raddr_reg_2_ ( .D(N164), .TI(r2b_raddr[1]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[2]) );
  FD1S r2b_raddr_reg_0_ ( .D(N162), .TI(r2b_caddr[10]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[0]) );
  FD1S r2b_caddr_reg_10_ ( .D(N160), .TI(r2b_caddr[9]), .TE(test_se), .CP(n9), 
        .Q(r2b_caddr[10]) );
  FD1S r2b_caddr_reg_9_ ( .D(N159), .TI(r2b_caddr[8]), .TE(test_se), .CP(n9), 
        .Q(r2b_caddr[9]) );
  FD1S r2b_caddr_reg_8_ ( .D(N158), .TI(r2b_caddr[7]), .TE(test_se), .CP(n9), 
        .Q(r2b_caddr[8]) );
  FD1S r2b_caddr_reg_7_ ( .D(map_address[7]), .TI(r2b_caddr[6]), .TE(test_se), 
        .CP(n12), .Q(r2b_caddr[7]) );
  FD1S r2b_caddr_reg_6_ ( .D(map_address[6]), .TI(test_si3), .TE(test_se), 
        .CP(n9), .Q(r2b_caddr[6]) );
  FD1S r2b_caddr_reg_5_ ( .D(map_address[5]), .TI(r2b_caddr[4]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[5]) );
  FD1S r2b_caddr_reg_4_ ( .D(map_address[4]), .TI(r2b_caddr[3]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[4]) );
  FD1S r2b_caddr_reg_3_ ( .D(map_address[3]), .TI(r2b_caddr[2]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[3]) );
  FD1S r2b_caddr_reg_2_ ( .D(map_address[2]), .TI(r2b_caddr[1]), .TE(test_se), 
        .CP(n6), .Q(r2b_caddr[2]) );
  FD1S r2b_caddr_reg_1_ ( .D(map_address[1]), .TI(r2b_caddr[0]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[1]) );
  FD1S r2b_caddr_reg_0_ ( .D(map_address[0]), .TI(r2b_ba[1]), .TE(test_se), 
        .CP(n8), .Q(r2b_caddr[0]) );
  FD1S r2b_req_id_reg_3_ ( .D(n349), .TI(r2b_req_id[2]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[3]) );
  FD1S r2b_req_id_reg_2_ ( .D(n350), .TI(r2b_req_id[1]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[2]) );
  FD1S r2b_req_id_reg_1_ ( .D(n351), .TI(r2b_req_id[0]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[1]) );
  FD1S r2b_req_id_reg_0_ ( .D(n352), .TI(r2b_raddr[12]), .TE(test_se), .CP(n7), 
        .Q(r2b_req_id[0]) );
  FD1S lcl_wrap_reg ( .D(N95), .TI(lcl_req_len[6]), .TE(test_se), .CP(n7), .Q(
        r2b_wrap) );
  FD1S r2b_start_reg ( .D(N88), .TI(r2b_req_id[3]), .TE(test_se), .CP(n7), .Q(
        r2b_start), .QN(n1) );
  FD1S r2b_ba_reg_1_ ( .D(N157), .TI(r2b_ba[0]), .TE(test_se), .CP(n9), .Q(
        r2b_ba[1]) );
  FD1S r2b_ba_reg_0_ ( .D(N156), .TI(page_ovflw_r), .TE(test_se), .CP(n9), .Q(
        r2b_ba[0]) );
  FD1S r2b_raddr_reg_9_ ( .D(N171), .TI(r2b_raddr[8]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[9]) );
  FD1S r2b_raddr_reg_8_ ( .D(N170), .TI(r2b_raddr[7]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[8]) );
  FD1S r2b_raddr_reg_7_ ( .D(N169), .TI(r2b_raddr[6]), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[7]) );
  FD1S r2b_raddr_reg_5_ ( .D(N167), .TI(r2b_raddr[4]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[5]) );
  FD1S r2b_raddr_reg_4_ ( .D(N166), .TI(r2b_raddr[3]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[4]) );
  FD1S r2b_raddr_reg_1_ ( .D(N163), .TI(r2b_raddr[0]), .TE(test_se), .CP(n10), 
        .Q(r2b_raddr[1]) );
  AN2P U13 ( .A(cfg_colbits[0]), .B(cfg_colbits[1]), .Z(n2) );
  IVP U14 ( .A(n13), .Z(n11) );
  IVP U85 ( .A(n13), .Z(n10) );
  IVP U86 ( .A(n14), .Z(n9) );
  IVP U87 ( .A(n14), .Z(n8) );
  IVP U88 ( .A(n14), .Z(n7) );
  IVP U89 ( .A(n13), .Z(n12) );
  IVP U90 ( .A(n16), .Z(n13) );
  IVP U91 ( .A(n16), .Z(n14) );
  IVP U92 ( .A(n15), .Z(n6) );
  IVP U93 ( .A(n16), .Z(n15) );
  IVP U94 ( .A(n17), .Z(n16) );
  IVP U95 ( .A(clk), .Z(n17) );
  NR2 U96 ( .A(req), .B(r2b_req), .Z(r2x_idle) );
  AO4 U97 ( .A(test_so2), .B(n3), .C(page_ovflw_r), .D(n1), .Z(r2b_last) );
  MUX21H U98 ( .A(req_id[3]), .B(r2b_req_id[3]), .S(n18), .Z(n349) );
  MUX21H U99 ( .A(req_id[2]), .B(r2b_req_id[2]), .S(n18), .Z(n350) );
  MUX21H U100 ( .A(req_id[1]), .B(r2b_req_id[1]), .S(n18), .Z(n351) );
  MUX21H U101 ( .A(req_id[0]), .B(r2b_req_id[0]), .S(n18), .Z(n352) );
  IV U102 ( .A(n19), .Z(r2b_req) );
  MUX21L U103 ( .A(n326), .B(n344), .S(n20), .Z(r2b_len[6]) );
  MUX21L U104 ( .A(n327), .B(n345), .S(n20), .Z(r2b_len[5]) );
  MUX21L U105 ( .A(n328), .B(n346), .S(n20), .Z(r2b_len[4]) );
  MUX21L U106 ( .A(n329), .B(n347), .S(n20), .Z(r2b_len[3]) );
  MUX21L U107 ( .A(n330), .B(n348), .S(n20), .Z(r2b_len[2]) );
  MUX21L U108 ( .A(n331), .B(n333), .S(n20), .Z(r2b_len[1]) );
  MUX21L U109 ( .A(n332), .B(n334), .S(n20), .Z(r2b_len[0]) );
  ND2 U110 ( .A(page_ovflw_r), .B(r2b_start), .Z(n20) );
  AO3 U111 ( .A(n336), .B(n21), .C(n98), .D(n99), .Z(map_address[7]) );
  ND2 U112 ( .A(next_sdr_addr[7]), .B(n100), .Z(n99) );
  OR2 U113 ( .A(n18), .B(n101), .Z(n98) );
  AO3 U114 ( .A(n337), .B(n21), .C(n102), .D(n103), .Z(map_address[6]) );
  ND2 U115 ( .A(next_sdr_addr[6]), .B(n100), .Z(n103) );
  OR2 U116 ( .A(n18), .B(n104), .Z(n102) );
  AO3 U117 ( .A(n338), .B(n21), .C(n105), .D(n106), .Z(map_address[5]) );
  ND2 U118 ( .A(next_sdr_addr[5]), .B(n100), .Z(n106) );
  ND2 U119 ( .A(req_ack), .B(n107), .Z(n105) );
  AO3 U120 ( .A(n339), .B(n21), .C(n108), .D(n109), .Z(map_address[4]) );
  ND2 U121 ( .A(next_sdr_addr[4]), .B(n100), .Z(n109) );
  ND2 U122 ( .A(req_ack), .B(n110), .Z(n108) );
  AO3 U123 ( .A(n340), .B(n21), .C(n111), .D(n112), .Z(map_address[3]) );
  ND2 U124 ( .A(next_sdr_addr[3]), .B(n100), .Z(n112) );
  OR2 U125 ( .A(n18), .B(n113), .Z(n111) );
  AO3 U126 ( .A(n341), .B(n21), .C(n114), .D(n115), .Z(map_address[2]) );
  ND2 U127 ( .A(next_sdr_addr[2]), .B(n100), .Z(n115) );
  ND2 U128 ( .A(req_ack), .B(n116), .Z(n114) );
  AO3 U129 ( .A(n342), .B(n21), .C(n117), .D(n118), .Z(map_address[1]) );
  ND2 U130 ( .A(next_sdr_addr[1]), .B(n100), .Z(n118) );
  ND2 U131 ( .A(req_ack), .B(n119), .Z(n117) );
  AO3 U132 ( .A(n343), .B(n21), .C(n120), .D(n121), .Z(map_address[0]) );
  ND2 U133 ( .A(next_sdr_addr[0]), .B(n100), .Z(n121) );
  AO3 U134 ( .A(n333), .B(n21), .C(n122), .D(n123), .Z(N99) );
  ND2 U135 ( .A(next_req_len[1]), .B(n100), .Z(n123) );
  ND2 U136 ( .A(req_ack), .B(n124), .Z(n122) );
  AO3 U137 ( .A(n334), .B(n21), .C(n125), .D(n126), .Z(N98) );
  ND2 U138 ( .A(next_req_len[0]), .B(n100), .Z(n126) );
  ND2 U139 ( .A(n127), .B(req_len[0]), .Z(n125) );
  MUX21H U140 ( .A(req_wrap), .B(r2b_wrap), .S(n18), .Z(N95) );
  MUX21L U141 ( .A(n335), .B(req_wr_n), .S(req_ack), .Z(N90) );
  AO7 U142 ( .A(b2r_ack), .B(n1), .C(n18), .Z(N88) );
  NR2 U143 ( .A(n128), .B(n18), .Z(N85) );
  NR2 U144 ( .A(n129), .B(n18), .Z(N84) );
  NR2 U145 ( .A(n130), .B(n18), .Z(N83) );
  EO U146 ( .A(n131), .B(n132), .Z(n130) );
  AN2 U147 ( .A(n133), .B(req_ack), .Z(N82) );
  AN2 U148 ( .A(n134), .B(req_ack), .Z(N81) );
  NR2 U149 ( .A(n18), .B(n135), .Z(N80) );
  IV U150 ( .A(n120), .Z(N79) );
  ND2 U151 ( .A(n136), .B(req_ack), .Z(n120) );
  NR4 U152 ( .A(n137), .B(n138), .C(n139), .D(n18), .Z(N78) );
  AO1 U153 ( .A(n140), .B(n141), .C(n142), .D(n143), .Z(n139) );
  EO U154 ( .A(n140), .B(n144), .Z(n138) );
  AO6 U155 ( .A(n2), .B(n145), .C(n146), .Z(n144) );
  AO7 U156 ( .A(n147), .B(n148), .C(n149), .Z(n145) );
  AO2 U157 ( .A(req_addr[9]), .B(n150), .C(req_addr[10]), .D(n151), .Z(n149)
         );
  IV U158 ( .A(n152), .Z(n137) );
  AO1 U159 ( .A(n140), .B(n2), .C(n153), .D(r2b_wrap), .Z(n152) );
  IV U160 ( .A(n154), .Z(n153) );
  AO4 U161 ( .A(n155), .B(n156), .C(n157), .D(n158), .Z(n154) );
  AO4 U162 ( .A(n159), .B(n160), .C(n161), .D(n162), .Z(n156) );
  EON1 U163 ( .A(n163), .B(n164), .C(n160), .D(n165), .Z(n162) );
  AO7 U164 ( .A(n101), .B(n166), .C(n142), .Z(n165) );
  AO4 U165 ( .A(n129), .B(n167), .C(n168), .D(n169), .Z(n164) );
  AO5 U166 ( .A(n170), .B(n171), .C(n172), .Z(n169) );
  AO4 U167 ( .A(n173), .B(n174), .C(n175), .D(n176), .Z(n172) );
  AO4 U168 ( .A(n177), .B(n178), .C(n179), .D(n133), .Z(n176) );
  NR2 U169 ( .A(n180), .B(n173), .Z(n179) );
  AN2 U170 ( .A(n181), .B(n134), .Z(n178) );
  NR2 U171 ( .A(n134), .B(n181), .Z(n175) );
  AO4 U172 ( .A(n182), .B(n124), .C(n183), .D(n135), .Z(n181) );
  EO U173 ( .A(n136), .B(n184), .Z(n135) );
  AN2 U174 ( .A(n124), .B(n182), .Z(n183) );
  EON1 U175 ( .A(n185), .B(n186), .C(n150), .D(req_len[0]), .Z(n124) );
  AN3 U176 ( .A(n151), .B(n187), .C(req_len[0]), .Z(n182) );
  EO U177 ( .A(n188), .B(n116), .Z(n134) );
  ND2 U178 ( .A(n184), .B(n187), .Z(n188) );
  ND2 U179 ( .A(n133), .B(n189), .Z(n174) );
  IV U180 ( .A(n180), .Z(n189) );
  NR2 U181 ( .A(n186), .B(n147), .Z(n180) );
  EO U182 ( .A(n190), .B(n113), .Z(n133) );
  EO U183 ( .A(n110), .B(n131), .Z(n171) );
  ND2 U184 ( .A(n190), .B(n113), .Z(n131) );
  AO6 U185 ( .A(req_len[2]), .B(sdr_width[1]), .C(n191), .Z(n170) );
  AO4 U186 ( .A(n185), .B(n192), .C(n193), .D(n194), .Z(n191) );
  AN2 U187 ( .A(n167), .B(n129), .Z(n168) );
  EO U188 ( .A(n195), .B(n107), .Z(n129) );
  NR2 U189 ( .A(n128), .B(n196), .Z(n163) );
  AN2 U190 ( .A(n196), .B(n128), .Z(n161) );
  EO U191 ( .A(n197), .B(n104), .Z(n128) );
  ND2 U192 ( .A(n195), .B(n198), .Z(n197) );
  AO7 U193 ( .A(n147), .B(n199), .C(n200), .Z(n160) );
  AO2 U194 ( .A(req_len[6]), .B(n150), .C(req_len[7]), .D(n151), .Z(n200) );
  IV U195 ( .A(req_len[5]), .Z(n199) );
  EN U196 ( .A(n166), .B(n101), .Z(n159) );
  AN2 U197 ( .A(n158), .B(n157), .Z(n155) );
  AO6 U198 ( .A(sdr_width[1]), .B(req_len[6]), .C(n201), .Z(n157) );
  IV U199 ( .A(n202), .Z(n201) );
  AO2 U200 ( .A(req_len[7]), .B(n150), .C(req_len[8]), .D(n151), .Z(n202) );
  AO7 U201 ( .A(n203), .B(n143), .C(n142), .Z(n158) );
  ND2 U202 ( .A(n166), .B(n101), .Z(n142) );
  AO6 U203 ( .A(req_addr[5]), .B(sdr_width[1]), .C(n204), .Z(n101) );
  AO4 U204 ( .A(n205), .B(n193), .C(n206), .D(n185), .Z(n204) );
  AN3 U205 ( .A(n195), .B(n198), .C(n104), .Z(n166) );
  AO6 U206 ( .A(sdr_width[1]), .B(req_addr[4]), .C(n207), .Z(n104) );
  EON1 U207 ( .A(n185), .B(n205), .C(req_addr[5]), .D(n150), .Z(n207) );
  IV U208 ( .A(n107), .Z(n198) );
  AO7 U209 ( .A(n147), .B(n208), .C(n209), .Z(n107) );
  AO2 U210 ( .A(req_addr[4]), .B(n150), .C(req_addr[5]), .D(n151), .Z(n209) );
  AN3 U211 ( .A(n113), .B(n132), .C(n190), .Z(n195) );
  NR3 U212 ( .A(n116), .B(n136), .C(n119), .Z(n190) );
  IV U213 ( .A(n184), .Z(n119) );
  AO2 U214 ( .A(n151), .B(req_addr[1]), .C(n150), .D(req_addr[0]), .Z(n184) );
  IV U215 ( .A(n187), .Z(n136) );
  ND2 U216 ( .A(req_addr[0]), .B(n151), .Z(n187) );
  AO7 U217 ( .A(n147), .B(n210), .C(n211), .Z(n116) );
  AO2 U218 ( .A(req_addr[1]), .B(n150), .C(req_addr[2]), .D(n151), .Z(n211) );
  IV U219 ( .A(req_addr[0]), .Z(n210) );
  IV U220 ( .A(n110), .Z(n132) );
  AO7 U221 ( .A(n147), .B(n212), .C(n213), .Z(n110) );
  AO2 U222 ( .A(req_addr[3]), .B(n150), .C(req_addr[4]), .D(n151), .Z(n213) );
  AO6 U223 ( .A(sdr_width[1]), .B(req_addr[1]), .C(n214), .Z(n113) );
  AO4 U224 ( .A(n212), .B(n193), .C(n208), .D(n185), .Z(n214) );
  IV U225 ( .A(req_addr[3]), .Z(n208) );
  IV U226 ( .A(req_addr[2]), .Z(n212) );
  AO7 U227 ( .A(n205), .B(n147), .C(n215), .Z(n143) );
  AO2 U228 ( .A(req_addr[7]), .B(n150), .C(req_addr[8]), .D(n151), .Z(n215) );
  AO7 U229 ( .A(n216), .B(n217), .C(n218), .Z(n140) );
  AO4 U230 ( .A(n185), .B(n219), .C(n193), .D(n148), .Z(n217) );
  NR2 U231 ( .A(n206), .B(n147), .Z(n216) );
  ND2 U232 ( .A(n220), .B(n221), .Z(N174) );
  AO2 U233 ( .A(n146), .B(N131), .C(n2), .D(N132), .Z(n221) );
  AO2 U234 ( .A(n203), .B(N129), .C(n222), .D(N130), .Z(n220) );
  ND2 U235 ( .A(n223), .B(n224), .Z(N173) );
  AO2 U236 ( .A(n146), .B(N130), .C(n2), .D(N131), .Z(n224) );
  AO2 U237 ( .A(n203), .B(N128), .C(n222), .D(N129), .Z(n223) );
  ND2 U238 ( .A(n225), .B(n226), .Z(N172) );
  AO2 U239 ( .A(n146), .B(N129), .C(n2), .D(N130), .Z(n226) );
  AO2 U240 ( .A(n203), .B(N127), .C(n222), .D(N128), .Z(n225) );
  ND2 U241 ( .A(n227), .B(n228), .Z(N171) );
  AO2 U242 ( .A(n146), .B(N128), .C(n2), .D(N129), .Z(n228) );
  AO2 U243 ( .A(n203), .B(N126), .C(n222), .D(N127), .Z(n227) );
  ND2 U244 ( .A(n229), .B(n230), .Z(N170) );
  AO2 U245 ( .A(n146), .B(N127), .C(n2), .D(N128), .Z(n230) );
  AO2 U246 ( .A(n203), .B(N125), .C(n222), .D(N126), .Z(n229) );
  ND2 U247 ( .A(n231), .B(n232), .Z(N169) );
  AO2 U248 ( .A(n146), .B(N126), .C(n2), .D(N127), .Z(n232) );
  AO2 U249 ( .A(n203), .B(N124), .C(n222), .D(N125), .Z(n231) );
  ND2 U250 ( .A(n233), .B(n234), .Z(N168) );
  AO2 U251 ( .A(n146), .B(N125), .C(n2), .D(N126), .Z(n234) );
  AO2 U252 ( .A(n203), .B(N123), .C(n222), .D(N124), .Z(n233) );
  ND2 U253 ( .A(n235), .B(n236), .Z(N167) );
  AO2 U254 ( .A(n146), .B(N124), .C(n2), .D(N125), .Z(n236) );
  AO2 U255 ( .A(n203), .B(N122), .C(n222), .D(N123), .Z(n235) );
  ND2 U256 ( .A(n237), .B(n238), .Z(N166) );
  AO2 U257 ( .A(n146), .B(N123), .C(n2), .D(N124), .Z(n238) );
  AO2 U258 ( .A(n203), .B(N121), .C(n222), .D(N122), .Z(n237) );
  ND2 U259 ( .A(n239), .B(n240), .Z(N165) );
  AO2 U260 ( .A(n146), .B(N122), .C(n2), .D(N123), .Z(n240) );
  AO2 U261 ( .A(n203), .B(N120), .C(n222), .D(N121), .Z(n239) );
  ND2 U262 ( .A(n241), .B(n242), .Z(N164) );
  AO2 U263 ( .A(n146), .B(N121), .C(n2), .D(N122), .Z(n242) );
  AO2 U264 ( .A(n203), .B(N119), .C(n222), .D(N120), .Z(n241) );
  ND2 U265 ( .A(n243), .B(n244), .Z(N163) );
  AO2 U266 ( .A(n146), .B(N120), .C(n2), .D(N121), .Z(n244) );
  AO2 U267 ( .A(n203), .B(N118), .C(n222), .D(N119), .Z(n243) );
  ND2 U268 ( .A(n245), .B(n246), .Z(N162) );
  AO2 U269 ( .A(n146), .B(N119), .C(n2), .D(N120), .Z(n246) );
  AO2 U270 ( .A(n203), .B(N117), .C(n222), .D(N118), .Z(n245) );
  AN2 U271 ( .A(N117), .B(n2), .Z(N160) );
  AN2 U272 ( .A(n218), .B(N116), .Z(N159) );
  IV U273 ( .A(n247), .Z(N158) );
  AO7 U274 ( .A(n218), .B(n222), .C(N115), .Z(n247) );
  OR2 U275 ( .A(n2), .B(n146), .Z(n218) );
  ND2 U276 ( .A(n248), .B(n249), .Z(N157) );
  AO2 U277 ( .A(n146), .B(N118), .C(n2), .D(N119), .Z(n249) );
  AO2 U278 ( .A(n203), .B(N116), .C(n222), .D(N117), .Z(n248) );
  ND2 U279 ( .A(n250), .B(n251), .Z(N156) );
  AO2 U280 ( .A(n146), .B(N117), .C(n2), .D(N118), .Z(n251) );
  NR2 U281 ( .A(n252), .B(cfg_colbits[0]), .Z(n146) );
  AO2 U282 ( .A(n203), .B(N115), .C(n222), .D(N116), .Z(n250) );
  IV U283 ( .A(n141), .Z(n222) );
  ND2 U284 ( .A(cfg_colbits[0]), .B(n252), .Z(n141) );
  IV U285 ( .A(cfg_colbits[1]), .Z(n252) );
  NR2 U286 ( .A(cfg_colbits[0]), .B(cfg_colbits[1]), .Z(n203) );
  NR2 U287 ( .A(n253), .B(n254), .Z(N152) );
  MUX21H U288 ( .A(n255), .B(n3), .S(n256), .Z(n254) );
  ND2 U289 ( .A(page_ovflw_r), .B(test_so2), .Z(n255) );
  AO6 U290 ( .A(n18), .B(n257), .C(n253), .Z(N151) );
  IV U291 ( .A(reset_n), .Z(n253) );
  ND2 U292 ( .A(test_so2), .B(n256), .Z(n257) );
  AO3 U293 ( .A(n258), .B(n259), .C(n260), .D(n261), .Z(N132) );
  AO2 U294 ( .A(n262), .B(curr_sdr_addr_25_), .C(next_sdr_addr[25]), .D(n100), 
        .Z(n261) );
  AO2 U295 ( .A(req_addr[24]), .B(n263), .C(req_addr[25]), .D(n127), .Z(n260)
         );
  IV U296 ( .A(req_addr[23]), .Z(n258) );
  AO3 U297 ( .A(n259), .B(n264), .C(n265), .D(n266), .Z(N131) );
  AO2 U298 ( .A(n262), .B(test_so1), .C(next_sdr_addr[24]), .D(n100), .Z(n266)
         );
  AO2 U299 ( .A(req_addr[23]), .B(n263), .C(req_addr[24]), .D(n127), .Z(n265)
         );
  IV U300 ( .A(req_addr[22]), .Z(n264) );
  AO3 U301 ( .A(n259), .B(n267), .C(n268), .D(n269), .Z(N130) );
  AO2 U302 ( .A(n262), .B(curr_sdr_addr_23_), .C(next_sdr_addr[23]), .D(n100), 
        .Z(n269) );
  AO2 U303 ( .A(req_addr[22]), .B(n263), .C(req_addr[23]), .D(n127), .Z(n268)
         );
  IV U304 ( .A(req_addr[21]), .Z(n267) );
  AO3 U305 ( .A(n259), .B(n270), .C(n271), .D(n272), .Z(N129) );
  AO2 U306 ( .A(n262), .B(curr_sdr_addr_22_), .C(next_sdr_addr[22]), .D(n100), 
        .Z(n272) );
  AO2 U307 ( .A(req_addr[21]), .B(n263), .C(req_addr[22]), .D(n127), .Z(n271)
         );
  IV U308 ( .A(req_addr[20]), .Z(n270) );
  AO3 U309 ( .A(n259), .B(n273), .C(n274), .D(n275), .Z(N128) );
  AO2 U310 ( .A(n262), .B(curr_sdr_addr_21_), .C(next_sdr_addr[21]), .D(n100), 
        .Z(n275) );
  AO2 U311 ( .A(req_addr[20]), .B(n263), .C(req_addr[21]), .D(n127), .Z(n274)
         );
  IV U312 ( .A(req_addr[19]), .Z(n273) );
  AO3 U313 ( .A(n259), .B(n276), .C(n277), .D(n278), .Z(N127) );
  AO2 U314 ( .A(n262), .B(curr_sdr_addr_20_), .C(next_sdr_addr[20]), .D(n100), 
        .Z(n278) );
  AO2 U315 ( .A(req_addr[19]), .B(n263), .C(req_addr[20]), .D(n127), .Z(n277)
         );
  IV U316 ( .A(req_addr[18]), .Z(n276) );
  AO3 U317 ( .A(n259), .B(n279), .C(n280), .D(n281), .Z(N126) );
  AO2 U318 ( .A(n262), .B(curr_sdr_addr_19_), .C(next_sdr_addr[19]), .D(n100), 
        .Z(n281) );
  AO2 U319 ( .A(req_addr[18]), .B(n263), .C(req_addr[19]), .D(n127), .Z(n280)
         );
  IV U320 ( .A(req_addr[17]), .Z(n279) );
  AO3 U321 ( .A(n259), .B(n282), .C(n283), .D(n284), .Z(N125) );
  AO2 U322 ( .A(n262), .B(curr_sdr_addr_18_), .C(next_sdr_addr[18]), .D(n100), 
        .Z(n284) );
  AO2 U323 ( .A(req_addr[17]), .B(n263), .C(req_addr[18]), .D(n127), .Z(n283)
         );
  IV U324 ( .A(req_addr[16]), .Z(n282) );
  AO3 U325 ( .A(n259), .B(n285), .C(n286), .D(n287), .Z(N124) );
  AO2 U326 ( .A(n262), .B(curr_sdr_addr_17_), .C(next_sdr_addr[17]), .D(n100), 
        .Z(n287) );
  AO2 U327 ( .A(req_addr[16]), .B(n263), .C(req_addr[17]), .D(n127), .Z(n286)
         );
  IV U328 ( .A(req_addr[15]), .Z(n285) );
  AO3 U329 ( .A(n259), .B(n288), .C(n289), .D(n290), .Z(N123) );
  AO2 U330 ( .A(n262), .B(curr_sdr_addr_16_), .C(next_sdr_addr[16]), .D(n100), 
        .Z(n290) );
  AO2 U331 ( .A(req_addr[15]), .B(n263), .C(req_addr[16]), .D(n127), .Z(n289)
         );
  IV U332 ( .A(req_addr[14]), .Z(n288) );
  AO3 U333 ( .A(n259), .B(n291), .C(n292), .D(n293), .Z(N122) );
  AO2 U334 ( .A(n262), .B(curr_sdr_addr_15_), .C(next_sdr_addr[15]), .D(n100), 
        .Z(n293) );
  AO2 U335 ( .A(req_addr[14]), .B(n263), .C(req_addr[15]), .D(n127), .Z(n292)
         );
  IV U336 ( .A(req_addr[13]), .Z(n291) );
  AO3 U337 ( .A(n259), .B(n294), .C(n295), .D(n296), .Z(N121) );
  AO2 U338 ( .A(n262), .B(curr_sdr_addr_14_), .C(next_sdr_addr[14]), .D(n100), 
        .Z(n296) );
  AO2 U339 ( .A(req_addr[13]), .B(n263), .C(req_addr[14]), .D(n127), .Z(n295)
         );
  IV U340 ( .A(req_addr[12]), .Z(n294) );
  AO3 U341 ( .A(n259), .B(n297), .C(n298), .D(n299), .Z(N120) );
  AO2 U342 ( .A(n262), .B(curr_sdr_addr_13_), .C(next_sdr_addr[13]), .D(n100), 
        .Z(n299) );
  AO2 U343 ( .A(req_addr[12]), .B(n263), .C(req_addr[13]), .D(n127), .Z(n298)
         );
  IV U344 ( .A(req_addr[11]), .Z(n297) );
  AO3 U345 ( .A(n300), .B(n259), .C(n301), .D(n302), .Z(N119) );
  AO2 U346 ( .A(n262), .B(curr_sdr_addr_12_), .C(next_sdr_addr[12]), .D(n100), 
        .Z(n302) );
  AO2 U347 ( .A(req_addr[11]), .B(n263), .C(req_addr[12]), .D(n127), .Z(n301)
         );
  IV U348 ( .A(req_addr[10]), .Z(n300) );
  AO3 U349 ( .A(n219), .B(n259), .C(n303), .D(n304), .Z(N118) );
  AO2 U350 ( .A(n262), .B(curr_sdr_addr_11_), .C(next_sdr_addr[11]), .D(n100), 
        .Z(n304) );
  AO2 U351 ( .A(n263), .B(req_addr[10]), .C(req_addr[11]), .D(n127), .Z(n303)
         );
  IV U352 ( .A(req_addr[9]), .Z(n219) );
  AO3 U353 ( .A(n148), .B(n259), .C(n305), .D(n306), .Z(N117) );
  AO2 U354 ( .A(n262), .B(curr_sdr_addr_10_), .C(next_sdr_addr[10]), .D(n100), 
        .Z(n306) );
  AO2 U355 ( .A(n263), .B(req_addr[9]), .C(req_addr[10]), .D(n127), .Z(n305)
         );
  IV U356 ( .A(req_addr[8]), .Z(n148) );
  AO3 U357 ( .A(n206), .B(n259), .C(n307), .D(n308), .Z(N116) );
  AO2 U358 ( .A(n262), .B(curr_sdr_addr_9_), .C(next_sdr_addr[9]), .D(n100), 
        .Z(n308) );
  AO2 U359 ( .A(n263), .B(req_addr[8]), .C(req_addr[9]), .D(n127), .Z(n307) );
  IV U360 ( .A(req_addr[7]), .Z(n206) );
  AO3 U361 ( .A(n205), .B(n259), .C(n309), .D(n310), .Z(N115) );
  AO2 U362 ( .A(n262), .B(curr_sdr_addr_8_), .C(next_sdr_addr[8]), .D(n100), 
        .Z(n310) );
  AO2 U363 ( .A(n263), .B(req_addr[7]), .C(req_addr[8]), .D(n127), .Z(n309) );
  NR2 U364 ( .A(n185), .B(n18), .Z(n127) );
  NR2 U365 ( .A(n193), .B(n18), .Z(n263) );
  IV U366 ( .A(req_addr[6]), .Z(n205) );
  AO3 U367 ( .A(n344), .B(n21), .C(n311), .D(n312), .Z(N104) );
  ND2 U368 ( .A(next_req_len[6]), .B(n100), .Z(n312) );
  ND2 U369 ( .A(req_ack), .B(n196), .Z(n311) );
  AO7 U370 ( .A(n147), .B(n192), .C(n313), .Z(n196) );
  AO2 U371 ( .A(req_len[5]), .B(n150), .C(req_len[6]), .D(n151), .Z(n313) );
  IV U372 ( .A(req_len[4]), .Z(n192) );
  AO3 U373 ( .A(n345), .B(n21), .C(n314), .D(n315), .Z(N103) );
  ND2 U374 ( .A(next_req_len[5]), .B(n100), .Z(n315) );
  ND2 U375 ( .A(req_ack), .B(n167), .Z(n314) );
  AO7 U376 ( .A(n147), .B(n194), .C(n316), .Z(n167) );
  AO2 U377 ( .A(req_len[4]), .B(n150), .C(req_len[5]), .D(n151), .Z(n316) );
  AO3 U378 ( .A(n346), .B(n21), .C(n317), .D(n318), .Z(N102) );
  ND2 U379 ( .A(next_req_len[4]), .B(n100), .Z(n318) );
  ND2 U380 ( .A(req_ack), .B(n319), .Z(n317) );
  AO7 U381 ( .A(n147), .B(n320), .C(n321), .Z(n319) );
  AO2 U382 ( .A(req_len[3]), .B(n150), .C(req_len[4]), .D(n151), .Z(n321) );
  IV U383 ( .A(n193), .Z(n150) );
  AO3 U384 ( .A(n347), .B(n21), .C(n322), .D(n323), .Z(N101) );
  EO1 U385 ( .A(req_ack), .B(n173), .C(n259), .D(n186), .Z(n323) );
  ND2 U386 ( .A(sdr_width[1]), .B(req_ack), .Z(n259) );
  AO4 U387 ( .A(n185), .B(n194), .C(n193), .D(n320), .Z(n173) );
  IV U388 ( .A(req_len[3]), .Z(n194) );
  ND2 U389 ( .A(next_req_len[3]), .B(n100), .Z(n322) );
  AO7 U390 ( .A(n177), .B(n18), .C(n324), .Z(N100) );
  EO1 U391 ( .A(next_req_len[2]), .B(n100), .C(n21), .D(n348), .Z(n324) );
  IV U392 ( .A(n262), .Z(n21) );
  NR2 U393 ( .A(req_ack), .B(n100), .Z(n262) );
  IV U394 ( .A(n18), .Z(req_ack) );
  NR2 U395 ( .A(n256), .B(n19), .Z(n100) );
  IV U396 ( .A(b2r_ack), .Z(n256) );
  ND3 U397 ( .A(b2r_arb_ok), .B(n19), .C(req), .Z(n18) );
  NR2 U398 ( .A(test_so3), .B(test_so2), .Z(n19) );
  AO6 U399 ( .A(sdr_width[1]), .B(req_len[0]), .C(n325), .Z(n177) );
  AO4 U400 ( .A(n186), .B(n193), .C(n320), .D(n185), .Z(n325) );
  IV U401 ( .A(n151), .Z(n185) );
  NR2 U402 ( .A(sdr_width[0]), .B(sdr_width[1]), .Z(n151) );
  IV U403 ( .A(req_len[2]), .Z(n320) );
  ND2 U404 ( .A(sdr_width[0]), .B(n147), .Z(n193) );
  IV U405 ( .A(sdr_width[1]), .Z(n147) );
  IV U406 ( .A(req_len[1]), .Z(n186) );
endmodule


module sdrc_core_SDR_DW16_SDR_BW2_test_1 ( clk, pad_clk, reset_n, sdr_width, 
        cfg_colbits, app_req, app_req_addr, app_req_len, app_req_wrap, 
        app_req_wr_n, app_req_ack, cfg_req_depth, app_wr_data, app_wr_en_n, 
        app_last_wr, app_rd_data, app_rd_valid, app_last_rd, app_wr_next_req, 
        sdr_init_done, app_req_dma_last, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, pad_sdr_din, sdr_dout, 
        sdr_den_n, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, cfg_sdr_trp_d, 
        cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, cfg_sdr_twr_d, 
        cfg_sdr_rfsh, cfg_sdr_rfmax, test_si23, test_si22, test_si21, 
        test_si20, test_si19, test_si18, test_si17, test_si16, test_si15, 
        test_si14, test_si13, test_si12, test_si11, test_si10, test_si9, 
        test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, 
        test_si1, test_so20, test_so19, test_so18, test_so17, test_so16, 
        test_so15, test_so14, test_so13, test_so12, test_so11, test_so10, 
        test_so9, test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, 
        test_so2, test_so1, test_se );
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
         app_req_dma_last, cfg_sdr_en, test_si23, test_si22, test_si21,
         test_si20, test_si19, test_si18, test_si17, test_si16, test_si15,
         test_si14, test_si13, test_si12, test_si11, test_si10, test_si9,
         test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2,
         test_si1, test_se;
  output app_req_ack, app_last_wr, app_rd_valid, app_last_rd, app_wr_next_req,
         sdr_init_done, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         test_so20, test_so19, test_so18, test_so17, test_so16, test_so15,
         test_so14, test_so13, test_so12, test_so11, test_so10, test_so9,
         test_so8, test_so7, test_so6, test_so5, test_so4, test_so3, test_so2,
         test_so1;
  wire   pad_sdr_din2_15_, pad_sdr_din2_14_, pad_sdr_din2_13_,
         pad_sdr_din2_12_, pad_sdr_din2_11_, pad_sdr_din2_10_, pad_sdr_din2_9_,
         pad_sdr_din2_7_, pad_sdr_din2_6_, pad_sdr_din2_5_, pad_sdr_din2_4_,
         pad_sdr_din2_3_, pad_sdr_din2_2_, pad_sdr_din2_1_, pad_sdr_din2_0_,
         r2x_idle, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_caddr_10_,
         r2b_caddr_9_, r2b_caddr_8_, r2b_caddr_7_, r2b_caddr_6_, r2b_caddr_4_,
         r2b_caddr_3_, r2b_caddr_2_, r2b_caddr_1_, r2b_caddr_0_, r2b_write,
         b2r_ack, b2r_arb_ok, b2x_idle, b2x_req, b2x_start, b2x_last, b2x_wrap,
         x2b_ack, b2x_tras_ok, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok,
         x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_wrnext,
         x2a_rdok, n33, n34, n38, n43, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6;
  wire   [15:0] pad_sdr_din1;
  wire   [3:0] r2b_req_id;
  wire   [1:0] r2b_ba;
  wire   [12:0] r2b_raddr;
  wire   [6:0] r2b_len;
  wire   [3:0] b2x_id;
  wire   [1:0] b2x_ba;
  wire   [12:0] b2x_addr;
  wire   [6:0] b2x_len;
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
        .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), .r2b_last(r2b_last), 
        .r2b_wrap(r2b_wrap), .r2b_ba(r2b_ba), .r2b_raddr(r2b_raddr), 
        .r2b_caddr({SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, 
        r2b_caddr_10_, r2b_caddr_9_, r2b_caddr_8_, r2b_caddr_7_, r2b_caddr_6_, 
        test_so17, r2b_caddr_4_, r2b_caddr_3_, r2b_caddr_2_, r2b_caddr_1_, 
        r2b_caddr_0_}), .r2b_len(r2b_len), .r2b_write(r2b_write), .b2r_ack(
        b2r_ack), .b2r_arb_ok(b2r_arb_ok), .test_si4(test_si19), .test_si3(
        test_si18), .test_si2(test_si17), .test_si1(test_si16), .test_so3(n38), 
        .test_so2(test_so18), .test_so1(test_so16), .test_se(test_se) );
  sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 u_bank_ctl ( .clk(n33), .reset_n(
        reset_n), .a2b_req_depth(cfg_req_depth), .r2b_req(r2b_req), 
        .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), .r2b_last(r2b_last), 
        .r2b_wrap(r2b_wrap), .r2b_ba(r2b_ba), .r2b_raddr(r2b_raddr), 
        .r2b_caddr({1'b0, 1'b0, r2b_caddr_10_, r2b_caddr_9_, r2b_caddr_8_, 
        r2b_caddr_7_, r2b_caddr_6_, test_so17, r2b_caddr_4_, r2b_caddr_3_, 
        r2b_caddr_2_, r2b_caddr_1_, r2b_caddr_0_}), .r2b_len(r2b_len), 
        .r2b_write(r2b_write), .b2r_arb_ok(b2r_arb_ok), .b2r_ack(b2r_ack), 
        .b2x_idle(b2x_idle), .b2x_req(b2x_req), .b2x_start(b2x_start), 
        .b2x_last(b2x_last), .b2x_wrap(b2x_wrap), .b2x_id(b2x_id), .b2x_ba(
        b2x_ba), .b2x_addr(b2x_addr), .b2x_len(b2x_len), .b2x_cmd(b2x_cmd), 
        .x2b_ack(x2b_ack), .b2x_tras_ok(b2x_tras_ok), .x2b_refresh(x2b_refresh), .x2b_pre_ok(x2b_pre_ok), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .xfr_bank_sel(xfr_bank_sel), 
        .sdr_req_norm_dma_last(app_req_dma_last), .tras_delay(cfg_sdr_tras_d), 
        .trp_delay(cfg_sdr_trp_d), .trcd_delay(cfg_sdr_trcd_d), .test_si13(
        test_si14), .test_si12(test_si13), .test_si11(test_si12), .test_si10(
        test_si11), .test_si9(test_si10), .test_si8(test_si9), .test_si7(
        test_si8), .test_si6(test_si7), .test_si5(test_si6), .test_si4(
        test_si5), .test_si3(test_si4), .test_si2(test_si3), .test_si1(
        pad_sdr_din2_15_), .test_so13(n43), .test_so12(test_so13), .test_so11(
        test_so12), .test_so10(test_so11), .test_so9(test_so10), .test_so8(
        test_so9), .test_so7(test_so8), .test_so6(test_so7), .test_so5(
        test_so6), .test_so4(test_so5), .test_so3(test_so4), .test_so2(
        test_so3), .test_so1(test_so2), .test_se(test_se) );
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
        .rfsh_rmax(cfg_sdr_rfmax), .test_si5(test_si23), .test_si4(test_si22), 
        .test_si3(test_si21), .test_si2(test_si20), .test_si1(n38), .test_so2(
        test_so20), .test_so1(test_so19), .test_se(test_se) );
  sdrc_bs_convert_SDR_DW16_SDR_BW2_test_1 u_bs_convert ( .clk(n33), .reset_n(
        reset_n), .sdr_width(sdr_width), .x2a_rdstart(x2a_rdstart), 
        .x2a_wrstart(x2a_wrstart), .x2a_rdlast(x2a_rdlast), .x2a_wrlast(
        x2a_wrlast), .x2a_rddt(x2a_rddt), .x2a_rdok(x2a_rdok), .a2x_wrdt(
        a2x_wrdt), .a2x_wren_n(a2x_wren_n), .x2a_wrnext(x2a_wrnext), 
        .app_wr_data(app_wr_data), .app_wr_en_n(app_wr_en_n), .app_wr_next(
        app_wr_next_req), .app_last_wr(app_last_wr), .app_rd_data(app_rd_data), 
        .app_rd_valid(app_rd_valid), .app_last_rd(app_last_rd), .test_si2(
        test_si15), .test_si1(n43), .test_so2(test_so15), .test_so1(test_so14), 
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
        cfg_sdr_twr_d, cfg_sdr_rfsh, cfg_sdr_rfmax, test_si1, test_so1, 
        test_si2, test_so2, test_si3, test_so3, test_si4, test_so4, test_si5, 
        test_so5, test_si6, test_so6, test_si7, test_so7, test_si8, test_so8, 
        test_si9, test_so9, test_si10, test_so10, test_si11, test_so11, 
        test_si12, test_so12, test_si13, test_so13, test_si14, test_so14, 
        test_si15, test_so15, test_si16, test_so16, test_si17, test_so17, 
        test_si18, test_so18, test_si19, test_so19, test_si20, test_so20, 
        test_si21, test_so21, test_si22, test_so22, test_si23, test_so23, 
        test_si24, test_so24, test_si25, test_so25, test_si26, test_so26, 
        test_si27, test_so27, test_si28, test_so28, test_si29, test_so29, 
        test_si30, test_so30, test_si31, test_so31, test_si32, test_so32, 
        test_si33, test_so33, test_si34, test_so34, test_si35, test_si36, 
        test_si37, test_so37, test_si38, test_si39, test_so39, test_si40, 
        test_so40, test_si41, test_so41, test_si42, test_so42, test_si43, 
        test_so43, test_si44, test_so44, test_si45, test_so45, test_si46, 
        test_so46, test_si47, test_so47, test_si48, test_so48, test_si49, 
        test_so49, test_si50, test_so50, test_se );
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
         sdram_resetn, cfg_sdr_en, test_si1, test_si2, test_si3, test_si4,
         test_si5, test_si6, test_si7, test_si8, test_si9, test_si10,
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
         test_so30, test_so31, test_so32, test_so33, test_so34, test_so37,
         test_so39, test_so40, test_so41, test_so42, test_so43, test_so44,
         test_so45, test_so46, test_so47, test_so48, test_so49, test_so50;
  wire   app_req, app_req_addr_25_, app_req_addr_24_, app_req_addr_22_,
         app_req_addr_21_, app_req_addr_20_, app_req_addr_19_,
         app_req_addr_18_, app_req_addr_17_, app_req_addr_16_,
         app_req_addr_15_, app_req_addr_14_, app_req_addr_13_,
         app_req_addr_12_, app_req_addr_11_, app_req_addr_10_, app_req_addr_9_,
         app_req_addr_8_, app_req_addr_7_, app_req_addr_6_, app_req_addr_5_,
         app_req_addr_4_, app_req_addr_3_, app_req_addr_2_, app_req_addr_1_,
         app_req_addr_0_, app_req_wr_n, app_req_ack, app_wr_next_req,
         app_rd_valid, app_last_rd, n1, n2, n100;
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
        .sdr_req_addr({app_req_addr_25_, app_req_addr_24_, test_so39, 
        app_req_addr_22_, app_req_addr_21_, app_req_addr_20_, app_req_addr_19_, 
        app_req_addr_18_, app_req_addr_17_, app_req_addr_16_, app_req_addr_15_, 
        app_req_addr_14_, app_req_addr_13_, app_req_addr_12_, app_req_addr_11_, 
        app_req_addr_10_, app_req_addr_9_, app_req_addr_8_, app_req_addr_7_, 
        app_req_addr_6_, app_req_addr_5_, app_req_addr_4_, app_req_addr_3_, 
        app_req_addr_2_, app_req_addr_1_, app_req_addr_0_}), .sdr_req_len(
        app_req_len), .sdr_req_wr_n(app_req_wr_n), .sdr_req_ack(app_req_ack), 
        .sdr_busy_n(1'b0), .sdr_wr_en_n(app_wr_en_n), .sdr_wr_next(
        app_wr_next_req), .sdr_rd_valid(app_rd_valid), .sdr_last_rd(
        app_last_rd), .sdr_wr_data(app_wr_data), .sdr_rd_data(app_rd_data), 
        .test_si27(test_si50), .test_si26(test_si49), .test_si25(test_si48), 
        .test_si24(test_si47), .test_si23(test_si46), .test_si22(test_si45), 
        .test_si21(test_si44), .test_si20(test_si43), .test_si19(test_si42), 
        .test_si18(test_si41), .test_si17(test_si40), .test_si16(test_si39), 
        .test_si15(test_si37), .test_si14(test_si34), .test_si13(test_si32), 
        .test_si12(test_si29), .test_si11(test_si27), .test_si10(test_si24), 
        .test_si9(test_si22), .test_si8(test_si19), .test_si7(test_si17), 
        .test_si6(test_si14), .test_si5(test_si12), .test_si4(test_si9), 
        .test_si3(test_si7), .test_si2(test_si4), .test_si1(test_si1), 
        .test_so26(test_so50), .test_so25(test_so49), .test_so24(test_so48), 
        .test_so23(test_so47), .test_so22(test_so46), .test_so21(test_so45), 
        .test_so20(test_so44), .test_so19(test_so43), .test_so18(test_so42), 
        .test_so17(test_so41), .test_so16(test_so40), .test_so15(test_so37), 
        .test_so14(test_so34), .test_so13(test_so32), .test_so12(test_so29), 
        .test_so11(test_so27), .test_so10(test_so24), .test_so9(test_so22), 
        .test_so8(test_so19), .test_so7(test_so17), .test_so6(test_so14), 
        .test_so5(test_so12), .test_so4(test_so9), .test_so3(test_so7), 
        .test_so2(test_so4), .test_so1(test_so1), .test_se(test_se) );
  sdrc_core_SDR_DW16_SDR_BW2_test_1 u_sdrc_core ( .clk(sdram_clk), .pad_clk(
        sdram_clk), .reset_n(sdram_resetn), .sdr_width(cfg_sdr_width), 
        .cfg_colbits(cfg_colbits), .app_req(app_req), .app_req_addr({
        app_req_addr_25_, app_req_addr_24_, test_so39, app_req_addr_22_, 
        app_req_addr_21_, app_req_addr_20_, app_req_addr_19_, app_req_addr_18_, 
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
        cfg_sdr_rfmax), .test_si23(test_si38), .test_si22(test_si36), 
        .test_si21(test_si35), .test_si20(test_si33), .test_si19(test_si31), 
        .test_si18(test_si30), .test_si17(test_si28), .test_si16(test_si26), 
        .test_si15(test_si25), .test_si14(test_si23), .test_si13(test_si21), 
        .test_si12(test_si20), .test_si11(test_si18), .test_si10(test_si16), 
        .test_si9(test_si15), .test_si8(test_si13), .test_si7(test_si11), 
        .test_si6(test_si10), .test_si5(test_si8), .test_si4(test_si6), 
        .test_si3(test_si5), .test_si2(test_si3), .test_si1(test_si2), 
        .test_so20(test_so33), .test_so19(test_so31), .test_so18(test_so30), 
        .test_so17(test_so28), .test_so16(test_so26), .test_so15(test_so25), 
        .test_so14(test_so23), .test_so13(test_so21), .test_so12(test_so20), 
        .test_so11(test_so18), .test_so10(test_so16), .test_so9(test_so15), 
        .test_so8(test_so13), .test_so7(test_so11), .test_so6(test_so10), 
        .test_so5(test_so8), .test_so4(test_so6), .test_so3(test_so5), 
        .test_so2(test_so3), .test_so1(test_so2), .test_se(test_se) );
  BTS4 sdr_dq_tri_0_ ( .A(sdr_dout[0]), .E(n100), .Z(sdr_dq[0]) );
  BTS4 sdr_dq_tri_1_ ( .A(sdr_dout[1]), .E(n100), .Z(sdr_dq[1]) );
  BTS4 sdr_dq_tri_2_ ( .A(sdr_dout[2]), .E(n100), .Z(sdr_dq[2]) );
  BTS4 sdr_dq_tri_3_ ( .A(sdr_dout[3]), .E(n100), .Z(sdr_dq[3]) );
  BTS4 sdr_dq_tri_4_ ( .A(sdr_dout[4]), .E(n100), .Z(sdr_dq[4]) );
  BTS4 sdr_dq_tri_5_ ( .A(sdr_dout[5]), .E(n100), .Z(sdr_dq[5]) );
  BTS4 sdr_dq_tri_6_ ( .A(sdr_dout[6]), .E(n100), .Z(sdr_dq[6]) );
  BTS4 sdr_dq_tri_7_ ( .A(sdr_dout[7]), .E(n100), .Z(sdr_dq[7]) );
  BTS4 sdr_dq_tri_8_ ( .A(sdr_dout[8]), .E(n100), .Z(sdr_dq[8]) );
  BTS4 sdr_dq_tri_9_ ( .A(sdr_dout[9]), .E(n100), .Z(sdr_dq[9]) );
  BTS4 sdr_dq_tri_10_ ( .A(sdr_dout[10]), .E(n100), .Z(sdr_dq[10]) );
  BTS4 sdr_dq_tri_11_ ( .A(sdr_dout[11]), .E(n100), .Z(sdr_dq[11]) );
  BTS4 sdr_dq_tri_12_ ( .A(sdr_dout[12]), .E(n100), .Z(sdr_dq[12]) );
  BTS4 sdr_dq_tri_13_ ( .A(sdr_dout[13]), .E(n100), .Z(sdr_dq[13]) );
  BTS4 sdr_dq_tri_14_ ( .A(sdr_dout[14]), .E(n100), .Z(sdr_dq[14]) );
  BTS4 sdr_dq_tri_15_ ( .A(sdr_dout[15]), .E(n100), .Z(sdr_dq[15]) );
  ND2 U3 ( .A(sdr_den_n[1]), .B(sdr_den_n[0]), .Z(n1) );
  NR2 U4 ( .A(test_se), .B(n2), .Z(n100) );
  IV U5 ( .A(n1), .Z(n2) );
endmodule

