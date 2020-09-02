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

/* 
module top_module(clk,d,q,sel);
  input clk;
  input [7:0] d;
  input [1:0] sel;
  output reg [7:0] q;
  wire [7:0] out_1,out_2,out_3;

  my_dff8 dff1(
    .clk(clk),
    .d(d),
    .q(out_1)
  );
  my_dff8 dff2(
    .clk(clk),
    .d(out_1),
    .q(out_2)
  );
  my_dff8 dff3(
    .clk(clk),
    .d(out_2),
    .q(out_3)
  );

  always @(sel)
    begin
      case(sel)
        2'b00: q=d;
        2'b01: q=out_1;
        2'b10: q=out_2;
        2'b11: q=out_3;
      endcase
    end


endmodule

 */