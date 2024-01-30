# ASCII Adder Project - Digital Electronics

This project, conducted as part of the MT-4001 Digital Electronics course at the Costa Rica Institute of Technology, involves the design and implementation of a digital circuit capable of summing two numbers, A and B, encoded in standard 7-bit ASCII. Both operands, A and B, consist of two digits each—units and tens—encoded individually using standard ASCII representation.

### **Design Criteria**
    - Operand A and Operand B are represented in standard 7-bit ASCII for units and tens digits.
    - The result will have three digits—units, tens, and hundreds—all encoded in 7-bit ASCII.
    - The addition of operands must be performed in natural binary, requiring a conversion of input operands to natural binary before the addition.
    - Operand A and Operand B are always positive numbers, eliminating the need for a sign bit.

### **Verilog Implementation**
    - Implement the proposed design in Verilog.
    - Ensure the Verilog implementation follows the design outlined in the project instructions.
    - The Verilog module should be named "main" and be synthesizable for the targeted FPGA.

### **Inputs and Outputs**
    - Four inputs (AU, AD, BU, BD) each with 7 bits representing units and tens of digits for operands A and B.
    - Three outputs (YU, YD, YC) each with 7 bits representing units, tens, and hundreds for the result.

### Project Files

1. **ASCII_Adder_Verilog:** Contains the Verilog implementation (main.v) adhering to the specified design.
2. **ASCII_Adder_Testbench:** Includes the Verilog testbench (main_tb.v) for comprehensive verification.
3. **Documentation:** Additional documentation or notes related to the project.
