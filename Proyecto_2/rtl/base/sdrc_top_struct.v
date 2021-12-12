/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5-1
// Date      : Sat Nov 27 18:40:02 2021
/////////////////////////////////////////////////////////////
//`timescale 1ns/1ps

module sdrc_top ( cfg_sdr_width, cfg_colbits, Port3, wb_clk_i, wb_stb_i, 
        wb_ack_o, wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, 
        wb_cti_i, sdram_clk, resetn, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, 
        sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_dq, sdr_init_done, 
        cfg_req_depth, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, 
        cfg_sdr_trp_d, cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, 
        cfg_sdr_twr_d, cfg_sdr_rfsh, cfg_sdr_rfmax, test_si1, test_so1, 
        test_si2, test_so2, test_si3, test_so3, test_si4, test_so4, test_si5, 
        test_so5, test_si6, test_so6, test_si7, test_so7, test_si8, test_so8, 
        test_si9, test_so9, test_si10, test_so10, test_si11, test_so11, 
        test_si12, test_so12, test_si13, test_so13, test_si14, test_so14, 
        test_si15, test_so15, test_si16, test_so16, test_si17, test_so17, 
        test_si18, test_si19, test_si20, test_so20, test_si21, test_so21, 
        test_si22, test_so22, test_si23, test_so23, test_si24, test_so24, 
        test_si25, test_so25, test_si26, test_so26, test_se );
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
  input Port3, wb_clk_i, wb_stb_i, wb_we_i, wb_cyc_i, sdram_clk, resetn,
         cfg_sdr_en, test_si1, test_si2, test_si3, test_si4, test_si5,
         test_si6, test_si7, test_si8, test_si9, test_si10, test_si11,
         test_si12, test_si13, test_si14, test_si15, test_si16, test_si17,
         test_si18, test_si19, test_si20, test_si21, test_si22, test_si23,
         test_si24, test_si25, test_si26, test_se;
  output wb_ack_o, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         sdr_init_done, test_so1, test_so2, test_so3, test_so4, test_so5,
         test_so6, test_so7, test_so8, test_so9, test_so10, test_so11,
         test_so12, test_so13, test_so14, test_so15, test_so16, test_so17,
         test_so20, test_so21, test_so22, test_so23, test_so24, test_so25,
         test_so26;
  wire   app_req, app_req_wr_n, app_req_ack, app_wr_next_req, app_rd_valid,
         app_last_rd, n1, n3, n4, n20, n57;
  wire   [1:0] sdr_den_n;
  wire   [15:0] sdr_dout;
  wire   [25:0] app_req_addr;
  wire   [8:0] app_req_len;
  wire   [3:0] app_wr_en_n;
  wire   [31:0] app_wr_data;
  wire   [31:0] app_rd_data;
  tri   [15:0] sdr_dq;

  wb2sdrc_dw32_tw8_bl9_test_1 u_wb2sdrc ( .wb_rst_i(n3), .wb_clk_i(wb_clk_i), 
        .wb_stb_i(wb_stb_i), .wb_ack_o(wb_ack_o), .wb_addr_i(wb_addr_i), 
        .wb_we_i(wb_we_i), .wb_dat_i(wb_dat_i), .wb_sel_i(wb_sel_i), 
        .wb_dat_o(wb_dat_o), .wb_cyc_i(wb_cyc_i), .wb_cti_i(wb_cti_i), 
        .sdram_clk(sdram_clk), .sdram_resetn(resetn), .sdr_req(app_req), 
        .sdr_req_addr(app_req_addr), .sdr_req_len(app_req_len), .sdr_req_wr_n(
        app_req_wr_n), .sdr_req_ack(app_req_ack), .sdr_busy_n(1'b0), 
        .sdr_wr_en_n(app_wr_en_n), .sdr_wr_next(app_wr_next_req), 
        .sdr_rd_valid(app_rd_valid), .sdr_last_rd(app_last_rd), .sdr_wr_data(
        app_wr_data), .sdr_rd_data(app_rd_data), .test_si15(test_si26), 
        .test_si14(test_si25), .test_si13(test_si24), .test_si12(test_si23), 
        .test_si11(test_si22), .test_si10(test_si21), .test_si9(test_si20), 
        .test_si8(n20), .test_si7(test_si17), .test_si6(test_si15), .test_si5(
        test_si12), .test_si4(test_si9), .test_si3(test_si7), .test_si2(
        test_si4), .test_si1(test_si1), .test_so14(test_so26), .test_so13(
        test_so25), .test_so12(test_so24), .test_so11(test_so23), .test_so10(
        test_so22), .test_so9(test_so21), .test_so8(test_so20), .test_so7(
        test_so17), .test_so6(test_so15), .test_so5(test_so12), .test_so4(
        test_so9), .test_so3(test_so7), .test_so2(test_so4), .test_so1(
        test_so1), .test_se(test_se) );
  sdrc_core_SDR_DW16_SDR_BW2_test_1 u_sdrc_core ( .clk(sdram_clk), .pad_clk(
        sdram_clk), .reset_n(resetn), .sdr_width(cfg_sdr_width), .cfg_colbits(
        cfg_colbits), .app_req(app_req), .app_req_addr(app_req_addr), 
        .app_req_len(app_req_len), .app_req_wrap(1'b0), .app_req_wr_n(app_req_wr_n),
	.app_req_ack(app_req_ack), .cfg_req_depth(cfg_req_depth), 
	.app_wr_data(app_wr_data), .app_wr_en_n(app_wr_en_n), .app_rd_data(
        app_rd_data), .app_rd_valid(app_rd_valid), .app_last_rd(app_last_rd), 
        .app_wr_next_req(app_wr_next_req), .sdr_init_done(sdr_init_done), 
        .app_req_dma_last(app_req), .sdr_cs_n(sdr_cs_n), .sdr_cke(sdr_cke), 
        .sdr_ras_n(sdr_ras_n), .sdr_cas_n(sdr_cas_n), .sdr_we_n(sdr_we_n), 
        .sdr_dqm(sdr_dqm), .sdr_ba(sdr_ba), .sdr_addr(sdr_addr), .pad_sdr_din(
        sdr_dq), .sdr_dout(sdr_dout), .sdr_den_n(sdr_den_n), .cfg_sdr_en(
        cfg_sdr_en), .cfg_sdr_mode_reg(cfg_sdr_mode_reg), .cfg_sdr_tras_d(
        cfg_sdr_tras_d), .cfg_sdr_trp_d(cfg_sdr_trp_d), .cfg_sdr_trcd_d(
        cfg_sdr_trcd_d), .cfg_sdr_cas(cfg_sdr_cas), .cfg_sdr_trcar_d(
        cfg_sdr_trcar_d), .cfg_sdr_twr_d(cfg_sdr_twr_d), .cfg_sdr_rfsh(
        cfg_sdr_rfsh), .cfg_sdr_rfmax(cfg_sdr_rfmax), .test_si12(test_si19), 
        .test_si11(test_si18), .test_si10(test_si16), .test_si9(test_si14), 
        .test_si8(test_si13), .test_si7(test_si11), .test_si6(test_si10), 
        .test_si5(test_si8), .test_si4(test_si6), .test_si3(test_si5), 
        .test_si2(test_si3), .test_si1(test_si2), .test_so11(n20), .test_so10(
        test_so16), .test_so9(test_so14), .test_so8(test_so13), .test_so7(
        test_so11), .test_so6(test_so10), .test_so5(test_so8), .test_so4(
        test_so6), .test_so3(test_so5), .test_so2(test_so3), .test_so1(
        test_so2), .test_se(test_se) );
  BTS4 sdr_dq_tri_0_ ( .A(sdr_dout[0]), .E(n57), .Z(sdr_dq[0]) );
  BTS4 sdr_dq_tri_1_ ( .A(sdr_dout[1]), .E(n57), .Z(sdr_dq[1]) );
  BTS4 sdr_dq_tri_2_ ( .A(sdr_dout[2]), .E(n57), .Z(sdr_dq[2]) );
  BTS4 sdr_dq_tri_3_ ( .A(sdr_dout[3]), .E(n57), .Z(sdr_dq[3]) );
  BTS4 sdr_dq_tri_4_ ( .A(sdr_dout[4]), .E(n57), .Z(sdr_dq[4]) );
  BTS4 sdr_dq_tri_5_ ( .A(sdr_dout[5]), .E(n57), .Z(sdr_dq[5]) );
  BTS4 sdr_dq_tri_6_ ( .A(sdr_dout[6]), .E(n57), .Z(sdr_dq[6]) );
  BTS4 sdr_dq_tri_7_ ( .A(sdr_dout[7]), .E(n57), .Z(sdr_dq[7]) );
  BTS4 sdr_dq_tri_8_ ( .A(sdr_dout[8]), .E(n57), .Z(sdr_dq[8]) );
  BTS4 sdr_dq_tri_9_ ( .A(sdr_dout[9]), .E(n57), .Z(sdr_dq[9]) );
  BTS4 sdr_dq_tri_10_ ( .A(sdr_dout[10]), .E(n57), .Z(sdr_dq[10]) );
  BTS4 sdr_dq_tri_11_ ( .A(sdr_dout[11]), .E(n57), .Z(sdr_dq[11]) );
  BTS4 sdr_dq_tri_12_ ( .A(sdr_dout[12]), .E(n57), .Z(sdr_dq[12]) );
  BTS4 sdr_dq_tri_13_ ( .A(sdr_dout[13]), .E(n57), .Z(sdr_dq[13]) );
  BTS4 sdr_dq_tri_14_ ( .A(sdr_dout[14]), .E(n57), .Z(sdr_dq[14]) );
  BTS4 sdr_dq_tri_15_ ( .A(sdr_dout[15]), .E(n57), .Z(sdr_dq[15]) );
  IV U4 ( .A(resetn), .Z(n3) );
  ND2 U5 ( .A(sdr_den_n[1]), .B(sdr_den_n[0]), .Z(n1) );
  NR2 U6 ( .A(test_se), .B(n4), .Z(n57) );
  IV U7 ( .A(n1), .Z(n4) );
endmodule

