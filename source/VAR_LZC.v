`timescale 1ns/1ns

//import fpu_defs_fmac::*;

module VAR_LZC
#(
   parameter C_WIDTH          = 51,
   parameter C_LEADONE_WIDTH  = 6
)
  (
   input   [C_WIDTH-1:0]                data_I,
   output  reg [C_LEADONE_WIDTH-1:0]    leading_one_O,
   output  reg                          no_one_O
   );

    integer i;

  always @(*)begin
    leading_one_O = 0;
    no_one_O = 1'd1;
    
    for(i=0; i<C_WIDTH; i=i+1)begin
        if(data_I[i])begin
            leading_one_O = C_WIDTH-1'b1 -i;
            no_one_O = 1'd0;
        end
            
    end


  end

endmodule
