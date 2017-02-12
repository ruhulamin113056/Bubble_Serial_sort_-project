`timescale 1ns / 1ps

module bottom_sorter_1
	#(parameter N = 8)
	(
		input wire clk,
		input wire signed [N-1:0] i1, i2, i3, 
		output wire signed [N-1:0] o1, o2, o3
    );
	
	wire signed [N-1:0] w1;
		 
	 Swapper #(.N(N)) U4
	(
		.clk(clk),
		.x(i1),.y(i2),
		.s(o1),.g(w1)
    );
	 
	 Swapper #(.N(N)) U5
	(
		.clk(clk),
		.x(w1),.y(i3),
		.s(o2),.g(o3)
    );
	 
endmodule

