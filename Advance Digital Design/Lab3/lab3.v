module labThreeCode (F, X, Y, Z);
	output F;
	input X,Y,Z;
	wire X_not, Y_not, Z_not, XY_not, XY_notZ, X_notYZ_not;


not G1(X_not, X);
not G2(Y_not, Y);
not G3(Z_not, Z);

or G4(XY_not, X, Y_not);

and G5(XY_notZ, XY_not, Z);
and G6(X_notYZ_not, X_not, Y, Z_not);

or G7(F, XY_notZ, X_notYZ_not);

endmodule

