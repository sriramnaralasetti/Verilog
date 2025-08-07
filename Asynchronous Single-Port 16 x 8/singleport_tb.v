module singleport_tb( );
wire [7:0]data;
reg [3:0]addr;
reg en,we;
reg [7:0]temp;
integer l;
singleport dut(we,en,data,addr);
assign data=(we&&!en)?temp:8'hzz;
task initialize;
begin
en=1'b0;
temp=8'h00;
we=1'b0;
end
endtask
task inputs(input [3:0]i,input [7:0]d);
begin
addr=i;
temp=d;
end
endtask
task write();
begin
we=1'b1;
en=1'b0;
end
endtask
task read();
begin
we=1'b0;
en=1'b1;
end
endtask
task delay();
#10;
endtask
initial 
begin
delay;
write();
for(l=0;l<16;l=l+1)
begin
inputs(l,6);
delay;
initialize;
delay;
read;
end
for(l=0;l<16;l=l+1)
begin
inputs(l,6);
delay;
end
delay;
$finish;
end
endmodule

