module wb2sdrc_dw32_tw8_bl9_test_1 ( wb_rst_i, wb_clk_i, wb_stb_i, wb_ack_o, 
        wb_addr_i, wb_we_i, wb_dat_i, wb_sel_i, wb_dat_o, wb_cyc_i, wb_cti_i, 
        sdram_clk, sdram_resetn, sdr_req, sdr_req_addr, sdr_req_len, 
        sdr_req_wr_n, sdr_req_ack, sdr_busy_n, sdr_wr_en_n, sdr_wr_next, 
        sdr_rd_valid, sdr_last_rd, sdr_wr_data, sdr_rd_data, test_si15, 
        test_si14, test_si13, test_si12, test_si11, test_si10, test_si9, 
        test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, 
        test_si1, test_so14, test_so13, test_so12, test_so11, test_so10, 
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
         sdr_last_rd, test_si15, test_si14, test_si13, test_si12, test_si11,
         test_si10, test_si9, test_si8, test_si7, test_si6, test_si5, test_si4,
         test_si3, test_si2, test_si1, test_se;
  output wb_ack_o, sdr_req, sdr_req_wr_n, test_so14, test_so13, test_so12,
         test_so11, test_so10, test_so9, test_so8, test_so7, test_so6,
         test_so5, test_so4, test_so3, test_so2, test_so1;
  wire   cmdfifo_full, wrdatafifo_full, rddatafifo_empty, cmdfifo_wr,
         cmdfifo_empty, wrdatafifo_wr, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n14, n15, n16, n17, n18, n19, n22, n28, n34, n35, n39,
         SYNOPSYS_UNCONNECTED_1;

  async_fifo_36_4_0_0_test_1 u_cmdfifo ( .wr_clk(n5), .wr_reset_n(n19), 
        .wr_en(cmdfifo_wr), .wr_data({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, n14, wb_addr_i}), .full(cmdfifo_full), .rd_clk(n3), 
        .rd_reset_n(sdram_resetn), .rd_en(sdr_req_ack), .empty(cmdfifo_empty), 
        .rd_data({sdr_req_len, sdr_req_wr_n, sdr_req_addr}), .test_si6(
        test_si10), .test_si5(test_si8), .test_si4(test_si4), .test_si3(
        test_si3), .test_si2(test_si2), .test_si1(n39), .test_so5(n28), 
        .test_so4(n35), .test_so3(test_so3), .test_so2(test_so2), .test_so1(
        test_so1), .test_se(test_se) );
  async_fifo_36_8_0_1_test_1 u_wrdatafifo ( .wr_clk(n5), .wr_reset_n(n19), 
        .wr_en(wrdatafifo_wr), .wr_data({n15, n16, n17, n18, wb_dat_i}), 
        .full(wrdatafifo_full), .rd_clk(n3), .rd_reset_n(sdram_resetn), 
        .rd_en(sdr_wr_next), .rd_data({sdr_wr_en_n, sdr_wr_data}), .test_si8(
        n22), .test_si7(test_si14), .test_si6(test_si12), .test_si5(test_si9), 
        .test_si4(test_si7), .test_si3(test_si6), .test_si2(test_si5), 
        .test_si1(n34), .test_so8(test_so14), .test_so7(test_so13), .test_so6(
        test_so11), .test_so5(test_so8), .test_so4(test_so7), .test_so3(
        test_so6), .test_so2(test_so5), .test_so1(test_so4), .test_se(test_se)
         );
  async_fifo_33_4_0_1_test_1 u_rddatafifo ( .wr_clk(n3), .wr_reset_n(
        sdram_resetn), .wr_en(sdr_rd_valid), .wr_data({sdr_last_rd, 
        sdr_rd_data}), .rd_clk(n5), .rd_reset_n(n19), .rd_en(n12), .empty(
        rddatafifo_empty), .rd_data({SYNOPSYS_UNCONNECTED_1, wb_dat_o}), 
        .test_si5(test_si15), .test_si4(test_si13), .test_si3(test_si11), 
        .test_si2(n28), .test_si1(n35), .test_so5(n22), .test_so4(test_so12), 
        .test_so3(test_so10), .test_so2(test_so9), .test_so1(n34), .test_se(
        test_se) );
  FD2S pending_read_reg ( .D(n11), .TI(test_si1), .TE(test_se), .CP(n5), .CD(
        n19), .Q(n39), .QN(n2) );
  IVP U4 ( .A(n4), .Z(n3) );
  IVP U5 ( .A(sdram_clk), .Z(n4) );
  IVP U6 ( .A(n6), .Z(n5) );
  IVP U7 ( .A(wb_clk_i), .Z(n6) );
  EON1 U8 ( .A(n12), .B(n2), .C(n14), .D(cmdfifo_wr), .Z(n11) );
  NR2 U9 ( .A(n7), .B(wb_we_i), .Z(n12) );
  IV U10 ( .A(cmdfifo_empty), .Z(sdr_req) );
  IV U11 ( .A(wb_sel_i[3]), .Z(n15) );
  IV U12 ( .A(wb_sel_i[2]), .Z(n16) );
  IV U13 ( .A(wb_sel_i[1]), .Z(n17) );
  IV U14 ( .A(wb_sel_i[0]), .Z(n18) );
  IV U15 ( .A(wb_rst_i), .Z(n19) );
  NR3 U16 ( .A(cmdfifo_full), .B(n8), .C(n9), .Z(cmdfifo_wr) );
  MUX21L U17 ( .A(n2), .B(wb_ack_o), .S(wb_we_i), .Z(n9) );
  IV U18 ( .A(n7), .Z(wb_ack_o) );
  NR2 U19 ( .A(wrdatafifo_wr), .B(n10), .Z(n7) );
  NR3 U20 ( .A(wb_we_i), .B(rddatafifo_empty), .C(n8), .Z(n10) );
  NR4 U21 ( .A(n14), .B(n8), .C(wrdatafifo_full), .D(cmdfifo_full), .Z(
        wrdatafifo_wr) );
  IV U22 ( .A(wb_we_i), .Z(n14) );
  ND2 U23 ( .A(wb_stb_i), .B(wb_cyc_i), .Z(n8) );
endmodule
