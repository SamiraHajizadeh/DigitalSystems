`timescale 1ns/1ns
module MUX16to1(A, s, w);

	input [15:0] A;
	input [3:0] s;
	output w;
	wire y1, y2, y3, y4;

	
	MUX4to1 mux1(A[0], A[1], A[2],  A[3], s[0], s[1], y1),
		mux2(A[4], A[5], A[6],  A[7], s[0], s[1], y2),
		mux3(A[8], A[9],A[10], A[11], s[0], s[1], y3),
		mux4(A[12],A[13],A[14],A[15], s[0], s[1], y4),
		mux5(y1, y2, y3, y4, s[2], s[3], w);

endmodule
