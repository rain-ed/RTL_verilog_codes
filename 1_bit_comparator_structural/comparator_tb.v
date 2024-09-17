module comparator_tb;
  reg a,b;
  wire equal,greater,lesser;
  
  comparator_1bit dut(.a(a), .b(b), .equal(equal), .greater(greater), .lesser(lesser));
  
  initial begin
    repeat(5) begin
      a=$random;
      b=$random;
      #10;
      $display("a=%b \t b=%b \t equal=%b \t greater=%b \t lesser=%b",a,b,equal,greater,lesser);
    end  
  end
endmodule
