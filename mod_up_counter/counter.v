module umod_counter(clk, rst, count);
  parameter N=6;
  input clk, rst;
  output reg [N-1:0] count;
  
  always@(posedge clk) begin
    if(rst) 
      count<=0;
    else 
        if( count == N-1)
          count<=0;
    	else
          count<=count+1;
  end
endmodule
