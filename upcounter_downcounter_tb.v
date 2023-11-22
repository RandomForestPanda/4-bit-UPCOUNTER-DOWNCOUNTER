module Counter_TB;

    reg clk;
    reg reset;
    wire [3:0] up_count;
    wire [3:0] down_count;

    UpCounter up_counter(
        .clk(clk),
        .reset(reset),
        .count(up_count)
    );

    DownCounter down_counter(
        .clk(clk),
        .reset(reset),
        .count(down_count)
    );

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, Counter_TB);
        clk = 0;
        reset = 1;
        #50 reset = 0;
        #60 reset = 1;
        #70 reset = 0;
        repeat (80) begin
            #10 clk = ~clk;
        end
        $finish;
    end

endmodule
