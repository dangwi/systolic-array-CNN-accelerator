`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/24 00:32:42
// Design Name: 
// Module Name: CPU_HLR
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


module CPU_HLR(
   input clk, rst,
   input start_sig,
   
  output [31:0] douta_R1,
  output [31:0] douta_R2,     
  output [31:0] douta_L1,
  output [31:0] douta_L2,
  output finish_R,
  output finish_L
    );
    

   
 reg [19:0] addr;  
 
 // 通过时钟，生成ROM的地址信号
//always@(posedge clk)
//begin
//   if (addr == 741630)   addr = addr;//到达最大值27450，保持此地址  
//   else if (addr < 741630)      addr = addr + 1;      //正常状态，地址自加  <=不对
//   else addr = 0;
//end	

 // 加入软硬复位
always@(posedge clk  or posedge rst)
begin 
   if (rst == 1)          addr = 0;           // 异步复位rst=1，不工作
   else if (start_sig == 0)   addr = 0;           // 开始信号start=0，不工作但不复位  
   else if (addr < 741630)  addr = addr + 1;    //rst=1 start=1，开始读cache工作
   else addr = addr;                          // 在print阶段，保持
end	

wire [7:0] Command;

blk_cache Cache (
  .clka(clk),    // input wire clka
  .ena(~rst),      // input wire ena
  .addra(addr),  // input wire [9 : 0] addra
  .douta(Command)  // output wire [7 : 0] douta
);


Coprocessor  CNN_accelerater( 
       .clk(clk), 
       .Command(Command), 
       
       .douta_R1(douta_R1), 
       .douta_R2(douta_R2),    
       .douta_L1(douta_L1), 
       .douta_L2(douta_L2),
       .finish_R(finish_R),
       .finish_L(finish_L)
    );  
  
    
endmodule
