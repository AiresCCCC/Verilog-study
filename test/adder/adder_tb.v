module adder_tb;
    wire so,co;
    reg a,b,ci;
    adder U1(a,b,ci,so,co);
    initial
        begin
                a=0;b=0;ci=0;
            #20 a=0;b=0;ci=1;
            #20 a=0;b=1;ci=0;
            #20 a=0;b=1;ci=1;
            #20 a=1;b=0;ci=0;
            #20 a=1;b=0;ci=1;
            #20 a=1;b=1;ci=0;
            #20 a=1;b=1;ci=1;
            #200 $finish;
        end
endmodule