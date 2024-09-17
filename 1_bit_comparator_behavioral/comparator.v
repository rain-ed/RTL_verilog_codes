module comparator_1bit(a,b,equal,greater, lesser);
  input a,b;
  output reg equal,greater,lesser;

  always@(a or b) begin
    equal=0; greater=0; lesser=0;  //initialze output value
    
    if(a > b) begin
      greater=1'b1;               //a is greater than b.
    end
    else if(a < b) begin
      lesser=1'b1; 			 	  //a is lesser than b.
    end
    else begin
      equal=1'b1;				 //a is equal to b.
    end
  end
     
endmodule
  
