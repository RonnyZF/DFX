module  Bypass_Register(scan_out, scan_in, shiftDR, clockDR);
  output 	scan_out;
  input 		scan_in, shiftDR, clockDR;
  reg 		scan_out;

  always @ (posedge clockDR) scan_out <= scan_in & shiftDR;

endmodule 

module BSC_Cell 
  (data_out, scan_out, data_in, mode, scan_in, shiftDR, updateDR, clockDR);
output 	data_out;
output		scan_out;
input		data_in;
input		mode, scan_in, shiftDR, updateDR, clockDR;
reg		scan_out, update_reg;

always @ (posedge clockDR) begin
scan_out <= shiftDR ? scan_in : data_in;
end

always @ (posedge updateDR) update_reg <= scan_out;
assign data_out = mode ? update_reg : data_in;

endmodule

module Boundary_Scan_Register (data_out, data_in, scan_out, scan_in,  shiftDR, mode, clockDR, updateDR);
parameter size = 251;
output 	[size -1: 0]	data_out;
output			scan_out;
input	[size -1: 0]	data_in;
input			scan_in;
input			shiftDR, mode, clockDR, updateDR;
reg	[size -1: 0]	BSC_Scan_Register, BSC_Output_Register;

always @ (posedge clockDR) BSC_Scan_Register <= shiftDR ? {scan_in, BSC_Scan_Register [ size -1: 1]} : data_in;
always @ (posedge updateDR) BSC_Output_Register <= BSC_Scan_Register;

assign scan_out = BSC_Scan_Register [0];
assign data_out = mode ? BSC_Output_Register : data_in;

endmodule

/*
module t_Boundary_Scan_Register ();
parameter size = 14;
wire 	[size -1: 0] 	data_out;
reg	[size -1: 0] 	data_in;
wire 			scan_out;
reg			scan_in;
reg			shiftDR, mode;
reg			clockDR, updateDR;
reg			system_clk;
Boundary_Scan_Register M0 (data_out, data_in, scan_out, scan_in,  shiftDR, mode, clockDR, updateDR);
initial #500 $finish;
initial begin system_clk = 0; forever #5 system_clk = ~system_clk; end
 initial begin
data_in = 0;
forever @ (negedge system_clk) data_in = data_in +1;
end
initial fork
mode = 0;
#375 mode = 1;
//#450 mode = 0;
join
initial fork
clockDR = 0;
shiftDR = 0;
#45 shiftDR = 1;
#40begin repeat (size) begin #10 clockDR = 1; #10 clockDR = 0; end #5 shiftDR = 0; end
join
initial begin
 #380 repeat (1) begin #10 clockDR = 1; #10 clockDR = 0; end 
end
initial fork
updateDR = 0; 
#350 updateDR = 1;
#360 updateDR = 0;
join
initial begin scan_in = 1; end
endmodule
*/

module IR_Cell (data_out, scan_out, data_in, scan_in, shiftIR, reset_bar, nTRST, clockIR, updateIR);

  output 		data_out, scan_out;
  input		data_in, scan_in, shiftIR, reset_bar, nTRST, clockIR, updateIR;
  reg 		data_out, scan_out;
  parameter	SR_value = 0;
  wire 		S_R = reset_bar & nTRST;
  
  always @ (posedge clockIR) scan_out  <= shiftIR ? scan_in: data_in;
  always @ (posedge updateIR or negedge S_R)
    if (S_R == 0) data_out <= SR_value;
    else data_out <= scan_out;

endmodule


module Instruction_Decoder (mode, select_BR, shift_BR, clock_BR, shift_BSC_Reg, clock_BSC_Reg, update_BSC_Reg, instruction, shiftDR, clockDR, updateDR);
  parameter 	IR_size 			= 3;
  output					mode, select_BR, shift_BR, clock_BR;
  output					shift_BSC_Reg, clock_BSC_Reg, update_BSC_Reg;
  input					shiftDR, clockDR, updateDR;
  input		[IR_size -1: 0]		instruction;
  parameter	BYPASS		= 3'b111;	// Required by 1149.1a
  parameter	EXTEST			= 3'b000;	// Required by 1149.1a
  parameter	SAMPLE_PRELOAD	= 3'b010;
  parameter	INTEST			= 3'b011;
  parameter	RUNBIST		= 3'b100;
  parameter	IDCODE			= 3'b101;

  reg		mode, select_BR, clock_BR, clock_BSC_Reg, update_BSC_Reg;
 
  assign 	shift_BR = shiftDR;
  assign		shift_BSC_Reg = shiftDR;

  always @ (instruction or clockDR or updateDR) begin
    mode = 0; select_BR = 0;		// default is test-data register
    clock_BR = 1; clock_BSC_Reg = 1;
    update_BSC_Reg = 0;

    case (instruction)
      EXTEST:		begin mode = 1; clock_BSC_Reg = clockDR; update_BSC_Reg = updateDR; end	
      INTEST:		begin mode = 1; clock_BSC_Reg = clockDR; update_BSC_Reg = updateDR; end	
      SAMPLE_PRELOAD:	begin  clock_BSC_Reg = clockDR; update_BSC_Reg = updateDR; end
      RUNBIST:		begin  end		
      IDCODE:		begin select_BR = 1; clock_BR = clockDR;  end 
      BYPASS:		begin select_BR = 1; clock_BR = clockDR; end	 	// 1 selects bypass reg
      default:		begin select_BR = 1; end	 				// 1 selects bypass reg

    endcase	
  end	
endmodule

module Instruction_Register (data_out, data_in, scan_out, scan_in,  shiftIR, clockIR, updateIR, reset_bar);
parameter IR_size = 3;
output 	[IR_size -1: 0]	data_out;
output			scan_out;
input	[IR_size -1: 0]	data_in;
input			scan_in;
input			shiftIR, clockIR, updateIR, reset_bar;
reg	[IR_size -1: 0]	IR_Scan_Register, IR_Output_Register;

assign			data_out = IR_Output_Register;
assign			scan_out = IR_Scan_Register [0];

always @ (posedge clockIR) IR_Scan_Register <= shiftIR ? {scan_in, IR_Scan_Register [IR_size - 1: 1]} : data_in;
 
always @ ( posedge updateIR or negedge reset_bar)	// asynchronous required by 1140.1a.
  if (reset_bar == 0) IR_Output_Register <= ~(0);		// Fills IR with 1s for BYPASS instruction 
  else IR_Output_Register <= IR_Scan_Register;

endmodule

module TAP_FSM (enableTDO, TMS, TCK);
  output	enableTDO;
  input 	TMS, TCK;
  reg 	enableTDO;

  parameter	S_Reset 	= 0,
S_Run_Idle	= 1,
S_Select_DR 	= 2,
S_Capture_DR 	= 3,
S_Shift_DR 	= 4,
S_Exit1_DR 	= 5,
S_Pause_DR 	= 6,
S_Exit2_DR 	= 7,
S_Update_DR 	= 8,
S_Select_IR 	= 9,
S_Capture_IR	= 10,
S_Shift_IR 	= 11,
S_Exit1_IR 	= 12,
S_Pause_IR 	= 13,
S_Exit2_IR 	= 14,
S_Update_IR 	= 15;

  reg [3:0] state, next_state;

  pullup (TMS);	// Required by IEEE 1149.1a; ensures that an undriven input 

  always @ (negedge TCK) 
    enableTDO <=  ((state == S_Shift_DR) || (state == S_Shift_IR)) ? 1 : 0;  // Registered output enable
  
    always @ (posedge TCK ) state <= next_state;

  always @ (state or TMS) begin
   next_state = state;

    case (state)
      S_Reset:		begin  next_state = TMS ? S_Reset : S_Run_Idle;
			end
      S_Run_Idle:		if (TMS)  next_state = S_Select_DR;
			
      S_Select_DR: 	next_state = TMS ? S_Select_IR: S_Capture_DR;
      S_Capture_DR: 	next_state = TMS ? S_Exit1_DR: S_Shift_DR; 
      S_Shift_DR:		if (TMS) next_state = S_Exit1_DR;
      S_Exit1_DR:		next_state = TMS ? S_Update_DR: S_Pause_DR;
      S_Pause_DR:	if (TMS) next_state = S_Exit2_DR;
      S_Exit2_DR:		next_state = TMS ? S_Update_DR: S_Shift_DR;
      S_Update_DR:	next_state = TMS ? S_Select_DR: S_Run_Idle; 
      S_Select_IR:		next_state = TMS ? S_Reset: S_Capture_IR; 
      S_Capture_IR:	next_state = TMS ? S_Exit1_IR: S_Shift_IR; 
			
      S_Shift_IR:		begin enableTDO = 1; if (TMS) next_state = S_Exit1_IR;
			end
      S_Exit1_IR:		next_state = TMS ? S_Update_IR: S_Pause_IR; 
			
      S_Pause_IR:		if (TMS) next_state = S_Exit2_IR; 
      S_Exit2_IR:		next_state = TMS ? S_Update_IR: S_Shift_IR; 
			
      S_Update_IR:		next_state = TMS ? S_Select_DR: S_Run_Idle;
      default		next_state = S_Reset;
    endcase
  end
endmodule 

module TAP_Controller 
// Revise 5-11-2004
  (reset_bar, selectIR, shiftIR, clockIR, updateIR, shiftDR, 
    clockDR, updateDR, enableTDO, TMS, TCK);
 
  output	reset_bar, selectIR, shiftIR, clockIR, updateIR;
  output 	shiftDR, clockDR, updateDR, enableTDO;
  input 	TMS, TCK;
  reg 	reset_bar, selectIR, shiftIR, shiftDR, enableTDO;
  wire	clockIR, updateIR, clockDR, updateDR;
  parameter	S_Reset 	= 0,
		S_Run_Idle	= 1,
		S_Select_DR 	= 2,
		S_Capture_DR 	= 3,
		S_Shift_DR 	= 4,
		S_Exit1_DR 	= 5,
		S_Pause_DR 	= 6,
		S_Exit2_DR 	= 7,
		S_Update_DR 	= 8,
		S_Select_IR 	= 9,
		S_Capture_IR	= 10,
		S_Shift_IR 	= 11,
		S_Exit1_IR 	= 12,
		S_Pause_IR 	= 13,
		S_Exit2_IR 	= 14,
		S_Update_IR 	= 15;

  reg [3:0] 	state, next_state;

 // pullup (TMS);	// Required by IEEE 1149.1a; ensures that an undriven input 
  // pullup (TDI);	// produces a response identical to the application of a logic 1."

  always @ (negedge TCK) reset_bar <= (state == S_Reset) ? 0 : 1; // Registered active low 
   
  always @ (negedge TCK) begin
    shiftDR <= (state == S_Shift_DR) ? 1 : 0; 		// Registered select for scan mode
    shiftIR <= (state == S_Shift_IR) ? 1: 0;
// Registered output enable
    enableTDO <=  ((state == S_Shift_DR) || (state == S_Shift_IR)) ? 1 : 0;  
  end

  //  Gated clocks for capture registers 
  assign clockDR = !(((state == S_Capture_DR) || (state == S_Shift_DR)) && (TCK == 0));
  assign clockIR =   !(((state == S_Capture_IR) || (state == S_Shift_IR)) && (TCK == 0));
 
 // Gated clocks for output registers
  assign updateDR = (state == S_Update_DR)  && (TCK == 0);
  assign updateIR =   (state == S_Update_IR)  && (TCK == 0);
 
  always @ (posedge TCK ) state <= next_state;

  always @ (state or TMS) begin
    selectIR = 0;
    next_state = state;

    case (state)
      S_Reset:		begin 
			  selectIR = 1; 
			  if (TMS == 0) next_state = S_Run_Idle;
			end
      S_Run_Idle:		begin selectIR = 1; if (TMS)  next_state = S_Select_DR; end
      S_Select_DR: 	next_state = TMS ? S_Select_IR: S_Capture_DR;
      S_Capture_DR: 	begin next_state = TMS ? S_Exit1_DR: S_Shift_DR; end
      S_Shift_DR:		if (TMS) next_state = S_Exit1_DR;
      S_Exit1_DR:		next_state = TMS ? S_Update_DR: S_Pause_DR;
      S_Pause_DR:	if (TMS) next_state = S_Exit2_DR;
      S_Exit2_DR:		next_state = TMS ? S_Update_DR: S_Shift_DR;
      S_Update_DR:	begin next_state = TMS ? S_Select_DR: S_Run_Idle; end
      S_Select_IR:		begin 
			  // selectIR = 1;  // Removed 5-10-2004
			  next_state = TMS ? S_Reset: S_Capture_IR; 
			end
      S_Capture_IR:	begin 
			  selectIR = 1;
			  next_state = TMS ? S_Exit1_IR: S_Shift_IR; 
			end
      S_Shift_IR:		begin selectIR = 1; if (TMS) next_state = S_Exit1_IR;	end
      S_Exit1_IR:		begin 
			  selectIR = 1; 
			  next_state = TMS ? S_Update_IR: S_Pause_IR; 
			end
      S_Pause_IR:		begin selectIR = 1; if (TMS) next_state = S_Exit2_IR; end
      S_Exit2_IR:		begin 
			  selectIR = 1; 
			  next_state = TMS ? S_Update_IR: S_Shift_IR; 
			end
      S_Update_IR:		begin 
			 selectIR = 1; 
  			 //next_state = TMS ? S_Select_IR: S_Run_Idle; //5-10- 2004
  			 next_state = TMS ? S_Select_DR: S_Run_Idle; //5-10- 2004


end
      default		next_state = S_Reset;
    endcase
  end
endmodule
