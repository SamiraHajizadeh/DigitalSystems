`timescale 1ns/1ns
module TB();
	logic aa=1, bb=1, cc=1, dd=0, ss0=0, ss1=0;
	wire ww;
	MUX4to1 mux(aa, bb, cc, dd, ss0, ss1, ww);
	initial begin
	#80 cc=0;
	#80 dd=1;
	#80 aa=0;
	#80 bb=0;
	#80 ss0=1;
	#80 aa=1;
	#80 cc=1;
	#80 aa=1;
	#80 ss0=0;
	#80 dd=0;
	#80 aa=0;
	#80 bb=1;

	#80 $stop;
	end

endmodule
