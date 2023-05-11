`timescale 1ns/1ns

module SeqmultCU(input clk, rst, start, A0, output logic loadA, shiftA, loadB, loadP, InitP, Bsel, ready);
	wire co;
	logic Init_counter, Inc_counter;
	logic [1:0]pstate,nstate;
	logic [23:0]count;
	parameter [1:0] Idle =0, Init=1, load=2, shift=3;

	always @(pstate,start,A0,co) begin
		nstate = 0;
		{loadA, shiftA, loadB, loadP, InitP, Bsel, ready} = 7'b0;
		{Init_counter, Inc_counter} = 2'b0;
		case(pstate)
			Idle: begin nstate= start ? Init: Idle; ready=1'b1; end
			Init: begin nstate= start ? load: Idle; Init_counter=1'b1; InitP=1'b1; end
			load: begin nstate= shift; loadA=1'b1; loadB=1'b1; end
			shift: begin nstate= co ? Idle: shift; loadP=1'b1; shiftA=1'b1; Inc_counter=1'b1;Bsel=A0; end
			default: nstate = Idle;
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst) pstate <= Idle;
		else
		pstate <= nstate;
	end

	always @(posedge clk, posedge rst) begin
		if (rst) count <= 24'b0;
		else
		if (Init_counter) count <= 24'b0;
		else
			if (Inc_counter) count <= count + 1;
	end
	assign co = & count;
endmodule
