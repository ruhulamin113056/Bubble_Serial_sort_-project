`timescale 1ns / 1ps

module swapper_tb;

	// Inputs
	reg clk;
	reg signed [7:0] x;
	reg signed [7:0] y;

	// Outputs
	wire signed [7:0] s;
	wire signed [7:0] g;

	// Instantiate the Unit Under Test (UUT)
	Swapper uut (
		.clk(clk), 
		.x(x), 
		.y(y), 
		.s(s), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#10;
		clk = 1;
      x = -5;
		y = 4;
		#10;
		$stop;

	end
      
endmodule

