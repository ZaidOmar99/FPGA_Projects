`timescale 1ns / 1ps
    
    module fifo_tb(
    
        );
        
        // signal declarations
        localparam DATA_WIDTH = 8;
        localparam ADDR_WIDTH = 3;
        localparam T = 10; //clock period
        
        logic clk, reset;
        logic wr, rd;
        logic [DATA_WIDTH*2 - 1: 0] w_data;
        logic [DATA_WIDTH - 1: 0] r_data;
        logic full, empty;
        
        // instantiate module under test
        fifo FIFO (
            .clk(clk), 
            .reset(reset),
            .wr(wr),
            .rd(rd),
            .w_data(w_data),
            .r_data(r_data),
            .full(full),
            .empty(empty)
            );
        
        // 10 ns clock running forever
        always
        begin
            clk = 1'b1;
            #(T / 2);
            clk = 1'b0;
            #(T / 2);
        end
        
        // reset for the first half cylce
        initial
        begin
            reset = 1'b1;
            rd = 1'b0;
            wr = 1'b0;
            @(negedge clk);
            reset = 1'b0;
        end
        
        //test vectors
        initial
        begin
            // ----------------EMPTY-----------------------
            // write
            @(negedge clk);
            w_data = 8'd5;
            wr = 1'b1;     
            @(negedge clk);
            wr = 1'b0;
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd8;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd2;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd0;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd9;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd3;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd6;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd1;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // write
            repeat(1) @(negedge clk);
            w_data = 8'd3;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;        
            
            // ----------------FULL-----------------------
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // read
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
            
            // ----------------EMPTY-----------------------
            
            // read & write at the same time
            repeat(1) @(negedge clk);
            w_data = 8'd7;
            wr = 1'b1;
            rd = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            rd = 1'b0;
            
            // read while empty
            repeat(1) @(negedge clk);
            rd = 1'b1;
            @(negedge clk)
            rd = 1'b0;
    
            // ----------------NOT EMPTY-----------------------
            repeat(1) @(negedge clk);
            w_data = 8'd4;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            
            repeat(1) @(negedge clk);
            w_data = 8'd5;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            
            repeat(1) @(negedge clk);
            w_data = 8'd6;
            wr = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            
            // read & write at the same time
            repeat(1) @(negedge clk);
            w_data = 8'd7;
            wr = 1'b1;
            rd = 1'b1;
            @(negedge clk)
            wr = 1'b0;
            rd = 1'b0;
            
            repeat(3) @(negedge clk);
            $stop;
                    
            
        end
        
    endmodule
