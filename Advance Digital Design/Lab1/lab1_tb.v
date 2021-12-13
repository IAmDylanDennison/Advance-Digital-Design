//Dylan Dennison
//Lab 1 test branch
//10/15/21

`timescale 1ns/1ps
`include "lab1code.v"

module lab1_tb;
   reg  X, Y;
   wire  Z;

   lab1code test_branch(
	.Z(Z),
	.X(X),
	.Y(Y)
   );
   

   initial
 
     begin

	$dumpfile("lab1code.vcd");
        $dumpvars(0, lab1_tb);
	#20 assign X = 0;
        #20 assign Y = 0;
        $display("done tesing case 0");

	#20 assign X = 1;
	#20 assign Y = 0;
	$display("done tesing case 1");

	#20 assign X = 1;
	#20 assign Y = 1;
	$display("done tesing case 2");

	#20 assign X = 0;
	#20 assign Y = 1;
	$display("done tesing case 3");

	$finish;

     end

endmodule
