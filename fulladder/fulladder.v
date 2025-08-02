module fulladder(a,b,cin,s,c);
input a,b,cin;
output s,c;
wire w1,w2,w3;
halfadder1 ha1(.a(a),.b(b),.sum(w1),.carry(w2));
halfadder1 ha2(.a(w1),.b(cin),.sum(s),.carry(w3));
or o1(c,w2,w3);
endmodule
