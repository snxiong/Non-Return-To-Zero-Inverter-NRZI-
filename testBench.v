// Steven Xiong
// CSC142
// project#1
`include "nrzi.v"

module testBench();
	reg clock, reset, x;
	wire z;
	
	nrzi nrziMod(clock, reset, x, z);
	
	initial begin
		$monitor("%4d:		z = %b", $time, z);
		clock = 0;
		reset = 1;
		x = 0;
		#10 reset = 0;
	end
	
	always

	begin
		#5 clock = ~clock;
	end
	
	initial begin
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 1; $display("%4d: x = %b", $time, x);
		#10 x = 0; $display("%4d: x = %b", $time, x);
		#10 $finish;
	end
endmodule




