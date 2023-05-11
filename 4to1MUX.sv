`timescale 1ns/1ns
module MUX4to1(a, b, c, d, s0, s1, w);

	input a, b, c, d, s0, s1;
	output w;

	assign #(32,28) w = s1 ? (s0 ? d : c) : (s0 ? b : a);

endmodule
