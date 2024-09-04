//Design code
module halfsub(a,b,D,B);
  input a,b;
  output D,B;
  assign D=a^b;
  assign B=~a&b;
endmodule


//Testbench
module halfsub_tb;
  reg a,b;
  wire D,B;
  halfsub DUT(a,b,D,B);
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
