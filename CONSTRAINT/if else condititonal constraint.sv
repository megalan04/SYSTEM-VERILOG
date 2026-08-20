class packet;
  rand bit sel;
  rand int data;
  constraint c1{
    if (sel==1)
      data==44;
    else
      data==45;
  }
endclass

module testbench;
  packet p;
  initial begin
    p=new();
    repeat(10)begin
      if(p.randomize())
        $display("sel=%0d,data=%0d",p.sel,p.data);
      else
        $display("Randomization failed");
    end
  end
endmodule


//output
sel=0,data=45
sel=1,data=44
sel=1,data=44
sel=0,data=45
sel=0,data=45
sel=0,data=45
sel=0,data=45
sel=1,data=44
sel=1,data=44
sel=0,data=45
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
