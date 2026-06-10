class add_example;

  rand logic[3:0]a;
  rand logic[3:0]b;
  int sum;
  int max;
  bit cons_en;
  constraint c1{
    a+b<max;}
  function void pre_randomize();
    $display("\nPre Randomize()");
    max=10;
    $display("max=%0d",max);

    if (cons_en) begin
      $display("Constraint Enabled");
      c1.constraint_mode(1);
    end
    else begin
      $display("Constraint Disabled");
      c1.constraint_mode(0);
    end

  endfunction

  function void post_randomize();
    $display("Post Randomize()");
    sum=a+b;
    $display("a=%0d",a);
    $display("b=%0d",b);
    $display("sum=%0d",sum);

  endfunction

endclass


module tb;

  add_example r;

  initial begin

    r = new();

    r.cons_en = 1;
    if (r.randomize())
      $display("Randomization Success");
    else
      $display("Randomization Failed");

    r.cons_en = 0;
    if (r.randomize())
      $display("Randomization Success");
    else
      $display("Randomization Failed");

  end

endmodule
