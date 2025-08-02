module halfsubractor(a,b,diff,borrow);
input a,b;
output reg diff,borrow;
always @(a,b) begin
diff=a^b;
borrow=((~a)&b);
end
endmodule