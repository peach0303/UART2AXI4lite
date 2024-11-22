module UART(
    input  clk,
    input  rst_n,
    input  rfifo_pop,
    input  tfifo_push,
    input  [31:0] tfifo_data_in,
    input  [31:0] uart_fifo_ctrl,
    output uart_rx,
    output uart_tx,
    output uart_irq,
    output tx_full,
    output rx_empty,
    output [31:0] rfifo_data_out 
);

parameter FIFO_DEPTH = 5'd16;

assign uart_irq = ~rx_empty;
reg [3:0]rfifo_valid;
reg [3:0]tfifo_valid;



//UART_RFIFO
reg [7:0] RFIFO [0:FIFO_DEPTH-1];
reg [3:0] rx_head;
reg [3:0] rx_tail;
wire [7:0] r_data;
wire r_data_valid;
wire rx_full;
assign rx_empty = (rfifo_valid == 4'd0);
assign rx_full = (rfifo_valid == 4'b1111);

wire [1:0] clk_ctrl;
assign clk_ctrl = uart_fifo_ctrl[1:0];

wire odd_parity;
assign odd_parity = uart_fifo_ctrl[2];
assign rfifo_data_out = {RFIFO[rx_head+3],RFIFO[rx_head+2],RFIFO[rx_head+1],RFIFO[rx_head]};


clkgen clkgen1(
     .clk       (clk),
     .rst_n     (rst_n),
     .clk_ctrl  (clk_ctrl),
     .uart_clk  (uart_clk)
);



reg [2:0] byte_cnt;
reg [31:0] r_data_32;
reg [31:0] next_r_data_32;

always@(*) begin
   if(r_data_valid) begin
       if(odd_parity) begin
          if(byte_cnt <= 3) begin
          case(byte_cnt)
             4'd0: next_r_data_32 = r_data[6:0];
             4'd1: next_r_data_32 = r_data_32[6:0] + (r_data[6:0] << 7);
             4'd2: next_r_data_32 = r_data_32[13:0] + (r_data[6:0] << 14);
             4'd3: next_r_data_32 = r_data_32[20:0] + (r_data[6:0] << 21);
          endcase
          end
          else  begin
             next_r_data_32 = r_data_32[27:0] + (r_data [6:3] << 28);
         end
      end
      else begin
          case(byte_cnt)
             4'd0: next_r_data_32 = r_data[7:0];
             4'd1: next_r_data_32 = r_data_32[7:0] + (r_data[7:0] << 8);
             4'd2: next_r_data_32 = r_data_32[15:0] + (r_data[7:0] << 16);
             4'd3: next_r_data_32 = r_data_32[23:0] + (r_data[7:0] << 24);
          endcase
      end
    end
end

always@(posedge uart_clk or negedge rst_n) begin
    if(!rst_n) begin
	
	rx_tail <= 0;
        RFIFO[0] <= 8'd0;
        RFIFO[1] <= 8'd0;
        RFIFO[2] <= 8'd0;
        RFIFO[3] <= 8'd0;
        RFIFO[4] <= 8'd0;
        RFIFO[5] <= 8'd0;
        RFIFO[6] <= 8'd0;
        RFIFO[7] <= 8'd0;
	RFIFO[8] <= 8'd0;
        RFIFO[9] <= 8'd0;
        RFIFO[10] <= 8'd0;
        RFIFO[11] <= 8'd0;
        RFIFO[12] <= 8'd0;
        RFIFO[13] <= 8'd0;
        RFIFO[14] <= 8'd0;
        RFIFO[15] <= 8'd0;
        byte_cnt <= 3'd0;
        rfifo_valid <= 4'd0;
        r_data_32 <= 0;
    end
    else if(r_data_valid) begin
       r_data_32 <= next_r_data_32;
       if(odd_parity) begin
          if(byte_cnt <= 3) begin
             
             byte_cnt <= byte_cnt + 1;
          end
          else  begin
             
             RFIFO[rx_tail+3] <= next_r_data_32[31:24];
             RFIFO[rx_tail+2] <= next_r_data_32[23:16];
             RFIFO[rx_tail+1] <= next_r_data_32[15:8];
             RFIFO[rx_tail]   <= next_r_data_32[7:0];
             case(rx_tail)
                4'd0:rfifo_valid[0] = 1'b1;
                4'd4:rfifo_valid[1] = 1'b1;
                4'd8:rfifo_valid[2] = 1'b1;
                4'd12:rfifo_valid[3] = 1'b1;
             endcase
             rx_tail <= rx_tail + 4;
             byte_cnt <= 0;
         end
      end
      else begin
          if(byte_cnt <= 2) begin
             
             byte_cnt <= byte_cnt + 1;
          end
          else  begin
             
             RFIFO[rx_tail+3] <= next_r_data_32[31:24];
             RFIFO[rx_tail+2] <= next_r_data_32[23:16];
             RFIFO[rx_tail+1] <= next_r_data_32[15:8];
             RFIFO[rx_tail]   <= next_r_data_32[7:0];
             rx_tail <= rx_tail + 4;
             case(rx_tail)
                4'd0:rfifo_valid[0] = 1'b1;
                4'd4:rfifo_valid[1] = 1'b1;
                4'd8:rfifo_valid[2] = 1'b1;
                4'd12:rfifo_valid[3] = 1'b1;
             endcase
             byte_cnt <= 0;
         end
      end
    end
end

UART_RX UART_RX1(
    .clk  	(uart_clk),
    .rst_n      (rst_n),
    .uart_rx    (uart_rx),
    .data       (r_data),
    .data_valid (r_data_valid)
);

//UART_TFIFO
reg [7:0] TFIFO [0:FIFO_DEPTH-1];
reg [3:0] tx_head;
reg [3:0] tx_tail;

wire tx_empty;
assign tx_empty = (tfifo_valid == 4'b0000);  
assign tx_full = (tfifo_valid == 4'b1111);
wire [7:0] tx_data_in; 
reg [7:0] reg_tx_data; 
wire tx_data_ready;
assign tx_data_in = reg_tx_data;

UART_TX UART_TX1(
    .clk        (uart_clk),
    .rst_n      (rst_n),
    .uart_tx    (uart_tx),
    .start      (~tx_empty),      
    .data_in    (tx_data_in),
    .data_ready (tx_data_ready)
);



always@(posedge clk or negedge rst_n) begin
   if(!rst_n)
     tx_tail = 4'd0;
   else if(tfifo_push)
     begin
        TFIFO[tx_tail+3] <= tfifo_data_in[31:24];
        TFIFO[tx_tail+2] <= tfifo_data_in[23:16];
        TFIFO[tx_tail+1] <= tfifo_data_in[15:8];
        TFIFO[tx_tail] <= tfifo_data_in[7:0];
        tx_tail <= tx_tail + 4;
        case(tx_tail)
         4'd0:tfifo_valid[0] = 1;
         4'd4:tfifo_valid[1] = 1;
         4'd8:tfifo_valid[2] = 1;
         4'd12:tfifo_valid[3] = 1;
        endcase
     end
end


always@(posedge clk or negedge rst_n) begin
   if(!rst_n)
     rx_head = 4'd0;
   else if(rfifo_pop) begin
     case(rx_head)
         4'd0:rfifo_valid[0] = 0;
         4'd4:rfifo_valid[1] = 0;
         4'd8:rfifo_valid[2] = 0;
         4'd12:rfifo_valid[3] = 0;
     endcase
     rx_head = rx_head + 4;
   end
end



reg [2:0] tx_byte_cnt;
reg [31:0] reg_tx_data_32;
always@(posedge uart_clk or negedge rst_n) begin
    if(!rst_n) begin
        TFIFO[0] <= 8'd0;
        TFIFO[1] <= 8'd0;
        TFIFO[2] <= 8'd0;
        TFIFO[3] <= 8'd0;
        TFIFO[4] <= 8'd0;
        TFIFO[5] <= 8'd0;
        TFIFO[6] <= 8'd0;
        TFIFO[7] <= 8'd0;
	TFIFO[8] <= 8'd0;
        TFIFO[9] <= 8'd0;
        TFIFO[10] <= 8'd0;
        TFIFO[11] <= 8'd0;
        TFIFO[12] <= 8'd0;
        TFIFO[13] <= 8'd0;
        TFIFO[14] <= 8'd0;
        TFIFO[15] <= 8'd0;
	tx_head <= 0;
        tx_byte_cnt <= 0;
        tfifo_valid <= 4'b0000;
    end
    else if(!tx_empty) begin
       if(tx_byte_cnt == 0)
          reg_tx_data_32 = {TFIFO[tx_head],TFIFO[tx_head+1],TFIFO[tx_head+2],TFIFO[tx_head+3]};
       if(odd_parity) begin
           case(tx_byte_cnt)
              3'd4:reg_tx_data <= {~(^reg_tx_data_32[31:28]) ,reg_tx_data_32[31:28],3'b000};
              3'd3:reg_tx_data <= {~(^reg_tx_data_32[27:21]), reg_tx_data_32[27:21]};
              3'd2:reg_tx_data <= {~(^reg_tx_data_32[20:14]), reg_tx_data_32[20:14]};
              3'd1:reg_tx_data <= {~(^reg_tx_data_32[13:7]), reg_tx_data_32[13:7]};
              3'd0:reg_tx_data <= {~(^reg_tx_data_32[6:0]), reg_tx_data_32[6:0]};
           endcase
           if(tx_byte_cnt <= 3)
               tx_byte_cnt <= tx_byte_cnt + 1;
           else begin
               tx_byte_cnt <= 0;
               case(tx_head)
                  4'd0:tfifo_valid[0] = 1'b0;
                  4'd4:tfifo_valid[1] = 1'b0;
                  4'd8:tfifo_valid[2] = 1'b0;
                  4'd12:tfifo_valid[3] = 1'b0;
               endcase
               tx_head <= tx_head + 4;
            end
       end
     else begin
        case(tx_byte_cnt)
            3'd3:reg_tx_data <= reg_tx_data_32[31:24];
            3'd2:reg_tx_data <= reg_tx_data_32[23:16];
            3'd1:reg_tx_data <= reg_tx_data_32[15:8];
            3'd0:reg_tx_data <= reg_tx_data_32[7:0];      
        endcase
        if(tx_byte_cnt <= 2)
            tx_byte_cnt <= tx_byte_cnt + 1;
        else begin
             tx_byte_cnt <= 0;
             case(tx_head)
               4'd0:tfifo_valid[0] = 1'b0;
               4'd4:tfifo_valid[1] = 1'b0;
               4'd8:tfifo_valid[2] = 1'b0;
               4'd12:tfifo_valid[3] = 1'b0;
             endcase
             tx_head <= tx_head + 4;
        end
     end
    end
end
endmodule
