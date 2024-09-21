module mux_4x1_tb;
  reg [3:0] i;
  reg [1:0] sel;
  wire y;
  
  mux_4x1 dut(.i(i), .s(sel), .y(y));
  
  initial begin  
    repeat(10) begin 
    {i,sel}=$random;
      #10;
    	$display("i=%b  sel=%b  y=%b-->i[%d]",i,sel,y,sel);
  	end
    $finish;
  end
endmodule
