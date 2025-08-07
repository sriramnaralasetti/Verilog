module comparator(a,b,agb,alb,aeb);
input a,b;
output agb,alb,aeb;
assign agb= a>b;
assign alb=a<b;
assign aeb=a==b;
endmodule
