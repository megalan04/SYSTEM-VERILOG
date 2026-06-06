// Code your testbench here
// or browse Examples
interface and_if;
  logic input_a;
  logic input_b;
  logic output_y;
endinterface


module top();  
  and_if inf();
  andg dut(.input_a(inf.input_a), .input_b(inf.input_b), .output_y(inf.output_y));
  tb t1(inf);
      
endmodule


module tb(and_if inf);  
  initial begin  
    $display("\n// and gate output");  
    $monitor("\ninput_a=%b\t input_b=%b\t output_y=%b",inf.input_a,inf.input_b,inf.output_y);  
    inf.input_a = 0; inf.input_b = 0;  
    #1;  
    inf.input_a = 1; inf.input_b = 0;  
    #1;  
    inf.input_a = 0; inf.input_b = 1;  
    #1;  
    inf.input_a = 1; inf.input_b = 1;  
  end  
endmodule  
