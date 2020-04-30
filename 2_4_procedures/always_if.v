module top_module(a,b,sel_b1,sel_b2,out_always,out_assign);
    input a,b,sel_b1,sel_b2;
    output wire out_assign;
    output reg  out_always;

    assign out_assign = (sel_b1 & sel_b2)? b : a;
    always @(*)
        begin
            if(sel_b1 & sel_b2)
                begin
                    out_always = b;
                end
            else
                begin
                    out_always = a;
                end
        end
endmodule