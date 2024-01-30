`timescale 100 ns / 10 ps

module convLayerSingle(clk,reset,image,filter,outputConv);  //一个/组卷积核5*5*D  与 一幅图像32*32*D卷积 得到28*28特征图

parameter DATA_WIDTH = 32;
parameter D = 1; //Depth of the filter
parameter H = 32; //Height of the image
parameter W = 32; //Width of the image
parameter F = 5; //Size of the filter

input clk, reset;
input [0:D*H*W*DATA_WIDTH-1] image;     //一幅图像32*32*D
input [0:D*F*F*DATA_WIDTH-1] filter;    //一个/组卷积核5*5*D 
output reg [0:(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputConv; // 单层特征图输出28*28，在上一级中outputConv是整体特征图输出28*28*6，同名注意区分！！  output of the module

wire [0:((W-F+1)/2)*DATA_WIDTH-1] outputConvUnits; // 每次完成14个PE/conv unit的输出  output of the conv units and input to the row selector
 
reg internalReset;
wire [0:(((W-F+1)/2)*D*F*F*DATA_WIDTH)-1] receptiveField; // RF的输出，14*D个一维化感受野，W-F+1)/2=14，后续改动时保证PE数=输出维数/2   array of the matrices to be sent to conv units


integer counter, outputCounter;
//counter: conv unit完成所需的时钟周期数 number of clock cycles need for the conv unit to finsish
//outputCounter: 索引，将conv单元的输出映射到模块的输出 index to map the output of the conv units to the output of the module

reg [5:0] rowNumber, column; 
//rowNumber: 确定由conv单元计算的行，范围0-27  determines the row that is calculated by the conv units
//column: 决定我们是在计算输出行的第一个14像素还是第二个14像素，范围0或14  determines if we are calculating the first or the second 14 pixels of the output row

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

generate // 参数化生成n个卷积单元，其中n是输出图像一行像素数的一半(14)  generating n convolution units where n is half the number of pixels in one row of the output image
	for (n = 0; n < (H-F+1)/2; n = n + 1) begin 
		convUnit
		#(
			.D(D),
			.F(F)
		) CU
		(
			.clk(clk),
			.reset(internalReset), // 每14个conv unit完成后运算，复位清除数据，开始下一组计算
			.image(receptiveField[n*D*F*F*DATA_WIDTH+:D*F*F*DATA_WIDTH]), // 每个conv unit接受5*5*D大小的感受野
			.filter(filter), // 一个/组卷积核5*5*D
			.result(outputConvUnits[n*DATA_WIDTH+:DATA_WIDTH]) // 每次完成14个PE/conv unit的输出
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
		if (counter == D*F*F+2) begin //此时conv unit已完成运算 The conv unit finishes ater 1*5*5+2 clock cycles
			outputCounter = outputCounter + 1; //特征图输出读取14位卷积结果
			counter = 0;                       //复位开始下一组卷积
			internalReset = 1'b1;
			if (column == 0) begin             //开始计算一行的右半部分
				column = (H-F+1)/2;
			end else begin
				rowNumber = rowNumber + 1;    //开始计算下一行的左半部分
				column = 0;
			end
		end else begin                      //一次conv unit卷积需要D*5*5+2个时钟，因此大多数时候只是count自加 
			internalReset = 0;
			counter = counter + 1;
		end
	end
end

always @ (*) begin   // 单层特征图输出28*28，根据outputCounter变化，每次填充14个像素值
   if (reset == 1'b1)  outputConv = 0; 
   else outputConv[outputCounter*((W-F+1)/2)*DATA_WIDTH+:((W-F+1)/2)*DATA_WIDTH] = outputConvUnits;
end


endmodule

