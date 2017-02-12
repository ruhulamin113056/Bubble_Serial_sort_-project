`timescale 1ns / 1ps

module top_sorter	
   #(parameter N = 4)
	(
		input wire clk,
		input wire signed [N-1:0] i1, i2, i3, i4,
		output wire signed [N-1:0] o1, o2, o3, o4
    );

	wire signed [N-1:0] w1, w2, w3, w4, w5;
	
	bottom_sorter_0 #(.N(N)) stage_1
	(
		.clk(clk),
		.i1(i1), .i2(i2), .i3(i3), .i4(i4),
		.o1(w1), .o2(w2), .o3(w3), .o4(o4)
    );
	 
	 bottom_sorter_1 #(.N(N)) stage_2
	(
		.clk(clk),
		.i1(w1), .i2(w2), .i3(w3), 
		.o1(w4), .o2(w5), .o3(o3)
    );
	 
	 bottom_sorter_2 #(.N(N)) stage_3
	(
		.clk(clk),
		.i1(w4), .i2(w5), 
		.o1(o1), .o2(o2)
    );
	
endmodule
