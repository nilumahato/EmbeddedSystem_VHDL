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
