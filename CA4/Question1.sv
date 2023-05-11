`timescale 1ns/1ns

module SR_latch(input S, R, Clk, output Q);

	wire Rbar, Clkbar, Sbar, y1, y2, Qbar;


	nand #8 g1(Rbar, R, R), g2(Clkbar, Clk, Clk), g3(Sbar, S, S);
	nand #8 g4(y1, Rbar, Clkbar), g5(y2, Sbar, Clkbar);
	nand #8 g6(Q, Qbar, y2), g7(Qbar, Q, y1);


endmodule
