module CONTROL#(
    parameter A_DATA_ADDRWIDTH=19,    //activation数据的地址宽度
    parameter W_DATA_ADDRWIDTH=15,    //weight数据的地址宽度
    parameter NET_o_addrWIDTH = 16, // 输出地址位宽
    parameter INSWIDTH = 19, // 指令位宽
    parameter REG_ADDRWIDTH=2, //寄存器地址位宽
    parameter INS_A_ADDRWIDTH=10, //activation指令地址位宽
    parameter INS_W_ADDRWIDTH=6 //weight指令地址位宽
  )(


    input [INSWIDTH-1:0] ins_data,
    output reg [A_DATA_ADDRWIDTH-1:0] a_addr_0,
    output reg [W_DATA_ADDRWIDTH-1:0] w_addr_0,
    output reg ctrl0, // ctrl0表示reg是否清零,1是不清零，0是清零
    output reg ctrl1,   // ctrl1表示O_SRAM写使能，1是写使能，0是不写使能
    output reg ctrl2, //ctrl2表示是否进行MAC运算，1是不进行，0是进行
    output reg ctrl_add, //ctrl_add表示是否进行ADD运算，1是不进行，0是进行
    output reg lock, //lock表示是否锁定，1是锁定，0是不锁定
    output reg rst_sfr, //rst_sfr表示是否使能SFR模块，1是使能，0是不使能
    output reg en_counter, //en_counter表示是否开始计数，1是开始，0是不开始
    output reg [NET_o_addrWIDTH-1:0] o_addr,
    output reg finish_ctrl

  );

  always @(*)
  begin
    case(ins_data[18:16])
      3'b000: //Load_AW
      begin
        ctrl0=0;
        ctrl1=0;
        ctrl2=1;
        ctrl_add=1;
        lock=1'b0;
        en_counter=1'b0;
        a_addr_0={9'b0,ins_data[15:15-INS_A_ADDRWIDTH+1]};
        w_addr_0={ins_data[INS_W_ADDRWIDTH-1:0],9'b0};
        rst_sfr=1'b0;
        finish_ctrl=1'b0;
      end

      3'b001: //MAC_R
      begin
        ctrl0=1;
        ctrl1=0;
        ctrl2=0;
        ctrl_add=1;
        lock=1'b1;
        en_counter=1'b1;
        rst_sfr=1'b1;
        finish_ctrl=1'b0;
      end

      3'b010: //Write_O
      begin
        ctrl0=0;
        ctrl1=1;
        ctrl2=0;
        ctrl_add=1;
        lock=1'b0;
        o_addr=ins_data[NET_o_addrWIDTH-1:0];
        en_counter=1'b1;
        rst_sfr=1'b1;
        //o_addr=o_addr+1'b1;
        finish_ctrl=1'b0;
      end

      3'b011: //ADD
      begin
        ctrl0=1;
        ctrl1=0;
        ctrl2=0;
        ctrl_add=0;
        lock=1'b0;
        en_counter=1'b0;
        rst_sfr=1'b1;
        finish_ctrl=1'b0;
      end


      3'b100: //END
      begin
        ctrl0=1;
        ctrl1=0;
        ctrl2=1;
        ctrl_add=1;
        lock=1'b0;
        en_counter=1'b0;
        rst_sfr=1'b0;
        finish_ctrl=1'b1;
      end


      3'b101: //multi
      begin
        ctrl0=0;
        ctrl1=0;
        ctrl2=0;
        ctrl_add=1;
        lock=1'b1;
        en_counter=1'b1;
        rst_sfr=1'b1;
        finish_ctrl=1'b0;
      end

      default:
      begin
        ctrl0=0;
        ctrl1=0;
        ctrl2=1;
        ctrl_add=1;
        lock=1'b0;
        rst_sfr=1'b0;
        finish_ctrl=1'b0;
      end
    endcase
  end

endmodule
