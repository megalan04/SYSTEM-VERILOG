class scoreboard;
    mailbox #(transaction) mon2sco;
    transaction tr;
    int total;
    int pass;
    int fail;
    function new(mailbox #(transaction)mon2sco);
        this.mon2sco=mon2sco;
        total=0;
        pass=0;
        fail=0;
    endfunction
    task run();
        forever begin
            mon2sco.get(tr);
            total++;
            $display("======================================");
            $display("             SCOREBOARD");
            $display("======================================");
            if(tr.write_en)begin
                case(tr.addr)
                    16'h0002:
                    begin
                        if(tr.write_data==8'h01)begin
                            pass++;
                            $display("CONTROL REGISTER WRITE");
                            $display("Expected:01");
                            $display("Actual:%h",tr.write_data);
                            $display("RESULT:PASS");
                        end
                        else begin
                            fail++;
                            $display("CONTROL REGISTER WRITE");
                            $display("Expected:01");
                            $display("Actual:%h",tr.write_data);
                            $display("RESULT:FAIL");
                        end
                    end
                    16'h0003:
                    begin
                        pass++;
                        $display("TX REGISTER WRITE");
                        $display("DATA=%h",tr.write_data);
                    end
                    16'h0004:
                    begin
                        case(tr.write_data[2:0])
                            3'b000:
                            begin
                                pass++;
                                $display("COMMAND:START");
                            end
                            3'b001:
                            begin
                                pass++;
                                $display("COMMAND:WRITE");
                            end
                            3'b010:
                            begin
                                pass++;
                                $display("COMMAND:READ");
                            end
                            3'b011:
                            begin
                                pass++;
                                $display("COMMAND:STOP");
                            end
                            default:
                            begin
                                fail++;
                                $display("UNKNOWN COMMAND");
                            end

                        endcase

                    end

                    default:
                    begin
                        fail++;
                        $display("INVALID ADDRESS");
                    end
                endcase
            end
            else begin
                $display("READ TRANSACTION");
                $display("ADDRESS:%h",tr.addr);
                $display("READ DATA:%h",tr.read_data);
            end
            $display("--------------------------------------");
            $display("TOTAL=%0d",total);
            $display("PASS=%0d",pass);
            $display("FAIL=%0d",fail);
            $display("======================================");
        end
    endtask
endclass
