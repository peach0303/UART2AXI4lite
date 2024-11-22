module UART_TX (
    input            clk,
    input            rst_n,
    input [7:0]      data_in,       
    input            start,         
    output reg       uart_tx,           
    output reg       data_ready     
);

parameter IDLE = 1'b0;
parameter SEND = 1'b1;

reg state, next_state;              
reg [9:0] data, next_data;           
reg [3:0] bit_cnt, next_bit_cnt;     
reg next_data_ready;                 
reg next_uart_tx;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        data <= 10'b0;
        bit_cnt <= 4'd0;
        data_ready <= 1'b0;          
        uart_tx <= 1'b1; 
	next_uart_tx <= 1'b1;                 
    end else begin
        state <= next_state;
        data <= next_data;
        bit_cnt <= next_bit_cnt;
        data_ready <= next_data_ready;
	uart_tx <= next_uart_tx;
    end
end


always @(*) begin
    
    next_state = state;
    next_data = data;
    next_bit_cnt = bit_cnt;
    next_data_ready = 0;
    next_uart_tx = 1'b1;  

    case (state)
        IDLE: begin
            if (start) begin
                next_state = SEND;
                next_data = {1'b1, data_in};         
                next_bit_cnt = 3'd0;        
                next_data_ready = 1'b0; 
                next_uart_tx = 1'b0;     
            end
        end
        
        SEND: begin
                next_uart_tx = next_data[0];                
                next_data = data >> 1;       
                next_bit_cnt = bit_cnt + 1; 
		if (bit_cnt == 4'd6)
		   next_data_ready = 1'b1;  
                if (bit_cnt == 4'd9) begin   
		    if(start) begin
                       next_state = SEND;
		       next_data = {1'b1, data_in}; 
                       next_bit_cnt = 3'd0;        
                       next_data_ready = 1'b0;
                       next_uart_tx = 1'b0;  
		    end
                    else begin
			next_state = IDLE;
			next_bit_cnt = 3'd0;        
                	next_data_ready = 1'b0;
                        next_uart_tx = 1'b1; 
                    end
                end
            
        end
        default: next_state = IDLE;         
    endcase
end

endmodule

