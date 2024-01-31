module PE #(
    parameter WORDWIDTH = 32
)(
    input                   clk,
    input                   rst_n,
    input  [WORDWIDTH-1:0]  F,
    input  [WORDWIDTH-1:0]  W,
    input  [WORDWIDTH-1:0]  C,
    input                   gate,

    output [WORDWIDTH-1:0]  P
);

    wire [2:0]  rnd_mode;
    wire    flag_overflow_O, flag_underflow_O;
    assign  rnd_mode = 3'b000;

    fma m_fma(
        .clk_I(clk),
        .rst_n_I(rst_n),
        .operand_a_I(F),
        .operand_b_I(W),
        .operand_c_I(C),
        .rnd_mode(rnd_mode),//0:round to nearest, 1:round to zero, 2:round to +inf, 3:round to -inf
        .gate(gate),//0:close, 1:open

        .result_O(P),
        .flag_overflow_O(flag_overflow_O),//0:overflow, 1:no overflow
        .flag_underflow_O(flag_underflow_O)//0:underflow, 1:no underflow
        // .done_valid_O(done_valid_O)
    );

endmodule
