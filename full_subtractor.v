module full_subtractor (
  input a, b, bin,        // inputs: minuend, subtrahend, borrow in
  output diff, bout       // outputs: difference, borrow out
);

  assign diff = a ^ b ^ bin;                 // XOR for difference
  assign bout = (~a & b) | (b & bin) | (~a & bin);  // borrow logic

endmodule
