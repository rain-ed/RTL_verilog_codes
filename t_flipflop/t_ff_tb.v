module t_ff_tb;
  reg t, clk, rst;
  wire q, qbar;
  
  t_ff dut(.t(t), .clk(clk), .rst(rst), .q(q), .qbar(qbar));
   
  initial begin
    clk=1'b0;
    forever #5 clk=~clk;
  end
  
  initial begin 
    rst=1'b1;
    t=1'b0;
    #10 rst = 1'b0; 
  
    #10 t=1'b0;
    #20 t=1'b1;
    #50 t=1'b0;
    
    #100 $finish;
  end
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,t_ff_tb);
  end
endmodule
