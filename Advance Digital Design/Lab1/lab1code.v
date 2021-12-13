//Dylan Dennison
//Lab 1
//10/15/21

module lab1code(Z, X, Y);

   //varibles
   output Z;
   input X, Y;


   assign Z = ~(X ^ Y); // xnor

endmodule
