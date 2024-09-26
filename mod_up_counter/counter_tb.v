module umod_counter_tb;
  parameter N=6;
  reg clk, rst;
  wire [N-1:0] count;
  
  umod_counter dut(.clk(clk), .rst(rst), .count(count));
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    $monitor("count=%d", count);
    rst=1;
    #20 rst=0;
    #80 rst=1;
    #80 rst=0;
    #80 $finish;
  end

    initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars(0, umod_counter_tb);
    end
    
endmodule
