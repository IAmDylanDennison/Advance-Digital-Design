//Dylan Dennison
//final exam number four test branch
//12/10/21

`include "numfive.v"
`timescale 1ns/1ps


module numberFive_tb;
   reg  D1, D2, D3, D4;
   wire  Y, X, V;

   numberFive test_branch(
        .Y(Y),
        .X(X),
        .V(V),
        .D1(D1),
        .D2(D2),
	.D3(D3),
	.D4(D4)
   );


   initial

     begin

        $dumpfile("numfive.vcd");
        $dumpvars(0, numberFive_tb);

        #10 assign D1 = 0;
        #10 assign D2 = 1;
        #10 assign D3 = 0;
        #10 assign D4 = 1;
        $display("done testing case 0");

	#10 assign D1 = 1;
        #10 assign D2 = 1;
        #10 assign D3 = 0;
        #10 assign D4 = 0;
        $display("done testing case 2");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 1;
        #10 assign D4 = 0;
        $display("done testing case 3");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 0;
        #10 assign D4 = 1;
        $display("done testing case 4");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 0;
        #10 assign D4 = 0;
        $display("done testing case 5");

        #10 assign D1 = 0;
        #10 assign D2 = 0;
        #10 assign D3 = 0;
        #10 assign D4 = 0;
        $display("done testing case 6");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 1;
        #10 assign D4 = 0;
        $display("done testing case 7");

	#10 assign D1 = 0;
        #10 assign D2 = 1;
        #10 assign D3 = 1;
        #10 assign D4 = 0;
        $display("done testing case 8");

        #10 assign D1 = 1;
        #10 assign D2 = 1;
        #10 assign D3 = 1;
        #10 assign D4 = 0;
        $display("done testing case 9");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 1;
        #10 assign D4 = 1;
        $display("done testing case 10");

        #10 assign D1 = 1;
        #10 assign D2 = 0;
        #10 assign D3 = 0;
        #10 assign D4 = 1;
        $display("done testing case 11");

        #10 assign D1 = 1;
        #10 assign D2 = 1;
        #10 assign D3 = 1;
        #10 assign D4 = 1;
        $display("done testing case 12");

        #10 assign D1 = 0;
        #10 assign D2 = 1;
        #10 assign D3 = 1;
        #10 assign D4 = 1;
        $display("done testing case 13");


        #10 assign D1 = 0;
        #10 assign D2 = 0;
        #10 assign D3 = 1;
        #10 assign D4 = 1;
        $display("done testing case 14");

        #10 assign D1 = 0;
        #10 assign D2 = 0;
        #10 assign D3 = 0;
        #10 assign D4 = 1;
        $display("done testing case 15");

     $finish;

     end

endmodule

