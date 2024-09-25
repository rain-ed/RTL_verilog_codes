module d_ff_tb;
  reg d, clk;
  wire q, qbar;
  
  d_ff dut(.d(d), .clk(clk), .q(q), .qbar(qbar));
   
  initial begin
    clk=1'b0;
    forever #5 clk=~clk;
  end
  initial begin
    d=1'b0;
    #10 d=1'b1;
    #20 d=1'b0;
    #30 d=1'b1;
  end
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars;
    #100 $finish;
  end
endmodule

