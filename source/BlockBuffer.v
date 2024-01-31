module BlockBuffer #(
    parameter WORDWIDTH  = 32,
    parameter FIG_WIDTH  = 28,
    parameter WEIGHTLEN  = 5,
    parameter FIG_ADDRLEN = 5
)(
    input                   clk,
    input                   rst_n,

    input  [WORDWIDTH-1:0]  din,
    input                   in_valid,

    output [WORDWIDTH-1:0]  dout[WEIGHTLEN-1:0],
    output                  out_valid
);

    wire [WORDWIDTH-1:0] line_in[WEIGHTLEN-1:0];
    wire [WEIGHTLEN-1:0] line_in_valid;

    wire [WORDWIDTH-1:0] line_out[WEIGHTLEN-1:0];
    wire [WEIGHTLEN-1:0] line_out_valid;

    assign dout[WEIGHTLEN-1:0] = line_out[WEIGHTLEN-1:0];
    assign out_valid = & line_out_valid;

    genvar i;
    generate
        for (i=0; i<WEIGHTLEN; i=i+1) begin: LineBuf
            if (i==0) begin
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
                .out_valid(line_out_valid[i])
            );
        end
    endgenerate


endmodule