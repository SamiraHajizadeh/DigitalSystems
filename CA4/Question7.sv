`timescale 1ns/1ns

module D_mmff_rs(input D, RS, Clk, output Q);

	D_mmff d(D&(~RS), Clk, Q);
endmodule