# EmbeddedSystem_VHDL

This repository contains VHDL code and test cases for  embedded system assignment. The code is compiled using GHDL and the waveforms is visualized using GTKWave. The development environment used is Visual Studio Code (VSCode).

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Cloning the Repository](#cloning-the-repository)
  - [Installing GHDL](#installing-ghdl)
  - [Installing GTKWave](#installing-gtkwave)
- [Running Test Cases](#running-test-cases)
- [Project Structure](#project-structure)

## Introduction


## Prerequisites

Ensure you have the following software installed on your system:

- GHDL
- GTKWave

## Getting Started

### Cloning the Repository

```bash
git clone https://github.com/nilumahato/EmbeddedSystem_VHDL.git
cd EmbeddedSystem_VHDL
```

### Installing GHDL

Follow the instructions on the [GHDL GitHub repository](https://github.com/ghdl/ghdl) to install GHDL on your system.

### Installing GTKWave

Follow the instructions on the [GTKWave website](http://gtkwave.sourceforge.net/) to install GTKWave on your system.

## Running Test Cases

Describe how to run the test cases using GHDL and how to visualize waveforms with GTKWave.

```bash
# Example command for running GHDL
ghdl -a your_test_bench.vhd
ghdl -e your_test_bench
ghdl -r your_test_bench --wave=wave.ghw
```

```bash
# Example command for GTKWave
gtkwave wave.ghw
```

## Project Structure


EMBEDDEDSYSTEM_VHDL/
├── 1to8demux/
│   ├── 1to8demux.vhdl         # VHDL source file for the 1-to-8 Demux module
│   ├── 1to8demuxtest.vhdl     # Testbench file for the 1-to-8 Demux module
│   ├── Makefile               # Makefile for compiling the 1-to-8 Demux module
│   ├── Readme.md              # Documentation for the 1-to-8 Demux module
│   ├── result.vcd             # Simulation result file for the 1-to-8 Demux module
│   ├── 1to8demux.png          # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
├── 2to1mux/
│   ├── 2to1mux.vhdl           # VHDL source file for the 2-to-1 Mux module
│   ├── 2to1muxtest.vhdl       # Testbench file for the 2-to-1 Mux module
│   ├── Makefile               # Makefile for compiling the 2-to-1 Mux module
│   ├── Readme.md              # Documentation for the 2-to-1 Mux module
│   ├── result.vcd             # Simulation result file for the 2-to-1 Mux module
│   ├── 2to1mux.png            # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
├── 2to4Decoder/
│   ├── 2to4Decoder.vhdl       # VHDL source file for the 2-to-4 Decoder module
│   ├── 2to4Decodertest.vhdl   # Testbench file for the 2-to-4 Decoder module
│   ├── Makefile               # Makefile for compiling the 2-to-4 Decoder module
│   ├── Readme.md              # Documentation for the 2-to-4 Decoder module
│   ├── result.vcd             # Simulation result file for the 2-to-4 Decoder module
│   ├── 2to4Decoder.png        # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
├── fullAdder/
│   ├── fullAdder.vhdl         # VHDL source file for the Full Adder module
│   ├── fullAddertest.vhdl     # Testbench file for the Full Adder module
│   ├── Makefile               # Makefile for compiling the Full Adder module
│   ├── Readme.md              # Documentation for the Full Adder module
│   ├── result.vcd             # Simulation result file for the Full Adder module
│   ├── fullAdder.png          # Image file (possibly a diagram of the Full Adder module)
│   └── work-obj93.cf          # Quartus Prime project file 
├── gcd/
│   ├── gcd.vhdl               # VHDL source file for the GCD (Greatest Common Divisor) module
│   ├── gcdtest.vhdl           # Testbench file for the GCD module
│   ├── Makefile               # Makefile for compiling the GCD module
│   ├── Readme.md              # Documentation for the GCD module
│   ├── result.vcd             # Simulation result file for the GCD module
│   ├── gcd.png                # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
├── JKflipflop/
│   ├── JKflipflop.vhdl        # VHDL source file for the JK Flip-Flop module
│   ├── JKflipfloptest.vhdl    # Testbench file for the JK Flip-Flop module
│   ├── Makefile               # Makefile for compiling the JK Flip-Flop module
│   ├── Readme.md              # Documentation for the JK Flip-Flop module
│   ├── result.vcd             # Simulation result file for the JK Flip-Flop module
│   ├── JKflipflop.png         # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
├── LCM/
│   ├── LCM.vhdl               # VHDL source file for the LCM (Least Common Multiple) module
│   ├── LCMtest.vhdl           # Testbench file for the LCM module
│   ├── Makefile               # Makefile for compiling the LCM module
│   ├── Readme.md              # Documentation for the LCM module
│   ├── result.vcd             # Simulation result file for the LCM module
│   ├── LCM.png                # Image file
│   └── work-obj93.cf          # Quartus Prime project file 
├── Sequence_detector/
│   ├── Sequence_detector.vhdl         # VHDL source file for the Sequence Detector module
│   ├── Sequence_detectortest.vhdl     # Testbench file for the Sequence Detector module
│   ├── Makefile                        # Makefile for compiling the Sequence Detector module
│   ├── Readme.md                       # Documentation for the Sequence Detector module
│   ├── result.vcd                      # Simulation result file for the Sequence Detector module
│   ├── Sequence_detector.png           # Image file 
│   └── work-obj93.cf                   # Quartus Prime project file 
├── upCounter/
│   ├── upCounter.vhdl         # VHDL source file for the Up Counter module
│   ├── upCountertest.vhdl     # Testbench file for the Up Counter module
│   ├── Makefile               # Makefile for compiling the Up Counter module
│   ├── Readme.md              # Documentation for the Up Counter module
│   ├── result.vcd             # Simulation result file for the Up Counter module
│   ├── upCounter.png          # Image file 
│   └── work-obj93.cf          # Quartus Prime project file 
└── README.md               # Project documentation

