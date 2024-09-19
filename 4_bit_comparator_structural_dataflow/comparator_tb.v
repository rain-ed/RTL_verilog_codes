module comparator_tb;
  reg [3:0] a,b;
  wire equal,greater,lesser;
  
  comparator_4bit dut(.a(a), .b(b), .equal(equal), .greater(greater), .lesser(lesser));
  
  initial begin
    repeat(5) begin      //you can use for loop
      a=$random;
      b=$random;
      #10;
      $display("a=%b \t b=%b \t equal=%b \t greater=%b \t lesser=%b",a,b,equal,greater,lesser);
    end  
  end
endmodule
