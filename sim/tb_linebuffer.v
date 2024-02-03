`timescale 1ns / 1ps
module tb_linebuffer;
    parameter WORDWIDTH = 32;
    parameter FIG_WIDTH = 28;
    parameter FIFO_ADDRLEN = 5;

    reg  clk, rst_n, in_valid;
    wire out_valid;
    reg  [WORDWIDTH-1:0] din;
    wire [WORDWIDTH-1:0] dout;

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 1;
        in_valid = 0;
        din = 1;
        
        #10
        rst_n = 0;
        
        #15
        rst_n = 1;
        #160
        
        in_valid = 1;
        
        repeat (60) begin 
        in_valid = 1;
        #10;
        in_valid = 0;
        #10;
        din = din + 32'b1;
        end
        
        $finish;	  
        
    end
    

    LineBuffer #(
        .WORDWIDTH(WORDWIDTH),
        .FIG_WIDTH(FIG_WIDTH),
        .FIFO_ADDRLEN(FIFO_ADDRLEN)
    ) linebuf_inst(
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .in_valid(in_valid),
        .dout(dout),
        .out_valid(out_valid)
    );

endmodule
