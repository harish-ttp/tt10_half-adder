//`timescale 1ns / 1ps

module top_TB();

reg [7:0] ui_in;
wire [7:0] uo_out;

tt_um_adder_NestorMatajira uut(. ui_in( ui_in),
.uo_out(uo_out));

initial begin
 $dumpfile("Archivo.vcd");
  $dumpvars;
    #10
    ui_in = 8'd0;
    #10

    ui_in = 8'd1;
    #10   

    ui_in = 8'd2;
    #10    

    ui_in = 8'd3;
    #10    

    ui_in = 8'b10000001;
    #10    

    ui_in = 8'b11000011;
    #10    

    ui_in = 8'b11100111;
    #10 

    ui_in = 8'b11111111;
    #10    

   

    $finish();
end

endmodule
