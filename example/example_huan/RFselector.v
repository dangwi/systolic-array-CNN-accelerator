`timescale 100 ns / 10 ps

module RFselector(image,rowNumber, column,receptiveField);

parameter DATA_WIDTH = 32;
parameter D = 1; //Depth of the filter
parameter H = 32; //Height of the image
parameter W = 32; //Width of the image
parameter F = 5; //Size of the filter

input [0:D*H*W*DATA_WIDTH-1] image;
input [5:0] rowNumber, column;
output reg [0:(((W-F+1)/2)*D*F*F*DATA_WIDTH)-1] receptiveField;  // RF的输出，14*D个一维化感受野，W-F+1)/2=14，后续改动时保证PE数=输出维数/2 

integer address, c, k, i;

always @ (image or rowNumber or column) begin
	address = 0;
	if (column == 0) begin
		for (c = 0; c < (W-F+1)/2; c = c + 1) begin
			for (k = 0; k < D; k = k + 1) begin   // 输入特征图深度：先存一张完整的二维图，之后再存第二张  在二维图内，先存完一行，再存下一列
				for (i = 0; i < F; i = i + 1) begin
					receptiveField[address*F*DATA_WIDTH+:F*DATA_WIDTH] = image[rowNumber*W*DATA_WIDTH+c*DATA_WIDTH+k*H*W*DATA_WIDTH+i*W*DATA_WIDTH+:F*DATA_WIDTH];
					address = address + 1;
				end
			end
		end
	end else begin
		for (c = (W-F+1)/2; c < (W-F+1); c = c + 1) begin
			for (k = 0; k < D; k = k + 1) begin
				for (i = 0; i < F; i = i + 1) begin
					receptiveField[address*F*DATA_WIDTH+:F*DATA_WIDTH] = image[rowNumber*W*DATA_WIDTH+c*DATA_WIDTH+k*H*W*DATA_WIDTH+i*W*DATA_WIDTH+:F*DATA_WIDTH];
					address = address + 1;
				end
			end
		end
	end
	
end

endmodule

