`timescale 100 ns / 10 ps

module convUnit(clk,reset,image,filter,result);  //一个卷积核5*5*D 和 覆盖的图像区域5*5*D计算，输出一个数(float16)  第一层25个乘法逐个累加成1个数，在此基础上加第二层、第三层……

parameter DATA_WIDTH = 32;
parameter D = 1; //depth of the filter
parameter F = 5; //size of the filter

input clk, reset;
input [0:D*F*F*DATA_WIDTH-1] image, filter;  // 感受野和卷积核5*5*D
output [0:DATA_WIDTH-1] result;  // 全部乘累加成一个数

reg [DATA_WIDTH-1:0] selectedInput1, selectedInput2;  // PE的输入端口，每周期换一对新数

integer i;


processingElement32 PE
	(
		.clk(clk),
		.reset(reset),
		.floatA(selectedInput1),
		.floatB(selectedInput2),
		.result(result)
	);

// 一个/组卷积只使用1个PE顺序计算以节省硬件 The convolution is calculated in a sequential process to save hardware
// 逐元素矩阵乘法的结果在 (F*F+2) 个周期后完成（2 个周期用于reset处理元素，F*F 周期用于累加 F*F 乘法的结果） The result of the element wise matrix multiplication is finished after (F*F+2) cycles (2 cycles to reset the processing element and F*F cycles to accumulate the result of the F*F multiplications) 
always @ (posedge clk, posedge reset) begin  //每周期给PE送一组新的数
	if (reset == 1'b1) begin // reset
		i = 0;
		selectedInput1 = 0;
		selectedInput2 = 0;
	end else if (i > D*F*F-1) begin // 如果卷积已经完成，但我们仍然等待其他块完成，将0发送到conv单元(在流水线的情况下)  if the convolution is finished but we still wait for other blocks to finsih, send zeros to the conv unit (in case of pipelining)
		selectedInput1 = 0;
		selectedInput2 = 0;
	end else begin  // 发送图像部分的一个元素和滤波器的一个元素进行相乘和累加  send one element of the image part and one element of the filter to be multiplied and accumulated
		selectedInput1 = image[DATA_WIDTH*i+:DATA_WIDTH];
		selectedInput2 = filter[DATA_WIDTH*i+:DATA_WIDTH];
		i = i + 1;
	end
end

endmodule
