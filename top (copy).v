module top(
    input             clk,
    input             rst_n,
    input             uart_rx,
    output            uart_tx,
    output            uart_irq,

    input      [31:0] s_axi_araddr,
    input             s_axi_arvalid,
    output            s_axi_arready,

    output reg [31:0] s_axi_rdata,
    output reg [1:0]  s_axi_rresp,
    output reg        s_axi_rvalid,
    input             s_axi_rready,

    input      [31:0] s_axi_awaddr,
    input             s_axi_awvalid,
    output         s_axi_awready,

    input      [31:0] s_axi_wdata,
    input      [3:0]  s_axi_wstrb,
    input             s_axi_wvalid,
    output        s_axi_wready,

    output reg [1:0]  s_axi_bresp,
    output  reg          s_axi_bvalid,
    input             s_axi_bready
);

parameter FIFO_DEPTH = 5'd16;
parameter UART_BASE = 32'hffe8_0000;
parameter RESP_OK = 2'b00;
parameter RESP_SLVERR = 2'b10;
parameter RESP_DECERR = 2'b11;


wire uart_clk;
wire rx_empty;
assign uart_irq = ~rx_empty;
reg [31:0] uart_raddr;
reg [31:0] axi_r_addr;

reg [31:0] UART_FIFO_CTRL;

wire [1:0] clk_ctrl;
assign clk_ctrl = UART_FIFO_CTRL[1:0];

//CLK_GEN
clkgen clkgen1(
     .clk       (clk),
     .rst_n     (rst_n),
     .clk_ctrl  (clk_ctrl),
     .uart_clk  (uart_clk)
);

//UART_TFIFO
reg [7:0] TFIFO [0:FIFO_DEPTH-1];
reg [3:0] tx_head;
reg [3:0] tx_tail;
wire tx_full;
wire tx_empty;
assign tx_empty = tx_tail == tx_head;  
assign tx_full = tx_tail+4 == tx_head;
wire [7:0] tx_data_in;  
wire tx_data_ready;
assign tx_data_in = TFIFO[tx_head];

wire odd_parity;
assign odd_parity = UART_FIFO_CTRL[2];


UART_TX UART_TX1(
    .clk        (uart_clk),
    .rst_n      (rst_n),
    .uart_tx    (uart_tx),
    .start      (~tx_empty),      
    .odd_parity (odd_parity),
    .data_in    (tx_data_in),
    .data_ready (tx_data_ready)
);

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
	tx_tail <= 0;
	tx_head <= 0;
    end
    else if(tx_data_ready) begin
       tx_head <= tx_head + 1;
    end
end

//UART_RFIFO
reg [7:0] RFIFO [0:FIFO_DEPTH-1];
reg [3:0] rx_head;
reg [3:0] rx_tail;
wire [7:0] r_data;
wire r_data_valid;
assign rx_empty = (rx_head == rx_tail);

always@(posedge uart_clk or negedge rst_n) begin
    if(!rst_n) begin
	rx_head <= 0;
	rx_tail <= 0;
        RFIFO[0] <= 8'd0;
        RFIFO[1] <= 8'd0;
        RFIFO[2] <= 8'd0;
        RFIFO[3] <= 8'd0;
        RFIFO[4] <= 8'd0;
        RFIFO[5] <= 8'd0;
        RFIFO[6] <= 8'd0;
        RFIFO[7] <= 8'd0;
    end
    else if(r_data_valid) begin
       RFIFO[rx_tail] <= r_data;
       rx_tail <= rx_tail + 1;
    end
end

UART_RX UART_RX1(
    .clk  	(uart_clk),
    .rst_n      (rst_n),
    .uart_rx    (uart_rx),
    .odd_parity (odd_parity),
    .data       (r_data),
    .data_valid (r_data_valid)
);


						
//AXI read  
typedef enum logic [1:0] {
        R_IDLE,          
        R_READ_DATA,     
        R_WAIT_READY     
    } R_STATE;

R_STATE r_state, r_next_state; 

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        r_state <= R_IDLE;
    else
        r_state <= r_next_state;
end

always @(*) begin
    // default
    r_next_state = r_state;
    case (r_state)
        R_IDLE: begin
            if (s_axi_arvalid && s_axi_arready) 
                r_next_state = R_READ_DATA;    
        end
        R_READ_DATA: begin
            if (s_axi_rready) 
                r_next_state = R_WAIT_READY;
        end
        R_WAIT_READY: begin    
            if (!s_axi_rready) begin
                    r_next_state = R_IDLE;
                end
            end
        endcase
    end

always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            s_axi_rdata <= 32'b0;
            s_axi_rvalid <= 1'b0;
            s_axi_rresp <= RESP_OK;
        end
        else begin
            case (r_next_state)
                R_IDLE:begin
                    s_axi_rvalid <= 1'b0;
                    s_axi_rdata <= 0;
                    s_axi_rresp <= RESP_OK;
                end
                R_READ_DATA: begin
                    s_axi_rvalid <= 1'b1;
                    if(s_axi_araddr == UART_BASE) begin
                        s_axi_rdata <= RFIFO[rx_head];
                        s_axi_rresp <= RESP_OK;
                    end
                    else if(s_axi_araddr == UART_BASE+4) begin
                        s_axi_rdata <= UART_FIFO_CTRL;
                        s_axi_rresp <= RESP_OK;
                    end
                    else begin
                        s_axi_rdata <= 0;
                        s_axi_rresp <= RESP_DECERR;
                    end
                end
                R_WAIT_READY: begin
                    if (s_axi_rready) begin
                        s_axi_rvalid <= 1'b0;
                        s_axi_rdata <= 0;
                        rx_head <= rx_head + 1;
                    end
                    else begin
                        s_axi_rvalid <= 1'b1;
                    end
                end
            endcase
        end
end



//AXI write

reg [31:0] axi_w_addr;
reg [31:0] axi_w_data;
reg [3:0] axi_w_strb;


typedef enum reg [2:0] {
        W_IDLE = 3'b00,
        W_WAIT_ADDR = 3'b001,
        W_WAIT_DATA = 3'b010,
        W_WRITE = 3'b011,
	W_WAIT_RESP_READY = 3'b100
	
    } state_t;

    reg [2:0] w_state, w_next_state;

    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            w_state <= W_IDLE;
        end else begin
            w_state <= w_next_state;
        end
    end

    
    always @(*) begin
        case (w_state)
            W_IDLE: begin
                if (s_axi_awvalid && s_axi_awready && s_axi_wvalid && s_axi_wready) begin
                    w_next_state = W_WRITE;  
		    axi_w_addr = s_axi_awaddr;
		    axi_w_data = s_axi_wdata;
                end
                else if(s_axi_awvalid && s_axi_awready)begin
                    w_next_state = W_WAIT_DATA;
                    axi_w_addr = s_axi_awaddr;
                end
                else if(s_axi_wvalid && s_axi_wready)begin
                    w_next_state = W_WAIT_ADDR;
                    axi_w_data = s_axi_wdata;
                end
		else begin
		   w_next_state = W_IDLE;	
		   axi_w_data = 0;
		   axi_w_addr = 0;
		end
            end
            W_WAIT_ADDR: begin
                if(s_axi_awvalid && s_axi_awready)begin
                    w_next_state = W_WRITE;
                    axi_w_addr = s_axi_awaddr;
                end     
            end
            W_WAIT_DATA:begin
                if(s_axi_wvalid && s_axi_wready)begin
                    w_next_state = W_WRITE;
                    axi_w_data = s_axi_wdata;
                end
            end
            W_WRITE:begin
                   w_next_state = W_WAIT_RESP_READY;
            end
	    W_WAIT_RESP_READY:begin
                 if(s_axi_bready)
                    w_next_state = W_IDLE;
	    end
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            s_axi_bvalid <= 0;
            s_axi_bresp <= RESP_OK;
            UART_FIFO_CTRL <= 32'd0;
        end 
        else begin
            case (w_next_state)
                W_IDLE:begin
                    s_axi_bvalid <= 0;
                    s_axi_bresp <= RESP_OK;
                end
                W_WAIT_ADDR,W_WAIT_DATA :begin
                    s_axi_bvalid <= 0;
                    s_axi_bresp <= RESP_OK;
                end
                W_WRITE:begin
                    if(axi_w_addr == UART_BASE)begin
                        TFIFO[tx_tail] <= s_axi_wstrb[3] ? axi_w_data[31:24] : 8'b0;
			TFIFO[tx_tail+1] <= s_axi_wstrb[2] ? axi_w_data[23:16] : 8'b0;
			TFIFO[tx_tail+2] <= s_axi_wstrb[1] ? axi_w_data[15:8] : 8'b0;
			TFIFO[tx_tail+3] <= s_axi_wstrb[0] ? axi_w_data[7:0] : 8'b0;
                        s_axi_bvalid <= 1;
                        s_axi_bresp <= RESP_OK;
                        tx_tail <= tx_tail + 4;
                    end
                    else if(axi_w_addr == UART_BASE+4)begin
                        UART_FIFO_CTRL <= axi_w_data;
                        s_axi_bvalid <= 1;
                        s_axi_bresp <= RESP_OK;
                    end
                    else begin
                        s_axi_bvalid <= 1;   //todo
                        s_axi_bresp <= RESP_DECERR;
                    end
                end
		W_WAIT_RESP_READY:begin
		   axi_w_addr = 0;
                   axi_w_data = 0;
		end

            endcase

        end
    end



//valid & ready signs
assign s_axi_arready = ~rx_empty;
assign s_axi_wready = ~tx_full;
assign s_axi_awready = ~tx_full;


endmodule
