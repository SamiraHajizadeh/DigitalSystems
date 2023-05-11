`timescale 1ns/1ns

module FA(input A, B, Cin, output S, Cout);

	wire y1, y2, y3;
	xor #(17, 19) g1(y1, A, B), g2(S, y1, Cin);
	nand #(10, 8) g3(y2, A, B), g4(y3, Cin, y1), g5(Cout, y3, y2);

endmodule
