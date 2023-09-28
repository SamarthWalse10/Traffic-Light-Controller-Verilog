# Traffic-Light-Controller-Verilog
Verilog Traffic Light Controller for Countryside-Highway Crossroad

This Verilog project implements a Traffic Light Controller for a crossroad intersection between a countryside road and a main highway. 
The controller is designed to efficiently manage traffic flow and ensure safety at the intersection. It operates based on a clock signal (clk), a reset signal (rst), and an input signal 't' that indicates the presence of cars on the countryside road. 
The controller provides outputs to control the signals on both the countryside road (cnt_sig) and the highway road (hgw_sig).
## Overview
The implementation is done in Verilog hardware description language (HDL). 
Simulation and testing were performed using Xilinx Vivado 2022.2.
## Features
- Efficient traffic flow management for smoother vehicle movement and reduced congestion.
- Safe intersection handling with an intermediate red signal before transitioning to green, enhancing safety.
- Real-time car presence detection on the countryside road for adaptive traffic control.
- Binary signal representation with 2-bit format: '10' for red, '01' for yellow, and '00' for green.
- Synchronized with clock signal (clk) for precise and glitch-free signal transitions.
- Reset capability (rst) for safe and controlled system initialization.
- Scalable and reusable design for easy integration into other Verilog projects.
- Simulation-ready testbench for validation under various traffic scenarios.
- FPGA-compatible design for hardware implementation in real-world applications.
- Tested its working on Zynq-7000 soc, xc7z010clg400-1
## Contents
The src directory contains the Verilog source code for the Traffic Light Controller. The sim directory includes the simulation files and test bench code.
## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog.git
2. Open the traffic_light_controller.xpr file using Xilinx Vivado Software or in your preferred Verilog development environment.
3. Compile and synthesize the Verilog source code.
4. Now Run Simulation (using the provided test bench) and RTL Analysis in Xilinx Vivado to see Result.
5. Analyze the simulation results and verify the functionality of the Traffic Light Controller.
## Screenshots
![null](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/fb14ab64-beb5-47c1-b874-df86ffe97c9a)
<br/>
![image](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/ad6d98f7-fd55-4a53-bf16-bc083f660f9b)
<br/><br/>
![image](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/8cd3b623-b276-4e2a-ab2b-6559063279e7)
<br/><br/>
<img width="400" height="250" alt="color picker" src="![WhatsApp Video 2023-09-27 at 16 21 03](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/0be0c0cd-e78b-4c91-882f-6da011df6d16)"/>
