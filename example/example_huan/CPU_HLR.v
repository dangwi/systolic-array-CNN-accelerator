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
 
 // ͨ��ʱ�ӣ�����ROM�ĵ�ַ�ź�
//always@(posedge clk)
//begin
//   if (addr == 741630)   addr = addr;//�������ֵ27450�����ִ˵�ַ  
//   else if (addr < 741630)      addr = addr + 1;      //����״̬����ַ�Լ�  <=����
//   else addr = 0;
//end	

 // ������Ӳ��λ
always@(posedge clk  or posedge rst)
begin 
   if (rst == 1)          addr = 0;           // �첽��λrst=1��������
   else if (start_sig == 0)   addr = 0;           // ��ʼ�ź�start=0��������������λ  
   else if (addr < 741630)  addr = addr + 1;    //rst=1 start=1����ʼ��cache����
   else addr = addr;                          // ��print�׶Σ�����
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
