`timescale 1ns / 1ps


module main(rst,Fclk,t,cnt_sig,hgw_sig);
input rst,Fclk,t;
output [1:0]cnt_sig,hgw_sig;

wire clk;
clk_divider cd(.Fclk(Fclk), .clk(clk));
traffic_light_controller tlc(.rst(rst), .clk(clk), .t(t), .cnt_sig(cnt_sig), .hgw_sig(hgw_sig));

endmodule
