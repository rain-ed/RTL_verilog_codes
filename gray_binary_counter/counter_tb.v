module gr_bin_counter_tb;
  reg clk, rst;
  wire [3:0] gray_count;
  
  gr_bin_counter dut(.clk(clk), .rst(rst), .gray_count(gray_count));
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("gray_count=%b \t %d", gray_count, gray_count);
    rst=1;
    #20 rst=0;
    #80 rst=1;
    #80 rst=0;
    #80 $finish;
  end

    initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars(0, gr_bin_counter_tb);
    end
    
endmodule
