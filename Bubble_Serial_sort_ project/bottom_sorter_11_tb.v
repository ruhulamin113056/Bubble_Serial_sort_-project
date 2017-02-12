`timescale 1ns / 1ps



module bottom_sorter_11_tb;

	// Inputs
	reg clk;
	reg [7:0] i1;
	reg [7:0] i2;
	reg [7:0] i3;

	// Outputs
	wire [7:0] o1;
	wire [7:0] o2;
	wire [7:0] o3;

	// Instantiate the Unit Under Test (UUT)
	bottom_sorter_1 uut (
		.clk(clk), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		i1 = 8'bz;
		i2 = 8'bz;
		i3 = 8'bz;

		// Wait 100 ns for global reset to finish
		#20;
        
		i1 = 2;
		i2 = 4;
		i3 = 1;
		#100; $stop;

	end
	always #10 clk = ~clk;
      
endmodule

