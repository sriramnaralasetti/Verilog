module decoder3to8(en,d,y);
input en;
input [2:0]d;
output [7:0]y;
wire x0,x1,x2;

not n0(x0,d[0]);
not n1(x1,d[1]);
not n2(x2,d[2]);

and a1(y[0],en,x2,x1,x0);
and a2(y[1],en,x2,x1,d[0]);
and a3(y[2],en,x2,d[1],x0);
and a4(y[3],en,x2,d[1],d[0]);
and a5(y[4],en,d[2],x1,x0);
and a6(y[5],en,d[2],x1,d[0]);
and a7(y[6],en,d[2],d[1],x0);
and a8(y[7],en,d[2],d[1],d[0]);


endmodule