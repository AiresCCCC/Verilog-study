module top_module(a,b,c,d,out,out_n);
	input a,b,c,d;
	output out,out_n;

	wire a_b;
	wire c_d;

	assign a_b = a&b;
	assign c_d = c&d;
	assign out = a_b|c_d;
	assign out_n = ~(a_b|c_d);
endmodule