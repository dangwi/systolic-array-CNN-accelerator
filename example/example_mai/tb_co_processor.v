`timescale  1ns / 1ps

module tb_CO_PROCESSOR;   

// CO_PROCESSOR Parameters
parameter PERIOD                = 10;
parameter DATAWIDTH             = 32;
parameter A_DATA_ADDRWIDTH    = 19 ;
parameter W_DATA_ADDRWIDTH    = 15 ;
parameter O_ADDRWIDTH  = 16 ;
parameter INSWIDTH              = 19;
parameter INS_ADDRWIDTH         = 19 ;

// CO_PROCESSOR Inputs
reg   clk                                  = 0 ;
reg   rstn                                 = 0 ;
reg    start_sig                     = 0 ;
wire   finish_sig                          ;
//reg   [INS_ADDRWIDTH-1:0]  ins_addr        = 0 ;
//reg   [DATAWIDTH-1:0]  net_data            = 0 ;
//reg   [NET_DATA_ADDRWIDTH-1:0]  net_addr   = 0 ;
//reg   [NET_OUTPUT_ADDRWIDTH-1:0]  output_addr = 0 ;

// CO_PROCESSOR Outputs                            ;
wire  [DATAWIDTH-1:0]  o_data         ;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rstn  =  1;
    #(PERIOD*10) start_sig = 1;
end



CO_PROCESSOR #(
    .DATAWIDTH            ( DATAWIDTH            ),
    .A_DATA_ADDRWIDTH   ( A_DATA_ADDRWIDTH   ),
    .W_DATA_ADDRWIDTH   ( W_DATA_ADDRWIDTH   ),
    .O_ADDRWIDTH ( O_ADDRWIDTH ),
    .INSWIDTH             ( INSWIDTH             ),
    .INS_ADDRWIDTH        ( INS_ADDRWIDTH        ))
 u_CO_PROCESSOR (
    .clk                     ( clk                                     ),
    .rstn                    ( rstn                                    ),
    .start_sig               ( start_sig                          ),
    .finish_sig              ( finish_sig                              ),
    //.ins_data                ( ins_data     [INSWIDTH-1:0]             ),
    //.ins_addr                ( ins_addr     [INS_ADDRWIDTH-1:0]        ),
    //.net_data                ( net_data     [DATAWIDTH-1:0]            ),
    //.net_addr                ( net_addr     [NET_DATA_ADDRWIDTH-1:0]   ),
    //.output_addr             ( output_addr  [NET_OUTPUT_ADDRWIDTH-1:0] ),
    .o_data             ( o_data  [DATAWIDTH-1:0]            )
);

`define dump_level 10
//module dump_task;
initial begin#1; //延迟1ns记录，方便与其他仿真动作协调
`ifdef VCS_DUMP //Synopsys VCD+格式存储
$display("Start Recording Waveform in VPD format!");
$vcdpluson();
$vcdplustraceon;
`endif

`ifdef FSDB_DUMP //Synopsys fsdb格式存储
$display("Start Recording Waveform in FSDB format!");
$fsdbDumpfile("dump.fsdb");
$fsdbDumpvars('dump_level);
`endif

`ifdef NC_DUMP//cadence 格式存储
$recordsetup("dump","version=1","run=1","directory=.");
$recordvars("depth=6");
`endif

`ifdef VCD_DUMP//工业标准VCD格式存储
$display("Start Recording Waveform in VCD format!");
$dumpfile("dump.vcd");
$dumpvars('dump_level);
`endif
end

integer o_data_file;
//当o_data变化时，存o_data的数据添加到o_data.txt中,o_data为single浮点数
initial begin
    o_data_file=$fopen("o_data.txt");
    forever
    begin
        @(o_data);
        $fwrite(o_data_file,"%h\n",o_data);
    end
end

//finish_sig=1时，结束仿真

endmodule