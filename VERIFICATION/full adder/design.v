// Code your design here
module full_adder(input logic A,
                  input logic B,
                  input logic Cin,
                  output logic Sum,
                  output logic Cout);
  always@(*)begin
  Sum=A^B^Cin;
  Cout=(A&B)|(B&Cin)|(A&Cin);
  end
endmodule
