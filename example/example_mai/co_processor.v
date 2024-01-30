module CO_PROCESSOR#(
    parameter DATAWIDTH = 32,     //数据的宽度
    parameter A_DATA_ADDRWIDTH=19,    //activation数据的地址宽度
    parameter W_DATA_ADDRWIDTH=15,    //weight数据的地址宽度
    parameter O_DATA_ADDRWIDTH=16,  //网络输出的地址宽度
    parameter INSWIDTH=19,              //指令的宽度
    parameter INS_ADDRWIDTH=19,         //指令的地址宽度
    parameter REG_ADDRWIDTH=2,
    parameter PC_WIDTH=26
  )(
    //------------Inputs----------------
    input clk, // Clock
    input rstn, // Reset
    input start_sig, // Start signal @dangwi: activate low
    output finish_sig,   // Finish signal
    //input [NET_o_addrWIDTH-1:0] o_addr, // Output address
    output [DATAWIDTH-1:0] o_data // Output data
  );
  wire continue_signal;
  wire ctrl2;

  //-----------PC----------------
  // @dangwi: PC might be not used/needed
  reg [PC_WIDTH-1:0] pc;
  reg [INS_ADDRWIDTH-1:0] addra;
  always@(posedge clk or negedge rstn)
  begin
    if (~rstn)
    begin
      pc<=26'd0;
    end
    else if (~start_sig)
    begin
      pc<=26'd0;
    end
    else
    begin
      pc<=pc+1'b1;
    end
  end

  always @(posedge clk or negedge rstn or negedge continue_signal or posedge continue_signal)
  begin
    if (~rstn)
    begin
      addra<=18'd0;
    end
    else if (~start_sig)
    begin
      addra<=18'd0;
    end
    else if (continue_signal)
    begin
      addra<=addra+1'b1;
    end
    else
    begin
      addra<=addra;
    end
  end

  //--------------INS_CACHE----------------
  wire [INSWIDTH-1:0]ins_data;

  INS_CACHE INS_CACHE_S(
              .clka(clk),
              .wea(1'b0),
              .addra(addra),
              .dina(18'd0),
              .douta(ins_data)
            );

  //------------------Design------------------
  wire [DATAWIDTH-1:0] a_data;
  wire [DATAWIDTH-1:0] w_data;
  wire [DATAWIDTH-1:0] reg_data;
  wire [DATAWIDTH-1:0] reg_out;
  wire [DATAWIDTH-1:0] result;

  wire [A_DATA_ADDRWIDTH-1:0] a_addr_0;
  wire [W_DATA_ADDRWIDTH-1:0] w_addr_0;
  wire [A_DATA_ADDRWIDTH-1:0] a_addr;
  wire [W_DATA_ADDRWIDTH-1:0] w_addr;
  wire [O_DATA_ADDRWIDTH-1:0] o_addr;

  wire [31:0]mux0_out;
  wire ctrl0;
  wire ctrl1;
  wire rst_sfr;
  wire ctrl_add;
  wire [31:0]op_a;
  wire [31:0]op_b;
  wire lock;

  wire finish_ctrl;

  PE_ARRAY PE_ARRAY_S(
             .clk(clk),
             .rstn(rstn),
             .op_a(op_a),
             .op_b(op_b),
             .op_c(reg_out),
             .gate(ctrl2),
             .rnd_mode(3'b000),
             .result_O(result)
           );

  CONTROL CONTROL_S(
            .ins_data(ins_data),
            .a_addr_0(a_addr_0),
            .w_addr_0(w_addr_0),
            .rst_sfr(rst_sfr),
            .o_addr(o_addr),
            .ctrl0(ctrl0),
            .ctrl1(ctrl1),
            .ctrl2(ctrl2),
            .ctrl_add(ctrl_add),
            .lock(lock),
            .en_counter(en_counter),
            .finish_ctrl(finish_ctrl)
          );

  ACTIVATION_SRAM ACTIVATION_SRAM_S(
                    .clka(clk),
                    .wea(1'b0),
                    .addra(a_addr),
                    .dina(32'd0),
                    .douta(a_data)
                  );

  WEIGHT_SRAM WEIGHT_SRAM_S(
                .clka(clk),
                .wea(1'b0),
                .addra(w_addr),
                .dina(32'd0),
                .douta(w_data)
              );

  MUX0 MUX0_S(
         .input0(32'd0),
         .result(result),
         .ctrl0(ctrl0),
         .mux0_out(mux0_out)
       );

  MUX_ADD MUX_ADD_S(
            .ctrl_add(ctrl_add),
            .input_a(a_data),
            .input_r(result),
            .input_w(w_data),
            .op_a(op_a),
            .op_b(op_b)
          );

  REG_FILE REG_FILE_S(
             .clk(clk),
             .rstn(rstn),
             .reg_data(mux0_out),
             .reg_out(reg_out)
           );

  SFR SFR_S(
        .clk(clk),
        .rstn(rstn),
        .start_sig(start_sig),
        .rst_sfr(rst_sfr),
        .en_counter(en_counter),
        //.ctrl1(ctrl1),
        .lock(lock),
        .a_addr_0(a_addr_0),
        .w_addr_0(w_addr_0),
        .continue_signal(continue_signal),
        .a_addr(a_addr),
        .w_addr(w_addr)
        //.o_addr(o_addr)
      );

  FINISH_MODULE FINISH_MODULE_S(
                  .clk(clk),
                  .rstn(rstn),
                  .finish_ctrl(finish_ctrl),
                  .finish_sig(finish_sig)
                );

  OUTPUT_SRAM OUTPUT_SRAM_S(
                .clka(clk),
                .wea(ctrl1),
                .addra(o_addr),
                .dina(result),
                .douta(o_data)
              );

  //------------------end of Design------------------

endmodule
