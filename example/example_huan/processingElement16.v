`timescale 100 ns / 10 ps

module processingElement32(clk,reset,floatA,floatB,result);

parameter DATA_WIDTH = 32;

input clk, reset;
input [DATA_WIDTH-1:0] floatA, floatB;
output reg [DATA_WIDTH-1:0] result;

wire [DATA_WIDTH-1:0] addResult;
//wire [DATA_WIDTH-1:0] multResult;

//floatMult32 FM (floatA,floatB,multResult);      // �����µ��������
//floatAdd32 FADD (multResult,result,addResult);  // �µĳ˷������֮ǰ�ĳ��ۼӽ�����

//always @ (posedge clk or posedge reset) begin   // �ӳ�һʱ����������ʱ���߼����µĳ˷������ۼ�֮ǰ���
//	if (reset == 1'b1) begin
//		result = 0;
//	end else begin
//		result = addResult;
//	end
//end


// ����ʦ���FMA���������Ϸ�������ͬ�ļ�����ʱ����

//fma FMA_shijie (floatA,floatB,result2  ,addResult2);      // �����µ��������

fma  FMA_shijie(
        .clk_I(clk),
        .rst_n_I(1'b1),
        .operand_a_I(floatA),
        .operand_b_I(floatB),
        .operand_c_I(result),
        .rnd_mode(3'b0),
        .gate(1'b0),

        .result_O(addResult),
        .flag_overflow_O( ),
        .flag_underflow_O( )
    );


always @ (posedge clk or posedge reset) begin   // �ӳ�һʱ����������ʱ���߼����µĳ˷������ۼ�֮ǰ���
	if (reset == 1'b1) begin
		result = 0;
	end else begin
		result = addResult;
	end
end


endmodule
