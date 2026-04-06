//string datatype
module string_datatype();
  string str1="AVENGERS";
  string str2="assemble";
  
  initial begin
    $display("string str1=%s",str1);
    $display("string str2=%s",str2);
    $display("after the lowercase=%s",str1.tolower());
    $display("after the uppercase=%s",str2.toupper());
    $display("compare with case sensitive=%0d",str1.compare(str2));
    $display("compare without case sensitive=%0d",str1.icompare(str2));
    $display("give the value between the given index=%s",str2.substr(1,5));
    $display("length of the str1=%0d",str1.len());
    $display("length of the str2=%0d",str2.len());
    str1.putc(3,"h");
    $display("puting the charater in particular index(3) in str1=%s",str1);
    $display("give the present output=%s",str1.getc(1));
  end
endmodule


//output
string str1=AVENGERS
string str2=assemble
after the lowercase=avengers
after the uppercase=ASSEMBLE
compare with case sensitive=-1
compare without case sensitive=1
give the value between the given index=ssemb
length of the str1=8
length of the str2=8
puuting the charater in particular index(3) in str1=AVEhGERS
give the present output=E
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
