//Design code
module fulladder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(a&cin);
endmodule


//Testbench
module fullsub_tb;
  reg a,b,bin;
  wire diff,bout;
  fullsub DUT(a,b,bin,diff,bout);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("At time=%0t:a=%b b=%b bin=%b,diff=%b bout=%b",$time,a,b,bin,diff,bout);
       a=1'b0;b=1'b0;bin=1'b0;#1
       a=1'b0;b=1'b0;bin=1'b1;#1
       a=1'b0;b=1'b1;bin=1'b0;#1
       a=1'b0;b=1'b1;bin=1'b1;#1 
       a=1'b1;b=1'b0;bin=1'b0;#1
       a=1'b1;b=1'b0;bin=1'b1;#1
       a=1'b1;b=1'b1;bin=1'b0;#1
       a=1'b1;b=1'b1;bin=1'b1;#1
    $finish;
  end
endmodule
