module top_module(in,out_and,out_or,out_xor);
	input [3:0] in;
	output out_and,out_or,out_xor;

	assign out_and = in[0] & in[1] & in[2] & in[3];
	assign out_or  = in[0] | in[1] | in[2] | in[3];
	assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];

	//out_and = & in;
	//out_or  = | in;
	//out_xor = ^ in;
endmodule