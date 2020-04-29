module top_module(a,b,c,d,out1,out2);
    input a,b,c,d;
    output out1,out2;
    mod_a module_a (out1,out2,a,b,c,d);
endmodule