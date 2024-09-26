module up_down_counter(clk, rst, mode, count);
  parameter N=4;
  input clk, rst, mode;
  output reg [N-1:0] count;
  
  always@(posedge clk) begin
    if(rst) 
      count<=0;
    else 
      if(mode == 1)		//up counter
        if( count == 2*N-1)
          count<=0;
    	else
          count<=count+1;
      else					//down counter
        if(count == 0)
          count<=2*N-1;
    	else 
          count<=count-1;
  end
endmodule
