`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/23 17:35:44
// Design Name: 
// Module Name: Control
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


module Control( input [7:0] Command, 
                output reg reset_R_ROM, reset_L_ROM, reset_R_RAM, reset_L_RAM, wea_R, wea_L ,reset1, reset2, finish_R, finish_L  

    );

 // 根据宏观指令控制多种复位信号、读写信号，接在Cache后，纯组合逻辑
always@(*)
begin
   case(Command)
      8'b0000_0001:   // LOAD_R
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM reset高有效
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b1;         // 卷积器reset高有效
         reset2 = 1'b1;                
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0000_0010:   // LOAD_L
      begin
         reset_R_ROM = 1'b1;    // ROM和RAM reset高有效
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b1;         // 卷积器reset高有效
         reset2 = 1'b1;          
         finish_R = 1'b0;
         finish_L = 1'b0;
      end   
      
      8'b0000_0011:   // LOAD_RL
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM reset高有效
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b1;         // 卷积器reset高有效
         reset2 = 1'b1;                 
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0001_0001:   // CONV_R
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b0;         // 卷积器reset高有效
         reset2 = 1'b1;               
         finish_R = 1'b0;
         finish_L = 1'b0;
      end       
  
      8'b0001_0010:   // CONV_L
      begin
         reset_R_ROM = 1'b1;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b1;         // 卷积器reset高有效
         reset2 = 1'b0;           
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0001_0011:   // CONV_RL
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b0;         // 卷积器reset高有效
         reset2 = 1'b0;              
         finish_R = 1'b0;
         finish_L = 1'b0;
      end   
      
      8'b0010_0001:   // WRITE_R
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b1;          // RAM：1写0读
         wea_L = 1'b1;  
         reset1 = 1'b0;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b1;              
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0010_0010:   // WRITE_L
      begin
         reset_R_ROM = 1'b1;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM：1写0读
         wea_L = 1'b1;  
         reset1 = 1'b1;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b0;          
         finish_R = 1'b0;
         finish_L = 1'b0;
      end  
        
      8'b0010_0011:   // WRITE_RL
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM：1写0读
         wea_L = 1'b1;  
         reset1 = 1'b0;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b0;             
         finish_R = 1'b0;
         finish_L = 1'b0;
      end      
   
      8'b0100_0001:   // PRINT_R
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b1;  
         reset1 = 1'b0;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b1;             
         finish_R = 1'b1;
         finish_L = 1'b0;
      end
      
      8'b0100_0010:   // PRINT_L
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b1;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b0;            
         finish_R = 1'b0;
         finish_L = 1'b1;
      end   
      
      8'b0100_0011:   // PRINT_RL
      begin
         reset_R_ROM = 1'b0;    // ROM和RAM仍然有效，但输出向量已不变
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b0;          // RAM：1写0读
         wea_L = 1'b0;  
         reset1 = 1'b0;         // 卷积器仍有效，但卷积结果已不变
         reset2 = 1'b0;            
         finish_R = 1'b1;
         finish_L = 1'b1;
      end
      
      8'b1000_0000:   // END
      begin
         reset_R_ROM = 1'b1;     
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;        
         wea_L = 1'b0;  
         reset1 = 1'b1;          
         reset2 = 1'b1;             
         finish_R = 1'b0;
         finish_L = 1'b0;
      end     
                
      default:       // 指令集外异常指令均视为END
      begin
         reset_R_ROM = 1'b1;     
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;        
         wea_L = 1'b0;  
         reset1 = 1'b1;          
         reset2 = 1'b1;     
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
  endcase
end

endmodule
