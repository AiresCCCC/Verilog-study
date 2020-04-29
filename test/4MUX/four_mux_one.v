module four_mux_one(d1,d2,d3,d4,sel,out);
    input wire d1,d2,d3,d4;
    input wire [1:0] sel;
    output out;
    reg out;

    always @(d1,d2,d3,d4)
        begin
            case(sel)
                2'b00:      out = d1;
                2'b01:      out = d2;
                2'b10:      out = d3;
                2'b11:      out = d4;
                default:    out = 1'bx;
            endcase
        end
endmodule