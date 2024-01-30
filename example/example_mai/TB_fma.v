`timescale 1ns/1ns  

module TB_fma();

    parameter        WORDWIDTH = 32;
    parameter        EXPONENTWIDTH = 8;
    parameter        MANTISSAWIDTH = 23;
    parameter        WORDWIDTH_INDEX = 5;
    
    parameter  TESTNUM = 100;

    reg clk;
    reg rst;
    reg [WORDWIDTH-1:0] operand_a;
    reg [WORDWIDTH-1:0] operand_b;
    reg [WORDWIDTH-1:0] operand_c;
    reg [2:0] rnd_mode;


    wire [WORDWIDTH-1:0] result_O;
    wire flag_overflow_O;
    wire flag_underflow_O;
    // wire done_valid_O;
    
    
    reg [WORDWIDTH-1:0] operand_data_a [0:TESTNUM-1];
    reg [WORDWIDTH-1:0] operand_data_b [0:TESTNUM-1];
    reg [WORDWIDTH-1:0] operand_data_c [0:TESTNUM-1];
    integer i;



    initial  begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial begin
            rst = 1;
        #4  rst = 0;
        #10 rst = 1;
    end
    

    initial begin
        $readmemb("E:/thu_course/assignment/StructuredIC/demo-for-CNN-Accelerator/data/fma_data_a.txt", operand_data_a);
        $readmemb("E:/thu_course/assignment/StructuredIC/demo-for-CNN-Accelerator/data/fma_data_b.txt", operand_data_b);
        $readmemb("E:/thu_course/assignment/StructuredIC/demo-for-CNN-Accelerator/data/fma_data_c.txt", operand_data_c);
    
        rnd_mode = 0;
        
        #15
        for(i=0; i<TESTNUM; i=i+1)begin
            operand_a = operand_data_a[i];
            operand_b = operand_data_b[i];
            operand_c = operand_data_c[i];
            #10;
        end

        #40
        $finish(2);


    end


    fma  m_fma(
        .clk_I(clk),
        .rst_n_I(rst),
        .operand_a_I(operand_a),
        .operand_b_I(operand_b),
        .operand_c_I(operand_c),
        .rnd_mode(rnd_mode),
        .gate(1'b0),

        .result_O(result_O),
        .flag_overflow_O(flag_overflow_O),
        .flag_underflow_O(flag_underflow_O)
        // .done_valid_O(done_valid_O)
    );

    // `ifdef FSDB
    //     initial begin
    //         $fsdbDumpfile("tb.fsdb");
    //         $fsdbDumpvars;
    //     end
    // `endif
    
    // initial begin
    //     #11
    //     $dumpfile("vcd.dump");
    //     $dumpvars;
    
    // end




endmodule
