`timescale 100 ns / 10 ps

module convUnit(clk,reset,image,filter,result);  //һ�������5*5*D �� ���ǵ�ͼ������5*5*D���㣬���һ����(float16)  ��һ��25���˷�����ۼӳ�1�������ڴ˻����ϼӵڶ��㡢�����㡭��

parameter DATA_WIDTH = 32;
parameter D = 1; //depth of the filter
parameter F = 5; //size of the filter

input clk, reset;
input [0:D*F*F*DATA_WIDTH-1] image, filter;  // ����Ұ�;����5*5*D
output [0:DATA_WIDTH-1] result;  // ȫ�����ۼӳ�һ����

reg [DATA_WIDTH-1:0] selectedInput1, selectedInput2;  // PE������˿ڣ�ÿ���ڻ�һ������

integer i;


processingElement32 PE
	(
		.clk(clk),
		.reset(reset),
		.floatA(selectedInput1),
		.floatB(selectedInput2),
		.result(result)
	);

// һ��/����ֻʹ��1��PE˳������Խ�ʡӲ�� The convolution is calculated in a sequential process to save hardware
// ��Ԫ�ؾ���˷��Ľ���� (F*F+2) �����ں���ɣ�2 ����������reset����Ԫ�أ�F*F ���������ۼ� F*F �˷��Ľ���� The result of the element wise matrix multiplication is finished after (F*F+2) cycles (2 cycles to reset the processing element and F*F cycles to accumulate the result of the F*F multiplications) 
always @ (posedge clk, posedge reset) begin  //ÿ���ڸ�PE��һ���µ���
	if (reset == 1'b1) begin // reset
		i = 0;
		selectedInput1 = 0;
		selectedInput2 = 0;
	end else if (i > D*F*F-1) begin // �������Ѿ���ɣ���������Ȼ�ȴ���������ɣ���0���͵�conv��Ԫ(����ˮ�ߵ������)  if the convolution is finished but we still wait for other blocks to finsih, send zeros to the conv unit (in case of pipelining)
		selectedInput1 = 0;
		selectedInput2 = 0;
	end else begin  // ����ͼ�񲿷ֵ�һ��Ԫ�غ��˲�����һ��Ԫ�ؽ�����˺��ۼ�  send one element of the image part and one element of the filter to be multiplied and accumulated
		selectedInput1 = image[DATA_WIDTH*i+:DATA_WIDTH];
		selectedInput2 = filter[DATA_WIDTH*i+:DATA_WIDTH];
		i = i + 1;
	end
end

endmodule
