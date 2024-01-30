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

 // ���ݺ��ָ����ƶ��ָ�λ�źš���д�źţ�����Cache�󣬴�����߼�
always@(*)
begin
   case(Command)
      8'b0000_0001:   // LOAD_R
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM reset����Ч
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b1;         // �����reset����Ч
         reset2 = 1'b1;                
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0000_0010:   // LOAD_L
      begin
         reset_R_ROM = 1'b1;    // ROM��RAM reset����Ч
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b1;         // �����reset����Ч
         reset2 = 1'b1;          
         finish_R = 1'b0;
         finish_L = 1'b0;
      end   
      
      8'b0000_0011:   // LOAD_RL
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM reset����Ч
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b1;         // �����reset����Ч
         reset2 = 1'b1;                 
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0001_0001:   // CONV_R
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b0;         // �����reset����Ч
         reset2 = 1'b1;               
         finish_R = 1'b0;
         finish_L = 1'b0;
      end       
  
      8'b0001_0010:   // CONV_L
      begin
         reset_R_ROM = 1'b1;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b1;         // �����reset����Ч
         reset2 = 1'b0;           
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0001_0011:   // CONV_RL
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b0;         // �����reset����Ч
         reset2 = 1'b0;              
         finish_R = 1'b0;
         finish_L = 1'b0;
      end   
      
      8'b0010_0001:   // WRITE_R
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b1;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b1;          // RAM��1д0��
         wea_L = 1'b1;  
         reset1 = 1'b0;         // ���������Ч�����������Ѳ���
         reset2 = 1'b1;              
         finish_R = 1'b0;
         finish_L = 1'b0;
      end
      
      8'b0010_0010:   // WRITE_L
      begin
         reset_R_ROM = 1'b1;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM��1д0��
         wea_L = 1'b1;  
         reset1 = 1'b1;         // ���������Ч�����������Ѳ���
         reset2 = 1'b0;          
         finish_R = 1'b0;
         finish_L = 1'b0;
      end  
        
      8'b0010_0011:   // WRITE_RL
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM��1д0��
         wea_L = 1'b1;  
         reset1 = 1'b0;         // ���������Ч�����������Ѳ���
         reset2 = 1'b0;             
         finish_R = 1'b0;
         finish_L = 1'b0;
      end      
   
      8'b0100_0001:   // PRINT_R
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b1;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b1;  
         reset1 = 1'b0;         // ���������Ч�����������Ѳ���
         reset2 = 1'b1;             
         finish_R = 1'b1;
         finish_L = 1'b0;
      end
      
      8'b0100_0010:   // PRINT_L
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b1;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b1;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b1;         // ���������Ч�����������Ѳ���
         reset2 = 1'b0;            
         finish_R = 1'b0;
         finish_L = 1'b1;
      end   
      
      8'b0100_0011:   // PRINT_RL
      begin
         reset_R_ROM = 1'b0;    // ROM��RAM��Ȼ��Ч������������Ѳ���
         reset_L_ROM = 1'b0;
         reset_R_RAM = 1'b0;
         reset_L_RAM = 1'b0;        
         wea_R = 1'b0;          // RAM��1д0��
         wea_L = 1'b0;  
         reset1 = 1'b0;         // ���������Ч�����������Ѳ���
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
                
      default:       // ָ����쳣ָ�����ΪEND
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
