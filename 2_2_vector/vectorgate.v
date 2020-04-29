module top_module(a,b,out_or_logical,out_or_bitwise,out_not);
	input [2:0] a,b;
	output [2:0] out_or_bitwise;
	output out_or_logical;
	output [5:0] out_not;

	assign out_or_bitwise = a | b;			//位或，产生n个信号
	assign out_or_logical = a || b;			//逻辑或，产生1个信号
	assign out_not[2:0] = ~a;
	assign out_not[5:3] = ~b;
endmodule