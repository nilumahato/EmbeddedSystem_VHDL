## Write VHDL code for custom processor that calculates Least Common Multiple(LCM) of two numbers

# **LCM (Least Common Multiple)**
This repository contains VHDL code for computing Least Common Multiple(LCM) of two input integers(lcm) and its corresponding testbench (lcm_tb).

### Files
 - (LCM.vhdl): VHDL code for the lcm entity and architecture
 - (LCM_tb.vhdl): VHDL code for the lcm_tb entity and architecture.

### LCM((lcm))
The (lcm) entity represents Jk flipflop with following ports: 
 - (RESET): Reset input
 - (CLK): Clock input
 - (a): First input integer
 - (b): Second input integer
 - (lcm_result): output

### Testbench(jk_tb)
The testbench(lcm_tb) is used to verify the functionality of the (lcm) entity. It provides stimulus to the lcm module and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(LCM.vhdl and LCM_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the LCM: 
 1. **Test Case 1**:Inputs (a=45), (b=15)
 2. **Test Case 2**:Inputs (a=7), (b=13)
 3. (*Add more test cases as needed*)

### STATE DIAGRAM
 ![state diagram of lcm](/LCM%20(Least%20Common%20Multiple)/statediagram.png)
 
### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of LCM](/LCM%20(Least%20Common%20Multiple)/Image_LCM.png)
