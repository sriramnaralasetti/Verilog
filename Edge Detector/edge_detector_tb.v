module edgedetector_tb();
reg clk,signal;
wire y;
edgedetector dut(.clk(clk),.signal(signal),.y(y));
initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
    signal = 0; #12;
    signal = 1; #10;
    signal = 0; #10;
    signal = 1; #10;
    signal = 0; #10;
$finish;


end
 initial begin
    $monitor("Time=%0t | clk=%b | signal=%b | y=%b", $time, clk, signal, y);
  end

endmodule