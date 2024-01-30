`timescale 100 ns / 10 ps

module convLayerSingle(clk,reset,image,filter,outputConv);  //һ��/������5*5*D  �� һ��ͼ��32*32*D��� �õ�28*28����ͼ

parameter DATA_WIDTH = 32;
parameter D = 1; //Depth of the filter
parameter H = 32; //Height of the image
parameter W = 32; //Width of the image
parameter F = 5; //Size of the filter

input clk, reset;
input [0:D*H*W*DATA_WIDTH-1] image;     //һ��ͼ��32*32*D
input [0:D*F*F*DATA_WIDTH-1] filter;    //һ��/������5*5*D 
output reg [0:(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputConv; // ��������ͼ���28*28������һ����outputConv����������ͼ���28*28*6��ͬ��ע�����֣���  output of the module

wire [0:((W-F+1)/2)*DATA_WIDTH-1] outputConvUnits; // ÿ�����14��PE/conv unit�����  output of the conv units and input to the row selector
 
reg internalReset;
wire [0:(((W-F+1)/2)*D*F*F*DATA_WIDTH)-1] receptiveField; // RF�������14*D��һά������Ұ��W-F+1)/2=14�������Ķ�ʱ��֤PE��=���ά��/2   array of the matrices to be sent to conv units


integer counter, outputCounter;
//counter: conv unit��������ʱ�������� number of clock cycles need for the conv unit to finsish
//outputCounter: ��������conv��Ԫ�����ӳ�䵽ģ������ index to map the output of the conv units to the output of the module

reg [5:0] rowNumber, column; 
//rowNumber: ȷ����conv��Ԫ������У���Χ0-27  determines the row that is calculated by the conv units
//column: �����������ڼ�������еĵ�һ��14���ػ��ǵڶ���14���أ���Χ0��14  determines if we are calculating the first or the second 14 pixels of the output row

RFselector
#(
	.DATA_WIDTH(DATA_WIDTH),
	.D(D),
	.H(H),
	.W(W),
	.F(F)
) RF
(
//	.reset(reset),
	.image(image),
	.rowNumber(rowNumber),
	.column(column),
	.receptiveField(receptiveField)
);

genvar n;

generate // ����������n�������Ԫ������n�����ͼ��һ����������һ��(14)  generating n convolution units where n is half the number of pixels in one row of the output image
	for (n = 0; n < (H-F+1)/2; n = n + 1) begin 
		convUnit
		#(
			.D(D),
			.F(F)
		) CU
		(
			.clk(clk),
			.reset(internalReset), // ÿ14��conv unit��ɺ����㣬��λ������ݣ���ʼ��һ�����
			.image(receptiveField[n*D*F*F*DATA_WIDTH+:D*F*F*DATA_WIDTH]), // ÿ��conv unit����5*5*D��С�ĸ���Ұ
			.filter(filter), // һ��/������5*5*D
			.result(outputConvUnits[n*DATA_WIDTH+:DATA_WIDTH]) // ÿ�����14��PE/conv unit�����
		);                        // [0:15]  [16:31]
	end
endgenerate

always @ (posedge clk or posedge reset) begin
	if (reset == 1'b1) begin
		internalReset = 1'b1;
		rowNumber = 0;
		column = 0;
		counter = 0;
		outputCounter = 0;
	end else if (rowNumber < H-F+1) begin
		if (counter == D*F*F+2) begin //��ʱconv unit��������� The conv unit finishes ater 1*5*5+2 clock cycles
			outputCounter = outputCounter + 1; //����ͼ�����ȡ14λ������
			counter = 0;                       //��λ��ʼ��һ����
			internalReset = 1'b1;
			if (column == 0) begin             //��ʼ����һ�е��Ұ벿��
				column = (H-F+1)/2;
			end else begin
				rowNumber = rowNumber + 1;    //��ʼ������һ�е���벿��
				column = 0;
			end
		end else begin                      //һ��conv unit�����ҪD*5*5+2��ʱ�ӣ���˴����ʱ��ֻ��count�Լ� 
			internalReset = 0;
			counter = counter + 1;
		end
	end
end

always @ (*) begin   // ��������ͼ���28*28������outputCounter�仯��ÿ�����14������ֵ
   if (reset == 1'b1)  outputConv = 0; 
   else outputConv[outputCounter*((W-F+1)/2)*DATA_WIDTH+:((W-F+1)/2)*DATA_WIDTH] = outputConvUnits;
end


endmodule

