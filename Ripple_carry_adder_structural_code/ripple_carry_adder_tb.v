module pa_tb;
  reg [3:0] a,b;
  reg c;
  wire [3:0] sum;
  wire carry;
  
pa dut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
  
initial begin
    $monitor("a=%b b=%b c=%b sum=%b carry=%b", a,b,c,sum,carry);
	a=4'b0000; b=4'b0000; c=1'b0;
    a=4'b0001; b=4'b0010; c=1'b0;
#10 a=4'b0101; b=4'b1111; c=1'b0;
#10 a=4'b1000; b=4'b0011; c=1'b1;
#10 a=4'b0011; b=4'b0100; c=1'b0;
    
#10 $finish;
end
endmodule

