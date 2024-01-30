`timescale 100 ns / 10 ps


module Convolver (clk,reset1,reset2,CNNinput1,CNNinput2,Conv1F,Conv2F, C1out,C2out);

parameter DATA_WIDTH = 32;   //���㾫��FP32

parameter ImgInW1 = 28;      //ԭʼ����ͼ��1��
parameter ImgInH1 = 28;      //ԭʼ����ͼ��1��
parameter ImgInW2 = 14;      //ԭʼ����ͼ��2��
parameter ImgInH2 = 14;      //ԭʼ����ͼ��3��

parameter Filter1 = 1;       //�����1��С
parameter Filter2 = 5;       //�����1��С

parameter Depth1 = 512;      //����ͼ��1���
parameter Depth2 = 6;        //����ͼ��2���

parameter Kernel1 = 64;     //����ͼ��1���
parameter Kernel2 = 16;     //����ͼ��2���

parameter Conv1Out = 28;    //������1���
parameter Conv2Out = 10;    //������2���

input clk, reset1, reset2;
input [Depth1*ImgInW1*ImgInH1*DATA_WIDTH-1:0] CNNinput1;       //����ͼ����1
input [Depth2*ImgInW2*ImgInH2*DATA_WIDTH-1:0] CNNinput2;       //����ͼ����2
input [Kernel1*Depth1*Filter1*Filter1*DATA_WIDTH-1:0] Conv1F;  //���Ȩ��1
input [Kernel2*Depth2*Filter2*Filter2*DATA_WIDTH-1:0] Conv2F;  //���Ȩ��2

output [Kernel1*Conv1Out*Conv1Out*DATA_WIDTH-1:0] C1out;       //������1
output [Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1:0] C2out;       //������2


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


// ��������źţ�����Resnet���λ������ֻչʾǰ8192λ�ͺ�8192λ
wire [511:0] C1out_qian;
wire [511:0] C1out_hou;

assign C1out_qian = C1out[1605631 : 1605631  -511];
assign C1out_hou  = C1out[511:0];


convLayerMulti Lenet2
(
	.clk(clk),
	.reset(reset2),
	.image(CNNinput2),  //����ͼ����
	.filters(Conv2F),   //���Ȩ��
	.outputConv(C2out)  //������
);

// ��������źţ�����Lenet���λ������ֻչʾǰ8192λ�ͺ�8192λ
wire [511:0] C2out_qian;
wire [511:0] C2out_hou;

assign C2out_qian = C2out[Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1 : Kernel2*Conv2Out*Conv2Out*DATA_WIDTH-1  -511];
assign C2out_hou  = C2out[511:0];


endmodule