module sdrc_xfr_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, r2x_idle, b2x_idle, 
        b2x_req, b2x_start, b2x_last, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, b2x_wrap, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, 
        x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_din, sdr_dout, 
        sdr_den_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_id, 
        a2x_wrdt, a2x_wren_n, x2a_wrnext, x2a_rddt, x2a_rdok, sdr_init_done, 
        sdram_enable, sdram_mode_reg, xfr_bank_sel, cas_latency, trp_delay, 
        trcar_delay, twr_delay, rfsh_time, rfsh_rmax, test_si4, test_si3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
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
         b2x_wrap, b2x_tras_ok, sdram_enable, test_si4, test_si3, test_si2,
         test_si1, test_se;
  output x2b_ack, x2b_refresh, x2b_act_ok, x2b_rdok, x2b_wrok, sdr_cs_n,
         sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n, x2a_rdstart, x2a_wrstart,
         x2a_rdlast, x2a_wrlast, x2a_wrnext, x2a_rdok, sdr_init_done, test_so2,
         test_so1;
  wire   N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58,
         l_rd_next_6_, l_rd_last_6_, l_rd_start_6_, d_act_cmd, xfr_st_0_, N128,
         N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, N139,
         N140, N143, N144, N145, N146, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N267, N268, N269, N270, N271, N272, N273,
         N274, N317, N318, N319, N320, N321, N322, N323, N324, N325, N326,
         N327, N328, N351, N352, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N368, N369, N370,
         N371, N372, N373, N374, N375, N376, N377, n191, n195, n196, n207,
         n208, n209, n212, n213, n214, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n192, n193,
         n194, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n210, n211, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n559, n560, n561, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581;
  wire   [12:0] xfr_caddr;
  wire   [3:0] l_id;
  wire   [3:2] tmr0;
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
  FD1S l_rd_start_reg_5_ ( .D(N168), .TI(test_si2), .TE(test_se), .CP(n145), 
        .Q(n561), .QN(n505) );
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
        n572), .QN(n501) );
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
        test_so1), .QN(n133) );
  FD1S l_rd_start_reg_6_ ( .D(N169), .TI(n561), .TE(test_se), .CP(n145), .Q(
        l_rd_start_6_) );
  FD1S l_rd_next_reg_6_ ( .D(N162), .TI(n567), .TE(test_se), .CP(n145), .Q(
        l_rd_next_6_) );
  FD1S sdr_den_n_reg_0_ ( .D(N274), .TI(sdr_cke), .TE(test_se), .CP(n148), .Q(
        sdr_den_n[0]) );
  FD1S sdr_den_n_reg_1_ ( .D(N274), .TI(sdr_den_n[0]), .TE(test_se), .CP(n148), 
        .Q(sdr_den_n[1]) );
  FD1S l_rd_last_reg_4_ ( .D(N174), .TI(n572), .TE(test_se), .CP(n149), .Q(
        n571), .QN(n132) );
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
  FD1S sdr_addr_reg_12_ ( .D(n486), .TI(sdr_addr[11]), .TE(test_se), .CP(n152), 
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
        .Q(xfr_st_0_), .QN(n137) );
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
  FD1S sdr_dout_reg_8_ ( .D(n549), .TI(test_si3), .TE(test_se), .CP(n147), .Q(
        sdr_dout[8]) );
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
  FD1S xfr_st_reg_1_ ( .D(N180), .TI(xfr_st_0_), .TE(test_se), .CP(n145), .Q(
        test_so2) );
  FD1S rfsh_row_cnt_reg_0_ ( .D(N374), .TI(n4), .TE(test_se), .CP(n144), .Q(
        rfsh_row_cnt[0]), .QN(n2) );
  FD1S rfsh_row_cnt_reg_2_ ( .D(N376), .TI(rfsh_row_cnt[1]), .TE(test_se), 
        .CP(n150), .Q(rfsh_row_cnt[2]), .QN(n140) );
  FD1S tmr0_reg_2_ ( .D(N356), .TI(n559), .TE(test_se), .CP(n150), .Q(tmr0[2])
         );
  FD1S xfr_caddr_reg_1_ ( .D(N129), .TI(xfr_caddr[0]), .TE(test_se), .CP(n144), 
        .Q(xfr_caddr[1]) );
  FD1S rfsh_row_cnt_reg_1_ ( .D(N375), .TI(rfsh_row_cnt[0]), .TE(test_se), 
        .CP(n150), .Q(rfsh_row_cnt[1]), .QN(n6) );
  FD1S rfsh_timer_reg_0_ ( .D(N362), .TI(rfsh_row_cnt[2]), .TE(test_se), .CP(
        n143), .Q(rfsh_timer[0]), .QN(n526) );
  FD1S xfr_caddr_reg_0_ ( .D(N128), .TI(tmr0[3]), .TE(test_se), .CP(n149), .Q(
        xfr_caddr[0]) );
  FD1S sdr_dqm_reg_1_ ( .D(N273), .TI(sdr_dqm[0]), .TE(test_se), .CP(n148), 
        .Q(sdr_dqm[1]) );
  FD1S sdr_dqm_reg_0_ ( .D(N272), .TI(sdr_dout[15]), .TE(test_se), .CP(n148), 
        .Q(sdr_dqm[0]) );
  FD1S sdr_cke_reg ( .D(N268), .TI(sdr_cas_n), .TE(test_se), .CP(n150), .Q(
        sdr_cke) );
  FD1S sdr_cas_n_reg ( .D(N270), .TI(sdr_ba[1]), .TE(test_se), .CP(n149), .Q(
        sdr_cas_n) );
  FD1S sdr_we_n_reg ( .D(N271), .TI(test_si4), .TE(test_se), .CP(n144), .Q(
        sdr_we_n) );
  FD1S sdr_ras_n_reg ( .D(N269), .TI(sdr_init_done), .TE(test_se), .CP(n147), 
        .Q(sdr_ras_n) );
  FD1S sdr_cs_n_reg ( .D(N267), .TI(sdr_dout[7]), .TE(test_se), .CP(n150), .Q(
        sdr_cs_n) );
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
  MUX21L U248 ( .A(n267), .B(n268), .S(rfsh_row_cnt[2]), .Z(N376) );
  AO2 U249 ( .A(n269), .B(n270), .C(n271), .D(n6), .Z(n268) );
  ND3 U250 ( .A(n271), .B(rfsh_row_cnt[0]), .C(rfsh_row_cnt[1]), .Z(n267) );
  MUX21L U251 ( .A(n272), .B(n273), .S(rfsh_row_cnt[1]), .Z(N375) );
  ND2 U252 ( .A(n269), .B(n270), .Z(n273) );
  AO7 U253 ( .A(rfsh_row_cnt[0]), .B(n266), .C(n274), .Z(n270) );
  ND2 U254 ( .A(rfsh_row_cnt[0]), .B(n271), .Z(n272) );
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
  EON1 U376 ( .A(rfsh_row_cnt[2]), .B(n369), .C(n370), .D(rfsh_rmax[2]), .Z(
        n321) );
  NR2 U377 ( .A(rfsh_rmax[2]), .B(n370), .Z(n369) );
  AO7 U378 ( .A(rfsh_row_cnt[1]), .B(n371), .C(n372), .Z(n370) );
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
  ND2 U567 ( .A(test_so2), .B(n137), .Z(n453) );
  AO2 U568 ( .A(n476), .B(n163), .C(n176), .D(n136), .Z(n475) );
  AO7 U569 ( .A(n393), .B(n5), .C(n167), .Z(n457) );
  ND2 U570 ( .A(test_so2), .B(xfr_st_0_), .Z(n167) );
  IV U571 ( .A(n164), .Z(n393) );
  NR2 U572 ( .A(xfr_st_0_), .B(test_so2), .Z(n164) );
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
  NR2 U585 ( .A(n137), .B(test_so2), .Z(n162) );
  ND2 U586 ( .A(b2x_cmd[0]), .B(b2x_cmd[1]), .Z(n176) );
  ND2 U587 ( .A(b2x_cmd[1]), .B(n386), .Z(n387) );
  IV U588 ( .A(b2x_cmd[0]), .Z(n386) );
endmodule

