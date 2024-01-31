module VHArray #(
    parameter WORDWIDTH = 32,
    parameter ARRAYLEN  = 25
)(
    input                   clk,
    input                   rst_n,

    input  [WORDWIDTH-1:0]  F[ARRAYLEN-1:0],
    input  [WORDWIDTH-1:0]  W[ARRAYLEN-1:0],
    input                   in_valid,

    output [WORDWIDTH-1:0]  P,
    output                  out_valid
);
    wire [WORDWIDTH-1:0]    C[ARRAYLEN-1:0];
    reg  [ARRAYLEN:0]       valid_reg;

    assign  P = C[ARRAYLEN:0];
    assign  out_valid = valid_reg[ARRAYLEN];

    always @(posedge clk) begin
        if (!rst_n)
            valid_reg <= 0;
        else begin
            valid_reg <= {valid_reg[ARRAYLEN-1:0], in_valid};
        end
    end

    PE #(
        .WORDWIDTH(WORDWIDTH)
    ) pe_inst0(
        .clk(clk),
        .rst_n(rst_n),
        .F(F[0]),
        .W(W[0]),
        .C(0),
        .gate(1'b1),
        .P(C[0])
    );
    genvar i;
    generate
        for (i=1; i<ARRAYLEN; i=i+1) begin: PE_GEN
            PE #(
                .WORDWIDTH(WORDWIDTH)
            ) pe_inst(
                .clk(clk),
                .rst_n(rst_n),
                .F(F[i]),
                .W(W[i]),
                .C(C[i-1]),
                .gate(1'b1),
                .P(C[i])
            );
        end
    endgenerate



endmodule