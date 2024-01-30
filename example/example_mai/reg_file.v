module REG_FILE(
    input clk,
    input rstn,
    input [31:0] reg_data,
    output [31:0]reg_out
  );
  reg [31:0] reg0;
  assign reg_out=reg0;
  always@(posedge clk or negedge rstn)
  begin
    if(~rstn)
    begin
      reg0<=32'd0;
    end
    else
    begin
      reg0<=reg_data;
    end
  end

endmodule
