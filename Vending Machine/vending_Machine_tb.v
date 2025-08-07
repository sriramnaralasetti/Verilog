module vending_Machine_tb;
    reg clk, rst;
    reg [1:0] coin;
    wire product, change;
    vending_Machine dut (
        .clk(clk),
        .rst(rst),
        .coin(coin),
        .product(product),
        .change(change)
    );

    always #5 clk = ~clk;
    initial begin
        $monitor("Time: %0t | coin=%b | product=%b | change=%b | state=%b", $time, coin, product, change, dut.present);
        clk = 0;
        rst = 1;
        coin = 2'b00;

        #10 rst = 0;

        #10 coin = 2'b01;
        #10 coin = 2'b10;
        #10 coin = 2'b00;

        #10 coin = 2'b10;
        #10 coin = 2'b10;
        #10 coin = 2'b00;

        #10 coin = 2'b01;
        #10 coin = 2'b01;
        #10 coin = 2'b01;
        #10 coin = 2'b00;

        #20 $finish;
    end

endmodule


