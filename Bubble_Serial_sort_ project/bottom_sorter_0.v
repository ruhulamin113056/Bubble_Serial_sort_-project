`timescale 1ns / 1ps

module bottom_sorter_0
	#(parameter N = 8)
	(
		input wire clk,
		input wire signed [N-1:0] i1, i2, i3, i4,
		output wire signed [N-1:0] o1, o2, o3, o4 
    );
	
	wire signed [N-1:0] w1,w2;
		 
	 Swapper #(.N(N)) U1
	(
		.clk(clk),
		.x(i1),.y(i2),
		.s(o1),.g(w1)
    );
	 
	 Swapper #(.N(N)) U2
	(
		.clk(clk),
		.x(w1),.y(i3),
		.s(o2),.g(w2)
    );

	Swapper #(.N(N)) U3
	(
		.clk(clk),
		.x(w2),.y(i4),
		.s(o3),.g(o4)
    );
	 	 
endmodule
