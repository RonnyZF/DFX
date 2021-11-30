// Testbench
`include "class.v"
`include "sdrc_top_struct.v"
module test;

parameter P_SYS  = 10;     
parameter P_SDR  = 20;     

// General
reg            RESETN;
reg            sdram_clk;
reg            sys_clk;

initial sys_clk = 0;
initial sdram_clk = 0;

always #(P_SYS/2) sys_clk = !sys_clk;
always #(P_SDR/2) sdram_clk = !sdram_clk;

/*Wisbone pins*/
wire             wb_stb_i           ;
wire            wb_ack_o           ;
wire  [25:0]     wb_addr_i          ;
wire             wb_we_i            ; // 1 - Write, 0 - Read
wire  [8-1:0]   wb_dat_i           ;
wire  [8/8-1:0] wb_sel_i           ; // Byte enable
wire  [8-1:0]  wb_dat_o           ;
wire             wb_cyc_i           ;
wire   [2:0]     wb_cti_i           ;

/*Core Pins*/

wire [1:0]            sdr_ba ;
wire [12:0]           sdr_addr;
wire                  sdr_init_done;
wire [15:0]           Dq;
wire [0:0]           sdr_dqm;
 
/*SCAM*/
	reg test_si1; 
        wire test_so1;
	wire test_si2;
	wire test_so2; 
	wire test_si3; 
	wire test_so3; 
	wire test_si4; 
	wire test_so4; 
        wire test_si5; 
	wire test_so5; 
	wire test_si6; 
	wire test_so6; 
	wire test_si7; 
	wire test_so7; 
	wire test_si8; 
        wire test_so8; 
	wire test_si9; 
	wire test_so9; 
	wire test_si10; 
	wire test_so10; 
	wire test_si11; 
        wire test_so11; 
	wire test_si12; 
	wire test_so12; 
	wire test_si13; 
	wire test_so13; 
	wire test_si14; 
        wire test_so14; 
	wire test_si15; 
	wire test_so15; 
	wire test_si16; 
	wire test_so16; 
	wire test_si17; 
        wire test_so17; 
	wire test_si18; 
	wire test_so18; 
	wire test_si19; 
	wire test_so19; 
	wire test_si20; 
        wire test_so20; 
	wire test_si21; 
	wire test_so21; 
	wire test_si22; 
	wire test_so22; 
	wire test_si23; 
        wire test_so23; 
	wire test_si24; 
	wire test_so24; 
	wire test_si25; 
	wire test_so25; 
	wire test_si26; 
        wire test_so26; 
	wire test_si27; 
	wire test_so27; 
	wire test_si28; 
	wire test_so28; 
	wire test_si29; 
        wire test_so29; 
	wire test_si30; 
	wire test_so30; 
	wire test_si31; 
	wire test_so31; 
	wire test_si32; 
        wire test_so32; 
	wire test_si33; 
	wire test_so33; 
	wire test_si34; 
	wire test_so34; 
	wire test_si35; 
        wire test_so35; 
	wire test_si36; 
	wire test_si37; 
	wire test_si38; 
	wire test_so38; 
	wire test_si39; 
        wire test_si40; 
	wire test_so40; 
	wire test_si41; 
	wire test_so41; 
	wire test_si42; 
	wire test_so42; 
        wire test_si43; 
	wire test_so43; 
	wire test_si44; 
	wire test_so44; 
	wire test_si45; 
	wire test_so45; 
        wire test_si46; 
	wire test_so46; 
	wire test_si47; 
	wire test_so47; 
	wire test_si48; 
	wire test_so48; 
        wire test_si49; 
	wire test_so49; 
	wire test_si50; 
	wire test_so50; 
	reg test_se ;
 

  sdrc_top top(

	.cfg_sdr_width(2'b00), 
	.cfg_colbits(2'b00),
	.wb_rst_i(RESETN), 
	.wb_clk_i(sdram_clk), 
	.wb_stb_i(wb_stb_i), 
        .wb_ack_o(wb_ack_o),
	.wb_addr_i(wb_addr_i), 
        .wb_we_i(wb_we_i), 
        .wb_dat_i(wb_dat_i), 
        .wb_sel_i(wb_sel_i), 
        .wb_dat_o(wb_dat_o), 
        .wb_cyc_i(wb_cyc_i), 
        .wb_cti_i(wb_cti_i), 

	.sdram_clk(sdram_clk), 
	.sdram_resetn(RESETN), 
	.sdr_cs_n(sdr_cs_n), 
	.sdr_cke(sdr_cke), 
	.sdr_ras_n(sdr_ras_n), 
        .sdr_cas_n(sdr_cas_n), 
	.sdr_we_n(sdr_we_n), 
	.sdr_dqm(sdr_dqm), 
	.sdr_ba(sdr_ba), 
	.sdr_addr(sdr_addr), 
	.sdr_dq(Dq), 
	.sdr_init_done(sdr_init_done), 
        .cfg_req_depth(2'h3), 
	.cfg_sdr_en(1'b1), 
	.cfg_sdr_mode_reg(13'h033), 
	.cfg_sdr_tras_d(4'h4), 
        .cfg_sdr_trp_d(4'h2), 
	.cfg_sdr_trcd_d(4'h2), 
	.cfg_sdr_cas(3'h3), 
	.cfg_sdr_trcar_d(4'h7), 
        .cfg_sdr_twr_d(4'h1), 
	.cfg_sdr_rfsh(12'h100), 
	.cfg_sdr_rfmax(3'h6), 
	.TEST_MODE(), 
	
	.test_si1(test_si1), 
        .test_so1(test_so1),
	.test_si2(test_si2),
	.test_si2(test_si2), 
	.test_si3(test_si3), 
	.test_so3(test_so3), 
	.test_si4(test_si4), 
	.test_so4(test_so4), 
        .test_si5(test_si5), 
	.test_so5(test_so5), 
	.test_si6(test_si6), 
	.test_so6(test_so6), 
	.test_si7(test_si7), 
	.test_so7(test_so7), 
	.test_si8(test_si8), 
        .test_so8(test_so8), 
	.test_si9(test_si9), 
	.test_so9(test_so9), 
	.test_si10(test_si10), 
	.test_so10(test_so10), 
	.test_si11(test_si11), 
        .test_so11(test_so11), 
	.test_si12(test_si12), 
	.test_so12(test_so12), 
	.test_si13(test_si13), 
	.test_so13(test_so13), 
	.test_si14(test_si14), 
        .test_so14(test_so14), 
	.test_si15(test_si15), 
	.test_so15(test_so15), 
	.test_si16(test_si16), 
	.test_so16(test_so16), 
	.test_si17(test_si17), 
        .test_so17(test_so17), 
	.test_si18(test_si18), 
	.test_so18(test_so18), 
	.test_si19(test_si19), 
	.test_so19(test_so19), 
	.test_si20(test_si20), 
        .test_so20(test_so20), 
	.test_si21(test_si21), 
	.test_so21(test_so21), 
	.test_si22(test_si22), 
	.test_so22(test_so22), 
	.test_si23(test_si23), 
        .test_so23(test_so23), 
	.test_si24(test_si24), 
	.test_so24(test_so24), 
	.test_si25(test_si25), 
	.test_so25(test_so25), 
	.test_si26(test_si26), 
        .test_so26(test_so26), 
	.test_si27(test_si27), 
	.test_so27(test_so27), 
	.test_si28(test_si28), 
	.test_so28(test_so28), 
	.test_si29(test_si29), 
        .test_so29(test_so29), 
	.test_si30(test_si30), 
	.test_so30(test_so30), 
	.test_si31(test_si31), 
	.test_so31(test_so31), 
	.test_si32(test_si32), 
        .test_so32(test_so32), 
	.test_si33(test_si33), 
	.test_so33(test_so33), 
	.test_si34(test_si34), 
	.test_so34(test_so34), 
	.test_si35(test_si35), 
        .test_so35(test_so35), 
	.test_si36(test_si36), 
	.test_si37(test_si37), 
	.test_si38(test_si38), 
	.test_so38(test_so38), 
	.test_si39(test_si39), 
        .test_si40(test_si40), 
	.test_so40(test_so40), 
	.test_si41(test_si41), 
	.test_so41(test_so41), 
	.test_si42(test_si42), 
	.test_so42(test_so42), 
        .test_si43(test_si43), 
	.test_so43(test_so43), 
	.test_si44(test_si44), 
	.test_so44(test_so44), 
	.test_si45(test_si45), 
	.test_so45(test_so45), 
        .test_si46(test_si46), 
	.test_so46(test_so46), 
	.test_si47(test_si47), 
	.test_so47(test_so47), 
	.test_si48(test_si48), 
	.test_so48(test_so48), 
        .test_si49(test_si49), 
	.test_so49(test_so49), 
	.test_si50(test_si50), 
	.test_so50(test_so50), 
	.test_se(test_se) );

          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(0,top);
    
    RESETN    = 1'h1;
    //#10;
    test_se  = 1;
    test_si1 = 1;
    #1; 
    test_si1 = 0;
    //#100;
  end
  


endmodule
