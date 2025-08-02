module fullsubractor(a,b,cin,diff,borrow);
input a,b,cin;
output diff,borrow;
wire w1,w2,w3;

halfsubractor hs1(.a(a),.b(b),.diff(w1),.borrow(w2));
halfsubractor hs2(.a(w1),.b(cin),.diff(diff),.borrow(w3));
or o1(borrow,w2,w3);
endmodule
