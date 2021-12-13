module testbench_tap ();				// Testbench
	parameter	size = 4;
	parameter	BSC_Reg_size = 253;
	parameter	IR_Reg_size = 3;
	parameter 	N_ASIC_Patterns = 8;
	parameter 	N_TAP_Instructions = 8;
	parameter	Pause_Time = 40;
	parameter	End_of_Test = 1500;
	parameter	time_1 = 350, time_2 = 550;


	reg 	[1:0] 	cfg_sdr_width;
	reg 	[1:0] 	cfg_colbits;
	reg 	[25:0] 	wb_addr_i;
	reg 	[31:0] 	wb_dat_i;
	reg 	[3:0] 	wb_sel_i;
	wire 	[31:0] 	wb_dat_o;
	reg 	[2:0] 	wb_cti_i;
	wire 	[1:0] 	sdr_dqm;
	wire 	[1:0] 	sdr_ba;
	wire 	[12:0] 	sdr_addr;
	wire 	[15:0] 	sdr_dq;
	reg 	[1:0] 	cfg_req_depth;
	reg 	[12:0] 	cfg_sdr_mode_reg;
	reg 	[3:0] 	cfg_sdr_tras_d;
	reg 	[3:0] 	cfg_sdr_trp_d;
	reg 	[3:0] 	cfg_sdr_trcd_d;
	reg 	[2:0] 	cfg_sdr_cas;
	reg 	[3:0] 	cfg_sdr_trcar_d;
	reg 	[3:0] 	cfg_sdr_twr_d;
	reg 	[11:0] 	cfg_sdr_rfsh;
	reg 	[2:0] 	cfg_sdr_rfmax;
	reg 		Port3;
	reg 		wb_clk_i;
	reg 		wb_stb_i;
	reg 		wb_we_i;
	reg 		wb_cyc_i;
	reg 		sdram_clk;
	reg 		resetn;
	reg 		cfg_sdr_en;
	reg 		test_si1;
	reg 		test_si2;
	reg 		test_si3;
	reg 		test_si4;
	reg 		test_si5;
	reg 		test_si6;
	reg 		test_si7;
	reg 		test_si8;
	reg 		test_si9;
	reg 		test_si10;
	reg 		test_si11;
	reg 		test_si12;
	reg 		test_si13;
	reg 		test_si14;
	reg 		test_si15;
	reg 		test_si16;
	reg 		test_si17;
	reg 		test_si18;
	reg 		test_si19;
	reg 		test_si20;
	reg 		test_si21;
	reg 		test_si22;
	reg 		test_si23;
	reg 		test_si24;
	reg 		test_si25;
	reg 		test_si26;
	reg 		test_se;

	wire 		wb_ack_o;
	wire 		sdr_cs_n;
	wire 		sdr_cke;
	wire 		sdr_ras_n;
	wire 		sdr_cas_n;
	wire 		sdr_we_n;
	wire 		sdr_init_done;
	wire 		test_so1;
	wire 		test_so2;
	wire 		test_so3;
	wire 		test_so4;
	wire 		test_so5;
	wire 		test_so6;
	wire 		test_so7;
	wire 		test_so8;
	wire 		test_so9;
	wire 		test_so10;
	wire 		test_so11;
	wire 		test_so12;
	wire 		test_so13;
	wire 		test_so14;
	wire 		test_so15;
	wire 		test_so16;
	wire 		test_so17;
	wire 		test_so20;
	wire 		test_so21;
	wire 		test_so22;
	wire 		test_so23;
	wire 		test_so24;
	wire 		test_so25;
	wire 		test_so26;

	wire 	[1:0] 	cfg_sdr_width_fr_ASIC 	= M0.BSC_Interface [250:249];
	wire 	[1:0] 	cfg_colbits_fr_ASIC 	= M0.BSC_Interface [248:247];
	wire 	[25:0] 	wb_addr_i_fr_ASIC 	= M0.BSC_Interface [246:221];
	wire 	[31:0] 	wb_dat_i_fr_ASIC 	= M0.BSC_Interface [220:189];
	wire 	[3:0] 	wb_sel_i_fr_ASIC 	= M0.BSC_Interface [188:185];
	wire 	[31:0] 	wb_dat_o_fr_ASIC 	= M0.BSC_Interface [184:153];
	wire 	[2:0] 	wb_cti_i_fr_ASIC 	= M0.BSC_Interface [152:150];
	wire 	[1:0] 	sdr_dqm_fr_ASIC 	= M0.BSC_Interface [149:148];
	wire 	[1:0] 	sdr_ba_fr_ASIC 		= M0.BSC_Interface [147:146];
	wire 	[12:0] 	sdr_addr_fr_ASIC 	= M0.BSC_Interface [145:133];
	wire 	[15:0] 	sdr_dq_fr_ASIC 		= M0.BSC_Interface [132:117];
	wire 	[1:0] 	cfg_req_depth_fr_ASIC 	= M0.BSC_Interface [116:115];
	wire 	[12:0] 	cfg_sdr_mode_wire_fr_ASIC = M0.BSC_Interface [114:102];
	wire 	[3:0] 	cfg_sdr_tras_d_fr_ASIC 	= M0.BSC_Interface [101:98];
	wire 	[3:0] 	cfg_sdr_trp_d_fr_ASIC 	= M0.BSC_Interface [97:94];
	wire 	[3:0] 	cfg_sdr_trcd_d_fr_ASIC 	= M0.BSC_Interface [93:90];
	wire 	[2:0] 	cfg_sdr_cas_fr_ASIC 	= M0.BSC_Interface [89:87];
	wire 	[3:0] 	cfg_sdr_trcar_d_fr_ASIC = M0.BSC_Interface [85:83];
	wire 	[3:0] 	cfg_sdr_twr_d_fr_ASIC 	= M0.BSC_Interface [82:79];
	wire 	[11:0] 	cfg_sdr_rfsh_fr_ASIC 	= M0.BSC_Interface [78:67];
	wire 	[2:0] 	cfg_sdr_rfmax_fr_ASIC 	= M0.BSC_Interface [66:64];
	wire 		Port3_fr_ASIC 		= M0.BSC_Interface [63];;
//	wire 		wb_clk_i_fr_ASIC 	= M0.BSC_Interface [64];
	wire 		wb_stb_i_fr_ASIC 	= M0.BSC_Interface [62];
	wire 		wb_we_i_fr_ASIC 	= M0.BSC_Interface [61];
	wire 		wb_cyc_i_fr_ASIC 	= M0.BSC_Interface [60];
//	wire 		sdram_clk_fr_ASIC 	= M0.BSC_Interface [60];
	wire 		resetn_fr_ASIC 		= M0.BSC_Interface [59];
	wire 		cfg_sdr_en_fr_ASIC 	= M0.BSC_Interface [58];
	wire 		test_si1_fr_ASIC 	= M0.BSC_Interface [57];
	wire 		test_si2_fr_ASIC 	= M0.BSC_Interface [56];
	wire 		test_si3_fr_ASIC 	= M0.BSC_Interface [55];
	wire 		test_si4_fr_ASIC 	= M0.BSC_Interface [54];
	wire 		test_si5_fr_ASIC 	= M0.BSC_Interface [53];
	wire 		test_si6_fr_ASIC 	= M0.BSC_Interface [52];
	wire 		test_si7_fr_ASIC 	= M0.BSC_Interface [51];
	wire 		test_si8_fr_ASIC 	= M0.BSC_Interface [50];
	wire 		test_si9_fr_ASIC 	= M0.BSC_Interface [49];
	wire 		test_si10_fr_ASIC 	= M0.BSC_Interface [48];
	wire 		test_si11_fr_ASIC 	= M0.BSC_Interface [47];
	wire 		test_si12_fr_ASIC 	= M0.BSC_Interface [46];
	wire 		test_si13_fr_ASIC 	= M0.BSC_Interface [45];
	wire 		test_si14_fr_ASIC 	= M0.BSC_Interface [44];
	wire 		test_si15_fr_ASIC 	= M0.BSC_Interface [43];
	wire 		test_si16_fr_ASIC 	= M0.BSC_Interface [42];
	wire 		test_si17_fr_ASIC 	= M0.BSC_Interface [41];
	wire 		test_si18_fr_ASIC 	= M0.BSC_Interface [40];
	wire 		test_si19_fr_ASIC 	= M0.BSC_Interface [39];
	wire 		test_si20_fr_ASIC 	= M0.BSC_Interface [38];
	wire 		test_si21_fr_ASIC 	= M0.BSC_Interface [37];
	wire 		test_si22_fr_ASIC 	= M0.BSC_Interface [36];
	wire 		test_si23_fr_ASIC 	= M0.BSC_Interface [35];
	wire 		test_si24_fr_ASIC 	= M0.BSC_Interface [34];
	wire 		test_si25_fr_ASIC 	= M0.BSC_Interface [33];
	wire 		test_si26_fr_ASIC 	= M0.BSC_Interface [32];
	wire 		test_se_fr_ASIC 	= M0.BSC_Interface [31];

	wire 		wb_ack_o_fr_ASIC 	= M0.BSC_Interface [30];
	wire 		sdr_cs_n_fr_ASIC 	= M0.BSC_Interface [29];
	wire 		sdr_cke_fr_ASIC 	= M0.BSC_Interface [28];
	wire 		sdr_ras_n_fr_ASIC 	= M0.BSC_Interface [27];
	wire 		sdr_cas_n_fr_ASIC 	= M0.BSC_Interface [26];
	wire 		sdr_we_n_fr_ASIC 	= M0.BSC_Interface [25];
	wire 		sdr_init_done_fr_ASIC 	= M0.BSC_Interface [24];
	wire 		test_so1_fr_ASIC 	= M0.BSC_Interface [23];
	wire 		test_so2_fr_ASIC 	= M0.BSC_Interface [22];
	wire 		test_so3_fr_ASIC 	= M0.BSC_Interface [21];
	wire 		test_so4_fr_ASIC 	= M0.BSC_Interface [20];
	wire 		test_so5_fr_ASIC 	= M0.BSC_Interface [19];
	wire 		test_so6_fr_ASIC 	= M0.BSC_Interface [18];
	wire 		test_so7_fr_ASIC 	= M0.BSC_Interface [17];
	wire 		test_so8_fr_ASIC 	= M0.BSC_Interface [16];
	wire 		test_so9_fr_ASIC 	= M0.BSC_Interface [15];
	wire 		test_so10_fr_ASIC	= M0.BSC_Interface [14];
	wire 		test_so11_fr_ASIC 	= M0.BSC_Interface [13];
	wire 		test_so12_fr_ASIC 	= M0.BSC_Interface [12];
	wire 		test_so13_fr_ASIC 	= M0.BSC_Interface [11];
	wire 		test_so14_fr_ASIC 	= M0.BSC_Interface [10];
	wire 		test_so15_fr_ASIC 	= M0.BSC_Interface [9];
	wire 		test_so16_fr_ASIC 	= M0.BSC_Interface [8];
	wire 		test_so17_fr_ASIC 	= M0.BSC_Interface [7];
	wire 		test_so20_fr_ASIC 	= M0.BSC_Interface [6];
	wire 		test_so21_fr_ASIC 	= M0.BSC_Interface [5];
	wire 		test_so22_fr_ASIC 	= M0.BSC_Interface [4];
	wire 		test_so23_fr_ASIC 	= M0.BSC_Interface [3];
	wire 		test_so24_fr_ASIC 	= M0.BSC_Interface [2];
	wire 		test_so25_fr_ASIC 	= M0.BSC_Interface [1];
	wire 		test_so26_fr_ASIC 	= M0.BSC_Interface [0];

	reg 	TMS, TCK;
	wire 	TDI;
	wire 	TDO;
	reg	load_TDI_Generator;
	reg	Error, strobe;
	integer	pattern_ptr;
	reg	[BSC_Reg_size -1: 0] 	Array_of_ASIC_Test_Patterns [0: N_ASIC_Patterns -1];
	reg	[IR_Reg_size -1: 0] 	Array_of_TAP_Instructions [0: N_TAP_Instructions -1];
	reg	[BSC_Reg_size -1: 0]	Pattern_Register;		// Size to maximum TDR
//	reg	[BSC_Reg_size -1: 0]	TEST_Register;
	reg	enable_bypass_pattern;


/*
	wrapper M0 (
		cfg_sdr_width, cfg_colbits, wb_addr_i, wb_dat_i, wb_sel_i, 
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
*/
	wrapper M0 (
		.cfg_sdr_width(cfg_sdr_width), 
		.cfg_colbits(cfg_colbits), 
		.wb_addr_i(wb_addr_i), 
		.wb_dat_i(wb_dat_i), 
		.wb_sel_i(wb_sel_i), 
		.wb_dat_o(wb_dat_o), 
		.wb_cti_i(wb_cti_i),
		.sdr_dqm(sdr_dqm), 
		.sdr_ba(sdr_ba), 
		.sdr_addr(sdr_addr), 
		.sdr_dq(sdr_dq), 
		.cfg_req_depth(cfg_req_depth), 
		.cfg_sdr_mode_reg(cfg_sdr_mode_reg), 
		.cfg_sdr_tras_d(cfg_sdr_tras_d),
		.cfg_sdr_trp_d(cfg_sdr_trp_d), 
		.cfg_sdr_trcd_d(cfg_sdr_trcd_d), 
		.cfg_sdr_cas(cfg_sdr_cas), 
		.cfg_sdr_trcar_d(cfg_sdr_trcar_d), 
		.cfg_sdr_twr_d(cfg_sdr_twr_d), 
		.cfg_sdr_rfsh(cfg_sdr_rfsh),
		.cfg_sdr_rfmax(cfg_sdr_rfmax), 
		.Port3(Port3), 
		.wb_clk_i(TCK), 
		.wb_stb_i(wb_stb_i), 
		.wb_we_i(wb_we_i), 
		.wb_cyc_i(wb_cyc_i), 
		.sdram_clk(TCK), 
		.resetn(resetn), 
		.cfg_sdr_en(cfg_sdr_en),
		.test_si1(test_si1), 
		.test_si2(test_si2), 
		.test_si3(test_si3), 
		.test_si4(test_si4), 
		.test_si5(test_si5), 
		.test_si6(test_si6), 
		.test_si7(test_si7), 
		.test_si8(test_si8), 
		.test_si9(test_si9),
		.test_si10(test_si10), 
		.test_si11(test_si11), 
		.test_si12(test_si12), 
		.test_si13(test_si13), 
		.test_si14(test_si14), 
		.test_si15(test_si15), 
		.test_si16(test_si16), 
		.test_si17(test_si17),
		.test_si18(test_si18), 
		.test_si19(test_si19), 
		.test_si20(test_si20), 
		.test_si21(test_si21), 
		.test_si22(test_si22), 
		.test_si23(test_si23), 
		.test_si24(test_si24), 
		.test_si25(test_si25),
		.test_si26(test_si26), 
		.test_se(test_se), 
		.wb_ack_o(wb_ack_o), 
		.sdr_cs_n(sdr_cs_n), 
		.sdr_cke(sdr_cke), 
		.sdr_ras_n(sdr_ras_n), 
		.sdr_cas_n(sdr_cas_n), 
		.sdr_we_n(sdr_we_n), 
		.sdr_init_done(sdr_init_done), 
		.test_so1(test_so1), 
		.test_so2(test_so2), 
		.test_so3(test_so3), 
		.test_so4(test_so4), 
		.test_so5(test_so5), 
		.test_so6(test_so6), 
		.test_so7(test_so7), 
		.test_so8(test_so8), 
		.test_so9(test_so9), 
		.test_so10(test_so10), 
		.test_so11(test_so11), 
		.test_so12(test_so12), 
		.test_so13(test_so13), 
		.test_so14(test_so14), 
		.test_so15(test_so15),
		.test_so16(test_so16),
		.test_so17(test_so17), 
		.test_so20(test_so20), 
		.test_so21(test_so21), 
		.test_so22(test_so22), 
		.test_so23(test_so23), 
		.test_so24(test_so24), 
		.test_so25(test_so25), 
		.test_so26(test_so26),
		.TDO(TDO), 
		.TDI(TDI), 
		.TMS(TMS), 
		.TCK(TCK)
	);

	TDI_Generator M1(
	    .to_TDI (TDI),
	    .scan_pattern (Pattern_Register),
	    .load (load_TDI_Generator),
	    .enable_bypass_pattern (enable_bypass_pattern), 
	    .TCK (TCK));
	 
	TDO_Monitor M3 (
	    .to_TDI (TDI), 
	    .from_TDO (TDO), 
	    .strobe (strobe),
	    .TCK (TCK));



//  initial #End_of_Test $finish;

initial begin TCK = 0; forever #5 TCK = ~TCK; end	 
initial begin wb_clk_i = 0; forever #5 wb_clk_i = TCK; end	 
initial begin sdram_clk = 0; forever #5 sdram_clk = TCK; end	 
 
  /*  Summary of  a basic test plan for ASIC_with TAP
  Verify default to bypass instruction
  Verify bypass register action: Scan 10 cycles, with pause before exiting
  Verify pull up action on TMS and TDI
  Reset  to S_Reset after five assertions of TMS
  Boundary scan in, pause, update, return to S_Run_Idle
  Boundary scan in, pause, resume scan in, pause, update, return to S_Run_Idle
  Instruction scan in, pause, update, return to S_Run_Idle
  Instruction scan in, pause, resume scan in, pause, update, return to S_Run_Idle
  */
// TEST PATTERNS 
// External I/O for normal operation

initial fork

	{cfg_sdr_width,cfg_colbits,wb_addr_i,wb_dat_i,wb_sel_i,wb_cti_i,
	cfg_req_depth,cfg_sdr_mode_reg,
	cfg_sdr_tras_d,cfg_sdr_trp_d,cfg_sdr_trcd_d,cfg_sdr_cas,
	cfg_sdr_trcar_d,cfg_sdr_twr_d,cfg_sdr_rfsh,cfg_sdr_rfmax,
	Port3, wb_stb_i, wb_we_i, wb_cyc_i, resetn,
	cfg_sdr_en, test_si1, test_si2, test_si3, test_si4, test_si5,
	test_si6, test_si7, test_si8, test_si9, test_si10, test_si11,
	test_si12, test_si13, test_si14, test_si15, test_si16, test_si17,
	test_si18, test_si19, test_si20, test_si21, test_si22, test_si23,
	test_si24, test_si25, test_si26, test_se} = 251'b0;

	cfg_colbits = 3'b11;


/*{	
	2'b0, //[1:0] 	cfg_sdr_width;
	2'b11, //[1:0] 	cfg_colbits;
	26'b0, //[25:0] 	wb_addr_i;
	32'b0, //[31:0] 	wb_dat_i;
	4'b0, //[3:0] 	wb_sel_i;
	32'b0, //[31:0] 	wb_dat_o;
	3'b0, //[2:0] 	wb_cti_i;******************************
	2'b0, //[1:0] 	sdr_dqm;
	2'b0, //[1:0] 	sdr_ba;
	13'b0, //[12:0] 	sdr_addr;
	16'b0, //[15:0] 	sdr_dq;
	2'b0, //[1:0] 	cfg_req_depth;
	13'b0, //[12:0] 	cfg_sdr_mode_reg;
	4'b0, //[3:0] 	cfg_sdr_tras_d;
	4'b0, //[3:0] 	cfg_sdr_trp_d;
	4'b0, //[3:0] 	cfg_sdr_trcd_d;
	3'b0, //[2:0] 	cfg_sdr_cas;
	4'b0, //[3:0] 	cfg_sdr_trcar_d;
	4'b0, //[3:0] 	cfg_sdr_twr_d;
	12'b0, //[11:0] 	cfg_sdr_rfsh;
	3'b0, //[2:0] 	cfg_sdr_rfmax;
	1'b0, //	Port3;
	1'b1, //	wb_clk_i;
	1'b0, //	wb_stb_i;
	1'b0, //	wb_we_i;
	1'b0, //	wb_cyc_i;
	1'b0, //	sdram_clk;
	1'b1, //	resetn;
	1'b1, //	cfg_sdr_en;
	1'b0, //	test_si1;
	1'b1, //	test_si2;
	1'b0, //	test_si3;
	1'b0, //	test_si4;
	1'b0, //	test_si5;
	1'b0, //	test_si6;
	1'b0, //	test_si7;
	1'b0, //	test_si8;
	1'b0, //	test_si9;
	1'b0, //	test_si10;
	1'b0, //	test_si11;
	1'b0, //	test_si12;
	1'b0, //	test_si13;
	1'b0, //	test_si14;
	1'b0, //	test_si15;
	1'b0, //	test_si16;
	1'b0, //	test_si17;
	1'b0, //	test_si18;
	1'b0, //	test_si19;
	1'b0, //	test_si20;
	1'b0, //	test_si21;
	1'b0, //	test_si22;
	1'b0, //	test_si23;
	1'b0, //	test_si24;
	1'b0, //	test_si25;
	1'b0, //	test_si26;
	1'b0, //	test_se;

	1'b0, //	wb_ack_o;
	1'b0, //	sdr_cs_n;
	1'b0, //	sdr_cke;
	1'b0, //	sdr_ras_n;
	1'b0, //	sdr_cas_n;
	1'b0, //	sdr_we_n;
	1'b0, //	sdr_init_done;
	1'b0, //	test_so1;
	1'b0, //	test_so2;
	1'b0, //	test_so3;
	1'b0, //	test_so4;
	1'b0, //	test_so5;
	1'b0, //	test_so6;
	1'b0, //	test_so7;
	1'b0, //	test_so8;
	1'b0, //	test_so9;
	1'b0, //	test_so10;
	1'b0, //	test_so11;
	1'b0, //	test_so12;
	1'b0, //	test_so13;
	1'b0, //	test_so14;
	1'b0, //	test_so15;
	1'b0, //	test_so16;
	1'b0, //	test_so17;
	1'b0, //	test_so20;
	1'b0, //	test_so21;
	1'b0, //	test_so22;
	1'b0, //	test_so23;
	1'b0, //	test_so24;
	1'b0, //	test_so25;
	1'b0}; //	test_so26;

	TEST_Register = {	
	2'b0, //[1:0] 	cfg_sdr_width;
	2'b11, //[1:0] 	cfg_colbits;
	26'b0, //[25:0] 	wb_addr_i;
	32'b0, //[31:0] 	wb_dat_i;
	4'b0, //[3:0] 	wb_sel_i;
	32'b0, //[31:0] 	wb_dat_o;
	3'b0, //[2:0] 	wb_cti_i;******************************
	2'b0, //[1:0] 	sdr_dqm;
	2'b0, //[1:0] 	sdr_ba;
	13'b0, //[12:0] 	sdr_addr;
	16'b0, //[15:0] 	sdr_dq;
	2'b0, //[1:0] 	cfg_req_depth;
	13'b0, //[12:0] 	cfg_sdr_mode_reg;
	4'b0, //[3:0] 	cfg_sdr_tras_d;
	4'b0, //[3:0] 	cfg_sdr_trp_d;
	4'b0, //[3:0] 	cfg_sdr_trcd_d;
	3'b0, //[2:0] 	cfg_sdr_cas;
	4'b0, //[3:0] 	cfg_sdr_trcar_d;
	4'b0, //[3:0] 	cfg_sdr_twr_d;
	12'b0, //[11:0] 	cfg_sdr_rfsh;
	3'b0, //[2:0] 	cfg_sdr_rfmax;
	1'b0, //	Port3;
	1'b1, //	wb_clk_i;
	1'b0, //	wb_stb_i;
	1'b0, //	wb_we_i;
	1'b0, //	wb_cyc_i;
	1'b0, //	sdram_clk;
	1'b1, //	resetn;
	1'b1, //	cfg_sdr_en;
	1'b0, //	test_si1;
	1'b1, //	test_si2;
	1'b0, //	test_si3;
	1'b0, //	test_si4;
	1'b0, //	test_si5;
	1'b0, //	test_si6;
	1'b0, //	test_si7;
	1'b0, //	test_si8;
	1'b0, //	test_si9;
	1'b0, //	test_si10;
	1'b0, //	test_si11;
	1'b0, //	test_si12;
	1'b0, //	test_si13;
	1'b0, //	test_si14;
	1'b0, //	test_si15;
	1'b0, //	test_si16;
	1'b0, //	test_si17;
	1'b0, //	test_si18;
	1'b0, //	test_si19;
	1'b0, //	test_si20;
	1'b0, //	test_si21;
	1'b0, //	test_si22;
	1'b0, //	test_si23;
	1'b0, //	test_si24;
	1'b0, //	test_si25;
	1'b0, //	test_si26;
	1'b0, //	test_se;

	1'b0, //	wb_ack_o;
	1'b0, //	sdr_cs_n;
	1'b0, //	sdr_cke;
	1'b0, //	sdr_ras_n;
	1'b0, //	sdr_cas_n;
	1'b0, //	sdr_we_n;
	1'b0, //	sdr_init_done;
	1'b0, //	test_so1;
	1'b0, //	test_so2;
	1'b0, //	test_so3;
	1'b0, //	test_so4;
	1'b0, //	test_so5;
	1'b0, //	test_so6;
	1'b0, //	test_so7;
	1'b0, //	test_so8;
	1'b0, //	test_so9;
	1'b0, //	test_so10;
	1'b0, //	test_so11;
	1'b0, //	test_so12;
	1'b0, //	test_so13;
	1'b0, //	test_so14;
	1'b0, //	test_so15;
	1'b0, //	test_so16;
	1'b0, //	test_so17;
	1'b0, //	test_so20;
	1'b0, //	test_so21;
	1'b0, //	test_so22;
	1'b0, //	test_so23;
	1'b0, //	test_so24;
	1'b0, //	test_so25;
	1'b0}; //	test_so26;
*/

join

/*  Option to force error to test fault detection
  initial begin :Force_Error
  force M0.BSC_Interface [13: 10] = 4'b0;
  end
*/

initial begin 		// Test sequence: Scan, pause, return to S_Run_Idle

	$display("primer test");
	$fsdbDumpvars(0);
	strobe  = 0;
	Declare_Array_of_TAP_Instructions;
	Declare_Array_of_ASIC_Test_Patterns;
	Wait_to_enter_S_Reset;

// Test for power-up and default to BYPASS instruction (all 1s in IR), with default path 
// through the Bypass Register, with BSC register remaining in wakeup state (all x).
// ASIC test pattern is scanned serially, entering at TDI, passing through the bypass register,
// and exiting at TDO.  The BSC register and the IR are not changed.

     pattern_ptr = 0; 
     Load_ASIC_Test_Pattern;	
     Go_to_S_Run_Idle;
     Go_to_S_Select_DR;
     Go_to_S_Capture_DR; 
     Go_to_S_Shift_DR;
     enable_bypass_pattern = 1;
     Scan_N_Cycles; 
     enable_bypass_pattern = 0;
     Go_to_S_Exit1_DR;
     Go_to_S_Pause_DR;
     Pause;
     Go_to_S_Exit2_DR;
     /*
    Go_to_S_Shift_DR;
     Load_ASIC_Test_Pattern;		// option to re-load same pattern and scan again
     enable_bypass_pattern = 1;
     Scan_N_Cycles; 
     enable_bypass_pattern = 0;
     Go_to_S_Exit1_DR;
     Go_to_S_Pause_DR;
     Pause;
     Go_to_S_Exit2_DR; 
    */
     Go_to_S_Update_DR;	
     Go_to_S_Run_Idle;

  end

// Test to load instruction register with INTEST instruction

   initial #time_1 begin
	$display("segundo test");
  $fsdbDumpvars(0);
    pattern_ptr = 3; 
    strobe = 0;
    Load_TAP_Instruction;	
    Go_to_S_Run_Idle;
    Go_to_S_Select_DR;
    Go_to_S_Select_IR;
    Go_to_S_Capture_IR;			// Capture dummy data (3'b011)
     repeat (IR_Reg_size) Go_to_S_Shift_IR;
    Go_to_S_Exit1_IR;
    Go_to_S_Pause_IR;
    Pause;
    Go_to_S_Exit2_IR;
    Go_to_S_Update_IR;
    Go_to_S_Run_Idle;
  end
  

// Load ASIC test pattern 
  initial #time_2 begin
	$display("tercer test");
  $fsdbDumpvars(0);
    pattern_ptr = 0; 
    Load_ASIC_Test_Pattern;	
    Go_to_S_Run_Idle;
    Go_to_S_Select_DR;
    Go_to_S_Capture_DR;
    repeat (BSC_Reg_size) Go_to_S_Shift_DR;
    Go_to_S_Exit1_DR;
    Go_to_S_Pause_DR;
    Pause;
    Go_to_S_Exit2_DR;
     Go_to_S_Update_DR;
     Go_to_S_Run_Idle;

// Capture data and scan out while scanning in another pattern
    repeat(48) begin
    pattern_ptr = 2; 
    Load_ASIC_Test_Pattern;	
    Go_to_S_Select_DR;
    Go_to_S_Capture_DR;
    strobe = 1;
    repeat (BSC_Reg_size) Go_to_S_Shift_DR;
 
    Go_to_S_Exit1_DR;

    Go_to_S_Pause_DR;
    Go_to_S_Exit2_DR;
    Go_to_S_Update_DR;
    strobe = 0;
    Go_to_S_Run_Idle;
    end
	$display("checkpoint");
  end

/************************************** TAP CONTROLLER TASKS *************************************/
  task  Wait_to_enter_S_Reset;
    begin
     @ (negedge TCK) TMS = 1; 
  end
  endtask

  task  Reset_TAP;
    begin
      TMS = 1;
      repeat (5) @ (negedge TCK); 
    end
  endtask

task Pause;			begin #Pause_Time;		end endtask

task  Go_to_S_Reset;		begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Run_Idle;		begin @ (negedge TCK) TMS = 0;	end endtask

task  Go_to_S_Select_DR;	begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Capture_DR; 	begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Shift_DR; 		begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Exit1_DR;  	begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Pause_DR; 	begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Exit2_DR;  	begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Update_DR;	begin @ (negedge TCK) TMS = 1; end endtask

task  Go_to_S_Select_IR; 		begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Capture_IR;  	begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Shift_IR; 		begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Exit1_IR;  		begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Pause_IR;		begin @ (negedge TCK) TMS = 0;	end endtask
task  Go_to_S_Exit2_IR;  		begin @ (negedge TCK) TMS = 1;	end endtask
task  Go_to_S_Update_IR; 	begin @ (negedge TCK) TMS = 1; end endtask
task Scan_Ten_Cycles;		begin repeat (10)   begin @ (negedge TCK) TMS = 0;
				@ (posedge TCK) TMS = 1; end end endtask
task Scan_N_Cycles;		begin repeat (253)   begin @ (negedge TCK) TMS = 0;
				@ (posedge TCK) TMS = 1; end end endtask

/************************************** ASIC TEST PATTERNS  *************************************/
task Load_ASIC_Test_Pattern;	
  begin
    Pattern_Register = Array_of_ASIC_Test_Patterns [pattern_ptr];
    @ (negedge TCK ) load_TDI_Generator = 1;
    @ (negedge TCK) load_TDI_Generator = 0;
  end
endtask

task Declare_Array_of_ASIC_Test_Patterns;
  begin

  Array_of_ASIC_Test_Patterns [0] = 253'b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111; 
  Array_of_ASIC_Test_Patterns [1] = 253'b0000_0_0000_0000_0; 
  Array_of_ASIC_Test_Patterns [2] = 253'b1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111; 
  Array_of_ASIC_Test_Patterns [3] = 253'b0100_1_0101_0101_0;
end endtask

/************************************** INSTRUCTION PATTERNS *************************************/
  parameter	BYPASS		= 3'b111;	// pattern_ptr = 0
  parameter	EXTEST			= 3'b001;	// pattern_ptr = 1
  parameter	SAMPLE_PRELOAD	= 3'b010;	// pattern_ptr = 2
  parameter	INTEST			= 3'b011;	// pattern_ptr = 3
  parameter	RUNBIST		= 4'b100;	// pattern_ptr = 4
  parameter	IDCODE			= 5'b101;	// pattern_ptr = 5

task Load_TAP_Instruction;	
  begin
    Pattern_Register = Array_of_TAP_Instructions [pattern_ptr];
    @ (negedge TCK ) load_TDI_Generator = 1;
    @ (negedge TCK) load_TDI_Generator = 0;
  end
endtask

task Declare_Array_of_TAP_Instructions;
  begin
    Array_of_TAP_Instructions [0] = BYPASS;
    Array_of_TAP_Instructions [1] = EXTEST;
    Array_of_TAP_Instructions [2] = SAMPLE_PRELOAD;
    Array_of_TAP_Instructions [3] = INTEST;
    Array_of_TAP_Instructions [4] = RUNBIST;
    Array_of_TAP_Instructions [5] = IDCODE;
  end
  endtask  
endmodule
