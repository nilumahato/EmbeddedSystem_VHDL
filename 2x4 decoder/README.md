## Write VHDL code for 2*4 DECODER

# **2*4 DECODER**
This repository contains VHDL code for 2*4 decoder(decoder) and its corresponding testbench (DECODER_tb).

### Files
 - (DECODER.vhdl): VHDL code for the decoder entity and architecture
 - (DECODER_tb.vhdl): VHDL code for the DECODER_tb entity and architecture.

### 2*4 DECODER((decoder))
The (decoder) entity represents decoder with following ports: 
 - (a1,a0,e):  input bit
 - (q3,q2,q1,q0): output

### Testbench(DECODER_tb)
The testbench(DECODER_tb) is used to verify the functionality of the (decoder) entity. It provides stimulus to the full adder module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(DECODER.vhdl and DECODER_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the 2*4 decoder: 
 1. **Test Case 1**:Inputs (a0='0',a1='0',e='1')
 2. **Test Case 2**:Inputs (a0='1',a1='0',e='1')
 3. (*Add more test cases as needed*)

### Circuit Diagram
 ![Circuit Diagram of decoder](/2x4%20decoder/24decoder.png)

### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of decoder](/2x4%20decoder/Images_DECODER.png)
