module sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, a2b_req_depth, 
        r2b_req, r2b_req_id, r2b_start, r2b_last, r2b_wrap, r2b_ba, r2b_raddr, 
        r2b_caddr, r2b_len, r2b_write, b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, 
        b2x_start, b2x_last, b2x_wrap, b2x_id, b2x_ba, b2x_addr, b2x_len, 
        b2x_cmd, x2b_ack, b2x_tras_ok, x2b_refresh, x2b_pre_ok, x2b_act_ok, 
        x2b_rdok, x2b_wrok, xfr_bank_sel, sdr_req_norm_dma_last, tras_delay, 
        trp_delay, trcd_delay, test_si8, test_si7, test_si6, test_si5, 
        test_si4, test_si3, test_si2, test_si1, test_so8, test_so7, test_so6, 
        test_so5, test_so4, test_so3, test_so2, test_so1, test_se );
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
         sdr_req_norm_dma_last, test_si8, test_si7, test_si6, test_si5,
         test_si4, test_si3, test_si2, test_si1, test_se;
  output b2r_arb_ok, b2r_ack, b2x_idle, b2x_req, b2x_start, b2x_last, b2x_wrap,
         b2x_tras_ok, test_so8, test_so7, test_so6, test_so5, test_so4,
         test_so3, test_so2, test_so1;
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
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n133, n134,
         n135, n139, n143, n145, n148, n150, SYNOPSYS_UNCONNECTED_1,
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
        .test_si3(test_si3), .test_si2(test_si2), .test_si1(test_si1), 
        .test_so3(n150), .test_so2(test_so2), .test_so1(test_so1), .test_se(
        test_se) );
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
        .test_si2(test_si4), .test_si1(n150), .test_so2(n148), .test_so1(
        test_so3), .test_se(test_se) );
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
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, test_so4, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, 
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, 
        SYNOPSYS_UNCONNECTED_38}), .tras_delay(tras_delay), .trp_delay(
        trp_delay), .trcd_delay(trcd_delay), .test_si3(test_si6), .test_si2(
        test_si5), .test_si1(n148), .test_so2(n145), .test_so1(test_so5), 
        .test_se(test_se) );
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
        .x2b_wrok(x2b_wrok), .bank_row({SYNOPSYS_UNCONNECTED_39, 
        SYNOPSYS_UNCONNECTED_40, SYNOPSYS_UNCONNECTED_41, 
        SYNOPSYS_UNCONNECTED_42, SYNOPSYS_UNCONNECTED_43, 
        SYNOPSYS_UNCONNECTED_44, SYNOPSYS_UNCONNECTED_45, 
        SYNOPSYS_UNCONNECTED_46, SYNOPSYS_UNCONNECTED_47, 
        SYNOPSYS_UNCONNECTED_48, SYNOPSYS_UNCONNECTED_49, 
        SYNOPSYS_UNCONNECTED_50, SYNOPSYS_UNCONNECTED_51}), .tras_delay(
        tras_delay), .trp_delay(trp_delay), .trcd_delay(trcd_delay), 
        .test_si2(test_si7), .test_si1(n145), .test_so2(n143), .test_so1(
        test_so6), .test_se(test_se) );
  FD1S rank_ba_reg_1_ ( .D(N115), .TI(b2x_ba[0]), .TE(test_se), .CP(n18), .Q(
        b2x_ba[1]), .QN(n32) );
  FD1S rank_ba_reg_7_ ( .D(N121), .TI(test_si8), .TE(test_se), .CP(n18), .Q(
        n131), .QN(n5) );
  FD1S rank_ba_reg_6_ ( .D(N120), .TI(n133), .TE(test_se), .CP(n18), .Q(
        test_so7), .QN(n17) );
  FD1S rank_ba_reg_3_ ( .D(N117), .TI(n139), .TE(test_se), .CP(n18), .Q(n135), 
        .QN(n4) );
  FD1S rank_ba_reg_2_ ( .D(N116), .TI(b2x_ba[1]), .TE(test_se), .CP(n18), .Q(
        n139) );
  FD1S rank_ba_reg_0_ ( .D(N114), .TI(n143), .TE(test_se), .CP(n18), .Q(
        b2x_ba[0]), .QN(n33) );
  FD1S rank_cnt_reg_0_ ( .D(N111), .TI(n131), .TE(test_se), .CP(n18), .Q(
        rank_cnt_0_), .QN(n1) );
  FD1S rank_cnt_reg_2_ ( .D(N113), .TI(rank_cnt_1_), .TE(test_se), .CP(n18), 
        .Q(test_so8), .QN(n2) );
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
  MUX31L U132 ( .D0(test_so7), .D1(n134), .D2(r2b_ba[0]), .A(n100), .B(n101), 
        .Z(n102) );
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
  NR2 U151 ( .A(n96), .B(test_so8), .Z(n104) );
  NR2 U152 ( .A(n95), .B(test_so8), .Z(b2x_idle) );
  IV U153 ( .A(n96), .Z(b2r_ack) );
  MUX21H U154 ( .A(b2x_ba[0]), .B(n139), .S(n92), .Z(n114) );
  IV U155 ( .A(reset_n), .Z(n88) );
  AO4 U156 ( .A(n2), .B(n116), .C(n117), .D(n118), .Z(N113) );
  MUX21L U157 ( .A(n119), .B(n120), .S(n98), .Z(n118) );
  EN U158 ( .A(test_so8), .B(n121), .Z(n120) );
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
