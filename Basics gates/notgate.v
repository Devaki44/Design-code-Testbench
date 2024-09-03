//Design code
module notg(x,y);
  input x;
  output y;
  assign y=~x;
endmodule


//Testbench
module notg_tb;
   reg x;
   wire y;
  notg DUT(x,y);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("At time =%0t:x=%b, y=%b",$time,x,y);
     x=1'b0;#1
     x=1'b1;#1
    $finish;
  end
endmodule
