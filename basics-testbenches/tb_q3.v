`timescale 1ns/1ps

module tb_four_bit_comparator;
  reg [3:0] A, B;
  wire greater, equal, less;

  four_bit_comparator dut (A, B, greater, equal, less);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_four_bit_comparator);

    // Test cases
    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0001; B = 4'b0000; #10;
    A = 4'b0010; B = 4'b0100; #10;
    A = 4'b1111; B = 4'b1110; #10;
    A = 4'b1010; B = 4'b1010; #10;
    A = 4'b0111; B = 4'b1000; #10;

    $finish;
  end
endmodule
