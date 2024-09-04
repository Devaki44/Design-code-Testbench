//Design code
module fulladder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(a&cin);
endmodule


//Testbench
module fulladder_tb;
  reg a,b,cin;
  wire sum,cout;
fulladder DUT(a,b,cin,sum,cout);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("At time=%0t:a=%b b=%b cin=%b,sum=%b cout=%b",$time,a,b,cin,sum,cout);
       a=1'b0;b=1'b0;cin=1'b0;#1
       a=1'b0;b=1'b0;cin=1'b1;#1
       a=1'b0;b=1'b1;cin=1'b0;#1
       a=1'b0;b=1'b1;cin=1'b1;#1 
       a=1'b1;b=1'b0;cin=1'b0;#1
       a=1'b1;b=1'b0;cin=1'b1;#1
       a=1'b1;b=1'b1;cin=1'b0;#1
       a=1'b1;b=1'b1;cin=1'b1;#1
    $finish;
  end
endmodule
