module wrapper (cfg_sdr_width, cfg_colbits, Port3, wb_clk_i, wb_stb_i, 
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
        test_si25, test_so25, test_si26, test_so26, test_se,
	TDO, TDI, TMS, TCK);

  parameter			BSR_size = 248;
  parameter			IR_size = 3;
  parameter			size = 4;

  input [1:0] cfg_sdr_width;  				//  ASIC interface I/O
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

ASIC M0 (
    .sum (BSC_Interface [13: 10]),
    .c_out (BSC_Interface [9]), 
    .a (BSC_Interface [8: 5]),
    .b (BSC_Interface [4: 1]),
    .c_in (BSC_Interface [0]));

    sdrc_top M0(
	/*Define Inputs*/
	.wb_clk_i          (BSC_Interface [0]), 
	.wb_stb_i          (BSC_Interface [1]),
	.wb_we_i           (BSC_Interface [2]),
	.wb_cyc_i          (BSC_Interface [3]),
	.sdram_clk         (BSC_Interface [4]), 
	.resetn            (BSC_Interface [2]),
	.cfg_sdr_en        (BSC_Interface [6]),
	.test_si1          (BSC_Interface [7]),
	.test_si2          (BSC_Interface [8]),
	.test_si3          (BSC_Interface [9]),
	.test_si4          (BSC_Interface [10]),
	.test_si5          (BSC_Interface [11]),
	.test_si6          (BSC_Interface [12]),
	.test_si7          (BSC_Interface [13]),
	.test_si8          (BSC_Interface [14]),
	.test_si9          (BSC_Interface [15]),
	.test_si10         (BSC_Interface [16]),
	.test_si11         (BSC_Interface [17]),
	.test_si12         (BSC_Interface [18]),
	.test_si13         (BSC_Interface [19]),
	.test_si14         (BSC_Interface [20]),
	.test_si15         (BSC_Interface [21]),
	.test_si16         (BSC_Interface [22]),
	.test_si17         (BSC_Interface [23]),
	.test_si18         (BSC_Interface [24]),
	.test_si19         (BSC_Interface [25]),
	.test_si20         (BSC_Interface [26]),
	.test_si21         (BSC_Interface [27]),
	.test_si22         (BSC_Interface [28]),
	.test_si23         (BSC_Interface [29]),
	.test_si24         (BSC_Interface [30]),
	.test_si25         (BSC_Interface [31]),
	.test_si26         (BSC_Interface [32]),
	.test_se           (BSC_Interface [33]),
	.cfg_sdr_width     (BSC_Interface [35:34]), 
	.cfg_colbits       (BSC_Interface [37:36]),
	.wb_addr_i         (BSC_Interface [63:38]),
	.cfg_sdr_tras_d    (BSC_Interface [67:64]),
	.cfg_sdr_trp_d     (BSC_Interface [71:68]), 
	.cfg_sdr_trcd_d    (BSC_Interface [75:72]), 
	.cfg_sdr_cas       (BSC_Interface [78:76]),
	.wb_dat_i          (BSC_Interface [110:79]), 
	.wb_cti_i          (BSC_Interface [114:111]), 
	.cfg_sdr_mode_reg  (BSC_Interface [127:115]),
	.cfg_sdr_trcar_d   (BSC_Interface [131:128]),
	.cfg_sdr_twr_d     (BSC_Interface [134:132]), 
	.cfg_sdr_rfsh      (BSC_Interface [146:135]), 
	.cfg_sdr_rfmax     (BSC_Interface [150:147]),  
	.wb_sel_i          (BSC_Interface [154:151]), 
	.sdr_dq            (BSC_Interface [167:152]), //Tri-State
	/* Define Ouputs*/
	.wb_ack_o          (BSC_Interface [168]),
	.sdr_cs_n          (BSC_Interface [169]), 
	.sdr_cke           (BSC_Interface [170]), 
	.sdr_ras_n         (BSC_Interface [171]), 
	.sdr_cas_n         (BSC_Interface [172]), 
	.sdr_we_n          (BSC_Interface [173]),
	.sdr_init_done     (BSC_Interface [174]),  
	.test_so1          (BSC_Interface [175]),
	.test_so2          (BSC_Interface [176]),
	.test_so3          (BSC_Interface [177]),
	.test_so4          (BSC_Interface [178]),
	.test_so5          (BSC_Interface [179]),
	.test_so6          (BSC_Interface [180]),
	.test_so7          (BSC_Interface [181]),
	.test_so8          (BSC_Interface [182]),
	.test_so9          (BSC_Interface [183]),
	.test_so10         (BSC_Interface [184]),
	.test_so11         (BSC_Interface [185]),
	.test_so12         (BSC_Interface [186]),
	.test_so13         (BSC_Interface [187]),
	.test_so14         (BSC_Interface [188]),
	.test_so15         (BSC_Interface [189]),
	.test_so16         (BSC_Interface [190]),
	.test_so17         (BSC_Interface [191]),
	.test_so20         (BSC_Interface [192]),
	.test_so21         (BSC_Interface [193]),
	.test_so22         (BSC_Interface [194]),
	.test_so23         (BSC_Interface [195]),
	.test_so24         (BSC_Interface [196]),
	.test_so25         (BSC_Interface [197]),
	.test_so26         (BSC_Interface [198]),
	.sdr_dqm           (BSC_Interface [200:199]), 
	.sdr_ba            (BSC_Interface [202:201]), 
	.sdr_addr          (BSC_Interface [215:203]), 
	.wb_dat_o          (BSC_Interface [247:216]) 
);
 
Bypass_Register M1(
    .scan_out (BR_scan_out), 
    .scan_in (TDI), 
    .shiftDR (shift_BR), 
    .clockDR (clock_BR));

Boundary_Scan_Register M2(
    .data_out ({
        wb_dat_o,
        sdr_addr,
        sdr_ba,
        sdr_dqm,
        test_so26,
        test_so25,
        test_so24,
        test_so23,
        test_so22,
        test_so21,
        test_so20,
        test_so17,
        test_so16,
        test_so15,
        test_so14,
        test_so13,
        test_so12,
        test_so11,
        test_so10,
        test_so9,
        test_so8,
        test_so7,
        test_so6,
        test_so5,
        test_so4,
        test_so3,
        test_so2,
        test_so1,
        sdr_init_done,
        sdr_we_n,
        sdr_cas_n,
        sdr_ras_n,
        sdr_cke,
        sdr_cs_n,
        wb_ack_o,
        BSC_Interface [167:152],
        BSC_Interface [154:151], 
        BSC_Interface [150:147],  
        BSC_Interface [146:135], 
        BSC_Interface [134:132], 
        BSC_Interface [131:128],
        BSC_Interface [127:115],
        BSC_Interface [114:111], 
        BSC_Interface [110:79], 
        BSC_Interface [78:76],
        BSC_Interface [75:72], 
        BSC_Interface [71:68], 
        BSC_Interface [67:64],
        BSC_Interface [63:38],
        BSC_Interface [37:36],
        BSC_Interface [35:34], 
        BSC_Interface [33],
        BSC_Interface [32],
        BSC_Interface [31],
        BSC_Interface [30],
        BSC_Interface [29],
        BSC_Interface [28],
        BSC_Interface [27],
        BSC_Interface [26],
        BSC_Interface [25],
        BSC_Interface [24],
        BSC_Interface [23],
        BSC_Interface [22],
        BSC_Interface [21],
        BSC_Interface [20],
        BSC_Interface [19],
        BSC_Interface [18],
        BSC_Interface [17],
        BSC_Interface [16],
        BSC_Interface [15],
        BSC_Interface [14],
        BSC_Interface [13],
        BSC_Interface [12],
        BSC_Interface [11],
        BSC_Interface [10],
        BSC_Interface [9],
        BSC_Interface [8],
        BSC_Interface [7],
        BSC_Interface [6],
        BSC_Interface [2],
        BSC_Interface [4], 
        BSC_Interface [3],
        BSC_Interface [2],
        BSC_Interface [1],
        BSC_Interface [0] 
    }),
    .data_in 
    ({
        BSC_Interface [247:216],
        BSC_Interface [215:203], 
        BSC_Interface [202:201], 
        BSC_Interface [200:199], 
        BSC_Interface [198],
        BSC_Interface [197],
        BSC_Interface [196],
        BSC_Interface [195],
        BSC_Interface [194],
        BSC_Interface [193],
        BSC_Interface [192],
        BSC_Interface [191],
        BSC_Interface [190],
        BSC_Interface [189],
        BSC_Interface [188],
        BSC_Interface [187],
        BSC_Interface [186],
        BSC_Interface [185],
        BSC_Interface [184],
        BSC_Interface [183],
        BSC_Interface [182],
        BSC_Interface [181],
        BSC_Interface [180],
        BSC_Interface [179],
        BSC_Interface [178],
        BSC_Interface [177],
        BSC_Interface [176],
        BSC_Interface [175],
        BSC_Interface [174],  
        BSC_Interface [173],
        BSC_Interface [172], 
        BSC_Interface [171], 
        BSC_Interface [170], 
        BSC_Interface [169], 
        BSC_Interface [168],
        sdr_dq,            
        wb_sel_i,          
        cfg_sdr_rfmax,     
        cfg_sdr_rfsh,      
        cfg_sdr_twr_d,     
        cfg_sdr_trcar_d,   
        cfg_sdr_mode_reg,  
        wb_cti_i,          
        wb_dat_i,          
        cfg_sdr_cas,       
        cfg_sdr_trcd_d,    
        cfg_sdr_trp_d,     
        cfg_sdr_tras_d,    
        wb_addr_i,         
        cfg_colbits,       
        cfg_sdr_width,     
        test_se,           
        test_si26,         
        test_si25,         
        test_si24,         
        test_si23,         
        test_si22,         
        test_si21,         
        test_si20,         
        test_si19,         
        test_si18,         
        test_si17,         
        test_si16,         
        test_si15,         
        test_si14,        
        test_si13,         
        test_si12,         
        test_si11,         
        test_si10,         
        test_si9,          
        test_si8,          
        test_si7,          
        test_si6,          
        test_si5,          
        test_si4,          
        test_si3,          
        test_si2,          
        test_si1,          
        cfg_sdr_en,        
        resetn,            
        sdram_clk,         
        wb_cyc_i,          
        wb_we_i,          
        wb_stb_i          
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
