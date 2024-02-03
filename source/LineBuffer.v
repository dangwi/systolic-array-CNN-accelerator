module LineBuffer #(
    parameter WORDWIDTH = 32,
    parameter FIG_WIDTH = 28,
    parameter FIFO_ADDRLEN = 5
)(
    input                   clk,
    input                   rst_n,

    input  [WORDWIDTH-1:0]  din,
    input                   in_valid,

    output [WORDWIDTH-1:0]  dout,
    output                  out_valid,
    output                  ready
);
    wire rd_en;
    reg  rd_lag;   // output of FIFO is delayed by 1 cycles

    wire [FIFO_ADDRLEN-1:0] data_cnt;
    wire wr_rst_busy, rd_rst_busy;

    assign rd_en = ((data_cnt == FIG_WIDTH) && in_valid) ? 1'b1:1'b0;
    assign out_valid = rd_lag;
    assign ready = ~wr_rst_busy & ~rd_rst_busy;

    always @(posedge clk, negedge rst_n) begin
        if ( ~rst_n )
            rd_lag <= 1'b0;
        else
            rd_lag <= rd_en;
    end

    // @IP: FIFO generator
    // Memory type: Block RAM
    // Data Count Output: selected
    IP_fifo32x32bit u_fifo_buffer(
        .clk(clk),
        .rst(~rst_n),
        .din(din),
        .wr_en(in_valid),
        .dout(dout),
        .rd_en(rd_en),
        .data_count(data_cnt),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)
    );


endmodule