// Code your design here


module memory_fifo (
    pntr,
    w_e,
    r_e,
    w_data,
    clk_r,
    clk_w,
    r_data );
/*Async FIFO Parameters*/
parameter W = 4'h8;
parameter DP = 3'h4;
/*Inputs for the Memory*/        
input reg [32:0] pntr;
input w_e;
input r_e;
input [32 : 0]  w_data;
input reg clk_r;
input reg clk_w;
output reg [32 : 0] r_data ;

reg w_e,r_e;
reg [W-1 : 0]    mem[32 : 0];

/*Write Process*/

  always @(clk_w) begin
    if (w_e)
  		mem[pntr[32:0]] <= w_data;
end
/*Read Process*/
  always @(clk_r) begin
    if (!w_e)
   		r_data  <= mem[pntr[32:0]];
end

endmodule