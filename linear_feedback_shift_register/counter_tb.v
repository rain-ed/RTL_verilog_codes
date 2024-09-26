module lfsr_tb;
  reg clk, rst;
  wire [3:0] seq_out;
  
  lfsr dut(.clk(clk), .rst(rst), .seq_out(seq_out));
  
  initial clk=0;
  always #10 clk=~clk;
  
  initial begin
    $monitor("clk=%b sequnece output = %d", clk, seq_out);
    clk=0; rst=1;
    #20 rst=0;
    #500 $finish;
  end

    initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars(0, lfsr_tb);
    end
    
endmodule
