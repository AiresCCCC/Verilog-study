module top_module(a,b,out);
	input a,b;
	output out;
	assign out = a^~b;
	assign in=1'b1;
endmodule