//Design code
module mux(x,y,sel,out);
  input x,y;
  input sel;
  output out;
  reg out;
  always @ (x or y or sel)begin
    case(sel)
      1'b0:out=x;
      1'b1:out=y;
    endcase
  end
endmodule


//Testbench
module mux_tb;
  reg x,y;
  reg sel;
  wire out;
  mux DUT(x,y,sel,out);
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor("At time = %0t: x=%b y=%bsel=%b,out=%b",$time,x,y,sel,out);
         sel=1'b0;x=1'b0;#1
         sel=1'b1;y=1'b1;#1
      $finish;
    end
endmodule           
