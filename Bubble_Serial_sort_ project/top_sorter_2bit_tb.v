`timescale 1ns / 1ps


module top_sorter_2bit_tb;

	// Inputs
	reg clk;
	reg [1:0] i1;
	reg [1:0] i2;
	reg [1:0] i3;
	reg [1:0] i4;

	// Outputs
	wire [1:0] o1;
	wire [1:0] o2;
	wire [1:0] o3;
	wire [1:0] o4;

	// Instantiate the Unit Under Test (UUT)
	top_sorter uut (
		.clk(clk), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		i1 = 3;
		i2 = 2;
		i3 = 0;
		i4 = 1;
		#100; $stop;

	end
   
   always #10 clk = ~clk;
   
endmodule

