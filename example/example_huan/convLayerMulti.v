`timescale 100 ns / 10 ps

module convLayerMulti(clk,reset,image,filters,outputConv);

parameter DATA_WIDTH = 32;
parameter D = 6 ; //输入图像深度  Depth of image and filter
parameter H = 14; //输入图像高度  Height of image
parameter W = 14; //输入图像宽度  Width of image
parameter F = 5;  //卷积核尺寸    Size of filter
parameter K = 16;  //卷积核组深度  Number of filters applied

input clk, reset;
input [0:D*H*W*DATA_WIDTH-1] image;                       //一维化特征图输入
input [0:K*D*F*F*DATA_WIDTH-1] filters;                   //一维化卷积权重
output reg [0:K*(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputConv; //一维化卷积结果图

reg [0:16*D*F*F*DATA_WIDTH-1] inputFilters;                   //前两个卷积核组
wire [0:16*(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputSingleLayers;  //前两个卷积结果图

reg internalReset; //每计算完两个卷积结果图，需要复位计算后两个

integer filterSet, counter, outputCounter;  //32bit计数变量

genvar i; //循环整型变量

generate
	for (i = 0; i < 16; i = i + 1) begin 
		convLayerSingle #(
		  .DATA_WIDTH(DATA_WIDTH),
		  .D(D),
		  .H(H),
		  .W(W),
		  .F(F)
		) UUT 
		(
			.clk(clk),
	     		.reset(internalReset),
	     		.image(image),
	    		.filter(inputFilters[i*D*F*F*DATA_WIDTH+:D*F*F*DATA_WIDTH]),
	     		.outputConv(outputSingleLayers[i*(H-F+1)*(W-F+1)*DATA_WIDTH+:(H-F+1)*(W-F+1)*DATA_WIDTH])
      		);

/*  等价于generate的方法 */
//		convLayerSingle1 #(
//		  .DATA_WIDTH(DATA_WIDTH),
//		  .D(D),
//		  .H(H),
//		  .W(W),
//		  .F(F)
//		) UUT1 
//		(
//			.clk(clk),
//	     		.reset(internalReset),
//	     		.image(image),
//	    		.filter(inputFilters[0:D*F*F*DATA_WIDTH -1]),
//	     		.outputConv(outputSingleLayers[0:(H-F+1)*(W-F+1)*DATA_WIDTH -1])
//      		);      		
      		
//		convLayerSingle2 #(
//		  .DATA_WIDTH(DATA_WIDTH),
//		  .D(D),
//		  .H(H),
//		  .W(W),
//		  .F(F)
//		) UUT2 
//		(
//			.clk(clk),
//	     		.reset(internalReset),
//	     		.image(image),
//	    		.filter(inputFilters[D*F*F*DATA_WIDTH -1:2*D*F*F*DATA_WIDTH -1]),
//	     		.outputConv(outputSingleLayers[(H-F+1)*(W-F+1)*DATA_WIDTH -1:2*(H-F+1)*(W-F+1)*DATA_WIDTH -1])
//      		);            		
      		
  	end
endgenerate

always @ (posedge clk or posedge reset) begin
	if (reset == 1'b1) begin
		internalReset = 1'b1;
		filterSet = 0;       //在做第几次2卷积核同时卷积，不可能大于K/2(3轮)，
		counter = 0;        //决定什么时候完成全部卷积，运算结束，需要internalReset复位
		outputCounter = 0;  //决定整体特征图输出结果 读到第几次两组卷积结果
	end else if (filterSet < K/16) begin
		if (counter == ((((H-F+1)*(W-F+1))/((H-F+1)/2))*(D*F*F+3)+1)) begin   
			outputCounter = outputCounter + 1;
			counter = 0;
			internalReset = 1'b1;
			filterSet = filterSet + 1;
		end else begin
			internalReset = 0;
			counter = counter + 1;
		end
	end
end

always @ (*) begin  // 当filterSet和outputCounter值改变时，输入inputFilters和输出outputConv读取新的值
	if (reset == 1'b1) begin
	    inputFilters = 0;
	    outputConv = 0;	
	end
	else begin
	    inputFilters = filters[filterSet*16*D*F*F*DATA_WIDTH+:16*D*F*F*DATA_WIDTH];
	    outputConv[outputCounter*16*(H-F+1)*(W-F+1)*DATA_WIDTH+:16*(H-F+1)*(W-F+1)*DATA_WIDTH] = outputSingleLayers;
    end
end


endmodule
