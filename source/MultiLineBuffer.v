module MultiLineBuffer #(
    parameter WORDWIDTH  = 32,
    parameter FIG_WIDTH  = 28,
    parameter WEIGHTLEN  = 5,
    parameter FIG_ADDRLEN = 5
)(
    input                   clk,
    input                   rst_n,

    input  [WORDWIDTH-1:0]  din,
    input                   in_valid,

    output [WORDWIDTH*WEIGHTLEN-1:0]  dout,
    output                  out_valid,

    output                  ready
);

    wire [WORDWIDTH-1:0] line_in[WEIGHTLEN-1:0];
    wire [WEIGHTLEN-1:0] line_in_valid;

    wire [WORDWIDTH-1:0] line_out[WEIGHTLEN-1:0];
    wire [WEIGHTLEN-1:0] line_out_valid;

    wire [WEIGHTLEN-1:0] line_ready;
    
    assign out_valid = line_out_valid[WEIGHTLEN-1];
    assign ready     = & line_ready;

    genvar i;
    generate
        for (i=0; i<WEIGHTLEN; i=i+1) begin: LineBuf
            if ( i == 0 ) begin
                assign line_in[0] = din;
                assign line_in_valid[0] = in_valid;
            end
            else begin
                assign line_in[i] = line_out[i-1];
                assign line_in_valid[i] = line_out_valid[i-1];

            end


            LineBuffer #(
                .WORDWIDTH(WORDWIDTH),
                .FIG_WIDTH(FIG_WIDTH),
                .FIFO_ADDRLEN(FIG_ADDRLEN)
            ) linebuf_inst(
                .clk(clk),
                .rst_n(rst_n),
                .din(line_in[i]),
                .in_valid(line_in_valid[i]),
                .dout(line_out[i]),
                .out_valid(line_out_valid[i]),
                .ready(line_ready[i])
            );
        end
    endgenerate

    genvar j;
    generate
        for (i=0; i<WEIGHTLEN-1; i=i+1) begin: Align
            reg  [WORDWIDTH-1:0]  out_align[WEIGHTLEN-i-2:0];
            always @(posedge clk) out_align[0] <= line_out[i];
            
            for (j=1; j<=WEIGHTLEN-i-2; j=j+1) begin
                always @(posedge clk) out_align[j] <= out_align[j-1];
            end

            // here is the difference, datas flow into linebuffer from
            // line_out[0] to line_out[WEIGHTLEN-1], which means line_out[0] is
            // the newest one. but it is more convenient that index 0 to 
            // WEIGHTLEN-1 represent the oldest line to the newest in conv,
            // so we need to reverse the order.
            assign dout[WORDWIDTH*(WEIGHTLEN-i)-1:WORDWIDTH*(WEIGHTLEN-i-1)]
                                                  = out_align[WEIGHTLEN-i-2];
        end
    endgenerate
    assign dout[WORDWIDTH-1:0] = line_out[WEIGHTLEN-1];


endmodule