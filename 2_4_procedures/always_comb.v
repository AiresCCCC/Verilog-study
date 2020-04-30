module top_module(a,b,out_assign,out_alwaysblock);
    input a,b;
    output wire out_assign;
    output reg  out_alwaysblock;

    assign out_assign = a & b;
    always @(*)
        begin
            out_alwaysblock = a & b;
        end
endmodule