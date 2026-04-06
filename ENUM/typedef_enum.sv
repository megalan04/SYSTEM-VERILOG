module enum_tb;
  typedef enum{BGMI,NFS,GOW,GTA,RDR}games;
  games g1;
  initial begin
    
    g1=BGMI;
    $display("first=%0d",g1.first());
    $display("last=%0d",g1.last());
    $display("prev=%0d",g1.prev());
    $display("next=%0d",g1.next());
    $display("num=%0d",g1.num());
    $display("name=%s",g1.name());
  end
endmodule
