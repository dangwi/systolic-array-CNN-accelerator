module PE_ARRAY#(
    parameter WORDWIDTH = 32
  )
  (
    input clk,
    input rstn,
    input [WORDWIDTH*1-1:0]op_a,
    input [WORDWIDTH*1-1:0]op_b,
    input [WORDWIDTH*1-1:0]op_c,
    input [2:0]rnd_mode,
    input gate,
    output [WORDWIDTH*1-1:0]result_O,
    output flag_overflow_O,
    output flag_underflow_O
  );

  fma  m_fma(
         .clk_I(clk),
         .rst_n_I(rstn),
         .operand_a_I(op_a),
         .operand_b_I(op_b),
         .operand_c_I(op_c),
         .rnd_mode(rnd_mode),//0:round to nearest, 1:round to zero, 2:round to +inf, 3:round to -inf
         .gate(gate),//0:close, 1:open

         .result_O(result_O),
         .flag_overflow_O(flag_overflow_O),//0:overflow, 1:no overflow
         .flag_underflow_O(flag_underflow_O)//0:underflow, 1:no underflow
         // .done_valid_O(done_valid_O)
       );

endmodule
