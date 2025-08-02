module fullsubractor_tb();
reg a,b,cin;
wire diff,borrow;
fullsubractor dut(.a(a),.b(b),.cin(cin),.diff(diff),.borrow(borrow));
initial 
begin
$monitor("a=%b,b=%b,cin=%b,diff=%b,borrow=%b",a,b,cin,diff,borrow);
 a=0; b=0;cin=0;
#5 a=0; b=0;cin=1;
#5 a=0;b=1;cin=0;
#5 a=0;b=1;cin=1;
#5;a=1;b=0;cin=0;
#5;a=1;b=0;cin=1;
#5;a=1;b=0;cin=1;
#5;a=1;b=1;cin=0;
#5;a=1;b=1;cin=1;
#5;
end
endmodule
