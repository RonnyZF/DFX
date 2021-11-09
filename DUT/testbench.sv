//////////////////////////////////////////////////////////////////////
////                                                              ////
////                                                              ////
////  This file is part of the SDRAM Controller project           ////
////  http://www.opencores.org/cores/sdr_ctrl/                    ////
////                                                              ////
////  Description                                                 ////
////  SDRAM CTRL definitions.                                     ////
////                                                              ////
////  To Do:                                                      ////
////    nothing                                                   ////
//   Version  :0.1 - Test Bench automation is improvised with     ////
//             seperate data,address,burst length fifo.           ////
//             Now user can create different write and            ////
//             read sequence                                      ////
////                                                              ////
////  Author(s):                                                  ////
////      - Dinesh Annayya, dinesha@opencores.org                 ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////

// This testbench stand-alone verify the sdram core

`timescale 1ns/1ps


`include "sdrc_bank_ctl.v"
`include "sdrc_bank_fsm.v"
`include "sdrc_bs_convert.v"
`include "sdrc_define.v"
`include "sdrc_req_gen.v"
`include "sdrc_xfr_ctl.v"
`include "sdrc_core.v"


module mem_controller();

//Parameters
parameter      P_SYS           = 10;  // 100MHz clock
parameter      dw              = 32;  // data width
parameter      tw              = 8;   // tag id width
parameter      bl              = 5;   // burst_lenght_width

reg            sdram_clk;       // Global CLK
reg            RESETN;          // Reset the DUT

//Set Clk for SDRAm to 0 (mt)
initial        sdram_clk = 0;
wire #(0.5)    fix_clk = sdram_clk;

//Generate CLK for the controller
always #(P_SYS/2) sdram_clk = !sdram_clk;

// to fix the sdram interface timing issue
wire #(2.0) sdram_clk_d = sdram_clk;
wire #(1.0) pad_clk     = sdram_clk_d;

/***********************************************************
                  Create Conexions for Core
************************************************************/
/*
  -app_req         --   Application Request, 1 when is a write or read
  -app_req_len     --   Burst Request length
  -app_req_ack     --   Application Request Ack
  -app_req_addr    --   Application Address
  -app_req_wr_n    --   Set a 1 to Read or 0 to write
  -app_wr_data     --   Data to write
  -app_wr_en_n     --   Enable Write
  -app_rd_valid    --   The read is valid or not
  -app_last_rd     --   Lat valid read
  -app_last_wr     --   Last valid write
  -app_rd_data     --   SDRAM Init Done
  -app_wr_next_req --
  -sdram_clk = clk
  -RESETN
*/ 
reg                   app_req            ; 
reg  [8:0]            app_req_len        ; 
wire                  app_req_ack        ; 
reg  [25:0]           app_req_addr       ; 
reg                   app_req_wr_n       ; 
reg  [dw-1:0]         app_wr_data        ; 
reg  [dw/8-1:0]       app_wr_en_n        ; 
wire                  app_rd_valid       ; 
wire                  app_last_rd        ; 
wire                  app_last_wr        ; 
wire [dw-1:0]         app_rd_data        ;

/***********************************************************
                  Create Configutations for Core
************************************************************/
  
  /*
  -cfg_req_depth      --   Maximum Request accepted by SDRAM controller
  -cfg_colbits        --   SDRAM Column Bit 00-8bit/01-9bit/10-10bit/11-11bit
  -cfg_sdr_en         --   SDRAM Controller Enable 
  -cfg_sdr_mode_reg   --   SDRAM Mode Register
  -cfg_sdr_tras_d     --   SDRAM active to precharge, specified in clocks
  -cfg_sdr_trp_d      --   SDRAM precharge command period (tRP), specified in clocks.
  -cfg_sdr_cas        --   SDRAM active to read or write delay (tRCD), specified in clocks. 
  -cfg_sdr_trcar_d    --   SDRAM active to active / auto-refresh command period (tRC), specified in clocks. 
  -cfg_sdr_twr_d      --   SDRAM write recovery time (tWR), specified in clocks
  -cfg_sdr_rfsh       --   Period between auto-refresh commands issued by the controller, specified in clocks. 
  -cfg_sdr_rfmax      --   Maximum number of rows to be refreshed at a time(tRFSH)
*/

/*logic [1:0]             cfg_req_depth       ;
logic [1:0]             cfg_colbits         ;
logic                   cfg_sdr_en          ;
logic [12:0]            cfg_sdr_mode_reg    ;
logic [3:0]             cfg_sdr_tras_d      ;
logic [3:0]             cfg_sdr_trp_d       ;
logic [3:0]             cfg_sdr_trcd_d      ;
logic [2:0]             cfg_sdr_cas         ;
logic [3:0]             cfg_sdr_trcar_d     ;
logic [3:0]             cfg_sdr_twr_d       ;
logic [11:0]            cfg_sdr_rfsh        ;
logic [2:0]             cfg_sdr_rfmax       ;*/


/***********************************************************
                  Create Conexions for SDRAM
************************************************************/
/*
  -DQ            --   SDRAM Read/Write Data Bus
  -sdr_dout      --   SDRAM Data Out
  -pad_sdr_din   --   SDRAM Data Input
  -sdr_den_n     --   SDRAM Data Enable
  -sdr_dqm       --   SDRAM DATA Mask
  -sdr_ba        --   SDRAM Bank Select
  -sdr_addr      --   SDRAM ADRESS
  -sdr_init_done --   SDRAM Init Done
  -app_busy_n    --   0 -> sdr busy
*/
  wire [dw-1:0]            Dq                 ; 
  wire [dw-1:0]            sdr_dout           ;  
  wire [dw/8-1:0]          sdr_den_n          ; 
  wire [dw/8-1:0]          sdr_dqm            ;
  wire [1:0]               sdr_ba             ; 
  wire [12:0]              sdr_addr           ; 
  wire                     sdr_init_done      ;
  wire                     app_busy_n         ; 
  wire 			           sdr_cs_n           ;
  wire                     sdr_cke            ;
  wire                     sdr_ras_n          ;
  wire                     sdr_cas_n          ; 
  wire                     sdr_we_n           ;   ; 


/***********************************************************
          Set Conexions for Controller
************************************************************/
/*
-General connections -- Define the inputs for the controller to work, clk, reset or clk for SDRAM
-Request signals for controllers -- Determine the signals need to create a write or read request
-Interface signals for SDRAM -- Set the signals to send to the SDRAM
-Parameters for SDRAM
*/

`ifdef SDR_32BIT
   sdrc_core #(.SDR_DW(32),.SDR_BW(4)) 
   u_dut(
`elsif SDR_16BIT 
   sdrc_core #(.SDR_DW(16),.SDR_BW(2)) 
   u_dut(
`else  
   sdrc_core #(.SDR_DW(8),.SDR_BW(1)) 
   u_dut(
`endif
      /*General connections*/
          .clk                (sdram_clk          ),
          .reset_n            (RESETN             ),
          .pad_clk            (pad_clk            ), 
          `ifdef SDR_32BIT
            .sdr_width        (2'b00              ), 
          `elsif SDR_16BIT
            .sdr_width        (2'b01              ), 
          `else 
            .sdr_width        (2'b10              ), 
          `endif
          .cfg_colbits        (2'b00              ),              
  /* Request signals for controllers */
          .app_req            (app_req            ),	
          .app_req_addr       (app_req_addr       ),	
          .app_req_len        (app_req_len        ),	
          .app_req_wrap       (1'b0               ),	
          .app_req_wr_n       (app_req_wr_n       ),	
          .app_req_ack        (app_req_ack        ),		
          .app_wr_data        (app_wr_data        ),
          .app_wr_en_n        (app_wr_en_n        ),
          .app_rd_data        (app_rd_data        ),
          .app_last_rd        (app_last_rd        ),
          .app_last_wr        (app_last_wr        ),
          .app_rd_valid       (app_rd_valid       ),
          .app_wr_next_req    (app_wr_next_req    ),
          .app_req_dma_last   (app_req            ),        
  /* Interface signals for SDRAM */
          .sdr_cs_n           (sdr_cs_n           ),
          .sdr_cke            (sdr_cke            ),
          .sdr_ras_n          (sdr_ras_n          ),
          .sdr_cas_n          (sdr_cas_n          ),
          .sdr_we_n           (sdr_we_n           ),
          .sdr_dqm            (sdr_dqm            ),
          .sdr_ba             (sdr_ba             ),
          .sdr_addr           (sdr_addr           ), 
          .pad_sdr_din        (Dq                 ),
          .sdr_dout           (sdr_dout           ),
          .sdr_den_n          (sdr_den_n          ),

    /* Parameters for SDRAM */
          .sdr_init_done      (sdr_init_done      ),
          .cfg_req_depth      (2'h3               ),
          .cfg_sdr_en         (1'b1               ),
          .cfg_sdr_mode_reg   (13'h033            ),
          .cfg_sdr_tras_d     (4'h4               ),
          .cfg_sdr_trp_d      (4'h2               ),
          .cfg_sdr_trcd_d     (4'h2               ),
          .cfg_sdr_cas        (3'h3               ),
          .cfg_sdr_trcar_d    (4'h7               ),
          .cfg_sdr_twr_d      (4'h1               ),
          .cfg_sdr_rfsh       (12'h100            ),
          .cfg_sdr_rfmax      (3'h6               )

);


`ifdef SDR_32BIT
  assign Dq[7:0]    = (sdr_den_n[0] == 1'b0) ? sdr_dout[7:0]   : 8'hZZ;
  assign Dq[15:8]   = (sdr_den_n[1] == 1'b0) ? sdr_dout[15:8]  : 8'hZZ;
  assign Dq[23:16]  = (sdr_den_n[2] == 1'b0) ? sdr_dout[23:16] : 8'hZZ;
  assign Dq[31:24]  = (sdr_den_n[3] == 1'b0) ? sdr_dout[31:24] : 8'hZZ;
/*mt48lc2m32b2 #(.data_bits(32)) u_sdram32 (
          .Dq                 (Dq                 ) , 
          .Addr               (sdr_addr[10:0]     ), 
          .Ba                 (sdr_ba             ), 
          .Clk                (sdram_clk_d        ), 
          .Cke                (sdr_cke            ), 
          .Cs_n               (sdr_cs_n           ), 
          .Ras_n              (sdr_ras_n          ), 
          .Cas_n              (sdr_cas_n          ), 
          .We_n               (sdr_we_n           ), 
          .Dqm                (sdr_dqm            )
     );*/

`elsif SDR_16BIT

assign Dq[7:0]  = (sdr_den_n[0] == 1'b0) ? sdr_dout[7:0]  : 8'hZZ;
assign Dq[15:8] = (sdr_den_n[1] == 1'b0) ? sdr_dout[15:8] : 8'hZZ;

/*IS42VM16400K u_sdram16 (
          .dq                 (Dq                 ), 
          .addr               (sdr_addr[11:0]     ), 
          .ba                 (sdr_ba             ), 
          .clk                (sdram_clk_d        ), 
          .cke                (sdr_cke            ), 
          .csb                (sdr_cs_n           ), 
          .rasb               (sdr_ras_n          ), 
          .casb               (sdr_cas_n          ), 
          .web                (sdr_we_n           ), 
          .dqm                (sdr_dqm            )
    );*/
`else 

assign Dq[7:0]  = (sdr_den_n[0] == 1'b0) ? sdr_dout[7:0]  : 8'hZZ;

/*mt48lc8m8a2 #(.data_bits(8)) u_sdram8 (
          .Dq                 (Dq                 ) , 
          .Addr               (sdr_addr[11:0]     ), 
          .Ba                 (sdr_ba             ), 
          .Clk                (sdram_clk_d        ), 
          .Cke                (sdr_cke            ), 
          .Cs_n               (sdr_cs_n           ), 
          .Ras_n              (sdr_ras_n          ), 
          .Cas_n              (sdr_cas_n          ), 
          .We_n               (sdr_we_n           ), 
          .Dqm                (sdr_dqm            )
     );*/
`endif

//--------------------
// data/address/burst length FIFO
//--------------------
reg [31:0] read_data;
reg [31:0] StartAddr;
/////////////////////////////////////////////////////////////////////////
// Test Case
/////////////////////////////////////////////////////////////////////////

initial begin 
/*Initialice the RAM with 0*/
   $display("Executing start\n");
   app_req_addr   = 0;
   app_wr_data    = 0;
   app_wr_en_n    = 4'hF;
   app_req_wr_n   = 0;
   app_req        = 0;
   app_req_len    = 0;
   RESETN    = 1'h1;
   #100;
   RESETN    = 1'h0;
   #10000;
   RESETN    = 1'h1;
   #1000;
   wait(u_dut.sdr_init_done == 1);
   $display("Finishing Reset\n");

  $display("**************************************** ");
  $display(" Executing Write and Read                ");
  $display("**************************************** ");

  burst_write(32'h4_0000,8'h4);  
  #1000;
  burst_read();  
end

task burst_write;
reg [31:0] Address;
reg [7:0]  bl;
int i;
begin
   $display("Starting Write\n");
   app_req        = 1;
   app_wr_en_n    = 0;
   app_req_wr_n   = 0;
   app_req_addr   = Address[31:2];
   app_req_len    = bl;

   do begin
     #1;
   end while(app_req_ack == 1'b0);
     app_req      = 0;

   for(i=0; i < bl; i++) begin
      app_wr_data        = 32'hFFFFFFFF;

      do begin
          #1;
      end while(app_wr_next_req == 1'b0);
          #100;
       $display("Status: Burst-No: %d  Write Address: %x  WriteData: %x ",i,Address,app_wr_data);
   end
/*Reset the data in DUT */
   app_req        = 0;
   app_wr_en_n    = 'hx;
   app_req_wr_n   = 'hx;
   app_req_addr   = 'hx;
   app_req_len    = 'hx;
end
endtask

task burst_read;
reg [31:0] Address;
reg [7:0]  bl;

int i,j;
reg [31:0]   exp_data;
begin
   $display("Starting Read\n");
   app_req        = 1;
   app_wr_en_n    = 0;
   app_req_wr_n   = 1;
   app_req_addr   = Address[29:2];
   app_req_len    = bl;

      for(j=0; j < bl; j++) begin
	do begin
          #1;
        end while(app_rd_valid == 1);
        $display("Status: Burst-No: %d  Read Address: %x  Read Data: %x ",j,app_req_addr,app_rd_data);
      end

      do begin
          #1;
      end while(app_req_ack == 1'b0);

/*Reset the data in DUT */
   app_req        = 0;
   app_wr_en_n    = 'hx;
   app_req_wr_n   = 'hx;
   app_req_addr   = 'hx;
   app_req_len    = 'hx;

end
endtask
     
       initial begin
    $dumpfile("verilog.vcd");
    $dumpvars(0);
  end


endmodule
