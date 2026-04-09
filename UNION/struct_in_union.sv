//struct insise the union
module struct_in_union;
  typedef union{ bit[31:0] m;
                struct packed{
                  bit[7:0]b1;
                  bit[7:0]b2;
                  bit[7:0]b3;
                  bit[7:0]b4;
                }values;
               }data;
    data d;
  initial begin
    data d;
    d.values=32'h4abcd657;
    $display("union=%0d",d.m);
    $display("struct s1=%h",d.values.b1);
    $display("struct s2=%h",d.values.b2);
    $display("struct s3=%h",d.values.b3);
    $display("struct s4=%h",d.values.b4);
  end
endmodule

//output
union=1253889623 //hexadeimal output
struct s1=4a
struct s2=bc
struct s3=d6
struct s4=57

//binary output
union=01001010101111001101011001010111
struct s1=01001010
struct s2=10111100
struct s3=11010110
struct s4=01010111
