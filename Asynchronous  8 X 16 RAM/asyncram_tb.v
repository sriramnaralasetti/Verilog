module asyncram_tb;
    reg rdclk, wclk, rst, we, re;
    reg [2:0] waddr, raddr;
    reg [15:0] din;
    wire [15:0] dout;
asyncram dut (.rdclk(rdclk),.wclk(wclk),.rst(rst),.we(we),.re(re),.waddr(waddr),.raddr(raddr),.din(din),.dout(dout));
    initial begin
        rdclk = 0;
        forever #10 rdclk = ~rdclk;
    end
    initial begin
        wclk = 0;
        forever #5 wclk = ~wclk;
    end
    initial begin
        rst = 1;
        we = 0;
        re = 0;
        din = 0;
        waddr = 0;
        raddr = 0;

        #20 rst = 0;
        #10 we = 1; din = 16'hABCD; waddr = 3;
        #10 we = 0;

        #10 we = 1; din = 16'h1234; waddr = 5;
        #10 we = 0;

        #15 re = 1; raddr = 3;
        #20 re = 0;

        #15 re = 1; raddr = 5;
        #20 re = 0;

        #50 $finish;
    end
endmodule
