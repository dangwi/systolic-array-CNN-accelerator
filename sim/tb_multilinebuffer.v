`timescale 1ns / 1ps
module tb_multilinebuffer;
    parameter WORDWIDTH = 32;
    parameter FIG_WIDTH = 28;
    parameter WEIGHTLEN  = 5;
    parameter FIG_ADDRLEN = 5;

    reg  clk, rst_n, in_valid;
    wire out_valid, ready;
    reg  [WORDWIDTH-1:0] din;
    wire [WORDWIDTH*WEIGHTLEN-1:0] dout;
    wire [WORDWIDTH-1:0] dout_array[WEIGHTLEN-1:0];

    always #5 clk = ~clk;

    genvar i;
    generate
        for (i=0; i<WEIGHTLEN; i=i+1)
            assign dout_array[i] = dout[(i+1)*WORDWIDTH-1:i*WORDWIDTH];
    endgenerate

    initial begin
        clk = 0;
        rst_n = 1;
        in_valid = 0;
        din = 0;
        
        #10
        rst_n = 0;
        
        #15
        rst_n = 1;
        #160
        
        repeat (200) begin 
        @(posedge clk) in_valid = 1;
        din = din + 32'b1;
        @(posedge clk) in_valid = 0;
        if ( din % 3 == 0)
            @(posedge clk);
        if ( din % 5 == 0 )
            @(posedge clk);
        if ( din % 7 == 0 )
            @(posedge clk);
        end
        
        $finish;	  
        
    end
    

    MultiLineBuffer #(
        .WORDWIDTH(WORDWIDTH),
        .FIG_WIDTH(FIG_WIDTH),
        .WEIGHTLEN(WEIGHTLEN),
        .FIG_ADDRLEN(FIG_ADDRLEN)
    ) multilinebuf_inst(
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .in_valid(in_valid),
        .dout(dout),
        .out_valid(out_valid),
        .ready(ready)
    );

endmodule
