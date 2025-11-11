
`timescale 1ns/1ps

module or_tb;
  reg a, b;
  wire y;

		
or_gate u0_DUT

(
.a(a),
.b(b),
.y(y)
);


initial begin
  $dumpfile("or_gate.vcd");
  $dumpvars(0, or_tb);

a = 1'b0;
b = 1'b0;

#10 a = 0; b = 1;
#10 a = 1; b = 0;
#10 a = 1; b = 1;
#10 $finish;


end
endmodule
