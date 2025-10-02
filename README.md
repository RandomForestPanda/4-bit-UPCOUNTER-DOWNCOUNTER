# 4-bit Up Counter and Down Counter

A digital design implementation of 4-bit up and down counters using Verilog, created as part of a Digital Design and Computer Organization (DDCO) course project.

## Project Overview

This project contains two separate 4-bit counter modules:
- **UpCounter**: Counts upward from 0 to 15 (binary 0000 to 1111) and wraps around
- **DownCounter**: Counts downward from 15 to 0 (binary 1111 to 0000) and wraps around

## Files Structure

- **`upcounter_downcounter.v`** - Main Verilog source file containing both counter modules
- **`upcounter_downcounter_tb.v`** - Testbench for verifying counter functionality
- **`README.md`** - This documentation file

## Module Specifications

### UpCounter
- **Inputs**: 
  - `clk` - Clock signal
  - `reset` - Active-high reset signal
- **Outputs**:
  - `count[3:0]` - 4-bit counter output
- **Behavior**: On reset, sets count to 0. On each clock edge, increments count by 1.

### DownCounter
- **Inputs**: 
  - `clk` - Clock signal
  - `reset` - Active-high reset signal
- **Outputs**:
  - `count[3:0]` - 4-bit counter output
- **Behavior**: On reset, sets count to 15. On each clock edge, decrements count by 1.

## Simulation and Testing

The testbench (`upcounter_downcounter_tb.v`) includes:
- Clock generation with 10-time unit period
- Multiple reset pulses to test functionality
- VCD file generation for waveform analysis
- Simultaneous testing of both up and down counters

### Running the Simulation

```bash
# Compile the design and testbench
iverilog -o counter_sim upcounter_downcounter.v upcounter_downcounter_tb.v

# Run the simulation
vvp counter_sim

# View waveforms (using GTKWave or similar tool)
gtkwave counter.vcd
```

## Features

- **Synchronous Design**: Counters operate on positive clock edges
- **Asynchronous Reset**: Immediate reset functionality independent of clock
- **Modular Design**: Separate modules for easy reuse and testing
- **Comprehensive Testbench**: Verifies both normal counting and reset behavior

## Usage

The counters can be instantiated in larger designs:

```verilog
UpCounter my_up_counter(
    .clk(clock_signal),
    .reset(reset_signal),
    .count(counter_output)
);

DownCounter my_down_counter(
    .clk(clock_signal),
    .reset(reset_signal),
    .count(counter_output)
);
```

## Tools Used

- **Icarus Verilog (iverilog)**: For compilation and simulation
- **GTKWave**: For waveform visualization (optional)

## Course Context

This project demonstrates fundamental digital design concepts (its one such crossover with Digital Design that I have enjoyed honestly!)
- Sequential logic design
- Finite state machines
- Verilog HDL coding practices
- Testbench development and simulation
- Digital counter design principles

