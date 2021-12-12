simSetSimulator "-vcssv" -exec "./simv" -args " " -uvmDebug on
debImport "-i" "-simflow" "-dbdir" "./simv.daidir"
srcTBInvokeSim
wvCreateWindow
srcTBRunSim
srcTBSimBreak
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/AN2I"
wvGetSignalSetScope -win $_nWave3 "/testbench_tap"
wvSetPosition -win $_nWave3 {("G1" 96)}
wvSetPosition -win $_nWave3 {("G1" 96)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/testbench_tap/Pattern_Register\[252:0\]} \
{/testbench_tap/Port3} \
{/testbench_tap/TCK} \
{/testbench_tap/TDI} \
{/testbench_tap/TDO} \
{/testbench_tap/TMS} \
{/testbench_tap/cfg_colbits\[1:0\]} \
{/testbench_tap/cfg_req_depth\[1:0\]} \
{/testbench_tap/cfg_sdr_cas\[2:0\]} \
{/testbench_tap/cfg_sdr_en} \
{/testbench_tap/cfg_sdr_mode_reg\[12:0\]} \
{/testbench_tap/cfg_sdr_rfmax\[2:0\]} \
{/testbench_tap/cfg_sdr_rfsh\[11:0\]} \
{/testbench_tap/cfg_sdr_tras_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trcar_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trcd_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trp_d\[3:0\]} \
{/testbench_tap/cfg_sdr_twr_d\[3:0\]} \
{/testbench_tap/cfg_sdr_width\[1:0\]} \
{/testbench_tap/enable_bypass_pattern} \
{/testbench_tap/load_TDI_Generator} \
{/testbench_tap/pattern_ptr\[31:0\]} \
{/testbench_tap/resetn} \
{/testbench_tap/sdr_addr\[12:0\]} \
{/testbench_tap/sdr_ba\[1:0\]} \
{/testbench_tap/sdr_cas_n} \
{/testbench_tap/sdr_cke} \
{/testbench_tap/sdr_cs_n} \
{/testbench_tap/sdr_dq\[15:0\]} \
{/testbench_tap/sdr_dqm\[1:0\]} \
{/testbench_tap/sdr_init_done} \
{/testbench_tap/sdr_ras_n} \
{/testbench_tap/sdr_we_n} \
{/testbench_tap/sdram_clk} \
{/testbench_tap/strobe} \
{/testbench_tap/test_se} \
{/testbench_tap/test_si1} \
{/testbench_tap/test_si2} \
{/testbench_tap/test_si3} \
{/testbench_tap/test_si4} \
{/testbench_tap/test_si5} \
{/testbench_tap/test_si6} \
{/testbench_tap/test_si7} \
{/testbench_tap/test_si8} \
{/testbench_tap/test_si9} \
{/testbench_tap/test_si10} \
{/testbench_tap/test_si11} \
{/testbench_tap/test_si12} \
{/testbench_tap/test_si13} \
{/testbench_tap/test_si14} \
{/testbench_tap/test_si15} \
{/testbench_tap/test_si16} \
{/testbench_tap/test_si17} \
{/testbench_tap/test_si18} \
{/testbench_tap/test_si19} \
{/testbench_tap/test_si20} \
{/testbench_tap/test_si21} \
{/testbench_tap/test_si22} \
{/testbench_tap/test_si23} \
{/testbench_tap/test_si24} \
{/testbench_tap/test_si25} \
{/testbench_tap/test_si26} \
{/testbench_tap/test_so1} \
{/testbench_tap/test_so2} \
{/testbench_tap/test_so3} \
{/testbench_tap/test_so4} \
{/testbench_tap/test_so5} \
{/testbench_tap/test_so6} \
{/testbench_tap/test_so7} \
{/testbench_tap/test_so8} \
{/testbench_tap/test_so9} \
{/testbench_tap/test_so10} \
{/testbench_tap/test_so11} \
{/testbench_tap/test_so12} \
{/testbench_tap/test_so13} \
{/testbench_tap/test_so14} \
{/testbench_tap/test_so15} \
{/testbench_tap/test_so16} \
{/testbench_tap/test_so17} \
{/testbench_tap/test_so20} \
{/testbench_tap/test_so21} \
{/testbench_tap/test_so22} \
{/testbench_tap/test_so23} \
{/testbench_tap/test_so24} \
{/testbench_tap/test_so25} \
{/testbench_tap/test_so26} \
{/testbench_tap/wb_ack_o} \
{/testbench_tap/wb_addr_i\[25:0\]} \
{/testbench_tap/wb_clk_i} \
{/testbench_tap/wb_cti_i\[2:0\]} \
{/testbench_tap/wb_cyc_i} \
{/testbench_tap/wb_dat_i\[31:0\]} \
{/testbench_tap/wb_dat_o\[31:0\]} \
{/testbench_tap/wb_sel_i\[3:0\]} \
{/testbench_tap/wb_stb_i} \
{/testbench_tap/wb_we_i} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 \
           62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 \
           84 85 86 87 88 89 90 91 92 93 94 95 96 )} 
wvSetPosition -win $_nWave3 {("G1" 96)}
wvSetPosition -win $_nWave3 {("G1" 96)}
wvSetPosition -win $_nWave3 {("G1" 96)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/testbench_tap/Pattern_Register\[252:0\]} \
{/testbench_tap/Port3} \
{/testbench_tap/TCK} \
{/testbench_tap/TDI} \
{/testbench_tap/TDO} \
{/testbench_tap/TMS} \
{/testbench_tap/cfg_colbits\[1:0\]} \
{/testbench_tap/cfg_req_depth\[1:0\]} \
{/testbench_tap/cfg_sdr_cas\[2:0\]} \
{/testbench_tap/cfg_sdr_en} \
{/testbench_tap/cfg_sdr_mode_reg\[12:0\]} \
{/testbench_tap/cfg_sdr_rfmax\[2:0\]} \
{/testbench_tap/cfg_sdr_rfsh\[11:0\]} \
{/testbench_tap/cfg_sdr_tras_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trcar_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trcd_d\[3:0\]} \
{/testbench_tap/cfg_sdr_trp_d\[3:0\]} \
{/testbench_tap/cfg_sdr_twr_d\[3:0\]} \
{/testbench_tap/cfg_sdr_width\[1:0\]} \
{/testbench_tap/enable_bypass_pattern} \
{/testbench_tap/load_TDI_Generator} \
{/testbench_tap/pattern_ptr\[31:0\]} \
{/testbench_tap/resetn} \
{/testbench_tap/sdr_addr\[12:0\]} \
{/testbench_tap/sdr_ba\[1:0\]} \
{/testbench_tap/sdr_cas_n} \
{/testbench_tap/sdr_cke} \
{/testbench_tap/sdr_cs_n} \
{/testbench_tap/sdr_dq\[15:0\]} \
{/testbench_tap/sdr_dqm\[1:0\]} \
{/testbench_tap/sdr_init_done} \
{/testbench_tap/sdr_ras_n} \
{/testbench_tap/sdr_we_n} \
{/testbench_tap/sdram_clk} \
{/testbench_tap/strobe} \
{/testbench_tap/test_se} \
{/testbench_tap/test_si1} \
{/testbench_tap/test_si2} \
{/testbench_tap/test_si3} \
{/testbench_tap/test_si4} \
{/testbench_tap/test_si5} \
{/testbench_tap/test_si6} \
{/testbench_tap/test_si7} \
{/testbench_tap/test_si8} \
{/testbench_tap/test_si9} \
{/testbench_tap/test_si10} \
{/testbench_tap/test_si11} \
{/testbench_tap/test_si12} \
{/testbench_tap/test_si13} \
{/testbench_tap/test_si14} \
{/testbench_tap/test_si15} \
{/testbench_tap/test_si16} \
{/testbench_tap/test_si17} \
{/testbench_tap/test_si18} \
{/testbench_tap/test_si19} \
{/testbench_tap/test_si20} \
{/testbench_tap/test_si21} \
{/testbench_tap/test_si22} \
{/testbench_tap/test_si23} \
{/testbench_tap/test_si24} \
{/testbench_tap/test_si25} \
{/testbench_tap/test_si26} \
{/testbench_tap/test_so1} \
{/testbench_tap/test_so2} \
{/testbench_tap/test_so3} \
{/testbench_tap/test_so4} \
{/testbench_tap/test_so5} \
{/testbench_tap/test_so6} \
{/testbench_tap/test_so7} \
{/testbench_tap/test_so8} \
{/testbench_tap/test_so9} \
{/testbench_tap/test_so10} \
{/testbench_tap/test_so11} \
{/testbench_tap/test_so12} \
{/testbench_tap/test_so13} \
{/testbench_tap/test_so14} \
{/testbench_tap/test_so15} \
{/testbench_tap/test_so16} \
{/testbench_tap/test_so17} \
{/testbench_tap/test_so20} \
{/testbench_tap/test_so21} \
{/testbench_tap/test_so22} \
{/testbench_tap/test_so23} \
{/testbench_tap/test_so24} \
{/testbench_tap/test_so25} \
{/testbench_tap/test_so26} \
{/testbench_tap/wb_ack_o} \
{/testbench_tap/wb_addr_i\[25:0\]} \
{/testbench_tap/wb_clk_i} \
{/testbench_tap/wb_cti_i\[2:0\]} \
{/testbench_tap/wb_cyc_i} \
{/testbench_tap/wb_dat_i\[31:0\]} \
{/testbench_tap/wb_dat_o\[31:0\]} \
{/testbench_tap/wb_sel_i\[3:0\]} \
{/testbench_tap/wb_stb_i} \
{/testbench_tap/wb_we_i} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 \
           62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 \
           84 85 86 87 88 89 90 91 92 93 94 95 96 )} 
wvSetPosition -win $_nWave3 {("G1" 96)}
wvGetSignalClose -win $_nWave3
wvSetCursor -win $_nWave3 3292044216.023166 -snap {("G1" 84)}
wvSetCursor -win $_nWave3 79.536680 -snap {("G1" 80)}
wvSelectSignal -win $_nWave3 {( "G1" 77 )} 
wvZoomIn -win $_nWave3
wvZoomAll -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 89 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvScrollDown -win $_nWave3 73
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 \
           62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 \
           84 85 86 87 88 89 90 91 92 93 94 95 96 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
debExit
