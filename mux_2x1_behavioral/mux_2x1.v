module mux_2(i0,i1,sel,y);
  input i0, i1;
  input sel;
  output reg y;
  
  always@(i0 or i1) begin
    if (sel==1) begin
      y=i1;
    end
    else begin
      y=i0;
    end
  end
endmodule
