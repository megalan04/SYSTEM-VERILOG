module if_else;
  int a=7, b=9;
  initial begin
    if(a>b)
        $display("condition_1");
    else if(a<b)
        $display ("condition_2");
      else
        $display ("else_codition");
  end
endmodule

//output
xcelium> run
condition_2
xmsim: *W,RNQUIE: Simulation is complete.

module if_else;
  int a=7, b=9;
  initial begin
    if(a==b)
        $display("condition_1");
    else if(a>b)
        $display ("condition_2");
    else
        $display ("else_codition");
  end
endmodule

//output
xcelium> run
else_codition
xmsim: *W,RNQUIE: Simulation is complete.
