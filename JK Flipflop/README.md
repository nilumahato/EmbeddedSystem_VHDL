## Write VHDL code for JK flipflop

# **JK Flip-Flop**
This repository contains VHDL code for JK flip-flop (Jk) and its corresponding testbench (JK_tb).

### Files
 &#9679; JK.vhdl: VHDL code for the jk entity and architecture
 &#9679; JK_tb.vhdl: VHDL code for the jk_tb entity and architecture.

### JK Flipflop((Jk))
The (Jk) entity represents Jk flipflop with following ports: 
 &#9679; (RESET): Reset input
 &#9679; (CLK): Clock input
 &#9679; (J): J input
 &#9679; (K): K input
 &#9679; (Q and Q0): output

### Testbench(jk_tb)
The testbench(jk_tb) is used to verify the functionality of the (jk) entity. It provides stimulus to the Jk flipflop and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(JK.vhdl and JK_tb.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the GCD calculator: 
 1. **Test Case 1**:Inputs (J='0'), (K='0')
 2. **Test Case 2**:Inputs (J='1'), (K='0')
 3. **Test Case 3**:Inputs (J='0'), (K='1')
 4. **Test Case 4**:Inputs (J='1'), (K='1')
 5. (*Add more test cases as needed*)

### State Diagram
 ![State Diagram of JK flipflop](/JK%20Flipflop/JK.png)

### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of JK flipflop](/JK%20Flipflop/Image_gcd.png)


