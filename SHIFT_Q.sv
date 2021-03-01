module SHIFT_Q
#(parameter SIZEIQ=160,parameter L=80)
(
	input C, E,
	input Q,
	output Q1,
	output reg [L-1:0] n,
	output signed [9:0] LP
);
	// Declare the shift register
	reg [L-1:0] sr;

	// Shift everything over, load the incoming bit
	always @ (negedge C)
	begin
		if (E == 1'b1)
		begin
			sr[L-1:1] <= sr[L-2:0];
			sr[0] <= Q;
			n<=sr;
		end
	end

	// Catch the outgoing bit
	assign Q1 = sr[L-1],LP=L;

endmodule

