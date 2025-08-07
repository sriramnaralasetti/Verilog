module mux2to1withbuf(input i0,i1,
                      input sel,
                      output y
);
bufif0 b1(y,sel,i0);
bufif1 b2(y,sel,i1);
endmodule

