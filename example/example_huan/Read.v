`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/22 21:45:40
// Design Name: 
// Module Name: dushu
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


module Read(
     input  clk, 
     input  reset_R,     
     input  reset_L,
     output reg [0:512*28*28*32-1] image_R,
     output reg [0:64*512*1*1*32-1] filter_R,       
     output reg [0:6*14*14*32-1] image_L,
     output reg [0:16*6*5*5*32-1] filter_L     
    );





// Resnet输入部分*************************

wire [0:31] dout_RA1;
wire [0:31] dout_RA2;

reg finish_RA;
reg [0:18] addra_RA; 
    
 
 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_R)
begin
   if (reset_R || addra_RA== 512*28*28+2)   addra_RA = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_RA < 512*28*28+2)      addra_RA = addra_RA + 2;      //正常状态，地址自加  <=不对
   else addra_RA = 0;
end	

 // 通过时钟，生成ROM的地址信号
always@( * )
begin
   if (reset_R) image_R = 0;
   else if (finish_RA != 1)   image_R [(addra_RA-2)*32+:32*2]= {dout_RA1, dout_RA2};      //正常状态，地址自加
   else image_R = image_R; 
end	

 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_R)
begin
   if (reset_R)                  finish_RA = 0;
   else if (addra_RA == 512*28*28+2)  finish_RA = 1;      //正常状态，地址自加
   else                        finish_RA = finish_RA;    
end	


blk_rom_RA1 rom_RA1 (
  .clka(clk),    // input wire clka
  .ena(~reset_R),      // input wire ena
  .addra(addra_RA),  // input wire [18 : 0] addra
  .douta(dout_RA1),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_R),      // input wire enb
  .addrb(addra_RA+1),  // input wire [18 : 0] addrb
  .doutb(dout_RA2)  // output wire [31 : 0] doutb
);

// 位宽过大无法显示，使用截位测试信号
wire [0:16383] image_R_hou;
assign image_R_hou = image_R[512*28*28*32-1 -16383:512*28*28*32-1];



/////// RESnet 权重部分********************************************************************

wire [0:31] dout_RW1;
wire [0:31] dout_RW2;

reg finish_RW;
reg [0:15] addra_RW; 
    
 
 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_R)
begin
   if (reset_R || addra_RW== 64*512*1*1+2)   addra_RW = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_RW < 64*512*1*1+2)      addra_RW = addra_RW + 2;      //正常状态，地址自加  <=不对
   else addra_RW = 0;
end	

 // 通过时钟，生成ROM的地址信号
always@( * )
begin
   if (reset_R) filter_R = 0;
   else if (finish_RW != 1)   filter_R [(addra_RW-2)*32+:32*2]= {dout_RW1, dout_RW2};      //正常状态，地址自加
   else filter_R = filter_R; 
end	

 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_R)
begin
   if (reset_R)                  finish_RW = 0;
   else if (addra_RW == 64*512*1*1+2)  finish_RW = 1;      //正常状态，地址自加
   else                        finish_RW = finish_RW;    
end	



blk_rom_RW1  rom_RW1 (
  .clka(clk),    // input wire clka
  .ena(~reset_R),      // input wire ena
  .addra(addra_RW),  // input wire [15 : 0] addra
  .douta(dout_RW1),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_R),      // input wire enb
  .addrb(addra_RW+1),  // input wire [15 : 0] addrb
  .doutb(dout_RW2)  // output wire [31 : 0] doutb
);


// 位宽过大无法显示，使用截位测试信号
reg [0:16383] filter_R_hou;
//assign filter_R_hou = filter_R[64*512*1*1*32-1 -16383:64*512*1*1*32-1];

always@( * )
begin
filter_R_hou = filter_R[64*512*1*1*32-1 -16383:64*512*1*1*32-1];
end	

wire [0:31] filter_R_mo;
assign filter_R_mo = filter_R[64*512*1*1*32-1 -31:64*512*1*1*32-1];

// Lenet输入部分*************************

wire [0:31] dout_LA1;
wire [0:31] dout_LA2;

reg finish_LA;
reg [0:10] addra_LA; 
    
 
 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_L)
begin
   if (reset_L || addra_LA== 14*14*6+2)   addra_LA = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_LA < 14*14*6+2)      addra_LA = addra_LA + 2;      //正常状态，地址自加  <=不对
   else addra_LA = 0;
end	

 // 通过时钟，生成ROM的地址信号
always@( * )
begin
   if (reset_L) image_L = 0;
   else if (finish_LA != 1)   image_L [(addra_LA-2)*32+:32*2]= {dout_LA1, dout_LA2};      //正常状态，地址自加
   else image_L = image_L; 
end	

 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_L)
begin
   if (reset_L)                  finish_LA = 0;
   else if (addra_LA == 14*14*6+2)  finish_LA = 1;      //正常状态，地址自加
   else                        finish_LA = finish_LA;    
end	


blk_rom_LA1  rom_LA1 (
  .clka(clk),    // input wire clka
  .ena(~reset_L),      // input wire ena
  .addra(addra_LA),  // input wire [10 : 0] addra
  .douta(dout_LA1),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_L),      // input wire enb
  .addrb(addra_LA+1),  // input wire [10 : 0] addrb
  .doutb(dout_LA2)  // output wire [31 : 0] doutb
);


/////// Lenet 权重部分********************************************************************

wire [0:31] dout_LW1;
wire [0:31] dout_LW2;

reg finish_LW;
reg [0:11] addra_LW; 
    
 
 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_L)
begin
   if (reset_L || addra_LW== 16*6*5*5+2)   addra_LW = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_LW < 16*6*5*5+2)      addra_LW = addra_LW + 2;      //正常状态，地址自加  <=不对
   else addra_LW = 0;
end	

 // 通过时钟，生成ROM的地址信号
always@( * )
begin
   if (reset_L) filter_L = 0;
   else if (finish_LW != 1)   filter_L [(addra_LW-2)*32+:32*2]= {dout_LW1, dout_LW2};      //正常状态，地址自加
   else filter_L = filter_L; 
end	

 // 通过时钟，生成ROM的地址信号
always@(posedge clk or posedge reset_L)
begin
   if (reset_L)                  finish_LW = 0;
   else if (addra_LW == 16*6*5*5+2)  finish_LW = 1;      //正常状态，地址自加
   else                        finish_LW = finish_LW;    
end	


// 位宽过大无法显示，使用截位测试信号
wire [0:16383] filter_L_hou;
assign filter_L_hou = filter_L[16*6*5*5*32-1 -16383:16*6*5*5*32-1];


blk_rom_LW1  rom_LW1 (
  .clka(clk),    // input wire clka
  .ena(~reset_L),      // input wire ena
  .addra(addra_LW),  // input wire [11 : 0] addra
  .douta(dout_LW1),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_L),      // input wire enb
  .addrb(addra_LW+1),  // input wire [11 : 0] addrb
  .doutb(dout_LW2)  // output wire [31 : 0] doutb
);

endmodule
