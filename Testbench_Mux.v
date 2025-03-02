`timescale 1ns / 1ps

module Testbench_Mux_v;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s1;
	reg s0;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	MUX_4to1 uut (
		.Y(Y), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s1(s1), 
		.s0(s0)
	);

	initial begin
		// Initialize Inputs
		
		 i0 = 0; i1 = 1; i2 = 0; i3 = 1;  // Example input values

        s1 = 0; s0 = 0; #10;  // Select i0 -> y should be 0
        s1 = 0; s0 = 1; #10;  // Select i1 -> y should be 1
        s1 = 1; s0 = 0; #10;  // Select i2 -> y should be 0
        s1 = 1; s0 = 1; #10;  // Select i3 -> y should be 1
        
        $stop;

	end
      
endmodule

