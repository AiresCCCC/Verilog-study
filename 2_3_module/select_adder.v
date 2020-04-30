module top_module(a,b,sum);
    input [31:0] a,b;
    output reg [31:0] sum;
    reg [15:0] sum1,sum2;
    wire cout,cout_1,cout_2;

    add16 select(a[15:0],b[15:0],1'b0,sum[15:0],cout);
    add16 adder1(a[31:16],b[31:16],1'b0,sum1[15:0],cout_1);
    add16 adder2(a[31:16],b[31:16],1'b1,sum2[15:0],cout_2);

    always @(cout)
        begin
            case(cout)
                1'b0:   sum[31:16] = sum1[15:0];
                1'b1:   sum[31:16] = sum2[15:0];
            endcase
        end
endmodule
