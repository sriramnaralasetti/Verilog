
module adder(
input [3:0]a,b,
input m,
output [3:0] s,
output cout
);
wire [2:0]c;
wire b1,b2,b3,b4;
xor x1(b1,m,b[0]);
xor x2(b2,m,b[1]);
xor x3(b3,m,b[2]);
xor x4(b4,m,b[3]);
fulladder2 f2(a[0],b1,m,s[0],c[0]);
fulladder2 f3(a[1],b2,c[0],s[1],c[1]);
fulladder2 f4(a[2],b3,c[1],s[2],c[2]);
fulladder2 f5(a[3],b4,c[2],s[3],cout);
endmodule
