module one_bit_comparator (
  input a, b,
  input greater_in, equal_in, less_in,
  output greater_out, equal_out, less_out
);

  assign greater_out = (a & ~b) | (equal_in & greater_in);
  assign less_out    = (~a & b) | (equal_in & less_in);
  assign equal_out   = (~(a ^ b)) & equal_in;

endmodule
