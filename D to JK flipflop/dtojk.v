module dtojk(input clk,rst,
             input j,k,
             inout q,q_bar
           );
wire w1,w2,d;
d_latch dut(d,clk,rst,q,q_bar);

and a1(w1,q,(~k));
and a2(w2,q_bar,j);
or o1(d,w1,w2);

endmodule