module MUX0(
    input [31:0] input0,
    input [31:0] result,
    input ctrl0,
    output reg [31:0] mux0_out
  );

  always@(*)
  begin
    case (ctrl0)
      1'b0:
        mux0_out=input0;
      1'b1:
        mux0_out=result;
    endcase
  end

endmodule
