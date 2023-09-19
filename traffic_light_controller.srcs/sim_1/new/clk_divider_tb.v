`timescale 1ns / 1ps


module clk_divider_tb();
reg Fclk;
wire clk;

clk_divider dut(.Fclk(Fclk), .clk(clk));

initial begin
    Fclk = 1'b0;
    forever #8 Fclk = ~Fclk;
end

endmodule
