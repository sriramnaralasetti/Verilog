module tb_bidirectionalreg;
    reg clk, rst, mode, din;
    wire dout;
    bidirectionalreg dut (.clk(clk),.rst(rst),.mode(mode),.din(din),.dout(dout)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    initial begin
        $monitor("Time=%0t | rst=%b | mode=%b | din=%b | dout=%b",
                 $time, rst, mode, din, dout);

        rst = 1;
       din = 0;
        mode = 0;
        #10 rst = 0;
        mode = 0; 
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;

        mode = 1; 
        din = 0; #10;
        din = 1; #10;

       
        #10 $finish;
    end

endmodule
