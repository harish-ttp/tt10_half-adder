/* 
This file provides the mapping from the Wokwi modules to Verilog HDL

It's only needed for Wokwi designs

*/
`define default_netname none

module tb_half_adder;
    // Inputs
    reg A;
    reg B;
    // Outputs
    wire Sum;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    tt_um_half_adder uut (
        .A(A), 
        .B(B), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;

        // Wait 10 time units, then change inputs
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;

        // End simulation after 40 time units
        #10 $finish;
    end

    initial begin
        // Monitor changes in inputs and outputs
        $monitor("Time = %0t, A = %b, B = %b, Sum = %b, Cout = %b", $time, A, B, Sum, Cout);
    end
endmodule
