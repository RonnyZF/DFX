module mbist_controller (
                     /*s for BIST*/ 
                      clk_bist,
                      arst_bist,
  					  inst_bist,
                      done_check,
                      check_bist,
  					  pass_fail_check,
                     /*s for AsyncFIFOS Memory*/
                      wr_clk,
                      wr_reset_n,
                      wr_en,
                      wr_data,
                      full,                
                      afull,                 
                      rd_clk,
                      rd_reset_n,
                      rd_en,
                      empty,                
                      aempty,                
                      rd_data
                    );

parameter W = 4'd8;
parameter DP = 3'd4;
parameter AW = (DP == 2)   ? 1 : 
  (DP == 4)   ? 2 :
              (DP == 8)   ? 3 :
              (DP == 16)  ? 4 :
              (DP == 32)  ? 5 :
              (DP == 64)  ? 6 :
              (DP == 128) ? 7 :
              (DP == 256) ? 8 : 0;
/*Type of modes*/
parameter  IDLE = 2'b00;
parameter  AUTOCHECK = 2'b01;
parameter  DEBUG     = 2'b10;
parameter  REPAIR     = 2'b11;

/*Type of Patterns*/
parameter  ALL_0 = 2'b00;
parameter  ALL_1 = 2'b01;
parameter  CHKBOARD  = 2'b10;
parameter  LSFR  = 2'b11;

/*Type of Run*/
parameter  WRITE = 2'b00;
parameter  READ = 2'b01;
parameter  INIT  = 2'b10;
parameter  FIN   = 2'b11;


/*Definition of IO**********************

***************************************/

/*Inputs BIST*/
input  clk_bist;
input  arst_bist;
input  [15:0] inst_bist;
output  done_check;
output  check_bist;
output  pass_fail_check;

/*Inputs for FIFOS Memory*/
input wire wr_clk;
input  wr_reset_n;
input  wr_en;
input  [W-1 : 0]  wr_data;
output wire full;
output wire afull;
input wire rd_clk;
input  rd_reset_n;
input  rd_en;
output wire empty;
output wire aempty;
output  [W-1 : 0]  rd_data;

reg done_check;
reg  [W-1 : 0]  rd_data;
reg  check_bist;
reg  pass_fail_check;

/*Outputs to control Muxes ASyncFifo*/
wire wr_clk_out_bist;
wire wr_reset_n_out_bist;
wire wr_en_out_bist;
wire [W-1 : 0]  wr_data_out_bist;
wire [W-1 :0 ] rd_data_out_bist;
wire rd_clk_out_bist;
wire rd_reset_n_out_bist;
wire rd_en_out_bist; 

/*Registers to control BIST*/

reg wr_reset_n_in_bist;
reg wr_en_in_bist;
reg [W-1 : 0]  wr_data_in_bist;
reg [W-1 : 0] rd_data_in_bist;
reg rd_reset_n_in_bist;
reg rd_en_in_bist;
reg control_init;
reg wr_en_in_bist_2;
reg wr_en_in_bist_3;
reg wr_reset_n_in_bist_2;
reg wr_reset_n_in_bist_3;
reg rd_reset_n_in_bist_2;
reg rd_reset_n_in_bist_3;
reg rd_en_in_bist_2;
reg rd_en_in_bist_3;
reg mux_sel;
reg mux_sel_o;
reg [32 : 0] test_issue;


reg [AW:0] pntr_bist;
reg [AW:0] pntr_bist_w;
reg [AW:0] pntr_bist_r;
reg [W-1 : 0] r_data_bist;

/*Register to control writer*/
reg  control_writer_bist;
reg  enable_writer_bist;

/*register to control reader*/
reg  control_reader_bist;
reg  enable_reader_bist;

/*register to control Comparator*/
reg  control_comp_bist;
reg  enable_comp_bist;

/*Register to control LSFR*/
reg enable_LSFR_bist;
reg [7:0] LSFR_bist_data;

/*Registers to control instructions, mode and pattern Bist*/
reg control_bist;
reg [2:0] mode_bist;
reg [2:0] mode_bist_r;
reg [2:0] pattern_bist;
reg [2:0] pattern_bist_r;
reg [3:0] address_bist;
reg [3:0] address_bist_r;
reg [3:0] FSM_bist;
reg [2:0] control_test;

/*Register to control BIST DATA*/
reg [3:0] address_1_bist;
reg [3:0] address_2_bist;
reg [2:0] pattern_1_bist;
reg [2:0] pattern_2_bist;
reg fail_check_bist;

async_fifo DUV (
            .wr_clk(wr_clk_out_bist),
            .wr_reset_n(wr_reset_n_out_bist),
            .wr_en(wr_en_out_bist),
            .wr_data(wr_data_out_bist),
            .full(full),                 
            .afull(afull),                 
            .rd_clk(rd_clk_out_bist),
            .rd_reset_n(rd_reset_n_out_bist),
            .rd_en(rd_en_out_bist),
            .empty(empty),                
            .aempty(aempty),                
            .rd_data(rd_data)
);

FSM bist_fsm(
    .clk(clk_bist),
    .control_bist(control_bist),
    .control_writer_bist(control_writer_bist),
    .control_reader_bist(control_reader_bist),
    .control_test(control_test),
    .control_comp_bist(control_comp_bist),
    .mode(mode_bist),
  	.pattern(pattern_bist),
  	.control_init(control_init)
);

mux_s mux_s_wr_clk (
    .D0(wr_clk),
    .D1(wr_clk),
    .S(mux_sel),
    .Y(wr_clk_out_bist)
);

mux_s mux_s_wr_reset_n (
    .D0(wr_reset_n),
    .D1(wr_reset_n_in_bist),
    .S(mux_sel),
    .Y(wr_reset_n_out_bist)
);

mux_s mux_s_wr_en (
    .D0(wr_en),
    .D1(wr_en_in_bist),
    .S(mux_sel),
    .Y(wr_en_out_bist)
);

mux_f #(.W(W)) mux_f_wr_data(
    .D0(wr_data),
    .D1(wr_data_in_bist),
    .S(mux_sel),
    .Y(wr_data_out_bist)
);

mux_s mux_s_rd_clk (
    .D0(rd_clk),
    .D1(rd_clk),
    .S(mux_sel),
    .Y(rd_clk_out_bist)
);

mux_s mux_s_rd_reset_n (
    .D0(rd_reset_n),
    .D1(rd_reset_n_in_bist),
    .S(mux_sel),
    .Y(rd_reset_n_out_bist)
);

mux_s mux_s_rd_en (
    .D0(rd_en),
    .D1(rd_en_in_bist),
    .S(mux_sel),
    .Y(rd_en_out_bist)
);
  
mux_s mux_s_cont_to_wr_en (
    .D0(wr_en_in_bist_2),
    .D1(wr_en_in_bist_3),
    .S(mux_sel_o),
    .Y(wr_en_in_bist)
);
  
mux_s mux_s_cont_to_wr_rst (
    .D0(wr_reset_n_in_bist_2),
    .D1(wr_reset_n_in_bist_3),
    .S(mux_sel_o),
    .Y(wr_reset_n_in_bist)
);

mux_s mux_s_cont_to_rd_en (
    .D0(rd_en_in_bist_2),
    .D1(rd_en_in_bist_3),
    .S(mux_sel_o),
    .Y(rd_en_in_bist)
);
  
mux_s mux_s_cont_to_rd_rst (
    .D0(rd_reset_n_in_bist_2),
    .D1(rd_reset_n_in_bist_3),
    .S(mux_sel_o),
    .Y(rd_reset_n_in_bist)
);

instruction_decoder #(.AW(AW)) bist_ints
(
    .inst_bist(inst_bist),
    .clk(clk_bist),
    .control_bist(control_bist),
    .mode(mode_bist),
  	.mode_r(mode_bist_r),
    .pattern_r(pattern_bist_r),
    .pattern(pattern_bist),
    .address(address_bist),
    .address_r(address_bist_r)  
);

mem_writer #(.AW(AW),.W(W)) bist_writer 
(
    .clk(clk_bist),
    .enable(enable_writer_bist),
    .pattern_bist(pattern_bist_r),
    .wr_data_in_bist(wr_data_in_bist),
    .pntr_bist(address_bist_r),
    .control(control_writer_bist),
    .wr_en_in_bist(wr_en_in_bist_3),
    .LSFR_data(LSFR_bist_data),
    .enable_LSFR(enable_LSFR_bist),
    .wr_reset_n_in_bist(wr_reset_n_in_bist_3),
    .mode(mode_bist_r)
);

mem_reader #(.AW(AW),.W(W)) bist_reader
(
    .clk(rd_clk),
    .enable(wr_en_in_bist_3),
    .mode(mode_bist_r),
    .pntr_bist_i(address_bist_r),
    .r_data(rd_data),
    .r_data_bist(r_data_bist),
    .pntr_bist_o(pntr_bist_r),
    .r_e_bist(r_e_bist),
    .control(control_reader_bist),
    .rd_en_in_bist(rd_en_in_bist_3),
    .rd_reset_n_in_bist(rd_reset_n_in_bist_3),
    .reset(enable_reader_bist)
);

comparator #(.W(W)) bist_comparator
(
    .clk(clk_bist),
    .enable(enable_comp_bist),
    .pattern_bist(pattern_bist_r),
    .r_data(r_data_bist),
    .pntr_bist(pntr_bist_r),
    .test_ok(pass_fail_check),
    .r_enable(r_e_bist),
    .control(control_comp_bist),
    .mode(mode_bist_r),
    .test_issue(test_issue)
);

LSFR bist_LSFR(
    .clk(clk_bist),
    .reset(enable_LSFR_bist),
    .q(LSFR_bist_data)
);

bist_data  data
(
    .clk(clk_bist),
    .pass_fail_check(pass_fail_check),
    .test_issue(test_issue),
    .address_1(address_1_bist),
    .address_2(address_2_bist),
    .pattern_1(pattern_1_bist),
    .pattern_2(pattern_2_bist),
    .fail_check(fail_check_bist)
);


always @ (posedge clk_bist) 
begin
    if(arst_bist)
    begin
        FSM_bist <= IDLE; 
        mux_sel = 0;
        mux_sel_o = 0;
        wr_reset_n_in_bist_2 = 0;
        wr_en_in_bist_2 = 0;
        rd_reset_n_in_bist_2 = 0;
        rd_en_in_bist_2 = 0;
        control_init = 0;
        enable_writer_bist = 0;
    end
    else
    begin
        case(FSM_bist)
            IDLE : 
                begin
                    if(mode_bist!= IDLE)
                    begin
                        if (mode_bist_r == AUTOCHECK)
                            FSM_bist <= AUTOCHECK;
                        if (mode_bist_r == DEBUG)
                            FSM_bist <= DEBUG;
                        if (mode_bist_r == REPAIR)
                            FSM_bist <= REPAIR;
                        done_check = 1;
                        control_bist = 1;
                        mux_sel = 1;
                    end
                end
                AUTOCHECK:
                    begin
                        control_init = 1;
                        mux_sel_o = 1;
                        case(control_test)
                            WRITE :
                                begin
                                    //$display("BIST in on Autocheck State");
                                    enable_write;
                                end
                            READ:
                                begin
                                    disable_write;
                                    enable_read;
                                end
                            FIN:
                                begin
                                    disable_read;
                                    @(posedge clk_bist);
                                    goto_idle;
                                end
                        endcase
                    end
                DEBUG:
                    begin
                        control_init = 1;
                        mux_sel_o = 1;
                        case(control_test)
                            WRITE :
                                begin
                                    //$display("BIST in on DEBUG State");
                                    enable_write;
                                end
                            READ:
                                begin
                                    disable_write;
                                    enable_read;
                                end
                            FIN:
                                begin
                                    disable_read;
                                    @(posedge clk_bist);
                                    goto_idle;  
                                end
                        endcase
                    end
                REPAIR:
                    begin
                        
                    end
            endcase
        end
end

task enable_write();
    begin
        //mux_sel_o <= 0;
        enable_writer_bist <= 1;
        enable_reader_bist <=0;
    end 
endtask

task disable_write();
    enable_writer_bist <= 0;
endtask

task enable_read();
    begin
        //enable_reader_bist <= 1;
    end
endtask

task disable_read();
    begin
        enable_reader_bist <= 1;
    end 
endtask

task enable_comparator();
    enable_comp_bist <= 1; 
endtask

task send_to_bist_data();
    begin

    end
endtask

task goto_idle();
    begin
        FSM_bist <= IDLE; 
        enable_reader_bist = 0;
        enable_writer_bist = 0;
        control_bist = 0;
        wr_reset_n_in_bist_2 = 0;
        wr_en_in_bist_2 = 0;
        rd_reset_n_in_bist_2 = 0;
        rd_en_in_bist_2 = 0;
        control_init = 0;
        mux_sel = 0;
        mux_sel_o = 0; 
    end
endtask

endmodule

module FSM(
    control_bist,
    control_writer_bist,
    control_reader_bist,
    control_comp_bist,
    control_init,
    clk,
    control_test,
    pattern,
    mode
);
/*Type of Run*/
parameter  WRITE = 2'b00;
parameter  READ = 2'b01;
parameter  INIT  = 2'b10;
parameter  FIN = 2'b11;

/*Type of modes*/
parameter  IDLE = 2'b00;
parameter  AUTOCHECK = 2'b01;
parameter  DEBUG     = 2'b10;
parameter  REPAIR     = 2'b11;

input  clk;
input  control_bist;
input  control_writer_bist;
input  control_reader_bist;
input  control_comp_bist;
input  [2:0] mode;
input  [2:0] pattern;
input  control_init;
output  [2:0] control_test;

reg init;
reg [2:0] control_test;


endmodule

module instruction_decoder(
  	inst_bist,
    clk,
    control_bist,
  	mode,
    mode_r,
    pattern_r,
  	pattern,
  	address,
    address_r  
);
  
parameter AW=1;

/*Interna registers*/
input  [15:0] inst_bist;
input  clk;
input  control_bist;
output  [2:0] mode;
output  [2:0] mode_r;
output  [2:0] pattern;
output  [2:0] pattern_r;
output  [3:0] address;
output  [3:0] address_r;

reg  [2:0] mode;
reg  [2:0] mode_r;
reg  [2:0] pattern;
reg  [2:0] pattern_r;
reg  [3:0] address;
reg  [3:0] address_r;

always @(inst_bist)
    begin
        mode <= inst_bist[2:0];
        mode_r <= inst_bist[2:0];
        pattern_r <=  inst_bist[5:3];
        pattern <=  inst_bist[5:3];
        address <=  inst_bist[6+3:6];
        address_r <=  inst_bist[6+3:6];
        //(posedge clk);
        if (control_bist)
          begin
            mode <= 3'b000;
            pattern <=   3'b000;
            address <=   8'b000000;
          end
    end
endmodule

module comparator(
    clk,
    enable,
    pattern_bist,
    r_enable,
    r_data,
    pntr_bist,
    control,
  	test_ok,
    mode,
    test_issue
);
parameter W=1;
/*Type of modes*/
parameter  IDLE = 2'b00;
parameter  AUTOCHECK = 2'b01;
parameter  DEBUG     = 2'b10;
parameter  REPAIR     = 2'b11;

/*Type of Patterns*/
parameter  ALL_0 = 2'b00;
parameter  ALL_1 = 2'b01;
parameter  CHKBOARD  = 2'b10;
parameter  LSFR  = 2'b11;

input  clk;
input  enable;
input  r_enable;
input  [2:0] pattern_bist;
input  [W-1 : 0]r_data;
input  [3 : 0] pntr_bist;
input  [2:0] mode;
output  control;
output  test_ok;
output  [32 : 0] test_issue;

reg  control;
reg  test_ok;
reg  [32 : 0] test_issue;
reg [W-1 : 0] test_data;
//reg [32 : 0] test_issue;
integer i;
  
always @(pntr_bist)
    begin
        test_ok = 1;
        control = 1;
        case(mode)
            AUTOCHECK:
                begin
                    case(pattern_bist)
                        ALL_0:
                            begin
                            //$display("BIST_Autocheck Pattern 000 Compare");
                            $display(test_data);
                            $display(r_data);
                                
                                test_data = 16'h000;
                                if (test_data|r_data)
                                    test_ok = 0;
                                else
                                    test_ok = 1;
                                
                                if (!test_ok)
                                    test_issue <= {pntr_bist,pattern_bist};
                                
                                test_ok = 1;
                                control = 0;
                            end
                        ALL_1:
                            begin
                                
                                test_data = 16'hFFF;
                                if (test_data&r_data)
                                    test_ok = 1;
                                else
                                    test_ok = 0;
                                
                                if (!test_ok)
                                    test_issue <= {pntr_bist,pattern_bist};
                                
                                test_ok = 1;
                                control = 0;
                            end
                        CHKBOARD:
                            begin
                            //$display("BIST_Autocheck Pattern 010 Compare");
                                test_data = 32'hAAAAAAAA;
                                for (i=0; i<8; i=i+1)
                                    begin
                                        if (test_data[i]==r_data[i])
                                            test_ok = 1;
                                        else
                                        begin
                                            test_ok = 0;
                                            test_issue <= {3'b111,pntr_bist,pattern_bist};
                                        end
                                    end
                            end
                        LSFR:
                            begin
                                //$display("BIST_Autocheck Pattern 011");
                            end
                    endcase
                end
            DEBUG:
                begin
                    case(pattern_bist)
                        ALL_0:
                            begin
                            //$display("BIST_Autocheck Pattern 000 Compare");
                                test_data = 16'h000;
                                test_ok = ~(test_data|r_data);
                                if (!test_ok)
                                    test_issue <= {3'b111,pntr_bist,pattern_bist};
                                
                                test_ok = 1;
                                control = 0;
                            end
                        ALL_1:
                            begin
                            //$display("BIST_Autocheck Pattern 001 Compare");
                                test_data = 16'hFFF;
                                test_ok = (test_data&r_data);
                                if (!test_ok)
                                    test_issue <= {3'b111,pntr_bist,pattern_bist};
                                
                                test_ok = 1;
                                control = 0;
                            end
                        CHKBOARD:
                            begin
                            //$display("BIST_Autocheck Pattern 010 Compare");
                                test_data = 32'hAAAAAAAA;
                                for (i=0; i<8; i=i+1)
                                    begin
                                        if (test_data[i]==r_data[i])
                                            test_ok = 1;
                                        else
                                        begin
                                            test_ok = 0;
                                            test_issue <= {3'b111,pntr_bist,pattern_bist};
                                        end
                                    end
                            end
                        LSFR:
                            begin
                                //$display("BIST_Autocheck Pattern 011");
                            end
                    endcase
                end
        endcase
    end 

endmodule

module mem_writer(
    clk,
    enable,
    pattern_bist,
    wr_data_in_bist,
    pntr_bist,
    wr_en_in_bist,
    control,
    LSFR_data,
    enable_LSFR,
    wr_reset_n_in_bist,
    mode

);

/*Type of Patterns*/
parameter  ALL_0 = 2'b00;
parameter  ALL_1 = 2'b01;
parameter  CHKBOARD  = 2'b10;
parameter  LSFR  = 2'b11;
parameter  AW = 1;
parameter  W  = 1;
parameter DP = 3'd4;

/*Type of modes*/
parameter  IDLE = 2'b00;
parameter  AUTOCHECK = 2'b01;
parameter  DEBUG     = 2'b10;
parameter  REPAIR     = 2'b11;

input  clk;
input  enable;
input  [2:0] mode;
input  [2:0] pattern_bist;
input  [7:0] LSFR_data;
input  [AW:0] pntr_bist;
output  enable_LSFR;
output  [W-1 : 0]  wr_data_in_bist;
output  wr_en_in_bist;
output  wr_reset_n_in_bist;
output  control;

reg  enable_LSFR;
reg  [W-1 : 0]  wr_data_in_bist;
reg  wr_en_in_bist;
reg  wr_reset_n_in_bist;
reg  control;

reg [DP:0] counter;
reg init = 0;
integer i;

  always @(posedge clk)
    begin
        if(enable)
        begin
            case(mode)
            AUTOCHECK:
                begin    
                    case(pattern_bist)
                        ALL_0:
                            begin
                            $display("BIST_Autocheck Pattern 000 write");
                            if (counter < 8)
                                    begin
                                        wr_reset_n_in_bist <= 1;
                                        wr_en_in_bist <= 1;
                                        //wr_data_in_bist <= 32'h00000000;
                                        wr_data_in_bist <= counter;
                                        control <=1;
                                        
                                        wr_en_in_bist <= 0;
                                        
                                        
                                        
                                        
                                        
                                        counter = counter + 1;
                                    end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                end
                            end
                        ALL_1:
                            begin
                                //$display("BIST_Autocheck Pattern 001 write");
                                if (counter < 8)
                                    begin
                                        wr_reset_n_in_bist <= 1;
                                        wr_en_in_bist <= 1;
                                        wr_data_in_bist <= 32'hFFFFFFFF;
                                        control <=1;
                                        
                                        wr_en_in_bist <= 0;
                                        
                                        
                                        
                                        
                                        
                                        counter = counter + 1;
                                    end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                end
                            end
                        CHKBOARD:
                            begin
                                //$display("BIST_Autocheck Pattern 010 write");
                                if (counter < 8)
                                    begin
                                        wr_reset_n_in_bist <= 1;
                                        wr_en_in_bist <= 1;
                                        wr_data_in_bist <= 32'hAAAAAAAA;
                                        control <=1;
                                        
                                        wr_en_in_bist <= 0;
                                        
                                        
                                        
                                        
                                        
                                        counter = counter + 1;
                                    end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                end
                            end
                        LSFR:
                            begin
                                //$display("BIST_Autocheck Pattern 011");
                                if (counter < 8)
                                    begin
                                        enable_LSFR <= 0;
                                        
                                        
                                        
                                        wr_data_in_bist <= LSFR_data;
                                        
                                        wr_reset_n_in_bist <= 1;
                                        wr_en_in_bist <= 1;
                                        control <=1;
                                        
                                        wr_en_in_bist <= 0;
                                        
                                        
                                        
                                        
                                        
                                        counter = counter + 1;
                                    end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                    enable_LSFR <= 1;
                                end
                            end
                    endcase
                end
            DEBUG:
                begin
                   case(pattern_bist)
                        ALL_0:
                            begin
                            $display("BIST_DEBUG Pattern 000 write");
                                if (counter < 8)
                                begin
                                    wr_reset_n_in_bist <= 1;
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'hFFFFFFFF;
                                    control <=1;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                    
                                    counter = counter + 1;
                                end
                                if (counter == pntr_bist)
                                begin
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'h00000000;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                    enable_LSFR <= 1;
                                end
                            end
                        ALL_1:
                            begin
                                $display("BIST_DEBUG Pattern 001 write");
                                if (counter < 8)
                                begin
                                    wr_reset_n_in_bist <= 1;
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'h00000000;
                                    control <=1;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                    
                                    counter = counter + 1;
                                end
                                if (counter == pntr_bist)
                                begin
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'hFFFFFFFF;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                    enable_LSFR <= 1;
                                end
                            end
                        CHKBOARD:
                            begin
                                $display("BIST_DEBUG Pattern 010 write");
                                if (counter < 8)
                                begin
                                    wr_reset_n_in_bist <= 1;
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'h55555555;
                                    control <=1;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                    
                                    counter = counter + 1;
                                end
                                if (counter == pntr_bist)
                                begin
                                    wr_en_in_bist <= 1;
                                    wr_data_in_bist <= 32'hAAAAAAAA;
                                    
                                    wr_en_in_bist <= 0;
                                    
                                    
                                    
                                    
                                end
                                if (counter == 8-1)
                                begin
                                    control <=0;
                                    counter = 0;
                                    
                                    wr_en_in_bist <= 0;
                                    enable_LSFR <= 1;
                                end
                            end
                        LSFR:
                            begin
                                $display("BIST_Autocheck Pattern 011");
                                /*enable_LSFR <= 1;
                                
                                enable_LSFR <= 0;
                                
                                
                                for (i=0; i<AW; i=i+1)
                                    begin
                                    w_data_bist <= LSFR_data;
                                    pntr_bist <= i;
                                    control <= 1;
                                    
                                    
                                    end
                                control <=0;
                                enable_LSFR <= 1;*/
                            end
                    endcase
                end
            REPAIR:
                begin

                end
            endcase 
        end
    end

endmodule

module mem_reader(
    clk,
    enable,
    mode,
    r_data,
    r_data_bist,
    pntr_bist_i,
    pntr_bist_o,
    r_e_bist,
    control,
    rd_en_in_bist,
    rd_reset_n_in_bist,
    reset
);

parameter DP = 3'd4;

/*Type of Patterns*/
/*Type of modes*/
parameter  IDLE = 2'b00;
parameter  AUTOCHECK = 2'b01;
parameter  DEBUG     = 2'b10;
parameter  REPAIR     = 2'b11;
parameter  AW = 1;
parameter  W  = 1;

input  clk;
input  enable;
input  [2:0] mode;
input  [3:0] pntr_bist_i;
input  [W-1 : 0]  r_data;
input  reset;
output  [W-1 : 0]  r_data_bist;
output  [3:0] pntr_bist_o;
output  r_e_bist;
output  control;
output  rd_en_in_bist;
output  rd_reset_n_in_bist;

reg [W-1 : 0]  r_data_bist;
reg  [3:0] pntr_bist_o;
reg  r_e_bist;
reg  control;
reg  rd_en_in_bist;
reg  rd_reset_n_in_bist;

reg [DP:0] counter_w;
reg [DP:0] counter_r;

/*always @(posedge reset)
begin
    counter_r = 0;
    counter_w = 0;
end

always @(negedge enable)
begin
    counter_w = counter_w + 1 ;
end*/

always @(posedge clk)
begin
    //@(negedge enable)
    //begin
        case(mode)
        AUTOCHECK:
            begin
                if(counter_r < counter_w)
                begin
                    control <=1;
                    
                    
                    
                    
                    rd_reset_n_in_bist <= 1;
                    rd_en_in_bist <= 1;
                    r_data_bist <= r_data;
                    counter_r = counter_r +1;
                    pntr_bist_o = counter_r;
                    
                    rd_en_in_bist <= 0;
                end
                if (counter_r == counter_w-1)
                begin
                    control <=0;
                end                   
            end
        DEBUG:
           begin
                if(counter_r < counter_w)
                begin
                    control <=1;
                    
                    
                    
                    rd_reset_n_in_bist <= 1;
                    rd_en_in_bist <= 1;
                    counter_r = counter_r +1;
                    pntr_bist_o = counter_r;
                    
                    rd_en_in_bist <= 0;
                end
                if (counter_r == pntr_bist_i+1)
                    r_data_bist <= r_data;
                if (counter_r == counter_w-1)
                begin
                    control <=0;
                end               
            end
        endcase
    //end 
end

endmodule

module bist_data(
    clk,
    pass_fail_check,
    test_issue,
    address_1,
    address_2,
    pattern_1,
    pattern_2,
    fail_check
);

/*Inputs for writer*/
input  clk;
input  pass_fail_check;
input  [32 : 0] test_issue;
output  [3:0] address_1;
output  [3:0] address_2;
output  [2:0] pattern_1;
output  [2:0] pattern_2;
output  fail_check;

reg  [3:0] address_1;
reg  [3:0] address_2;
reg  [2:0] pattern_1;
reg  [2:0] pattern_2;
reg  fail_check;
reg [3:0] counter;
 
always @(negedge pass_fail_check) begin
    if (counter==1)
        begin
            address_1 <= test_issue[6:3];
            pattern_1 <= test_issue[2:0];
            fail_check = 1;
        end
    if (counter==2)
        begin
            address_2 <= test_issue[6:3];
            pattern_2 <= test_issue[2:0];
            fail_check = 1;
        end
    if (counter==3)
        counter = 0;
    counter = counter + 1;
end

endmodule

module mux_s (
  D0,
  D1,
  S,
  Y);

input wire D0;
input wire D1;
input wire S;
output reg Y;

  always @(S,D0,D1) 
    begin 
        if(S) 
        Y= D1;
        else 
        Y=D0; 
    end
endmodule

module mux_f (
  D0, D1,
  S,
  Y);
  parameter W=1;
  input wire [W-1 : 0] D0, D1;
  input wire S;
  output reg [W-1 : 0] Y;
  always @(S,D0,D1) 
    begin 
        if(S) 
        Y <= D1;
        else 
        Y <=D0; 
    end
endmodule

module mux_f_2 (
  D0, D1,
  S,
  Y);
  parameter AW=1;
  input wire [AW : 0] D0, D1;
  input wire S;
  output reg [AW : 0] Y;
  always @(S,D0,D1) 
    begin 
        if(S) 
        Y <= D1;
        else 
        Y <=D0; 
    end
endmodule

module ff_d(
    input d,
    input clk,
    input rst,
    output q
    );
  reg q;
always 
    begin
    if(rst==1'b1)
        begin
            q=1'b0;
        end
    else
        begin
            q=d;
        end
    end
endmodule

module LSFR(
    clk, 
    reset, 
    q
);
parameter N = 7;
input wire clk;
input wire reset;
output wire [N:0] q;
reg [N:0] r_reg;
wire [N:0] r_next;
wire feedback_value;
                        
always @(posedge clk, posedge reset)
begin 
    if (reset)
        begin
        // set initial value to 1
        r_reg <= 1;  // use this or uncomment below two line
        end     
    /*else if (clk == 1)
        r_reg <= r_next;*/
end

assign feedback_value = r_reg[7] ^ r_reg[6] ^ r_reg[0];
assign r_next = {feedback_value, r_reg[N:1]};
assign q = r_reg;

endmodule 

/*module sig_reg(
    input  [8:0]a,
    input clk,
    input rst,
    output  [8:0]y
    );
  //wire [7:0]w;
  //reg y;
  //wire f;
  wire [8:0]s;
//xor_gate xor14 (a[0],a[1],w[0]);
//xor_gate xor15 (w[0],a[2],w[1]);
//xor_gate xor16 (w[1],a[3],w[2]);
//xor_gate xor17 (w[2],a[4],w[3]);
//xor_gate xor18 (w[3],a[5],w[4]);
//xor_gate xor19 (w[4],a[6],w[5]);
//xor_gate xor20 (w[5],a[7],w[6]);
//xor_gate xor21 (w[6],a[8],w[7]);

xor_gate xor22 (a[7],y[8],s[0]);
d_ff dff1 (.d (s[0]),.clk (clk),.rst (rst),.q (y[0]));

xor_gate xor23 (a[0],y[0],s[1]);
d_ff dff2 (s[1],clk,rst,y[1]);

xor_gate xor24 (a[1],y[1],s[2]);
d_ff dff3 (s[2],clk,rst,y[2]);

xor_gate xor25 (a[2],y[2],s[3]);
d_ff dff4 (s[3],clk,rst,y[3]);

xor_gate xor26 (a[3],y[3],s[4]);
d_ff dff5 (s[4],clk,rst,y[4]);

xor_gate xor27 (a[4],y[4],s[5]);
d_ff dff6 (s[5],clk,rst,y[5]);

xor_gate xor28 (a[5],y[5],s[6]);
d_ff dff7 (s[6],clk,rst,y[6]);

xor_gate xor29 (a[6],y[6],s[7]);
d_ff dff8 (s[7],clk,rst,y[7]);

xor_gate xor30 (a[8],y[7],s[8]);
d_ff dff9 (s[8],clk,rst,y[8]);

endmodule*/