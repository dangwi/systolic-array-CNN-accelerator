`timescale 1 ns / 100 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/24 12:30:22
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb(  );
   
reg clk, rst, start_sig;
    
localparam PERIOD = 100; 
 
always
   #(PERIOD/2) clk = ~clk;

initial  begin 
   #0
   clk = 1'b0;
   rst = 1;
   start_sig = 0;  
   #(PERIOD)
   rst = 0;     
   start_sig = 1;     
end     


CPU_HLR  my_cpu
(
	.clk(clk),
	.rst(rst),
	.start_sig(start_sig)
);


endmodule
