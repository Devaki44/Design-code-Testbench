//Design code
module halfadder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum=a^b;
  assign carry=a&b;
endmodule


//Testbench
module halfadder_tb;
  reg a,b;
  wire sum,carry;
halfadder DUT(a,b,sum,carry);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("At time=%0t:a=%b b=%b,sum=%b carry=%b",$time,a,b,sum,carry);
       a=1'b0;b=1'b0;#1
       a=1'b0;b=1'b1;#1
       a=1'b1;b=1'b0;#1
       a=1'b1;b=1'b1;#1
    $finish;
  end
endmodule
