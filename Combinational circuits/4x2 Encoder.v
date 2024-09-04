//Design code
module encoder(x,y);
  input [3:0]x;
  output [1:0]y;
  assign  y[0]=x[1]|x[3];
  assign  y[1]=x[2]|x[3];
endmodule


//Testbench
module encoder_tb;
  reg [3:0]x;
  wire [1:0]y;
  encoder DUT(x,y);
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(1);
     $monitor("At time=%0t: x=%b,y=%b",$time,x,y);
       x[3]=1'b0;x[2]=1'b0;x[1]=1'b0;x[0]=1'b1;#1
       x[3]=1'b0;x[2]=1'b0;x[1]=1'b1;x[0]=1'b0;#1
       x[3]=1'b0;x[2]=1'b1;x[1]=1'b0;x[0]=1'b0;#1
       x[3]=1'b1;x[2]=1'b0;x[1]=1'b0;x[0]=1'b0;#1
     $finish;
   end
endmodule
         
            
