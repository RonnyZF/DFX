module sdrc_req_gen_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, cfg_colbits, 
        sdr_width, req, req_id, req_addr, req_len, req_wrap, req_wr_n, req_ack, 
        r2x_idle, r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, 
        r2b_raddr, r2b_caddr, r2b_len, r2b_write, b2r_ack, b2r_arb_ok, 
        test_si3, test_si2, test_si1, test_so2, test_so1, test_se );
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
  input clk, reset_n, req, req_wrap, req_wr_n, b2r_ack, b2r_arb_ok, test_si3,
         test_si2, test_si1, test_se;
  output req_ack, r2x_idle, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_write,
         test_so2, test_so1;
  wire   page_ovflw_r, curr_sdr_addr_25_, curr_sdr_addr_24_, curr_sdr_addr_23_,
         curr_sdr_addr_22_, curr_sdr_addr_21_, curr_sdr_addr_20_,
         curr_sdr_addr_19_, curr_sdr_addr_18_, curr_sdr_addr_17_,
         curr_sdr_addr_15_, curr_sdr_addr_14_, curr_sdr_addr_13_,
         curr_sdr_addr_12_, curr_sdr_addr_11_, curr_sdr_addr_10_,
         curr_sdr_addr_9_, curr_sdr_addr_8_, curr_sdr_addr_7_,
         curr_sdr_addr_6_, curr_sdr_addr_5_, curr_sdr_addr_4_,
         curr_sdr_addr_3_, curr_sdr_addr_2_, curr_sdr_addr_1_,
         curr_sdr_addr_0_, req_st_0_, N78, N79, N80, N81, N82, N83, N84, N85,
         N88, N90, N95, N98, N99, N100, N101, N102, N103, N104, N115, N116,
         N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N151, N152, N156, N157, N158, N159,
         N160, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, n1, n2, n3, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
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
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n363, n364, n365, n366,
         n367, n368, n369;
  wire   [6:0] lcl_req_len;
  wire   [6:0] next_req_len;
  wire   [25:0] next_sdr_addr;
  wire   [7:0] map_address;
  assign r2b_caddr[12] = 1'b0;
  assign r2b_caddr[11] = 1'b0;

  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_sub_0_DW01_sub_12 sub_229 ( .A(
        lcl_req_len), .B(r2b_len), .CI(1'b0), .DIFF(next_req_len) );
  sdrc_req_gen_SDR_DW16_SDR_BW2_DW01_add_0 add_231 ( .A({curr_sdr_addr_25_, 
        curr_sdr_addr_24_, curr_sdr_addr_23_, curr_sdr_addr_22_, 
        curr_sdr_addr_21_, curr_sdr_addr_20_, curr_sdr_addr_19_, 
        curr_sdr_addr_18_, curr_sdr_addr_17_, test_so1, curr_sdr_addr_15_, 
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
  FD1S req_st_reg_1_ ( .D(N152), .TI(req_st_0_), .TE(test_se), .CP(n6), .Q(
        test_so2), .QN(n3) );
  FD1S curr_sdr_addr_reg_0_ ( .D(map_address[0]), .TI(test_si1), .TE(test_se), 
        .CP(n8), .Q(curr_sdr_addr_0_), .QN(n343) );
  FD1S curr_sdr_addr_reg_7_ ( .D(map_address[7]), .TI(curr_sdr_addr_6_), .TE(
        test_se), .CP(n9), .Q(curr_sdr_addr_7_), .QN(n336) );
  FD1S curr_sdr_addr_reg_25_ ( .D(N132), .TI(curr_sdr_addr_24_), .TE(test_se), 
        .CP(n12), .Q(curr_sdr_addr_25_) );
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
        .CP(n10), .Q(test_so1) );
  FD1S curr_sdr_addr_reg_17_ ( .D(N124), .TI(test_si2), .TE(test_se), .CP(n10), 
        .Q(curr_sdr_addr_17_) );
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
        .CP(n12), .Q(curr_sdr_addr_24_) );
  FD1S req_st_reg_0_ ( .D(N151), .TI(r2b_write), .TE(test_se), .CP(n6), .Q(
        req_st_0_) );
  FD1S r2b_write_reg ( .D(N90), .TI(r2b_start), .TE(test_se), .CP(n6), .Q(
        r2b_write), .QN(n335) );
  FD1S lcl_req_len_reg_0_ ( .D(N98), .TI(curr_sdr_addr_25_), .TE(test_se), 
        .CP(n7), .Q(lcl_req_len[0]), .QN(n334) );
  FD1S r2b_raddr_reg_12_ ( .D(N174), .TI(r2b_raddr[11]), .TE(test_se), .CP(n12), .Q(r2b_raddr[12]) );
  FD1S r2b_raddr_reg_11_ ( .D(N173), .TI(test_si3), .TE(test_se), .CP(n11), 
        .Q(r2b_raddr[11]) );
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
  FD1S r2b_caddr_reg_6_ ( .D(map_address[6]), .TI(r2b_caddr[5]), .TE(test_se), 
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
  AO4 U97 ( .A(req_st_0_), .B(n3), .C(page_ovflw_r), .D(n1), .Z(r2b_last) );
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
  ND2 U289 ( .A(page_ovflw_r), .B(req_st_0_), .Z(n255) );
  AO6 U290 ( .A(n18), .B(n257), .C(n253), .Z(N151) );
  IV U291 ( .A(reset_n), .Z(n253) );
  ND2 U292 ( .A(req_st_0_), .B(n256), .Z(n257) );
  AO3 U293 ( .A(n258), .B(n259), .C(n260), .D(n261), .Z(N132) );
  AO2 U294 ( .A(n262), .B(curr_sdr_addr_25_), .C(next_sdr_addr[25]), .D(n100), 
        .Z(n261) );
  AO2 U295 ( .A(req_addr[24]), .B(n263), .C(req_addr[25]), .D(n127), .Z(n260)
         );
  IV U296 ( .A(req_addr[23]), .Z(n258) );
  AO3 U297 ( .A(n259), .B(n264), .C(n265), .D(n266), .Z(N131) );
  AO2 U298 ( .A(n262), .B(curr_sdr_addr_24_), .C(next_sdr_addr[24]), .D(n100), 
        .Z(n266) );
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
  AO2 U330 ( .A(n262), .B(test_so1), .C(next_sdr_addr[16]), .D(n100), .Z(n290)
         );
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
  NR2 U398 ( .A(test_so2), .B(req_st_0_), .Z(n19) );
  AO6 U399 ( .A(sdr_width[1]), .B(req_len[0]), .C(n325), .Z(n177) );
  AO4 U400 ( .A(n186), .B(n193), .C(n320), .D(n185), .Z(n325) );
  IV U401 ( .A(n151), .Z(n185) );
  NR2 U402 ( .A(sdr_width[0]), .B(sdr_width[1]), .Z(n151) );
  IV U403 ( .A(req_len[2]), .Z(n320) );
  ND2 U404 ( .A(sdr_width[0]), .B(n147), .Z(n193) );
  IV U405 ( .A(sdr_width[1]), .Z(n147) );
  IV U406 ( .A(req_len[1]), .Z(n186) );
endmodule
