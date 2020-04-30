module top_module(a,b,clk,out_assign,out_always_ff,out_always_comb);
    input a,b,clk;
    output wire out_assign;
    output reg  out_always_comb,out_always_ff;

    assign out_assign = a ^ b;
    always @(*)
		begin
			out_always_comb = a ^ b;
		end
	always @(posedge clk)
		begin
			out_always_ff <= a ^ b;
		end
endmodule