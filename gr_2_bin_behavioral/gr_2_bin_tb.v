module gr_2_bin_tb;
  
  reg [3:0] g;
  wire [3:0] b;
  
  gr_2_bin dut(.b(b), .g(g));
  
  initial begin
    $monitor(" g=%b   b=%b",g,b);
    repeat(10) begin
   #10 g=$random;
    end
    end
endmodule
