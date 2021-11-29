module sdrc_bank_fsm_test_0 ( clk, reset_n, r2b_req, r2b_req_id, r2b_start, 
        r2b_last, r2b_wrap, r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, 
        sdr_dma_last, b2x_req, b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_addr, 
        b2x_len, b2x_cmd, x2b_ack, tras_ok, xfr_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, bank_row, tras_delay, trp_delay, 
        trcd_delay, test_si3, test_si2, test_si1, test_so3, test_so2, test_so1, 
        test_se );
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
         x2b_rdok, x2b_wrok, test_si3, test_si2, test_si1, test_se;
  output b2r_ack, b2x_req, b2x_start, b2x_last, b2x_wrap, tras_ok, test_so3,
         test_so2, test_so1;
  wire   x2b_act_ok_r_0_, N34, N35, N36, N37, N38, N39, N40, N41, N42, N73,
         N74, N75, N77, N78, N79, N80, N81, N82, N83, n82, n84, n109, n110,
         n111, n127, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n1,
         n2, n79, n80, n81, n83, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n113, n114, n115, n116, n117, n118, n119, n120,
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
         n351, n352, n355, n356, n357, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401;
  wire   [3:2] timer0;
  wire   [3:0] tras_cntr;

  FD1S x2b_pre_ok_r_reg_0_ ( .D(N41), .TI(x2b_act_ok_r_0_), .TE(test_se), .CP(
        n132), .Q(n357), .QN(n318) );
  FD1S x2b_wrok_r_reg ( .D(N34), .TI(n356), .TE(test_se), .CP(n137), .Q(n355), 
        .QN(n320) );
  FD1S xfr_ok_r_reg ( .D(N35), .TI(n355), .TE(test_se), .CP(n132), .Q(test_so3), .QN(n319) );
  FD1S x2b_rdok_r_reg ( .D(N36), .TI(n357), .TE(test_se), .CP(n137), .Q(n356), 
        .QN(n321) );
  FD1S bank_row_reg_0_ ( .D(n340), .TI(b2x_cmd[1]), .TE(test_se), .CP(n137), 
        .Q(bank_row[0]), .QN(n329) );
  FD1S bank_st_reg_1_ ( .D(N82), .TI(n80), .TE(test_se), .CP(n132), .Q(
        test_so1), .QN(n110) );
  FD1S bank_st_reg_0_ ( .D(N81), .TI(bank_row[12]), .TE(test_se), .CP(n132), 
        .Q(n80), .QN(n111) );
  FD1S bank_st_reg_2_ ( .D(N83), .TI(test_si2), .TE(test_se), .CP(n132), .Q(
        n401), .QN(n109) );
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
  FD1S bank_valid_reg ( .D(n339), .TI(n401), .TE(test_se), .CP(n137), .Q(n131), 
        .QN(n323) );
  FD1S timer0_tc_r_reg_0_ ( .D(N39), .TI(timer0[3]), .TE(test_se), .CP(n135), 
        .Q(test_so2), .QN(n84) );
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
  FD1S l_len_reg_6_ ( .D(n291), .TI(n377), .TE(test_se), .CP(n136), .Q(n376), 
        .QN(n96) );
  FD1S l_len_reg_5_ ( .D(n292), .TI(n378), .TE(test_se), .CP(n136), .Q(n377), 
        .QN(n97) );
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
  FD1S tras_ok_r_reg_0_ ( .D(N40), .TI(tras_cntr[3]), .TE(test_se), .CP(n135), 
        .Q(tras_ok) );
  FD1S tras_cntr_reg_2_ ( .D(N75), .TI(tras_cntr[1]), .TE(test_se), .CP(n135), 
        .Q(tras_cntr[2]) );
  FD1S tras_cntr_reg_1_ ( .D(N74), .TI(tras_cntr[0]), .TE(test_se), .CP(n135), 
        .Q(tras_cntr[1]) );
  FD1S tras_cntr_reg_0_ ( .D(N73), .TI(test_si3), .TE(test_se), .CP(n135), .Q(
        tras_cntr[0]) );
  FD1S tras_cntr_reg_3_ ( .D(n338), .TI(tras_cntr[2]), .TE(test_se), .CP(n135), 
        .Q(tras_cntr[3]) );
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
  NR3 U251 ( .A(test_so1), .B(n109), .C(n80), .Z(n222) );
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
  AN3 U323 ( .A(n111), .B(test_so1), .C(n109), .Z(n158) );
  AN3 U324 ( .A(test_so1), .B(n80), .C(n109), .Z(n224) );
  AN2 U325 ( .A(x2b_rdok), .B(reset_n), .Z(N36) );
  AN2 U326 ( .A(xfr_ok), .B(reset_n), .Z(N35) );
  AN2 U327 ( .A(x2b_wrok), .B(reset_n), .Z(N34) );
endmodule
