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


module Storage(
     input  clk, 
     input  reset_R,
     input  reset_L,
     input  wea_R,
     input  wea_L,
     input [0:64*28*28*32+32*4-1] convout_R,
     input [0:16*10*10*32+32*4-1] convout_L,

     output reg [0:31] douta_R1,
     output reg [0:31] douta_R2,     
     output reg [0:31] douta_L1,
     output reg [0:31] douta_L2
    );





// Lenet读写**********************************

reg [0:31] dina_R1;
reg [0:31] dina_R2;

reg [0:15] addra_R; 
    
 
 // 通过时钟，生成RAM的地址信号
always@(posedge clk or posedge reset_R)
begin
   if (reset_R || addra_R == 64*28*28+2)   addra_R = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_R < 64*28*28+2)      addra_R = addra_R + 2;      //正常状态，地址自加
   else addra_R = 0;
end	

 // 通过时钟，生成RAM的地址信号
always@( * )
begin
   if (reset_R) {dina_R1, dina_R2} = 0;
   else if (addra_R == 0)  {dina_R1, dina_R2} = 0;
   else   {dina_R1, dina_R2} = convout_R[(addra_R-2)*32+:32*2];      //正常状态，地址自加
end	

wire [0:31] douta_R1_m, douta_R2_m;

blk_ram_R1  RAM_R (
  .clka(clk),    // input wire clka
  .ena(~reset_R),      // input wire ena
  .wea(wea_R),      // input wire [0 : 0] wea
  .addra(addra_R),  // input wire [15 : 0] addra
  .dina(dina_R1),    // input wire [31 : 0] dina
  .douta(douta_R1_m),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_R),      // input wire enb
  .web(wea_R),      // input wire [0 : 0] web
  .addrb(addra_R+1),  // input wire [15 : 0] addrb
  .dinb(dina_R2),    // input wire [31 : 0] dinb
  .doutb(douta_R2_m)  // output wire [31 : 0] doutb
);

always @(*) begin
    if  (reset_R == 1) begin
        douta_R1 = 0;
        douta_R2 = 0;    
    end
    else begin
        douta_R1 = douta_R1_m;
        douta_R2 = douta_R2_m;    
    end   
end







// Lenet读写**********************************

reg [0:31] dina_L1;
reg [0:31] dina_L2;

reg [0:10] addra_L; 
    
 
 // 通过时钟，生成RAM的地址信号
always@(posedge clk or posedge reset_L)
begin
   if (reset_L || addra_L == 16*10*10+2)   addra_L = 0;//复位或地址到达最大值，下一个地址置0   
   else if (addra_L < 16*10*10+2)      addra_L = addra_L + 2;      //正常状态，地址自加
   else addra_L = 0;
end	

 // 通过时钟，生成RAM的地址信号
always@( * )
begin
   if (reset_L) {dina_L1, dina_L2} = 0;
   else if (addra_L == 0)  {dina_L1, dina_L2} = 0;
   else   {dina_L1, dina_L2} = convout_L[(addra_L-2)*32+:32*2];      //正常状态，地址自加
end	


wire [0:31] douta_L1_m, douta_L2_m;

blk_ram_L1  RAM_L (
  .clka(clk),    // input wire clka
  .ena(~reset_L),      // input wire ena
  .wea(wea_L),      // input wire [0 : 0] wea
  .addra(addra_L),  // input wire [10 : 0] addra
  .dina(dina_L1),    // input wire [31 : 0] dina
  .douta(douta_L1_m),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .enb(~reset_L),      // input wire enb
  .web(wea_L),      // input wire [0 : 0] web
  .addrb(addra_L+1),  // input wire [10 : 0] addrb
  .dinb(dina_L2),    // input wire [31 : 0] dinb
  .doutb(douta_L2_m)  // output wire [31 : 0] doutb
);

always @(*) begin
    if  (reset_L == 1) begin
        douta_L1 = 0;
        douta_L2 = 0;    
    end
    else begin
        douta_L1 = douta_L1_m;
        douta_L2 = douta_L2_m;    
    end   
end



endmodule
