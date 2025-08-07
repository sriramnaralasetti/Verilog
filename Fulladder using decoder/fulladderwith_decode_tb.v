module fulladderwith_decod_tb();
reg a,b,cin;
wire sum,carry;

fuladderwith_decod dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial
begin
$monitor("time=%t,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);

a=1'b0;b=1'b0;cin=1'b0;
#5 a=1'b0;b=1'b0;cin=1'b1;
#5 a=1'b0;b=1'b1;cin=1'b0;
#5 a=1'b0;b=1'b1;cin=1'b1;
#5 a=1'b1;b=1'b0;cin=1'b0;
#5 a=1'b1;b=1'b0;cin=1'b1;
#5 a=1'b1;b=1'b1;cin=1'b0;
#5 a=1'b1;b=1'b1;cin=1'b1;
#5;
end
endmodule