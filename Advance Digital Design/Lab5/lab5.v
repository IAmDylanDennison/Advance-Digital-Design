module labFiveCode (C, D, E, A, B);
        output C, D, E;
        input A, B;
        wire A_not, B_not, one, two;


not G1(A_not, A);
not G2(B_not, B);

and G3(one, A_not, B);
and G4(C, A_not, B);

and G5(two, B_not, A);
and G6(E, B_not, B);

nor G7(D, one, two);
endmodule

