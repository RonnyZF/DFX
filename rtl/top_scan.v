/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : R-2020.09-SP5-1
// Date      : Sun Nov 14 19:57:24 2021
/////////////////////////////////////////////////////////////


module sdrc_top ( cfg_sdr_width, cfg_colbits, wb_rst_i, wb_clk_i, wb_stb_i, 
        wb_ack_o, wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, 
        wb_cti_i, sdram_clk, sdram_resetn, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, sdr_dq, sdr_init_done, 
        cfg_req_depth, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, 
        cfg_sdr_trp_d, cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, 
        cfg_sdr_twr_d, cfg_sdr_rfsh, cfg_sdr_rfmax );
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
         sdram_resetn, cfg_sdr_en;
  output wb_ack_o, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         sdr_init_done;
  wire   n1;
  tri   \*Logic0* ;
  tri   [1:0] cfg_sdr_width;
  tri   [1:0] cfg_colbits;
  tri   wb_rst_i;
  tri   wb_clk_i;
  tri   wb_stb_i;
  tri   wb_ack_o;
  tri   [25:0] wb_addr_i;
  tri   wb_we_i;
  tri   [31:0] wb_dat_i;
  tri   [3:0] wb_sel_i;
  tri   [31:0] wb_dat_o;
  tri   wb_cyc_i;
  tri   [2:0] wb_cti_i;
  tri   sdram_clk;
  tri   sdram_resetn;
  tri   sdr_cs_n;
  tri   sdr_cke;
  tri   sdr_ras_n;
  tri   sdr_cas_n;
  tri   sdr_we_n;
  tri   [1:0] sdr_dqm;
  tri   [1:0] sdr_ba;
  tri   [12:0] sdr_addr;
  tri   [15:0] sdr_dq;
  tri   sdr_init_done;
  tri   [1:0] cfg_req_depth;
  tri   cfg_sdr_en;
  tri   [12:0] cfg_sdr_mode_reg;
  tri   [3:0] cfg_sdr_tras_d;
  tri   [3:0] cfg_sdr_trp_d;
  tri   [3:0] cfg_sdr_trcd_d;
  tri   [2:0] cfg_sdr_cas;
  tri   [3:0] cfg_sdr_trcar_d;
  tri   [3:0] cfg_sdr_twr_d;
  tri   [11:0] cfg_sdr_rfsh;
  tri   [2:0] cfg_sdr_rfmax;
  tri   [1:0] sdr_den_n;
  tri   [15:0] sdr_dout;
  tri   app_req;
  tri   [25:0] app_req_addr;
  tri   [8:0] app_req_len;
  tri   app_req_wr_n;
  tri   app_req_ack;
  tri   [3:0] app_wr_en_n;
  tri   app_wr_next_req;
  tri   app_rd_valid;
  tri   app_last_rd;
  tri   [31:0] app_wr_data;
  tri   [31:0] app_rd_data;

  wb2sdrc u_wb2sdrc ( .wb_rst_i(wb_rst_i), .wb_clk_i(wb_clk_i), .wb_stb_i(
        wb_stb_i), .wb_ack_o(wb_ack_o), .wb_addr_i(wb_addr_i), .wb_we_i(
        wb_we_i), .wb_dat_i(wb_dat_i), .wb_sel_i(wb_sel_i), .wb_dat_o(wb_dat_o), .wb_cyc_i(wb_cyc_i), .wb_cti_i(wb_cti_i), .sdram_clk(sdram_clk), 
        .sdram_resetn(sdram_resetn), .sdr_req(app_req), .sdr_req_addr(
        app_req_addr), .sdr_req_len(app_req_len), .sdr_req_wr_n(app_req_wr_n), 
        .sdr_req_ack(app_req_ack), .sdr_wr_en_n(app_wr_en_n), .sdr_wr_next(
        app_wr_next_req), .sdr_rd_valid(app_rd_valid), .sdr_last_rd(
        app_last_rd), .sdr_wr_data(app_wr_data), .sdr_rd_data(app_rd_data) );
  sdrc_core u_sdrc_core ( .clk(sdram_clk), .pad_clk(sdram_clk), .reset_n(
        sdram_resetn), .sdr_width(cfg_sdr_width), .cfg_colbits(cfg_colbits), 
        .app_req(app_req), .app_req_addr(app_req_addr), .app_req_len(
        app_req_len), .app_req_wrap(1'b0), .app_req_wr_n(app_req_wr_n), 
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
        cfg_sdr_rfsh), .cfg_sdr_rfmax(cfg_sdr_rfmax) );
  BTS4 \sdr_dq_tri[0]  ( .A(sdr_dout[0]), .E(n1), .Z(sdr_dq[0]) );
  BTS4 \sdr_dq_tri[1]  ( .A(sdr_dout[1]), .E(n1), .Z(sdr_dq[1]) );
  BTS4 \sdr_dq_tri[2]  ( .A(sdr_dout[2]), .E(n1), .Z(sdr_dq[2]) );
  BTS4 \sdr_dq_tri[3]  ( .A(sdr_dout[3]), .E(n1), .Z(sdr_dq[3]) );
  BTS4 \sdr_dq_tri[4]  ( .A(sdr_dout[4]), .E(n1), .Z(sdr_dq[4]) );
  BTS4 \sdr_dq_tri[5]  ( .A(sdr_dout[5]), .E(n1), .Z(sdr_dq[5]) );
  BTS4 \sdr_dq_tri[6]  ( .A(sdr_dout[6]), .E(n1), .Z(sdr_dq[6]) );
  BTS4 \sdr_dq_tri[7]  ( .A(sdr_dout[7]), .E(n1), .Z(sdr_dq[7]) );
  BTS4 \sdr_dq_tri[8]  ( .A(sdr_dout[8]), .E(n1), .Z(sdr_dq[8]) );
  BTS4 \sdr_dq_tri[9]  ( .A(sdr_dout[9]), .E(n1), .Z(sdr_dq[9]) );
  BTS4 \sdr_dq_tri[10]  ( .A(sdr_dout[10]), .E(n1), .Z(sdr_dq[10]) );
  BTS4 \sdr_dq_tri[11]  ( .A(sdr_dout[11]), .E(n1), .Z(sdr_dq[11]) );
  BTS4 \sdr_dq_tri[12]  ( .A(sdr_dout[12]), .E(n1), .Z(sdr_dq[12]) );
  BTS4 \sdr_dq_tri[13]  ( .A(sdr_dout[13]), .E(n1), .Z(sdr_dq[13]) );
  BTS4 \sdr_dq_tri[14]  ( .A(sdr_dout[14]), .E(n1), .Z(sdr_dq[14]) );
  BTS4 \sdr_dq_tri[15]  ( .A(sdr_dout[15]), .E(n1), .Z(sdr_dq[15]) );
  ND2 U3 ( .A(sdr_den_n[1]), .B(sdr_den_n[0]), .Z(n1) );
endmodule

