module top_module(clk,d,q);
    input clk,d;
    output q;
    wire out1,out2;

    my_dff ff1(.clk(clk),.d(d),.q(out1));
    my_dff ff2(.clk(clk),.d(out1),.q(out2));
    my_dff ff3(.clk(clk),.d(out2),.q(q));
endmodule