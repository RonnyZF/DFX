module sdrc_core_SDR_DW16_SDR_BW2_test_1 ( clk, pad_clk, reset_n, sdr_width, 
        cfg_colbits, app_req, app_req_addr, app_req_len, app_req_wrap, 
        app_req_wr_n, app_req_ack, cfg_req_depth, app_wr_data, app_wr_en_n, 
        app_last_wr, app_rd_data, app_rd_valid, app_last_rd, app_wr_next_req, 
        sdr_init_done, app_req_dma_last, sdr_cs_n, sdr_cke, sdr_ras_n, 
        sdr_cas_n, sdr_we_n, sdr_dqm, sdr_ba, sdr_addr, pad_sdr_din, sdr_dout, 
        sdr_den_n, cfg_sdr_en, cfg_sdr_mode_reg, cfg_sdr_tras_d, cfg_sdr_trp_d, 
        cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, cfg_sdr_twr_d, 
        cfg_sdr_rfsh, cfg_sdr_rfmax, test_si12, test_si11, test_si10, test_si9, 
        test_si8, test_si7, test_si6, test_si5, test_si4, test_si3, test_si2, 
        test_si1, test_so11, test_so10, test_so9, test_so8, test_so7, test_so6, 
        test_so5, test_so4, test_so3, test_so2, test_so1, test_se );
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
         app_req_dma_last, cfg_sdr_en, test_si12, test_si11, test_si10,
         test_si9, test_si8, test_si7, test_si6, test_si5, test_si4, test_si3,
         test_si2, test_si1, test_se;
  output app_req_ack, app_last_wr, app_rd_valid, app_last_rd, app_wr_next_req,
         sdr_init_done, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n,
         test_so11, test_so10, test_so9, test_so8, test_so7, test_so6,
         test_so5, test_so4, test_so3, test_so2, test_so1;
  wire   r2x_idle, r2b_req, r2b_start, r2b_last, r2b_wrap, r2b_raddr_12_,
         r2b_raddr_11_, r2b_raddr_9_, r2b_raddr_8_, r2b_raddr_7_, r2b_raddr_6_,
         r2b_raddr_5_, r2b_raddr_4_, r2b_raddr_3_, r2b_raddr_2_, r2b_raddr_1_,
         r2b_raddr_0_, r2b_write, b2r_ack, b2r_arb_ok, b2x_idle, b2x_req,
         b2x_start, b2x_last, b2x_wrap, x2b_ack, b2x_tras_ok, x2b_refresh,
         x2b_act_ok, x2b_rdok, x2b_wrok, x2a_rdstart, x2a_wrstart, x2a_rdlast,
         x2a_wrlast, x2a_wrnext, x2a_rdok, n33, n34, n38, n40, n41,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6;
  wire   [15:0] pad_sdr_din1;
  wire   [15:0] pad_sdr_din2;
  wire   [3:0] r2b_req_id;
  wire   [1:0] r2b_ba;
  wire   [12:0] r2b_caddr;
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
        .r2b_wrap(r2b_wrap), .r2b_ba(r2b_ba), .r2b_raddr({r2b_raddr_12_, 
        r2b_raddr_11_, test_so9, r2b_raddr_9_, r2b_raddr_8_, r2b_raddr_7_, 
        r2b_raddr_6_, r2b_raddr_5_, r2b_raddr_4_, r2b_raddr_3_, r2b_raddr_2_, 
        r2b_raddr_1_, r2b_raddr_0_}), .r2b_caddr({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, r2b_caddr[10:0]}), .r2b_len(r2b_len), 
        .r2b_write(r2b_write), .b2r_ack(b2r_ack), .b2r_arb_ok(b2r_arb_ok), 
        .test_si3(test_si10), .test_si2(test_si9), .test_si1(n40), .test_so2(
        n38), .test_so1(test_so8), .test_se(test_se) );
  sdrc_bank_ctl_SDR_DW16_SDR_BW2_test_1 u_bank_ctl ( .clk(n33), .reset_n(
        reset_n), .a2b_req_depth(cfg_req_depth), .r2b_req(r2b_req), 
        .r2b_req_id(r2b_req_id), .r2b_start(r2b_start), .r2b_last(r2b_last), 
        .r2b_wrap(r2b_wrap), .r2b_ba(r2b_ba), .r2b_raddr({r2b_raddr_12_, 
        r2b_raddr_11_, test_so9, r2b_raddr_9_, r2b_raddr_8_, r2b_raddr_7_, 
        r2b_raddr_6_, r2b_raddr_5_, r2b_raddr_4_, r2b_raddr_3_, r2b_raddr_2_, 
        r2b_raddr_1_, r2b_raddr_0_}), .r2b_caddr({1'b0, 1'b0, r2b_caddr[10:0]}), .r2b_len(r2b_len), .r2b_write(r2b_write), .b2r_arb_ok(b2r_arb_ok), .b2r_ack(
        b2r_ack), .b2x_idle(b2x_idle), .b2x_req(b2x_req), .b2x_start(b2x_start), .b2x_last(b2x_last), .b2x_wrap(b2x_wrap), .b2x_id(b2x_id), .b2x_ba(b2x_ba), 
        .b2x_addr(b2x_addr), .b2x_len(b2x_len), .b2x_cmd(b2x_cmd), .x2b_ack(
        x2b_ack), .b2x_tras_ok(b2x_tras_ok), .x2b_refresh(x2b_refresh), 
        .x2b_pre_ok(x2b_pre_ok), .x2b_act_ok(x2b_act_ok), .x2b_rdok(x2b_rdok), 
        .x2b_wrok(x2b_wrok), .xfr_bank_sel(xfr_bank_sel), 
        .sdr_req_norm_dma_last(app_req_dma_last), .tras_delay(cfg_sdr_tras_d), 
        .trp_delay(cfg_sdr_trp_d), .trcd_delay(cfg_sdr_trcd_d), .test_si8(
        test_si8), .test_si7(test_si7), .test_si6(test_si6), .test_si5(
        test_si5), .test_si4(test_si4), .test_si3(test_si3), .test_si2(
        test_si2), .test_si1(pad_sdr_din2[15]), .test_so8(n41), .test_so7(
        test_so7), .test_so6(test_so6), .test_so5(test_so5), .test_so4(
        test_so4), .test_so3(test_so3), .test_so2(test_so2), .test_so1(
        test_so1), .test_se(test_se) );
  sdrc_xfr_ctl_SDR_DW16_SDR_BW2_test_1 u_xfr_ctl ( .clk(n33), .reset_n(reset_n), .r2x_idle(r2x_idle), .b2x_idle(b2x_idle), .b2x_req(b2x_req), .b2x_start(
        b2x_start), .b2x_last(b2x_last), .b2x_id(b2x_id), .b2x_ba(b2x_ba), 
        .b2x_addr(b2x_addr), .b2x_len(b2x_len), .b2x_cmd(b2x_cmd), .b2x_wrap(
        b2x_wrap), .x2b_ack(x2b_ack), .b2x_tras_ok(b2x_tras_ok), .x2b_refresh(
        x2b_refresh), .x2b_pre_ok(x2b_pre_ok), .x2b_act_ok(x2b_act_ok), 
        .x2b_rdok(x2b_rdok), .x2b_wrok(x2b_wrok), .sdr_cs_n(sdr_cs_n), 
        .sdr_cke(sdr_cke), .sdr_ras_n(sdr_ras_n), .sdr_cas_n(sdr_cas_n), 
        .sdr_we_n(sdr_we_n), .sdr_dqm(sdr_dqm), .sdr_ba(sdr_ba), .sdr_addr(
        sdr_addr), .sdr_din(pad_sdr_din2), .sdr_dout(sdr_dout), .sdr_den_n(
        sdr_den_n), .x2a_rdstart(x2a_rdstart), .x2a_wrstart(x2a_wrstart), 
        .x2a_rdlast(x2a_rdlast), .x2a_wrlast(x2a_wrlast), .x2a_id({
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6}), .a2x_wrdt(a2x_wrdt), .a2x_wren_n(a2x_wren_n), 
        .x2a_wrnext(x2a_wrnext), .x2a_rddt(x2a_rddt), .x2a_rdok(x2a_rdok), 
        .sdr_init_done(sdr_init_done), .sdram_enable(cfg_sdr_en), 
        .sdram_mode_reg(cfg_sdr_mode_reg), .xfr_bank_sel(xfr_bank_sel), 
        .cas_latency(cfg_sdr_cas), .trp_delay(cfg_sdr_trp_d), .trcar_delay(
        cfg_sdr_trcar_d), .twr_delay(cfg_sdr_twr_d), .rfsh_time(cfg_sdr_rfsh), 
        .rfsh_rmax(cfg_sdr_rfmax), .test_si4(app_req_addr[12]), .test_si3(
        test_si12), .test_si2(test_si11), .test_si1(n38), .test_so2(test_so11), 
        .test_so1(test_so10), .test_se(test_se) );
  sdrc_bs_convert_SDR_DW16_SDR_BW2_test_1 u_bs_convert ( .clk(n33), .reset_n(
        reset_n), .sdr_width(sdr_width), .x2a_rdstart(x2a_rdstart), 
        .x2a_wrstart(x2a_wrstart), .x2a_rdlast(x2a_rdlast), .x2a_wrlast(
        x2a_wrlast), .x2a_rddt(x2a_rddt), .x2a_rdok(x2a_rdok), .a2x_wrdt(
        a2x_wrdt), .a2x_wren_n(a2x_wren_n), .x2a_wrnext(x2a_wrnext), 
        .app_wr_data(app_wr_data), .app_wr_en_n(app_wr_en_n), .app_wr_next(
        app_wr_next_req), .app_last_wr(app_last_wr), .app_rd_data(app_rd_data), 
        .app_rd_valid(app_rd_valid), .app_last_rd(app_last_rd), .test_si(n41), 
        .test_so(n40), .test_se(test_se) );
  FD1S pad_sdr_din2_reg_15_ ( .D(pad_sdr_din1[15]), .TI(pad_sdr_din2[14]), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2[15]) );
  FD1S pad_sdr_din2_reg_14_ ( .D(pad_sdr_din1[14]), .TI(pad_sdr_din2[13]), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2[14]) );
  FD1S pad_sdr_din2_reg_13_ ( .D(pad_sdr_din1[13]), .TI(pad_sdr_din2[12]), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2[13]) );
  FD1S pad_sdr_din2_reg_12_ ( .D(pad_sdr_din1[12]), .TI(pad_sdr_din2[11]), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2[12]) );
  FD1S pad_sdr_din2_reg_11_ ( .D(pad_sdr_din1[11]), .TI(pad_sdr_din2[10]), 
        .TE(test_se), .CP(n33), .Q(pad_sdr_din2[11]) );
  FD1S pad_sdr_din2_reg_10_ ( .D(pad_sdr_din1[10]), .TI(pad_sdr_din2[9]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[10]) );
  FD1S pad_sdr_din2_reg_9_ ( .D(pad_sdr_din1[9]), .TI(pad_sdr_din2[8]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[9]) );
  FD1S pad_sdr_din2_reg_8_ ( .D(pad_sdr_din1[8]), .TI(pad_sdr_din2[7]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[8]) );
  FD1S pad_sdr_din2_reg_7_ ( .D(pad_sdr_din1[7]), .TI(pad_sdr_din2[6]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[7]) );
  FD1S pad_sdr_din2_reg_6_ ( .D(pad_sdr_din1[6]), .TI(pad_sdr_din2[5]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[6]) );
  FD1S pad_sdr_din2_reg_5_ ( .D(pad_sdr_din1[5]), .TI(pad_sdr_din2[4]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[5]) );
  FD1S pad_sdr_din2_reg_4_ ( .D(pad_sdr_din1[4]), .TI(pad_sdr_din2[3]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[4]) );
  FD1S pad_sdr_din2_reg_3_ ( .D(pad_sdr_din1[3]), .TI(pad_sdr_din2[2]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[3]) );
  FD1S pad_sdr_din2_reg_2_ ( .D(pad_sdr_din1[2]), .TI(pad_sdr_din2[1]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[2]) );
  FD1S pad_sdr_din2_reg_1_ ( .D(pad_sdr_din1[1]), .TI(pad_sdr_din2[0]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[1]) );
  FD1S pad_sdr_din2_reg_0_ ( .D(pad_sdr_din1[0]), .TI(pad_sdr_din1[15]), .TE(
        test_se), .CP(n33), .Q(pad_sdr_din2[0]) );
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
