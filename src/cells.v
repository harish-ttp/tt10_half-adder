/* 
This file provides the mapping from the Wokwi modules to Verilog HDL

It's only needed for Wokwi designs

*/
`define default_netname none

module tt_um_half_adder (
    input A,    // First input
    input B,    // Second input
    output Sum, // Sum output
    output Cout // Carry output
);
    // Sum is A XOR B
    assign Sum = A ^ B;
    // Carry out is A AND B
    assign Cout = A & B;
    endmodule
