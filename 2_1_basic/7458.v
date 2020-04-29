module top_module(p1a,p2a,p2b,p2c,p2d,p1c,p1b,p1f,p1e,p1d,p2y,p1y);
	input p1a,p2a,p2b,p2c,p2d,p1c,p1b,p1f,p1e,p1d;
	output p2y,p1y;

	wire l_1,l_2;
	wire r_1,r_2;

	assign l_1 = p2a & p2b;
	assign l_2 = p2c & p2d;
	assign r_1 = p1a & p1c & p1b;
	assign r_2 = p1f & p1e & p1d;

	assign p2y = l_1 | l_2;
	assign p1y = r_1 | r_2;
endmodule