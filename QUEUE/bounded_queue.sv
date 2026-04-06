module queue;
  int j;
  int q[$:5]='{0,2,3,4};
  initial begin
    j=1;
    q.insert(1,j);
    $display("%p",q);
    q.delete(1);
    $display("%p",q);
    q.push_front(7);
    $display("%p",q);
    q.push_back(9);
    $display("%p",q);
    j=q.pop_back();
    $display("pop_back=%0d, queue=%p", j, q);
    j=q.pop_front();
    $display("pop_front=%0d, queue=%p", j, q);
    q.reverse();
    $display("%p",q);
    q.sort();
    $display("%p",q);
    q.rsort();
    $display("%p",q);
    q.shuffle();
    $display("%p",q);
  end
endmodule



 
module queue;
  int j;
  int q[$:5]='{0,2,3,4};
  initial begin
    j=1;
    q.insert(1,j);
    $display("%p",q);
    q.delete(1);
    $display("%p",q);
    q.push_front(7);
    $display("%p",q);
    q.push_back(9);
    $display("%p",q);
    q.pop_back();//without display what we pop back
    $display("%p",q);
    q.pop_front();//without display what we pop front
    $display("%p",q);
    q.reverse();
    $display("%p",q);
    q.sort();
    $display("%p",q);
    q.rsort();
    $display("%p",q);
    q.shuffle();
    $display("%p",q);
  end
endmodule




//output
'{0, 1, 2, 3, 4}
'{0, 2, 3, 4}
'{7, 0, 2, 3, 4}
'{7, 0, 2, 3, 4, 9}
pop_back=9, queue='{7, 0, 2, 3, 4}
pop_front=7, queue='{0, 2, 3, 4}
'{4, 3, 2, 0}
'{0, 2, 3, 4}
'{4, 3, 2, 0}
'{4, 3, 2, 0}


'{0, 1, 2, 3, 4}
'{0, 2, 3, 4}
'{7, 0, 2, 3, 4}
'{7, 0, 2, 3, 4, 9}
'{7, 0, 2, 3, 4}
'{0, 2, 3, 4}
'{4, 3, 2, 0}
'{0, 2, 3, 4}
'{4, 3, 2, 0}
'{4, 3, 2, 0}
