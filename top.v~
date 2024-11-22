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
    output            s_axi_awready,

    input      [31:0] s_axi_wdata,
    input      [3:0]  s_axi_wstrb,
    input             s_axi_wvalid,
    output            s_axi_wready,

    output reg [1:0]  s_axi_bresp,
    output  reg       s_axi_bvalid,
    input             s_axi_bready
);

parameter FIFO_DEPTH = 5'd16;
parameter UART_BASE = 32'hffe8_0000;
parameter RESP_OK = 2'b00;
parameter RESP_SLVERR = 2'b10;
parameter RESP_DECERR = 2'b11;


wire uart_clk;
wire rx_empty;
wire tx_full;
assign uart_irq = ~rx_empty;
reg [31:0] uart_raddr;
reg [31:0] axi_r_addr;

reg [31:0] UART_FIFO_CTRL;

wire [31:0] uart_fifo_ctrl;
assign uart_fifo_ctrl = UART_FIFO_CTRL;

wire [1:0] clk_ctrl;
assign clk_ctrl = UART_FIFO_CTRL[1:0];

wire odd_parity;
assign odd_parity = UART_FIFO_CTRL[2];

wire [31:0] rfifo_data_out;
reg read_rfifo;
wire rfifo_pop;
assign rfifo_pop = read_rfifo;

//CLK_GEN
clkgen clkgen1(
     .clk       (clk),
     .rst_n     (rst_n),
     .clk_ctrl  (clk_ctrl),
     .uart_clk  (uart_clk)
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
    read_rfifo = 0;
    case (r_state)
        R_IDLE: begin
            if (s_axi_arvalid && s_axi_arready)  
            begin
                r_next_state = R_READ_DATA;    
                read_rfifo = 1;
            end
        end
        R_READ_DATA: begin
           if (s_axi_rready)  begin
              if (s_axi_arvalid && s_axi_arready)  
              begin
                r_next_state = R_READ_DATA;    
                read_rfifo = 1;
              end
              else r_next_state = R_IDLE;
           end
           else
              r_next_state = R_WAIT_READY;    
        end 
        R_WAIT_READY: begin    
              if (s_axi_rready) begin
                    if (s_axi_arvalid && s_axi_arready)  
                    begin
                    r_next_state = R_READ_DATA;    
                    read_rfifo = 1;
                    end
               else     r_next_state = R_IDLE;
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
                        s_axi_rdata <= rfifo_data_out;
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
                    s_axi_rdata <= s_axi_rdata;
                    s_axi_rvalid <= s_axi_rvalid;
                    s_axi_rresp <= s_axi_rresp;
                end
            endcase
        end
end



//AXI write

reg [31:0] axi_w_addr;
reg [31:0] axi_w_data;
reg [3:0] axi_w_strb;

reg write_uart;
reg [31:0] tfifo_w_data;
wire tfifo_push;
wire [31:0] tfifo_data_in;
assign tfifo_push = write_uart;
assign tfifo_data_in = axi_w_data;


typedef enum logic [2:0] {
        W_IDLE = 3'b00,
        W_WAIT_ADDR = 3'b001,
        W_WAIT_DATA = 3'b010,
        W_WRITE = 3'b011,
	W_WAIT_RESP_READY = 3'b100
	
    } W_STATE;

    W_STATE w_state, w_next_state;

    
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
		    axi_w_data[31:24] = s_axi_wstrb[3] ? s_axi_wdata[31:24] : 8'b0;
		    axi_w_data[23:16] = s_axi_wstrb[2] ? s_axi_wdata[23:16] : 8'b0;
		    axi_w_data[15:8] = s_axi_wstrb[1] ? s_axi_wdata[15:8] : 8'b0;
		    axi_w_data[7:0] = s_axi_wstrb[0] ? s_axi_wdata[7:0] : 8'b0;
                    if(axi_w_addr == UART_BASE)                    
                        write_uart = 1;
                    else write_uart = 0;
                end
                else if(s_axi_awvalid && s_axi_awready)begin
                    w_next_state = W_WAIT_DATA;
                    axi_w_addr = s_axi_awaddr;
		    write_uart = 0;
                end
                else if(s_axi_wvalid && s_axi_wready)begin
                    w_next_state = W_WAIT_ADDR;
                    axi_w_data = s_axi_wdata;
                    write_uart = 0;
                end
		else begin
		   w_next_state = W_IDLE;	
		   axi_w_data = 0;
		   axi_w_addr = 0;
                   write_uart = 0;
		end
            end
            W_WAIT_ADDR: begin
                if(s_axi_awvalid && s_axi_awready)begin
                    w_next_state = W_WRITE;
                    axi_w_addr = s_axi_awaddr;
                    if(axi_w_addr == UART_BASE)                    
                        write_uart = 1;
                    else write_uart = 0;
                end     
            end
            W_WAIT_DATA:begin
                if(s_axi_wvalid && s_axi_wready)begin
                    w_next_state = W_WRITE;
                    axi_w_data = s_axi_wdata;
		    axi_w_data[31:24] <= s_axi_wstrb[3] ? s_axi_wdata[31:24] : 8'b0;
		    axi_w_data[23:16] <= s_axi_wstrb[2] ? s_axi_wdata[23:16] : 8'b0;
		    axi_w_data[15:8] <= s_axi_wstrb[1] ? s_axi_wdata[15:8] : 8'b0;
		    axi_w_data[7:0] <= s_axi_wstrb[0] ? s_axi_wdata[7:0] : 8'b0;
                    if(axi_w_addr == UART_BASE)                    
                        write_uart = 1;
                    else write_uart = 0;
                end
            end
            W_WRITE:begin
                 if(s_axi_bready)
                    w_next_state = W_IDLE;
                 else
                   w_next_state = W_WAIT_RESP_READY;
                   write_uart = 0;
            end
	    W_WAIT_RESP_READY:begin
                 if(s_axi_bready)
                    w_next_state = W_IDLE;
                    write_uart = 0;
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
                        s_axi_bvalid <= 1;
                        s_axi_bresp <= RESP_OK;
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

UART UART1 (
        .clk(clk),
        .rst_n(rst_n),
        .rfifo_pop(rfifo_pop),
        .tfifo_push(tfifo_push),
        .tfifo_data_in(tfifo_data_in),
        .uart_fifo_ctrl(uart_fifo_ctrl),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),
        .uart_irq(uart_irq),
        .tx_full(tx_full),
        .rx_empty(rx_empty),
        .rfifo_data_out(rfifo_data_out)
    );


endmodule
