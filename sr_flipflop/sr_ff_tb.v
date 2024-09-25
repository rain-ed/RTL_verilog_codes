module sr_ff_tb;
  reg s, r, clk, rst;
  wire q, qbar;
  
  sr_ff dut(.s(s), .r(r), .clk(clk), .rst(rst), .q(q), .qbar(qbar));
   
  initial begin
    clk=1'b0;
    forever #5 clk=~clk;
  end
  
  initial begin 
    rst=1'b1;
    s=1'b0; r=1'b0;
    #10 rst = 1'b0; 
  
    #10 s = 1'b0; r = 1'b0;  // No change
    #10 s = 1'b0; r = 1'b1;  // Reset Q
    #10 s = 1'b1; r = 1'b0;  // Set Q
    #10 s = 1'b1; r = 1'b1;  // Toggle Q
    
    #50 $finish;
  end
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,sr_ff_tb);
  end
endmodule
