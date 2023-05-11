`timescale 1ns/1ns

module WrapperCU(input clk, rst, inReady, resultAccepted, doneFP, output logic startFP, resultReady, inAccept, enTri, leA, leB);

	logic [1:0] pstate, nstate;
	parameter [2:0] Idle =0, getA=1, A_loaded=2, getB=3, B_loaded=4, start_calc=5 ,calculate=6, result_ready=7;

	always @(pstate, inReady) begin
		nstate = 0;
		{startFP, resultReady, inAccept, enTri, leA, leB} = 6'b0;
		case(pstate)
			Idle: begin nstate = inReady ? getA: Idle; end
			getA: begin nstate = A_loaded; leA=1'b1; end
			A_loaded: begin nstate = inReady ? getB : A_loaded; inAccept=1'b1; end
			getB: begin nstate = B_loaded; leB=1'b1; end	
			B_loaded: begin nstate = start_calc; startFP=1'b1; end
			start_calc: begin nstate = calculate; startFP=1'b1; end
			calculate: begin nstate = doneFP ? result_ready : calculate; end
			result_ready: begin nstate = resultAccepted ? Idle : result_ready; resultReady=1'b1; enTri=1'b1; end
			default: nstate = Idle;
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst) pstate <= Idle;
		else
		pstate <= nstate;
	end

endmodule
