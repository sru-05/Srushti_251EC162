module four_bit_comparator (
  input [3:0] A, B,
  output greater, equal, less
);

  wire [3:0] g, e, l;

  // Initial stage: assume equal_in=1, greater_in=0, less_in=0
  one_bit_comparator c0 (A[0], B[0], 1'b0, 1'b1, 1'b0, g[0], e[0], l[0]);
  one_bit_comparator c1 (A[1], B[1], g[0], e[0], l[0], g[1], e[1], l[1]);
  one_bit_comparator c2 (A[2], B[2], g[1], e[1], l[1], g[2], e[2], l[2]);
  one_bit_comparator c3 (A[3], B[3], g[2], e[2], l[2], greater, equal, less);

endmodule
