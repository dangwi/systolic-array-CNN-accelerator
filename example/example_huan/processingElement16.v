`timescale 100 ns / 10 ps

module processingElement32(clk,reset,floatA,floatB,result);

parameter DATA_WIDTH = 32;

input clk, reset;
input [DATA_WIDTH-1:0] floatA, floatB;
output reg [DATA_WIDTH-1:0] result;

wire [DATA_WIDTH-1:0] addResult;
//wire [DATA_WIDTH-1:0] multResult;

//floatMult32 FM (floatA,floatB,multResult);      // 两个新的输入相乘
//floatAdd32 FADD (multResult,result,addResult);  // 新的乘法结果和之前的乘累加结果相加

//always @ (posedge clk or posedge reset) begin   // 延迟一时钟输出，变成时序逻辑，新的乘法才能累加之前结果
//	if (reset == 1'b1) begin
//		result = 0;
//	end else begin
//		result = addResult;
//	end
//end


// 例化师姐的FMA，期望与上方产生相同的计算与时序结果

//fma FMA_shijie (floatA,floatB,result2  ,addResult2);      // 两个新的输入相乘

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


always @ (posedge clk or posedge reset) begin   // 延迟一时钟输出，变成时序逻辑，新的乘法才能累加之前结果
	if (reset == 1'b1) begin
		result = 0;
	end else begin
		result = addResult;
	end
end


endmodule
