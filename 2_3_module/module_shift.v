module top_module(clk,d,q);
    input clk,d;
    output q;
    wire out1,out2;

    my_dff ff1(.clk(clk),.d(d),.q(out1));
    my_dff ff2(.clk(clk),.d(out1),.q(out2));
    my_dff ff3(.clk(clk),.d(out2),.q(q));
endmodule

/* 
module top_module(clk,d,q);
  input clk,d;
  output q;
  wire out_1,out_2;

  my_dff dff_1(
    .clk(clk),
    .d(d),
    .q(out_1)
  );
  my_dff dff_2(
    .clk(clk),
    .d(out_1),
    .q(out_2)
  );
  my_dff dff_3(
    .clk(clk),
    .d(out_2),
    .q(q)
  );

endmodule
 */