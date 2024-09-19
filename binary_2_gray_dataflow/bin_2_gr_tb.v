module bin_2_gr_tb;
  reg [3:0] b;
  wire [3:0] g;
  
  bin_2_gr dut(.b(b), .g(g));
  
  initial begin
    $monitor(" b=%b   g=%b",b,g);
    repeat(10) begin
   #10 b=$random;
    end
    end
endmodule
