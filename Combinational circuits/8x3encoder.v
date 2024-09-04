//Design code
module 8x3encoder(x,en,y);
  input [7:0]x;
  input en;
  output [2:0]y;
  always @ (x or en)begin
    if(en==1'b1)
      case(x)
        8'b00000001:y=3'b000;
        8'b00000010:y=3'b001;
        8'b00000100:y=3'b010;
        8'b00001000:y=3'b011;
        8'b00010000:y=3'b100;
        8'b00100000:y=3'b101;
        8'b01000000:y=3'b110;
        8'b10000000:y=3'b111;
      endcase
    else
      y=3'bzzz;
  end
endmodule      


//Testbench
module 8x3encoder_tb;
  reg [7:0]x;
  reg en;
  wire [2:0]y;
  8x3encoder DUT(x,en,y);
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $monitor("At time=%0t : x=%b en=%b,y=%b",$time,x,en,y);
        x=8'b00000000;#1
        en=1'b1;#1
        x=8'b00000001;#1
        x=8'b00000010;#1
        x=8'b00000100;#1
        x=8'b00001000;#1
        x=8'b00010000;#1
        x=8'b00100000;#1
        x=8'b01000000;#1
        x=8'b10000000;#1
      $finish;
    end
endmodule
