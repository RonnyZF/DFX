module ASIC_with_TAP (cfg_sdr_width, cfg_colbits, Port3, wb_clk_i, wb_stb_i, 
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
        test_si25, test_so25, test_si26, test_so26, test_se, TDO, TDI, TMS, TCK );

/*Define Parameters*/
/*
 The IO needs a bus of 400 bits, Controller + Scan (Esto hay que preguntarlo)
*/
  parameter			BSR_size = 268; 
  parameter			IR_size = 3;

  /*Define inputs*/      
  input  [1:0]  cfg_sdr_width;
  input  [1:0]  cfg_colbits;
  input  [25:0] wb_addr_i;
  input  [31:0] wb_dat_i;
  input  [3:0]  wb_sel_i;
  output [31:0] wb_dat_o;
  input  [2:0]  wb_cti_i;
  output [1:0]  sdr_dqm;
  output [1:0]  sdr_ba;
  output [12:0] sdr_addr;
  inout  [15:0] sdr_dq;
  input  [1:0]  cfg_req_depth;
  input  [12:0] cfg_sdr_mode_reg;
  input  [3:0]  cfg_sdr_tras_d;
  input  [3:0]  cfg_sdr_trp_d;
  input  [3:0]  cfg_sdr_trcd_d;
  input  [2:0]  cfg_sdr_cas;
  input  [3:0]  cfg_sdr_trcar_d;
  input  [3:0]  cfg_sdr_twr_d;
  input  [11:0] cfg_sdr_rfsh;
  input  [2:0]  cfg_sdr_rfmax;
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

  /*Define TAP Interface*/
  output		TDO; 		
  input			TDI, TMS, TCK;
  wire		[BSR_size -1: 0] 	BSC_Interface;	// Declarations for boundary scan register I/O
  wire 				reset_bar,	                // TAP controller outputs

selectIR, enableTDO,
shiftIR, clockIR, updateIR, 
shiftDR, clockDR, updateDR;

  wire				test_mode, select_BR;
  wire				TDR_out;		// Test data register serial datapath
  wire 		[IR_size -1: 0]	Dummy_data = 3'b001;	// Captured in S_Capture_IR
  wire 		[IR_size -1: 0]	instruction;
  wire				IR_scan_out;		// Instruction register
  wire				BSR_scan_out;		// Boundary scan register
  wire				BR_scan_out;		// Bypass register

  assign		TDO = enableTDO ? selectIR ? IR_scan_out : TDR_out : 1'bz;
  assign 	TDR_out = select_BR ? BR_scan_out : BSR_scan_out;

    sdrc_top Cont
(
/*Define Inputs*/
	.wb_clk_i          (BSC_Interface [15:0]), 
	.wb_stb_i          (BSC_Interface [16]),
    .wb_we_i           (BSC_Interface [17]),
    .wb_cyc_i          (BSC_Interface [18]),
    .sdram_clk         (BSC_Interface [19]), 
	.resetn            (BSC_Interface [20]),
    .cfg_sdr_en        (BSC_Interface [21]),
    .test_si1          (BSC_Interface [22]),
    .test_si2          (BSC_Interface [23]),
    .test_si3          (BSC_Interface [24]),
    .test_si4          (BSC_Interface [25]),
    .test_si5          (BSC_Interface [26]),
    .test_si6          (BSC_Interface [27]),
    .test_si7          (BSC_Interface [28]),
    .test_si8          (BSC_Interface [29]),
    .test_si9          (BSC_Interface [30]),
    .test_si10         (BSC_Interface [31]),
    .test_si11         (BSC_Interface [32]),
    .test_si12         (BSC_Interface [33]),
    .test_si13         (BSC_Interface [34]),
    .test_si14         (BSC_Interface [35]),
    .test_si15         (BSC_Interface [36]),
    .test_si16         (BSC_Interface [37]),
    .test_si17         (BSC_Interface [38]),
    .test_si18         (BSC_Interface [39]),
    .test_si19         (BSC_Interface [40]),
    .test_si20         (BSC_Interface [41]),
    .test_si21         (BSC_Interface [42]),
    .test_si22         (BSC_Interface [43]),
    .test_si23         (BSC_Interface [44]),
    .test_si24         (BSC_Interface [45]),
    .test_si25         (BSC_Interface [46]),
    .test_si26         (BSC_Interface [47]),
    .test_se           (BSC_Interface [49]),
    .cfg_sdr_width     (BSC_Interface [50:49]), 
	.cfg_colbits       (BSC_Interface [52:51]),
    .wb_addr_i         (BSC_Interface [78:53]),
    .cfg_sdr_tras_d    (BSC_Interface [82:79]),
    .cfg_sdr_trp_d     (BSC_Interface [86:83]), 
	.cfg_sdr_trcd_d    (BSC_Interface [90:87]), 
	.cfg_sdr_cas       (BSC_Interface [94:91]),
    .wb_dat_i          (BSC_Interface [126:95]), 
    .wb_cti_i          (BSC_Interface [130:127]), 
    .cfg_sdr_mode_reg  (BSC_Interface [143:131]),
    .cfg_sdr_trcar_d   (BSC_Interface [147:144]), 
    .cfg_sdr_twr_d     (BSC_Interface [151:148]), 
	.cfg_sdr_rfsh      (BSC_Interface [163:152]), 
	.cfg_sdr_rfmax     (BSC_Interface [167:164]),  
    .wb_sel_i          (BSC_Interface [171:168]), 
    .sdr_dq            (BSC_Interface [187:172]), //Tri-State
/* Define Ouputs*/
    .wb_ack_o          (BSC_Interface [188]),
	.sdr_cs_n          (BSC_Interface [189]), 
	.sdr_cke           (BSC_Interface [190]), 
	.sdr_ras_n         (BSC_Interface [191]), 
    .sdr_cas_n         (BSC_Interface [192]), 
	.sdr_we_n          (BSC_Interface [193]),
    .sdr_init_done     (BSC_Interface [194]),  
    .test_so1          (BSC_Interface [195]),
    .test_so2          (BSC_Interface [196]),
    .test_so3          (BSC_Interface [197]),
    .test_so4          (BSC_Interface [198]),
    .test_so5          (BSC_Interface [199]),
    .test_so6          (BSC_Interface [200]),
    .test_so7          (BSC_Interface [201]),
    .test_so8          (BSC_Interface [202]),
    .test_so9          (BSC_Interface [203]),
    .test_so10         (BSC_Interface [204]),
    .test_so11         (BSC_Interface [205]),
    .test_so12         (BSC_Interface [206]),
    .test_so13         (BSC_Interface [207]),
    .test_so14         (BSC_Interface [208]),
    .test_so15         (BSC_Interface [209]),
    .test_so16         (BSC_Interface [210]),
    .test_so17         (BSC_Interface [211]),
    .test_so18         (BSC_Interface [212]),
    .test_so19         (BSC_Interface [213]),
    .test_so20         (BSC_Interface [214]),
    .test_so22         (BSC_Interface [215]),
    .test_so23         (BSC_Interface [216]),
    .test_so24         (BSC_Interface [217]),
    .test_so25         (BSC_Interface [218]),
    .test_so26         (BSC_Interface [219]),
	.sdr_dqm           (BSC_Interface [221:220]), 
	.sdr_ba            (BSC_Interface [223:222]), 
	.sdr_addr          (BSC_Interface [236:224]), 
	.wb_dat_o          (BSC_Interface [268:237]), 
);
	
  