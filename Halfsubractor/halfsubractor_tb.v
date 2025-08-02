module halfsubractor_tb();
reg a,b;
wire diff,borrow;
halfsubractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial 
begin
$monitor("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
 a=0; b=0;
#5 a=0; b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5;
end
endmodule