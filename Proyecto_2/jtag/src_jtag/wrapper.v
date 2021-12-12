module wrapper (cfg_sdr_width, cfg_colbits, wb_addr_i, wb_dat_i, wb_sel_i, 
		wb_dat_o, wb_cti_i, sdr_dqm, sdr_ba, sdr_addr, sdr_dq, 
		cfg_req_depth, cfg_sdr_mode_reg, cfg_sdr_tras_d, cfg_sdr_trp_d, 
		cfg_sdr_trcd_d, cfg_sdr_cas, cfg_sdr_trcar_d, cfg_sdr_twr_d, cfg_sdr_rfsh,
		cfg_sdr_rfmax, Port3, wb_clk_i, wb_stb_i, wb_we_i, wb_cyc_i, sdram_clk, 
		resetn, cfg_sdr_en, test_si1, test_si2, test_si3, test_si4, test_si5, 
		test_si6, test_si7, test_si8, test_si9, test_si10, test_si11, test_si12, 
		test_si13, test_si14, test_si15, test_si16, test_si17, test_si18, test_si19,
		test_si20, test_si21, test_si22, test_si23, test_si24, test_si25, test_si26, 
		test_se, wb_ack_o, sdr_cs_n, sdr_cke, sdr_ras_n, sdr_cas_n, sdr_we_n, 
		sdr_init_done, test_so1, test_so2, test_so3, test_so4, test_so5, test_so6, 
		test_so7, test_so8, test_so9, test_so10, test_so11, test_so12, test_so13, 
		test_so14, test_so15, test_so16, test_so17, test_so20, test_so21, test_so22,
		test_so23, test_so24, test_so25, test_so26, TDO, TDI, TMS, TCK);

  parameter			BSR_size = 253;
  parameter			IR_size = 3;
  parameter			size = 4;

  input 	[1:0] 		cfg_sdr_width;  				//  ASIC interface I/O
  input 	[1:0] 		cfg_colbits;
  input 	[25:0] 		wb_addr_i;
  input 	[31:0] 		wb_dat_i;
  input 	[3:0] 		wb_sel_i;
  output 	[31:0] 		wb_dat_o;
  input 	[2:0] 		wb_cti_i;
  output 	[1:0] 		sdr_dqm;
  output 	[1:0] 		sdr_ba;
  output 	[12:0] 		sdr_addr;
  inout 	[15:0] 		sdr_dq;
  input 	[1:0] 		cfg_req_depth;
  input 	[12:0] 		cfg_sdr_mode_reg;
  input 	[3:0] 		cfg_sdr_tras_d;
  input 	[3:0] 		cfg_sdr_trp_d;
  input 	[3:0] 		cfg_sdr_trcd_d;
  input 	[2:0] 		cfg_sdr_cas;
  input 	[3:0] 		cfg_sdr_trcar_d;
  input 	[3:0] 		cfg_sdr_twr_d;
  input 	[11:0] 		cfg_sdr_rfsh;
  input 	[2:0] 		cfg_sdr_rfmax;

  input  Port3, wb_clk_i, wb_stb_i, wb_we_i, wb_cyc_i, sdram_clk, resetn,
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


  output				TDO; 		// TAP interface signals
  input				TDI, TMS, TCK;	

  wire		[BSR_size -1: 0] 	BSC_Interface;	// Declarations for boundary scan register I/O

  wire 				reset_bar,	// TAP controller outputs
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

    sdrc_top M0(
	/*Define Inputs*/
	.cfg_sdr_width     (BSC_Interface [252:251]),
	.cfg_colbits       (BSC_Interface [250:249]), 
	.wb_addr_i         (BSC_Interface [248:223]),
	.wb_dat_i          (BSC_Interface [222:191]),
	.wb_sel_i          (BSC_Interface [190:187]),  
	.wb_dat_o          (BSC_Interface [186:155]),
	.wb_cti_i          (BSC_Interface [154:152]),  
	.sdr_dqm           (BSC_Interface [151:150]), 
	.sdr_ba            (BSC_Interface [149:148]), 
	.sdr_addr          (BSC_Interface [147:135]), 
	.sdr_dq            (BSC_Interface [134:119]), //Tri-State
	.cfg_req_depth     (BSC_Interface [118:117]),
	.cfg_sdr_mode_reg  (BSC_Interface [116:104]),
	.cfg_sdr_tras_d    (BSC_Interface [103:100]),
	.cfg_sdr_trp_d     (BSC_Interface [99:96]), 
	.cfg_sdr_trcd_d    (BSC_Interface [95:92]), 
	.cfg_sdr_cas       (BSC_Interface [91:89]),
	.cfg_sdr_trcar_d   (BSC_Interface [88:85]),
	.cfg_sdr_twr_d     (BSC_Interface [84:81]), 
	.cfg_sdr_rfsh      (BSC_Interface [80:69]), 
	.cfg_sdr_rfmax     (BSC_Interface [68:66]),
	.Port3             (BSC_Interface [65]), 
	.wb_clk_i          (BSC_Interface [64]), 
	.wb_stb_i          (BSC_Interface [63]),
	.wb_we_i           (BSC_Interface [62]),
	.wb_cyc_i          (BSC_Interface [61]),
	.sdram_clk         (BSC_Interface [60]), 
	.resetn            (BSC_Interface [59]),
	.cfg_sdr_en        (BSC_Interface [58]),
	.test_si1          (BSC_Interface [57]),
	.test_si2          (BSC_Interface [56]),
	.test_si3          (BSC_Interface [55]),
	.test_si4          (BSC_Interface [54]),
	.test_si5          (BSC_Interface [53]),
	.test_si6          (BSC_Interface [52]),
	.test_si7          (BSC_Interface [51]),
	.test_si8          (BSC_Interface [50]),
	.test_si9          (BSC_Interface [49]),
	.test_si10         (BSC_Interface [48]),
	.test_si11         (BSC_Interface [47]),
	.test_si12         (BSC_Interface [46]),
	.test_si13         (BSC_Interface [45]),
	.test_si14         (BSC_Interface [44]),
	.test_si15         (BSC_Interface [43]),
	.test_si16         (BSC_Interface [42]),
	.test_si17         (BSC_Interface [41]),
	.test_si18         (BSC_Interface [40]),
	.test_si19         (BSC_Interface [39]),
	.test_si20         (BSC_Interface [38]),
	.test_si21         (BSC_Interface [37]),
	.test_si22         (BSC_Interface [36]),
	.test_si23         (BSC_Interface [35]),
	.test_si24         (BSC_Interface [34]),
	.test_si25         (BSC_Interface [33]),
	.test_si26         (BSC_Interface [32]),
	.test_se           (BSC_Interface [31]),
	/* Define Ouputs*/
	.wb_ack_o          (BSC_Interface [30]),
	.sdr_cs_n          (BSC_Interface [29]), 
	.sdr_cke           (BSC_Interface [28]), 
	.sdr_ras_n         (BSC_Interface [27]), 
	.sdr_cas_n         (BSC_Interface [26]), 
	.sdr_we_n          (BSC_Interface [25]),
	.sdr_init_done     (BSC_Interface [24]),  
	.test_so1          (BSC_Interface [23]),
	.test_so2          (BSC_Interface [22]),
	.test_so3          (BSC_Interface [21]),
	.test_so4          (BSC_Interface [20]),
	.test_so5          (BSC_Interface [19]),
	.test_so6          (BSC_Interface [18]),
	.test_so7          (BSC_Interface [17]),
	.test_so8          (BSC_Interface [16]),
	.test_so9          (BSC_Interface [15]),
	.test_so10         (BSC_Interface [14]),
	.test_so11         (BSC_Interface [13]),
	.test_so12         (BSC_Interface [12]),
	.test_so13         (BSC_Interface [11]),
	.test_so14         (BSC_Interface [10]),
	.test_so15         (BSC_Interface [9]),
	.test_so16         (BSC_Interface [8]),
	.test_so17         (BSC_Interface [7]),
	.test_so20         (BSC_Interface [6]),
	.test_so21         (BSC_Interface [5]),
	.test_so22         (BSC_Interface [4]),
	.test_so23         (BSC_Interface [3]),
	.test_so24         (BSC_Interface [2]),
	.test_so25         (BSC_Interface [1]),
	.test_so26         (BSC_Interface [0])
);
 
Bypass_Register M1(
    .scan_out (BR_scan_out), 
    .scan_in (TDI), 
    .shiftDR (shift_BR), 
    .clockDR (clock_BR));

Boundary_Scan_Register M2(
    .data_out ({
	/*Define Inputs*/
	(BSC_Interface [252:251]),
	(BSC_Interface [250:249]), 
	(BSC_Interface [248:223]),
	(BSC_Interface [222:191]),
	(BSC_Interface [190:187]),  
	(BSC_Interface [186:155]),
	(BSC_Interface [154:152]),  
	(BSC_Interface [151:150]), 
	(BSC_Interface [149:148]), 
	(BSC_Interface [147:135]), 
	(BSC_Interface [134:119]), //Tri-State
	(BSC_Interface [118:117]),
	(BSC_Interface [116:104]),
	(BSC_Interface [103:100]),
	(BSC_Interface [99:96]), 
	(BSC_Interface [95:92]), 
	(BSC_Interface [91:89]),
	(BSC_Interface [88:85]),
	(BSC_Interface [84:81]), 
	(BSC_Interface [80:69]), 
	(BSC_Interface [68:66]),
	(BSC_Interface [65]), 
	(BSC_Interface [64]), 
	(BSC_Interface [63]),
	(BSC_Interface [62]),
	(BSC_Interface [61]),
	(BSC_Interface [60]), 
	(BSC_Interface [59]),
	(BSC_Interface [58]),
	(BSC_Interface [57]),
	(BSC_Interface [56]),
	(BSC_Interface [55]),
	(BSC_Interface [54]),
	(BSC_Interface [53]),
	(BSC_Interface [52]),
	(BSC_Interface [51]),
	(BSC_Interface [50]),
	(BSC_Interface [49]),
	(BSC_Interface [48]),
	(BSC_Interface [47]),
	(BSC_Interface [46]),
	(BSC_Interface [45]),
	(BSC_Interface [44]),
	(BSC_Interface [43]),
	(BSC_Interface [42]),
	(BSC_Interface [41]),
	(BSC_Interface [40]),
	(BSC_Interface [39]),
	(BSC_Interface [38]),
	(BSC_Interface [37]),
	(BSC_Interface [36]),
	(BSC_Interface [35]),
	(BSC_Interface [34]),
	(BSC_Interface [33]),
	(BSC_Interface [32]),
	(BSC_Interface [31]),
	/* Define Ouputs*/
	wb_ack_o,
	sdr_cs_n,
	sdr_cke,
	sdr_ras_n,
	sdr_cas_n,
	sdr_we_n,
	sdr_init_done,
	test_so1,
	test_so2,
	test_so3,
	test_so4,
	test_so5,
	test_so6,
	test_so7,
	test_so8,
	test_so9,
	test_so10,
	test_so11,
	test_so12,
	test_so13,
	test_so14,
	test_so15,
	test_so16,
	test_so17,
	test_so20,
	test_so21,
	test_so22,
	test_so23,
	test_so24,
	test_so25,
	test_so26
    }),
    .data_in 
    ({
	/*Define Inputs*/
	cfg_sdr_width,
	cfg_colbits,
	wb_addr_i,
	wb_dat_i,
	wb_sel_i,
	wb_dat_o,
	wb_cti_i,
	sdr_dqm,
	sdr_ba,
	sdr_addr,
	sdr_dq,
	cfg_req_depth,
	cfg_sdr_mode_reg,
	cfg_sdr_tras_d,
	cfg_sdr_trp_d,
	cfg_sdr_trcd_d,
	cfg_sdr_cas,
	cfg_sdr_trcar_d,
	cfg_sdr_twr_d,
	cfg_sdr_rfsh,
	cfg_sdr_rfmax,
	Port3,
	wb_clk_i,
	wb_stb_i,
	wb_we_i,
	wb_cyc_i,
	sdram_clk,
	resetn,
	cfg_sdr_en,
	test_si1,
	test_si2,
	test_si3,
	test_si4,
	test_si5,
	test_si6,
	test_si7,
	test_si8,
	test_si9,
	test_si10,
	test_si11,
	test_si12,
	test_si13,
	test_si14,
	test_si15,
	test_si16,
	test_si17,
	test_si18,
	test_si19,
	test_si20,
	test_si21,
	test_si22,
	test_si23,
	test_si24,
	test_si25,
	test_si26,
	test_se,
	/* Define Ouputs*/
	(BSC_Interface [30]),
	(BSC_Interface [29]), 
	(BSC_Interface [28]), 
	(BSC_Interface [27]), 
	(BSC_Interface [26]), 
	(BSC_Interface [25]),
	(BSC_Interface [24]),  
	(BSC_Interface [23]),
	(BSC_Interface [22]),
	(BSC_Interface [21]),
	(BSC_Interface [20]),
	(BSC_Interface [19]),
	(BSC_Interface [18]),
	(BSC_Interface [17]),
	(BSC_Interface [16]),
	(BSC_Interface [15]),
	(BSC_Interface [14]),
	(BSC_Interface [13]),
	(BSC_Interface [12]),
	(BSC_Interface [11]),
	(BSC_Interface [10]),
	(BSC_Interface [9]),
	(BSC_Interface [8]),
	(BSC_Interface [7]),
	(BSC_Interface [6]),
	(BSC_Interface [5]),
	(BSC_Interface [4]),
	(BSC_Interface [3]),
	(BSC_Interface [2]),
	(BSC_Interface [1]),
	(BSC_Interface [0])
	}),
    .scan_out (BSR_scan_out), 
    .scan_in (TDI),
    .shiftDR (shiftDR), 
    .mode (test_mode),
    .clockDR (clock_BSC_Reg), 
    .updateDR (update_BSC_Reg)
);	

Instruction_Register M3 (
    .data_out (instruction), 
    .data_in (Dummy_data), 
    .scan_out (IR_scan_out), 
    .scan_in (TDI),  
    .shiftIR (shiftIR), 
    .clockIR (clockIR), 
    .updateIR (updateIR), 
    .reset_bar (reset_bar));

Instruction_Decoder M4 (
  .mode (test_mode),
  .select_BR (select_BR),
  .shift_BR (shift_BR),
  .clock_BR (clock_BR),
  .shift_BSC_Reg (shift_BSC_Reg),
  .clock_BSC_Reg (clock_BSC_Reg),
  .update_BSC_Reg (update_BSC_Reg),
  .instruction (instruction),
  .shiftDR (shiftDR),
  .clockDR (clockDR),
  .updateDR (updateDR));

TAP_Controller M5 (
  .reset_bar(reset_bar), 
  .selectIR (selectIR), 
  .shiftIR (shiftIR), 
  .clockIR (clockIR),  
  .updateIR (updateIR), 
  .shiftDR (shiftDR), 
  .clockDR (clockDR), 
  .updateDR (updateDR), 
  .enableTDO (enableTDO), 
  .TMS (TMS), 
  .TCK (TCK));

endmodule
