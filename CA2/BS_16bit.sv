`timescale 1ns/1ns
module BS_16bit(input [15:0] A, [3:0] s, output [15:0] w);

	MUX16to1 mux1(A[15:0], s, w[0]),
		mux2({A[0], A[15:1]}, s, w[1]),
		mux3({A[1:0], A[15:2]}, s, w[2]),
		mux4({A[2:0], A[15:3]}, s, w[3]),
		mux5({A[3:0], A[15:4]}, s, w[4]),
		mux6({A[4:0], A[15:5]}, s, w[5]),
		mux7({A[5:0], A[15:6]}, s, w[6]),
		mux8({A[6:0], A[15:7]}, s, w[7]),
		mux9({A[7:0], A[15:8]}, s, w[8]),
		mux10({A[8:0], A[15:9]}, s, w[9]),
		mux11({A[9:0], A[15:10]}, s, w[10]),
		mux12({A[10:0], A[15:11]}, s, w[11]),
		mux13({A[11:0], A[15:12]}, s, w[12]),
		mux14({A[12:0], A[15:13]}, s, w[13]),
		mux15({A[13:0], A[15:14]}, s, w[14]),
		mux16({A[14:0], A[15]}, s, w[15]);

endmodule