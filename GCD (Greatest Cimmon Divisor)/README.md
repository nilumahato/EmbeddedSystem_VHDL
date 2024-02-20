## Write VHDL code for custom single purpose processor that calculates the Greatest Common Divisor(GCD) of two numbers as Finite State Machine.

# **GCD(Greatest Common Divisor)**
This reppository contains VHDL code for a GCD (Greatest Common Divisor) calculator(GCD) and its corresponding testbench(gcdTB).

### Files
 &#9679; gcd.vhdl: VHDL code for the greatest entity and architecture
 &#9679; gcdTB.vhdl: VHDL code for the gcd_tb entity and architecture.

### GCD(greatest)
The greatest entity represents a GCD calculator with following ports: 
 &#9679; RESET: Reset input
 &#9679; CLK: Clock input
 &#9679; a: First number input
 &#9679; b: Second number input
 &#9679; gcd: Result of the GCD computation output

### Testbench(gcd_tb)
The testbench(gcd_tb) is used to verify the functionality of the **greatest** entity. It provides stimulus to the GCD calculator and observes its outputs.

### Running the Testbench
To run the testbench: 

 1. Compile the VHDL file(gcd.vhdl and gcdTB.vhdl) using a VHDL compiler(e.g., GHDL).
 2. Simulate the compiled design using a simulator(e.g., GTKWAVE)

### Test Cases
The testbench includes various test cases to verify the behavior of the GCD calculator: 
 1. **Test Case 1**:Inputs a = 23, b= 11.
 1. **Test Case 1**:Inputs a = 123, b= 45.
 3. (*Add more test cases as needed*)

###  State Diagram
 ![State diagram of sequence detector](/GCD%20(Greatest%20Cimmon%20Divisor)/GCD.drawio.png)

### Simulation Duration
 Each test case is simulated for a duration to allow  sufficient time for the computation to finish and the result to stabilize.

 ![Simulation of GCD](/GCD%20(Greatest%20Cimmon%20Divisor)/Image_gcd.png)


