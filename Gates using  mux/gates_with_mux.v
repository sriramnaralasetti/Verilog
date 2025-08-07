module gates_with_mux(a,b,sel,y);
input a,b;
input sel;
output y;
assign y=(sel=a)?1'b0:b;
assign y=(sel=a)?1'b1:b;
assign y=(sel=a)?(~a):(~b);
assign y=(sel=a)?a:b;
assign y=(sel=a)?a:b;
assign y=(sel=a)?a:b;
assign y=(sel=a)?a:b;
endmodule
