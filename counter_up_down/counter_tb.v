module up_down_counter_tb;
  parameter N=4;
  reg clk, rst, mode;
  wire [N-1:0] count;
  
  up_down_counter dut(.clk(clk), .rst(rst), .mode(mode), .count(count));
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("mode=%b  count=%d", mode, count);
    rst=1;
    #20 rst=0; mode=0;
    #80 rst=1; mode=0;
    #80 rst=1; mode=1;
    #80 rst=0; mode=1;
    #50 $finish;
  end

    initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars(0, up_down_counter_tb);
    end
    
endmodule
