module top_module(a,b,sum);
    input [31:0] a,b;
    output [31:0] sum;
    wire cout,cout1;

    add16 add1(a[15:0],b[15:0],1'b0,sum[15:0],cout);
    add16 add2(a[31:16],b[31:16],cout,sum[31:16],cout1);
endmodule

module add1(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    assign {cout,sum} = a + b + cin;
endmodule


/* 

module top_module(a,b,sum);
  input [31:0] a,b;
  output [31:0] sum;
  wire cout,temp;

  add16 adder1(
    .a(a[15:0]),
    .b(b[15:0]),
    .cin(1'b0),
    .cout(cout),
    .sum(sum[15:0])
  );
  add16 adder2(
    .a(a[31:16]),
    .b(b[31:16]),
    .cin(cout),
    .cout(temp),
    .sum(sum[31:16])
  );
endmodule

module add1(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign {cout,sum} = a+b+cin;
endmodule


 */