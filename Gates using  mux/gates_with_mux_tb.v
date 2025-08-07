module gates_with_mux_tb();
reg a,b;
wire AND,OR,NOT,NAND,NOR,XOR,XNOR,BUFF;
gates_with_mux dut(a,b,AND,OR,NOT,NAND,NOR,XOR,XNOR,BUFF);
initial
begin
a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#5;
end
endmodule