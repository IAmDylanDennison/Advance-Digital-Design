
module numberFour (C, X, Y, Z, P);
        output C;
        input X, Y, Z, P;
        wire one, two;


xor G1(one, X, Y);
xor G2(two, Z, P);

xor G3(C, one, two);

endmodule


