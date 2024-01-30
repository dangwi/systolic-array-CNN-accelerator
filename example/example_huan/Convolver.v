`timescale 100 ns / 10 ps


module Convolver (clk,reset1,reset2,CNNinput1,CNNinput2,Conv1F,Conv2F, C1out,C2out);

parameter DATA_WIDTH = 32;   //计算精度FP32

parameter ImgInW1 = 28;      //原始输入图像1宽
parameter ImgInH1 = 28;      //原始输入图像1宽
parameter ImgInW2 = 14;      //原始输入图像2宽
parameter ImgInH2 = 14;      //原始输入图像3宽

parameter Filter1 = 1;       //卷积核1大小
parameter Filter2 = 5;       //卷积核1大小

parameter Depth1 = 512;      //输入图像1深度
parameter Depth2 = 6;        //输入图像2深度

parameter Kernel1 = 64;     //输入图像1深度
parameter Kernel2 = 16;     //输入图像2深度

parameter Conv1Out = 28;    //卷积结果1宽高
parameter Conv2Out = 10;    //卷积结果2宽高

input clk, reset1, reset2;
input [Depth1*ImgInW1*ImgInH1*DATA_WIDTH-1:0] CNNinput1;       //特征图输入1
input [Depth2*ImgInW2*ImgInH2*DATA_WIDTH-1:0] CNNinput2;       //特征图输入2
input [Kernel1*Depth1*Filter1*Filter1*DATA_WIDTH-1:0] Conv1F;  //卷积权重1
input [Kernel2*Depth2*Filter2*Filter2*DATA_WIDTH-1:0] Conv2F;  //卷积权重2

output [Kernel1*Conv1Out*Conv1Out*DATA_WIDTH-1:0] C1out;       //卷积结果1
output [Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1:0] C2out;       //卷积结果2


convLayerMulti
#(
  .DATA_WIDTH(32),
  .D(512),
  .H(28),
  .W(28),
  .F(1),
  .K(64)
) Resnet1 
(
	.clk(clk),
	.reset(reset1),
	.image(CNNinput1),
	.filters(Conv1F),
	.outputConv(C1out)
);


// 输出测试信号，由于Resnet输出位数过大，只展示前8192位和后8192位
wire [511:0] C1out_qian;
wire [511:0] C1out_hou;

assign C1out_qian = C1out[1605631 : 1605631  -511];
assign C1out_hou  = C1out[511:0];


convLayerMulti Lenet2
(
	.clk(clk),
	.reset(reset2),
	.image(CNNinput2),  //特征图输入
	.filters(Conv2F),   //卷积权重
	.outputConv(C2out)  //卷积结果
);

// 输出测试信号，由于Lenet输出位数过大，只展示前8192位和后8192位
wire [511:0] C2out_qian;
wire [511:0] C2out_hou;

assign C2out_qian = C2out[Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1 : Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1  -511];
assign C2out_hou  = C2out[511:0];


endmodule