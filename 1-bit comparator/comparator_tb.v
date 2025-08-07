module comparator_tb();
reg a,b;
wire agb,alb,aeb;
comparator dut(a,b,agb,alb,aeb);
initial
begin
$monitor ("time=%t,a=%b,b=%b,agb=%b,alb=%b,aeb=%b",$time ,a,b,agb,alb,aeb);

a=1'b0; b=1'b0;
#5 a=1'b0; b=1'b1;
#5 a=1'b1; b=1'b0;
#5 a=1'b1; b=1'b1;
#5;
end
endmodule