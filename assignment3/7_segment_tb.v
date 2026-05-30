module tb_gray_to_7seg;
  reg [2:0] gray;
  wire [6:0] seg;

  gray_to_7seg uut (.gray(gray), .seg(seg));

  initial begin
    $dumpfile("gray7seg.vcd");
    $dumpvars(0, tb_gray_to_7seg);

    gray = 3'b000; #10;
    gray = 3'b001; #10;
    gray = 3'b011; #10;
    gray = 3'b010; #10;
    gray = 3'b110; #10;
    gray = 3'b111; #10;
    gray = 3'b101; #10;
    gray = 3'b100; #10;

    $finish;
  end
endmodule
