# full_add_sub
# FULL_ADDER_SUBTRACTOR
Implementation-of-Full-Adder-and-Full-subtractor-circuit

# AIM:

To design a Full Adder and Full Subtractor circuit and verify its truth table in Quartus using Verilog programming.

# Equipments Required:

Hardware – PCs, Cyclone II , USB flasher

Software – Quartus prime

# Full Adder and Full Subtractor

# Full Adder

Full adder is a digital circuit used to calculate the sum of three binary bits. It consists of three inputs and two outputs. Two of the input variables, denoted by A and B, represent the two significant bits to be added. The third input, Cin, represents the carry from the previous lower significant position. Two outputs are necessary because the arithmetic sum of three binary digits ranges in value from 0 to 3, and binary 2 or 3 needs two digits. The two outputs are sum and carry.

Sum =A’B’Cin + A’BCin’ + ABCin + AB’Cin’ = A ⊕ B ⊕ Cin

Carry = AB + ACin + BCin
# Image:
<img width="707" height="347" alt="image" src="https://github.com/user-attachments/assets/1ee31e94-58ad-41e2-96ac-5d685a881ebe" />

Figure -1 FULL ADDER
# Truth Table:
<img width="419" height="342" alt="image" src="https://github.com/user-attachments/assets/87606e59-8327-4bf7-9eb0-b3ca815c1478" />



# Full Subtractor

A full subtractor is a combinational circuit that performs subtraction involving three bits, namely minuend, subtrahend, and borrow-in . It accepts three inputs: minuend, subtrahend and a borrow bit and it produces two outputs: difference and borrow.

# image
<img width="817" height="372" alt="image" src="https://github.com/user-attachments/assets/4b88d556-ed94-4e29-9e32-45d02afefbda" />



Diff = A ⊕ B ⊕ Bin

Borrow out = A'Bin + A'B + BBin

# Truthtable
<img width="207" height="343" alt="image" src="https://github.com/user-attachments/assets/2cd8fc02-cde6-4d4e-bb55-efb8b2655460" />

# Procedure:
1.Type the program in Quartus software.

2.Compile and run the program.

3.Generate the RTL schematic and save the logic diagram.

4.Create nodes for inputs and outputs to generate the timing diagram.

5.For different input combinations generate the timing diagram.

# Program:
FULL ADDER:
```
module full_adder (
    input  wire a, b, cin,   
    output wire sum, carry   
);

    // Logic equations
    assign sum   = a ^ b ^ cin;                  
    assign carry = (a & b) | (b & cin) | (a & cin); 

endmodule


```
FULL SUBTRACTOR:
```
module full_subtractor (
    input  wire a, b, bin,       
    output wire diff, borrow     
);

    
    assign diff   = a ^ b ^ bin;                  
    assign borrow = (~a & b) | (~(a ^ b) & bin);  

endmodule
```
# Developed by: BUSHPIKA C
# RegisterNumber: 25007434

# RTL Schematic

<img width="1920" height="1080" alt="Screenshot 2025-11-29 120219" src="https://github.com/user-attachments/assets/e7449ce1-b114-463e-8c94-7bd96929c132" />

<img width="1920" height="1080" alt="Screenshot 2025-11-29 121509" src="https://github.com/user-attachments/assets/1f6d35e0-87ac-413c-8872-35deee093129" />



# Output Timing Waveform

<img width="1920" height="1080" alt="Screenshot 2025-11-29 122016" src="https://github.com/user-attachments/assets/6878d52a-f7db-40c0-ba05-275cc0a1d85d" />

<img width="1920" height="1080" alt="Screenshot 2025-11-29 122317" src="https://github.com/user-attachments/assets/746c82dc-2845-4430-ba77-57a6803ab76f" />
# Result:
Thus the Full Adder and Full Subtractor circuits are designed and the truth tables is verified using Quartus software.
