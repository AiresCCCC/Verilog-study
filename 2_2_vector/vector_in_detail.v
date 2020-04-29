`default_nettype none
module top_module(in,out_hi,out_lo);
	input wire [15:0] in;
	output wire [7:0] out_hi,out_lo;
	assign out_lo = in [7:0];
	assign out_hi = in [15:8];
endmodule