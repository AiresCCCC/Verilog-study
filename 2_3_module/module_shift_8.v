module top_module(clk,d,sel,q);
    input clk;
    input [7:0] d;
    input [1:0] sel;
    output reg [7:0] q;
    wire [7:0] q_1,q_2,q_3;

    my_dff8 dff1(clk,d,q_1);
    my_dff8 dff2(clk,q_1,q_2);
    my_dff8 dff3(clk,q_2,q_3);

    always @(sel)
        begin
            case(sel)
                2'b00:  q = d;
                2'b01:  q = q_1;
                2'b10:  q = q_2;
                2'b11:  q = q_3;
            endcase
        end
endmodule