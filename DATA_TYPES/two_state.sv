module two_state;
  bit bt;
  byte byt;
  int it;
  shortint sint;
  longint lint;
   initial begin
   bt='0;
   byt='b0000xz10;// x and z take 0 in 2 state
   it='habcd;
   sint='haaaa;
   lint='hbcda;
  
   $display("value of bit=%b",bt);
   $display("value of byte=%b",byt);
   $display("value of int=%b",it);
   $display("value of shortint=%b",sint);
   $display("value of longint=%b",lint);
   end
endmodule


//output
value of bit=0
value of byte=00000010
value of int=00000000000000001010101111001101
value of shortint=1010101010101010
value of longint=0000000000000000000000000000000000000000000000001011110011011010
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
