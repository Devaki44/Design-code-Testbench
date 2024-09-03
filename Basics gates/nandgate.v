//Design code
module nandg(x,y,z);
  input x,y;
  output z;
  assign z=~(x&y);
endmodule


//Testbench
module nandg_tb;
   reg x,y;
   wire z;
nandg DUT(x,y,z);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("At time =%0t:x=%b y=%b,z=%b",$time,x,y,z);
     x=1'b0;y=1'b0;#1
     x=1'b0;y=1'b1;#1
     x=1'b1;y=1'b0;#1
     x=1'b1;y=1'b1;#1
    $finish;
  end
endmodule
    
