`timescale 1ns / 1ps


module bottom_sorter_2_tb;

	// Inputs
	reg clk;
	reg [3:0] i1;
	reg [3:0] i2;

	// Outputs
	wire [3:0] o1;
	wire [3:0] o2;

	// Instantiate the Unit Under Test (UUT)
	bottom_sorter_2 uut (
		.clk(clk), 
		.i1(i1), 
		.i2(i2), 
		.o1(o1), 
		.o2(o2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		i1 = 0;
		i2 = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		i1 = 2;
		i2 = 1;
		#100; $stop;

	end
     
always #10 clk = ~clk;
	  
endmodule

