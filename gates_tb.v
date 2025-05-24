module gates_tb();
reg a,b;
wire c,d,e,f,g,h,i;
gates dut(a,b,c,d,e,f,g,h,i);
initial
begin
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
end
endmodule


