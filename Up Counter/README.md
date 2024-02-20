## Write VHDL code for upCounter

# **SEQUENCE DETECTOR**
This repository contains VHDL code for upCounter(-TFF) and its corresponding testbench (tb_counter).

### Files
 - (upcounter.vhdl): VHDL code for the TFF entity and architecture
 - (upcounter_tb.vhdl): VHDL code for the tb_counter entity and architecture.

### UPCOUNTER((TFF))
The (TFF) entity represents upCounter with following ports: 
 - (RESET): Reset input
 - (CLK): Clock input
 - (T):  input bit
 - (Q): output

### Testbench(jk_tb)
The testbench(tb_counter) is used to verify the functionality of the (TFF) entity. It provides stimulus to the upcounter module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(upcounter.vhdl and upcounter_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the up counter: 
 1. **Test Case 1**:Inputs (RST='1')
 2. **Test Case 2**:Inputs (RST='0')
 3. (*Add more test cases as needed*)

### STATE DIAGRAM
 ![state diagram of upCounter](/Up%20Counter/statediagram.png)
 
### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of upcounter](/Up%20Counter/Image_upcounter.jpg)