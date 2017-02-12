`timescale 1ns / 1ps

module bottom_sorter_2
	#(parameter N = 8)
	(
		input wire clk,
		input wire signed [N-1:0] i1, i2,  
		output wire signed [N-1:0] o1, o2
    );
		 
	 Swapper #(.N(N)) U6
	(
		.clk(clk),
		.x(i1),.y(i2),
		.s(o1),.g(o2)
    );

endmodule
