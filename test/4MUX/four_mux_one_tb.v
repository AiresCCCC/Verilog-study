module four_mux_one_tb;
    reg d1,d2,d3,d4;
    reg [1:0] sel;
    wire out;
    four_mux_one mux(   .d1(d1),
                        .d2(d2),
                        .d3(d3),
                        .d4(d4),
                        .sel(sel),
                        .out(out));

    initial
        begin
                    d1=0;d2=0;d3=0;d4=0;
            #10     d1=1;d2=1;
            #10     d1=0;     d3=1;d4=1;sel=2'b00;
            #10     d1=1;d2=0;d3=0;
            #10     d1=0;     d3=1;d4=0;
            #10     d1=1;d2=1;d3=0;     sel=2'b01;
            #10     d1=0;     d3=1;d4=1;
            #10     d1=1;d2=0;d3=0;
            #10     d1=0;     d3=1;d4=0;sel=2'b10;
            #10     d1=1;d2=1;
            #10     d1=0;     d3=1;d4=1;
            #10     d1=1;d2=0;d3=0;     sel=2'b11;
            #10     d1=0;     d3=1;d4=0;
            #10     d1=1;d2=1;
            #10     d1=0;     d3=1;d4=1;
        end
endmodule