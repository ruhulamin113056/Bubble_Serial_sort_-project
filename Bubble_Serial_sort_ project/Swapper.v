`timescale 1ns / 1ps

module Swapper
	#(parameter N = 8)
	(
		input wire clk,
		input wire signed [N-1:0] x,y,
		output reg signed [N-1:0] s,g
    );
	
	always @(posedge clk)
		if(x>y)
			begin
				s = y;
				g = x;
			end
		else
			begin
				s = x;
				g = y;
			end
			
endmodule

