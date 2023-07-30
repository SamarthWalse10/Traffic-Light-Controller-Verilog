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
![Screenshot 2023-07-25 072240](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/7156fb3d-5d8f-4147-b884-dde5a1f801a3)
<br/><br/><br/>
![Screenshot 2023-07-30 121443](https://github.com/SamarthWalse10/Traffic-Light-Controller-Verilog/assets/125689593/5e712248-e18d-48ad-b9f4-a59a32462424)
