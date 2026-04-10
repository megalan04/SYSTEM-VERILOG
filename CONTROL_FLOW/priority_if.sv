module priority_if;
 int a=4,
  b=44;
  initial begin
    $display("print the values");
    priority if(a<b)
      $display("a is lesser");
    else if(b>a)
      $display("b is greater");
    
  end
endmodule

//output
Loading snapshot worklib.priority_if:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
print the values
a is lesser
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit


module priority_if;
 int a=4,
  b=44;
  initial begin
    $display("print the values");
    priority if(a<b)
      $display("a is lesser");
    else if(b>a)
      $display("b is greater");
    else
      $display("empty");
  end
endmodule

//output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
print the values
a is lesser
xmsim: *W,RNQUIE: Simulation is complete.
