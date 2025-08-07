module twithd(input t,
              input clk,reset,
              inout q,
              output q_bar
);
wire w1;
d_latch dut(.d(w1),.clk(clk),.rst(reset),.q(q),.q_bar(q_bar));
xor x1(w1,t,q);
assign q_bar=~q;
endmodule

