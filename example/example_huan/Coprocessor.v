`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/23 23:35:39
// Design Name: 
// Module Name: Coprocessor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//parameter DATA_WIDTH = 32;   //���㾫��FP32

//parameter ImgInW1 = 28;      //ԭʼ����ͼ��1��
//parameter ImgInH1 = 28;      //ԭʼ����ͼ��1��
//parameter ImgInW2 = 14;      //ԭʼ����ͼ��2��
//parameter ImgInH2 = 14;      //ԭʼ����ͼ��3��

//parameter Filter1 = 1;       //�����1��С
//parameter Filter2 = 5;       //�����1��С

//parameter Depth1 = 512;      //����ͼ��1���
//parameter Depth2 = 6;        //����ͼ��2���

//parameter Kernel1 = 64;     //����ͼ��1���
//parameter Kernel2 = 16;     //����ͼ��2���

//parameter Conv1Out = 28;    //������1���
//parameter Conv2Out = 10;    //������2���

module Coprocessor( 
       input clk, 
       input [7:0] Command,
       
       output [31:0] douta_R1,
       output [31:0] douta_R2,     
       output [31:0] douta_L1,
       output [31:0] douta_L2,
       output finish_R,
       output finish_L
    );
    
wire reset1, reset2, reset_R_ROM, reset_L_ROM, reset_R_RAM, reset_L_RAM, wea_R, wea_L;    

wire [512*28*28*32-1:0] image_R;       //����ͼ����1
wire [6*14*14*32-1:0] image_L;       //����ͼ����2
wire [64*512*1*1*32-1:0] filter_R;  //���Ȩ��1
wire [16*6*5*5*32-1:0] filter_L;  //���Ȩ��2

wire [64*28*28*32-1:0] C1out;       //������1
wire [16*10*10*32-1:0] C2out;       //������2

 Control  kongzhi 
(
	.Command(Command),		
	
	.reset_R_ROM(reset_R_ROM),	
	.reset_L_ROM(reset_L_ROM),		
	.reset_R_RAM(reset_R_RAM),	
	.reset_L_RAM(reset_L_RAM),		
	.wea_R(wea_R),	
	.wea_L(wea_L),	
	.reset1(reset1),	
	.reset2(reset2),
	.finish_R(finish_R),	
	.finish_L(finish_L)			
); 

 
Read  dushu 
(
	.clk(clk),
	.reset_R(reset_R_ROM),	
	.reset_L(reset_L_ROM),	

	.image_R(image_R),
    .filter_R(filter_R),
	.image_L(image_L),
    .filter_L(filter_L) 
); 
 

 
    
Convolver Convolv (
    .clk(clk),
    .reset1(reset1),   
    .reset2(reset2),    
    .CNNinput1(image_R),
    .CNNinput2(image_L),   
    .Conv1F(filter_R), 
    .Conv2F(filter_L),
    
    .C1out(C1out),   
    .C2out(C2out)
);    
        

Storage  xieshu 
(
	.clk(clk),
	.reset_R(reset_R_RAM),		
	.reset_L(reset_L_RAM),	
	.wea_R(wea_R),		
	.wea_L(wea_L),	
	.convout_R({C1out, 128'b0}),		
	.convout_L({C2out, 128'b0}),	

	.douta_R1(douta_R1),	
	.douta_R2(douta_R2),			
	.douta_L1(douta_L1),	
	.douta_L2(douta_L2)	
);     
    
    
    
    
    
    
endmodule
