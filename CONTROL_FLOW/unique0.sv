module unique0_if;
 int a=44,
  b=4;
  initial begin
    $display("print the values");
    unique0 if(b<a)
      $display("b is lesser");
    else if(b>a)
      $display("a is greater");
    else
      $display("empty");
   
  end
endmodule

//output
xcelium> run
print the values
b is lesser
xmsim: *W,RNQUIE: Simulation is complete.

module unique0_if;
 int a=44,
  b=4;
  initial begin
    $display("print the values");
    unique0 if(b<a)
      $display("b is lesser");
    else if(b>a)
      $display("a is greater");
   
  end
endmodule

//output
xcelium> run
print the values
b is lesser
xmsim: *W,RNQUIE: Simulation is complete.

module unique0_if;
 int a=44,
  b=4;
  initial begin
    $display("print the values");
    unique0 if(b<a)
      $display("b is lesser");
    else if(a>b)
      $display("a is greater");
   
  end
endmodule

//output
xcelium> run
print the values
b is lesser
xmsim: *W,MCONDE: Unique0 if violation:  Multiple true if clauses at {line=6:pos=13 and line=8:pos=10}.  //in unique0 it will shows only when the both the condition is true
            File: ./testbench.sv, line = 6, pos = 13
           Scope: unique0_if
            Time: 0 FS + 1

xmsim: *W,RNQUIE: Simulation is complete.
