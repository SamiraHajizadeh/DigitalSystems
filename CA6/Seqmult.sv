`timescale 1ns/1ns

module Seqmult(input clk, rst, start, input [23:0] A, B, output [47:0] ResultBus, output ready);
	wire A0;
	wire loadA,loadB,loadP,shiftA,InitP,Bsel;

	SeqmultDP dp (clk,rst,loadA,loadB,loadP,shiftA,InitP,Bsel,A,B,ResultBus,A0);
	SeqmultCU cu (clk,rst,start,A0,loadA,shiftA,loadB,loadP,InitP,Bsel,ready);
endmodule
