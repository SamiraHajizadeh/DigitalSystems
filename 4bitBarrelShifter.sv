`timescale 1ns/1ns
module BS_4bit(input [1:0] s, [3:0] A, output [3:0] w);

	MUX4to1 mux1(A[0], A[1], A[2], A[3], s[0], s[1], w[0]),
		mux2(A[1], A[2], A[3], A[0], s[0], s[1], w[1]),
		mux3(A[2], A[3], A[0], A[1], s[0], s[1], w[2]),
		mux4(A[3], A[0], A[1], A[2], s[0], s[1], w[3]);

endmodule
