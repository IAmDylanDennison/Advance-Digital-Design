//Dylan Dennison
//final exam number four test branch
//12/10/21

`include "numfour.v"
`timescale 1ns/1ps


module numberFour_tb;
   reg  X, Y, Z, P;
   wire  C;

   numberFour test_branch(
        .C(C),
        .X(X),
        .Y(Y),
        .Z(Z),
	.P(P)
   );


   initial

     begin

        $dumpfile("numfour.vcd");
        $dumpvars(0, numberFour_tb);

        #10 assign X = 0;
        #10 assign Y = 1;
        #10 assign Z = 0;
	#10 assign P = 1;
        $display("done testing case 0");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 0;
	#10 assign P = 0;
        $display("done testing case 1");

        #10 assign X = 1;
        #10 assign Y = 1;
        #10 assign Z = 0;
	#10 assign P = 0;
	$display("done testing case 2");

	#10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 1;
        #10 assign P = 0;
        $display("done testing case 3");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 0;
        #10 assign P = 1;
        $display("done testing case 4");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 0;
        #10 assign P = 0;
        $display("done testing case 5");

	#10 assign X = 0;
        #10 assign Y = 0;
        #10 assign Z = 0;
        #10 assign P = 0;
        $display("done testing case 6");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 1;
        #10 assign P = 0;
        $display("done testing case 7");

        #10 assign X = 0;
        #10 assign Y = 1;
        #10 assign Z = 1;
        #10 assign P = 0;
        $display("done testing case 8");

	#10 assign X = 1;
        #10 assign Y = 1;
        #10 assign Z = 1;
        #10 assign P = 0;
        $display("done testing case 9");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 1;
        #10 assign P = 1;
        $display("done testing case 10");

        #10 assign X = 1;
        #10 assign Y = 0;
        #10 assign Z = 0;
        #10 assign P = 1;
        $display("done testing case 11");

	#10 assign X = 1;
        #10 assign Y = 1;
        #10 assign Z = 1;
        #10 assign P = 1;
        $display("done testing case 12");

        #10 assign X = 0;
        #10 assign Y = 1;
        #10 assign Z = 1;
        #10 assign P = 1;
        $display("done testing case 13");

        #10 assign X = 0;
        #10 assign Y = 0;
        #10 assign Z = 1;
        #10 assign P = 1;
        $display("done testing case 14");

	#10 assign X = 0;
        #10 assign Y = 0;
        #10 assign Z = 0;
        #10 assign P = 1;
        $display("done testing case 15");

     $finish;

     end

endmodule


