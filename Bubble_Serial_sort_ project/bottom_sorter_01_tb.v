`timescale 1ns / 1ps


module bottom_sorter_01_tb;

	// Inputs
	reg clk;
	reg [7:0] i1;
	reg [7:0] i2;
	reg [7:0] i3;
	reg [7:0] i4;

	// Outputs
	wire [7:0] o1;
	wire [7:0] o2;
	wire [7:0] o3;
	wire [7:0] o4;

	// Instantiate the Unit Under Test (UUT)
	bottom_sorter_0 uut (
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


		// Wait 100 ns for global reset to finish
        
		i1 = 6;
		i2 = 2;
		i3 = 4;
		i4 = 1;
		#100; $stop;

	end
	
	always #10 clk = ~clk;
      
endmodule

