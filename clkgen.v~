module clkgen (
    input wire clk,                 
    input wire rst_n,                  
    input wire [1:0] clk_ctrl,   
    output reg uart_clk                
);
    
    localparam DIV_9600   = 5208;  // 9600 bps
    localparam DIV_19200  = 2604;  // 19200 bps
    localparam DIV_38400  = 1302;  // 38400 bps
    localparam DIV_115200 = 434;   // 115200 bps

    reg [12:0] counter = 0;        
    reg [12:0] divisor;            

    
    always @(*) begin
        case (clk_ctrl)
            2'b00: divisor = DIV_9600;   // 9600 bps
            2'b01: divisor = DIV_19200;  // 19200 bps
            2'b10: divisor = DIV_38400;  // 38400 bps
            2'b11: divisor = DIV_115200; // 115200 bps
            default: divisor = DIV_9600; // 
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            uart_clk <= 0;
        end else if (counter == (divisor - 1)) begin
            counter <= 0;
            uart_clk <= ~uart_clk; 
        end else begin
            counter <= counter + 1;
        end
    end
endmodule

