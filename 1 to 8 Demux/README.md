## Write VHDL code for 1*8 Decoder

# ** 1*8 Decoder**
This repository contains VHDL code for 1*8 Decoder(demux) and its corresponding onetoeight_tb (onetoeight_tb).

### Files
 - (onetoeight): VHDL code for the mux entity and architecture
 - (onetoeight_tb): VHDL code for the onetoeight_tb entity and architecture.

### 2*1 mux((mux))
The (mux) entity represents mux with following ports: 
 - (A,S0,S1,S2):  input bit
 - (y): output

### TESTBENCH(onetoeight_tb)
The onetoeight_tb(onetoeight_tb) is used to verify the functionality of the (demux) entity. It provides stimulus to the full adder module and observes its outputs.

### Running the TESTBENCH
To run the onetoeight_tb: 

 1. Compile the VHDL file(onetoeight and onetoeight_tb) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The onetoeight_tb includes various test cases to verify the behavior of the 1 to 8 decoder: 
 1. **Test Case 1**:Inputs (A='0',S2='0',S1='0',S0='0')
 2. **Test Case 2**:Inputs (A='1',S2='0',S1='0',S0='0')
 3. (*Add more test cases as needed*)

### Circuit Diagram
 ![Circuit Diagram of decoder](/1%20to%208%20Decoder/1to8.png)
 
### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of mux](/1%20to%208%20Decoder/Image_onetoeight.png)
