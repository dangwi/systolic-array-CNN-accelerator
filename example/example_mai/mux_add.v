module MUX_ADD(
    input ctrl_add,
    input [31:0] input_a,
    input [31:0] input_r,
    input [31:0] input_w,
    output reg [31:0] op_a,
    output reg [31:0] op_b
  );

  always@(*)
  begin
    case (ctrl_add)
      1'b0:
      begin
        op_a=input_r;
        op_b=32'b00111111100000000000000000000000; // @dangwi: what is this? 32'd1016
      end
      1'b1:
      begin
        op_a=input_a;
        op_b=input_w;
      end
    endcase
  end

endmodule
