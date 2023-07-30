`timescale 1ns / 1ps


module traffic_light_controller_tb();
reg rst,clk,t;
wire [1:0]cnt_sig,hgw_sig;

traffic_light_controller dut(.rst(rst), .clk(clk), .t(t), .cnt_sig(cnt_sig), .hgw_sig(hgw_sig));

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1'b1; t = 1'b0;
    #18 rst = 1'b0;
    #40 t = 1'b1;
    #80 t = 1'b0;
    #50 t = 1'b1;
end

endmodule
