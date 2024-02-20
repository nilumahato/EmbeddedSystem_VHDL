## Write VHDL code for 2*1 MULTIPLEXER

# ** 2*1 Multiplexer**
This repository contains VHDL code for 2*1 multiplexer(mux) and its corresponding testbench (testbench).

### Files
 - (twotoone_mux.vhdl): VHDL code for the mux entity and architecture
 - (twotoone_mux_tb.vhdl): VHDL code for the testbench entity and architecture.

### 2*1 mux((mux))
The (mux) entity represents mux with following ports: 
 - (A0,A1,S0):  input bit
 - (z): output

### Testbench(testbench)
The testbench(testbench) is used to verify the functionality of the (mux) entity. It provides stimulus to the full adder module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(twotoone_mux.vhdl and twotoone_mux_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the 2*1 mux: 
 1. **Test Case 1**:Inputs (S0='0',A0='0',A1='0')
 2. **Test Case 2**:Inputs (S0='0',A0='0',A1='1')
 3. (*Add more test cases as needed*)

### circuit Diagram
 ![Circuit Diagram of mux](/2x1%20Multiplexer/21mux.png)

### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of mux](/2x1%20Multiplexer/Image_twotoone.png)
