`timescale 1ns / 1ps


module clk_divider_tb();
reg rst,Fclk;
wire clk;

clk_divider dut(.rst(rst), .Fclk(Fclk), .clk(clk));

initial begin
    Fclk = 1'b0;
    forever #8 Fclk = ~Fclk;
end

initial begin
    rst = 1'b1;
    #18 rst = 1'b0;
end

endmodule
