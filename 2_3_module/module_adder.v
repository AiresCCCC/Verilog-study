module top_module(a,b,sum);
    input [31:0] a,b;
    output [31:0] sum;
    wire cout1,cout2;

    add16 adder1(a[15:0],b[15:0],1'b0,sum[15:0],cout1);
    add16 adder2(a[31:16],b[31:16],cout1,sum[31:16],cout2);
endmodule


/* 

module top_module(a,b,sum);
  input [31:0] a,b;
  output [31:0] sum;
  wire [15:0] out_1,out_2;
  wire cout,temp;

  add16 adder1(
    a[15:0],
    b[15:0],
    1'b0,
    sum[15:0],
    cout,
  );

  add16 adder2(
    a[31:16],
    b[31:16],
    cout,
    sum[31:16],
    temp,
  );

endmodule

 */