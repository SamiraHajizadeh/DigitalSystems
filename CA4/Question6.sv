`timescale 1ns/1ns

module D_mmff(input D, Clk, output Q);
	
	wire y;
	D_latch l1(D, Clk, y), l2(y, ~Clk, Q);
	
endmodule
