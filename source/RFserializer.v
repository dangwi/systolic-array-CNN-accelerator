// RF: Receptive Field Serializer
module RFserializer #(
    parameter WORDWIDTH = 32,
    parameter FIG_WIDTH = 28,
    parameter WEIGHTLEN = 5,
    parameter ARRAYLEN  = 25,
    parameter FIG_ADDRLEN = 5
)(
    input                   clk,
    input                   rst_n,

    input  [WORDWIDTH-1:0]  din,
    input                   in_valid,

    output [WORDWIDTH-1:0]  dout[ARRAYLEN-1:0],
    output                  out_valid
);


endmodule