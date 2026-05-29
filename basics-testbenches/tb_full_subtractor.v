`timescale 1ns/1ps

module tb_full_subtractor;
  reg a, b, bin;        // inputs
  wire diff, bout;      // outputs

  // Instantiate the DUT (Device Under Test)
  full_subtractor dut (
    .a(a), .b(b), .bin(bin),
    .diff(diff), .bout(bout)
  );

  initial begin
    $dumpfile("dump.vcd");   // waveform output file
    $dumpvars(0, tb_full_subtractor);

    // Apply all input combinations
    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;

    $finish;
  end
endmodule
