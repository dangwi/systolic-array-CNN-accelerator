`timescale 100 ns / 10 ps

module convLayerMulti(clk,reset,image,filters,outputConv);

parameter DATA_WIDTH = 32;
parameter D = 6 ; //����ͼ�����  Depth of image and filter
parameter H = 14; //����ͼ��߶�  Height of image
parameter W = 14; //����ͼ����  Width of image
parameter F = 5;  //����˳ߴ�    Size of filter
parameter K = 16;  //����������  Number of filters applied

input clk, reset;
input [0:D*H*W*DATA_WIDTH-1] image;                       //һά������ͼ����
input [0:K*D*F*F*DATA_WIDTH-1] filters;                   //һά�����Ȩ��
output reg [0:K*(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputConv; //һά��������ͼ

reg [0:16*D*F*F*DATA_WIDTH-1] inputFilters;                   //ǰ�����������
wire [0:16*(H-F+1)*(W-F+1)*DATA_WIDTH-1] outputSingleLayers;  //ǰ����������ͼ

reg internalReset; //ÿ����������������ͼ����Ҫ��λ���������

integer filterSet, counter, outputCounter;  //32bit��������

genvar i; //ѭ�����ͱ���

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

/*  �ȼ���generate�ķ��� */
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
		filterSet = 0;       //�����ڼ���2�����ͬʱ����������ܴ���K/2(3��)��
		counter = 0;        //����ʲôʱ�����ȫ������������������ҪinternalReset��λ
		outputCounter = 0;  //������������ͼ������ �����ڼ������������
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

always @ (*) begin  // ��filterSet��outputCounterֵ�ı�ʱ������inputFilters�����outputConv��ȡ�µ�ֵ
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
