module xnor_tb;

	reg a,b;
	wire y;


	xnor_gate dut(.a(a),.b(b),.y(y) );


	initial begin
	$dumpfile("test_xnor.vcd");
	$dumpvars(0,xnor_tb);

	a = 1'b0; b = 1'b0;
	#10 a = 1'b0; b = 1'b1;
	#10 a = 1'b1; b = 1'b0;
	#10 a = 1'b1; b = 1'b1;
	#10 $finish;
	end 
	
	
endmodule
