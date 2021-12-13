module numberFive (Y, X, V, D1, D2, D3, D4);
        output Y, X, V;
        input D1, D2, D3, D4;
        wire D2_not, one, two;


not G1(D2_not, D2);
and G2(one, D2_not, D1);
or  G3(Y, one, D3);

or G4(two, D2, D3);
or G5(X, D2, D3);

or G6(V, two, D1, D0);
endmodule


