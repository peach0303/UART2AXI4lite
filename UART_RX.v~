module UART_RX (
    input            clk,
    input            rst_n,
    input            uart_rx,
    output reg [7:0] data,
    output reg       data_valid
);

parameter IDLE = 1'b0;
parameter TRANSFER = 1'b1;

reg state, next_state;              
reg [7:0] next_data;                 
reg [2:0] bit_cnt, next_bit_cnt;     
reg next_data_valid;                 


always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        data <= 8'b0;
        bit_cnt <= 3'd0;
        data_valid <= 1'b0;
    end else begin
        state <= next_state;
        data <= next_data;
        bit_cnt <= next_bit_cnt;
        data_valid <= next_data_valid;
    end
end


always @(*) begin  
    next_state = state;
    next_data = data;
    next_bit_cnt = bit_cnt;
    next_data_valid = 1'b0;
    case (state)
        IDLE: begin
            if (uart_rx == 0) begin
                next_state = TRANSFER;
                next_bit_cnt = 3'd0;          
                next_data = 8'b0;            
            end
        end
        
        TRANSFER: begin
            next_bit_cnt = bit_cnt + 1;
            next_data = data + (uart_rx << bit_cnt); 
            if (bit_cnt == 3'd7) begin         
                next_state = IDLE;
                next_data_valid = 1'b1;        
            end
            
        end
        default: next_state = IDLE;               
    endcase
end
endmodule

