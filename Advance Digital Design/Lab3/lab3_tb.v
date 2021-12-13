//Dylan Dennison
//Lab 3 test branch
//10/31/21

`timescale 1ns/1ps
`include "lab3.v"

module lab3_tb;
   reg  X, Y, Z;
   wire  F;

   labThreeCode test_branch(
        .F(F),
        .X(X),
        .Y(Y),
	.Z(Z)
   );


   initial

     begin

        $dumpfile("lab3.vcd");
        $dumpvars(0, lab3_tb);
        #10 assign X = 0;
        #10 assign Y = 0;
	#10 assign Z = 0;
        $display("done tesing case 0");

        #10 assign X = 1;
        #10 assign Y = 0;
	#10 assign Z = 0;
        $display("done tesing case 1");

        #10 assign X = 1;
        #10 assign Y = 1;
	#10 assign Z = 0;
        $display("done tesing case 2");

        #10 assign X = 1;
        #10 assign Y = 0;
	#10 assign Z = 1;
        $display("done tesing case 3");

	#10 assign X = 1;
        #10 assign Y = 1;
        #10 assign Z = 1;
        $display("done tesing case 4");
	
	#10 assign X = 0;
        #10 assign Y = 1;
        #10 assign Z = 0;
        $display("done tesing case 5");

	#10 assign X = 0;
        #10 assign Y = 1;
        #10 assign Z = 1;
        $display("done tesing case 6");

	#10 assign X = 0;
        #10 assign Y = 0;
        #10 assign Z = 1;
        $display("done tesing case 7");

        $finish;

     end

endmodule

