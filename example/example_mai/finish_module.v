module FINISH_MODULE(
    input clk,
    input rstn,
    input finish_ctrl,
    output reg finish_sig
  );

  always@(posedge clk or negedge rstn)
  begin
    if(~rstn)
    begin
      finish_sig<=1'b0;
    end
    else
    begin
      if (finish_ctrl)
      begin
        finish_sig<=1'b1;
      end
    end
  end


endmodule
