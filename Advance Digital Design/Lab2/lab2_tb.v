`include "lab2.v"

module lab2_tb;
reg clock;
reg reset;
wire [3:0] fourBits;


BitCounter test_b(.fourBits (fourBits),
			 .clock (clock),
			 .reset (reset));

initial	begin

$dumpfile("lab2.vcd");
$dumpvars(0, lab2_tb);

	clock =1;reset = 1; #100;
	clock=1; reset= 0; #100;
	
	#45 $finish; 
	end

always #10 clock = ~clock; // making clock for every 10 ns

endmodule
