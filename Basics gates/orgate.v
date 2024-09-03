//Design code
module org(x,y,z);
  input x,y;
  output z;
  assign z=x|y;
endmodule

//Testbench
module org_tb;
   reg x,y;
   wire z;
org DUT(x,y,z);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("At time =%0t:x=%b y=%b,z=%b",$time,x,y,z);
     x=1'b0;y=1'b0;#1
     x=1'b0;y=1'b1;#1
     x=1'b1;y=1'b0;#1
     x=1'b1;y=1'b1;#1
    $finish;
  end
endmodule
