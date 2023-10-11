
module fork_join;
  
  initial begin
    $display("-----------------------------------------------------------------");
    
    fork
    
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
    
      begin
        $display($time,"\tProcess-2 Startedt");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_any
    
    $display($time,"\tOutside Fork-Join");
    $display("-----------------------------------------------------------------");
  
  end  
endmodule:fork_join
