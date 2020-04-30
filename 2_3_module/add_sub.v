module top_module(a,b,sub,sum);
    input sub;
    input [31:0] a,b;
    output [31:0] sum;

    wire [31:0] b1;
    wire cout,cout1;

    assign b1 = b ^ {32{sub}};

    add16 adder1 (a[15:0],b1[15:0],sub,sum[15:0],cout);
    add16 adder2 (a[31:16],b1[31:16],cout,sum[31:16],cout1);
endmodule
