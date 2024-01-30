module SFR#(
    parameter A_DATA_ADDRWIDTH=19,    //activation数据的地址宽度
    parameter W_DATA_ADDRWIDTH=15,    //weight数据的地址宽度
    parameter A_ADD_ADDR=784, //activation自加地址
    parameter NET_o_addrWIDTH = 16, // 输出地址位宽
    parameter W_ADD_ADDR=1 //weight自加地址
  )(
    input clk,
    input rstn,
    input start_sig,
    input [A_DATA_ADDRWIDTH-1:0] a_addr_0,
    input [W_DATA_ADDRWIDTH-1:0] w_addr_0,z
    input rst_sfr, //rst_sfr表示是否使能SFR模块，1是暂停计数，0表示开始计数
    //input ctrl1,
    input lock,
    input en_counter,
    output reg continue_signal, //continue信号,1表示继续,0表示停止
    output reg [A_DATA_ADDRWIDTH-1:0] a_addr=0,
    output reg [W_DATA_ADDRWIDTH-1:0] w_addr=0
    //output reg [NET_o_addrWIDTH-1:0] o_addr=0
  );
  reg [8:0] count_fma;
  always@(posedge clk or negedge rstn or negedge rst_sfr or negedge en_counter or posedge en_counter)
  begin
    if(~rstn||~start_sig)
    begin
      count_fma<=9'd0;
      continue_signal<=1'b1;
      a_addr<=a_addr_0;
      w_addr<=w_addr_0;
    end
    else if(~rst_sfr)
    begin
      continue_signal<=1'b1;
      a_addr<=a_addr_0;
      w_addr<=w_addr_0;
      count_fma<=0;
    end
    else if(en_counter==1'b1)
    begin
      // @dangwi: for Resnet50, W: (1x1x512)x64
      if(count_fma==9'd511)
      begin
        //count_fma<=10'd0;
        continue_signal<=1'b1;
        //o_addr<=o_addr+1'b1;
      end 
      else if(lock==1'b1)
      begin
        continue_signal<=1'b0;
        count_fma<=count_fma+1;
        // @dangwi: for Resnet50, A: 28x28x512
        a_addr<=a_addr+10'd784; // @dangwi: I guess it is 28*28
        w_addr<=w_addr+1'b1;
      end
      else
      begin
        continue_signal<=1'b1;
        count_fma<=count_fma+1;
        a_addr<=a_addr+10'd784;
        w_addr<=w_addr+1'b1;
      end
    end
    else
    begin
      continue_signal<=1'b1;
      a_addr<=a_addr_0;
      w_addr<=w_addr_0;
      count_fma<=0;
    end
  end

endmodule
