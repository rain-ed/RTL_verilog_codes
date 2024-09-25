module jk_ff_tb;
  reg j, k, clk, rst;
  wire q, qbar;
  
  jk_ff dut(.j(j), .k(k), .clk(clk), .rst(rst), .q(q), .qbar(qbar));
   
  initial begin
    clk=1'b0;
    forever #5 clk=~clk;
  end
  
  initial begin 
    rst=1'b1;
    j=1'b0; k=1'b0;
    #10 rst = 1'b0; 
  
    #10 j = 1'b0; k = 1'b0;  // No change
    #10 j = 1'b0; k = 1'b1;  // Reset Q
    #10 j = 1'b1; k = 1'b0;  // Set Q
    #10 j = 1'b1; k = 1'b1;  // Toggle Q
    
    #50 $finish;
  end
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,jk_ff_tb);
  end
endmodule
