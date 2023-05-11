`timescale 1ns/1ns

module FA_nbit #(parameter n=3) (input [n-1:0] A, B, input Cin, output [n-1:0] S, output Cout);

	assign #((n-1)*37 + 38) {Cout, S} = A + B + Cin;

endmodule
