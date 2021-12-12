module TDI_Generator (to_TDI, scan_pattern,  load, enable_bypass_pattern, TCK);
  parameter 			BSC_Reg_size = 253;
  output				to_TDI;
  input 	[BSC_Reg_size -1: 0]	scan_pattern;
  input				load, enable_bypass_pattern, TCK;
  reg	[BSC_Reg_size -1: 0]	TDI_Reg;
  wire				enableTDO = testbench_tap.M0.enableTDO;
  assign to_TDI = TDI_Reg [0];

  always @ (posedge TCK) if (load) TDI_Reg <= scan_pattern;
    else if (enableTDO || enable_bypass_pattern) 
      TDI_Reg <= TDI_Reg >> 1;

endmodule

module TDO_Monitor (to_TDI, from_TDO, strobe, TCK);
  parameter 			BSC_Reg_size = 253;
  output				to_TDI;
  input				from_TDO, strobe, TCK;
  reg	[BSC_Reg_size -1: 0]	TDI_Reg, Pattern_Buffer_1, Pattern_Buffer_2, 
				Captured_Pattern, TDO_Reg;
  reg 				Error;
  parameter			test_width = 5;
  wire enableTDO = testbench_tap.M0.enableTDO;
  wire	[test_width -1: 0]		Expected_out = 
Pattern_Buffer_2 [BSC_Reg_size -1: BSC_Reg_size - test_width];

  wire	[test_width -1: 0]		ASIC_out = 
TDO_Reg [BSC_Reg_size - 1: BSC_Reg_size - test_width];

  initial 				Error = 0;

always @ (negedge enableTDO) if (strobe == 1) Error = |(Expected_out ^ ASIC_out);

  always @ (posedge TCK) if (enableTDO) begin
      Pattern_Buffer_1 <= {to_TDI, Pattern_Buffer_1 [BSC_Reg_size -1: 1]};
      Pattern_Buffer_2 <= {Pattern_Buffer_1 [0], Pattern_Buffer_2 [BSC_Reg_size -1: 1]};
      TDO_Reg <= {from_TDO, TDO_Reg [BSC_Reg_size -1: 1]};
  end  
endmodule
