# 8-bit ALU Design and Verification using Verilog HDL

## Project Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. It performs arithmetic and logical operations based on a 3-bit select signal.

## Objectives
- Design an 8-bit ALU using Verilog HDL.
- Perform arithmetic and bitwise logical operations.
- Verify the functionality using a self-checking testbench.
- Understand RTL design and digital circuit simulation.

## Features
- 8-bit input operands (A and B)
- 8-bit result output
- Carry output for addition
- Eight arithmetic and logical operations
- Testbench-based functional verification

## Operations Supported

| Select | Operation | Description |
|---|---|---|
| 000 | Addition | Adds A and B |
| 001 | Subtraction | Subtracts B from A |
| 010 | AND | Bitwise AND |
| 011 | OR | Bitwise OR |
| 100 | XOR | Bitwise XOR |
| 101 | NOT | Inverts A |
| 110 | Left Shift | Shifts A left by one bit |
| 111 | Right Shift | Shifts A right by one bit |

## Project Structure

- `alu.v` - Verilog design module for the ALU.
- `alu_tb.v` - Testbench for checking the ALU operations.

## Technologies Used
- Verilog HDL
- ModelSim
- Xilinx Vivado Simulator

## How to Run the Project
1. Open ModelSim or Vivado.
2. Create a new simulation project.
3. Add `alu.v` and `alu_tb.v` to the project.
4. Compile both Verilog files.
5. Set `alu_tb` as the simulation top module.
6. Run the simulation.
7. Check the transcript or simulation output for test results.

## Verification
The testbench applies input values to the ALU and checks the output against expected results for all eight operations. It reports whether each test passes or fails.

## Learning Outcomes
- Understanding combinational logic design.
- Practising Verilog HDL coding.
- Learning RTL simulation and verification.
- Understanding arithmetic and logical operations in digital systems.

## Author
**Meghana Utlapalli**  
Electronics and Communication Engineering Student
