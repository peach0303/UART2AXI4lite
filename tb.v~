`timescale 1ns / 1ps

module tb;

    // Testbench signals
    reg clk;
    reg rst_n;
    reg uart_rx;
    wire uart_tx;
    wire uart_irq;
    reg [31:0] s_axi_araddr;
    reg s_axi_arvalid;
    wire s_axi_arready;
    wire [31:0] s_axi_rdata;
    wire [1:0] s_axi_rresp;
    wire s_axi_rvalid;
    reg s_axi_rready;
    reg [31:0] s_axi_awaddr;
    reg s_axi_awvalid;
    wire s_axi_awready;
    reg [31:0] s_axi_wdata;
    reg [3:0] s_axi_wstrb;
    reg s_axi_wvalid;
    wire s_axi_wready;
    wire [1:0] s_axi_bresp;
    wire s_axi_bvalid;
    reg s_axi_bready;

    `ifdef  DUMP
    initial
    begin
        $fsdbDumpfile("*.fsdb");
        $fsdbDumpvars;
        $fsdbDumpMDA();
    end
    `endif

    parameter DATA = 8'b0111_1000;
    parameter CLK_9600 = 2'b00;
    parameter CLK_19200 = 2'b01;
    parameter CLK_38400 = 2'b10;
    parameter CLK_115200 = 2'b11;
    parameter ODD_EN = 1'b1;
    parameter ODD_DISABLE = 1'b0;
    // Instantiate the top module
    top uut (
        .clk(clk),
        .rst_n(rst_n),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),
        .uart_irq(uart_irq),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arready(s_axi_arready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_bready(s_axi_bready)
    );



parameter TEST_DATA1 = 32'd100;
parameter TEST_DATA2 = 32'd0;
parameter TEST_DATA3 = 32'd3456;
parameter TEST_DATA4 = 32'd56789;
parameter UART_BASE = 32'hffe8_0000;

wire uart_clk;
clkgen clkgen1(
     .clk       (clk),
     .rst_n     (rst_n),
     .clk_ctrl  (CLK_115200),
     .uart_clk  (uart_clk)
);


    // Clock generation
    always begin
        #10 clk = ~clk; // 50 MHz clock
    end

    // Stimulus block
    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 1;
        uart_rx = 1;
        s_axi_araddr = 32'b0;
        s_axi_arvalid = 0;

        s_axi_rready = 0;
        s_axi_awaddr = 32'b0;
        s_axi_awvalid = 0;

        s_axi_wdata = 32'b0;
        s_axi_wstrb = 4'b1111;
        s_axi_wvalid = 0;
        
        s_axi_bready = 0;

        // Apply reset
        #20 rst_n = 0;
        #40 rst_n = 1;

        // axi write ctrl information
        #45;
        s_axi_awaddr = UART_BASE+4;
        s_axi_awvalid = 1;
        #20;
        s_axi_awaddr = 0;
        s_axi_awvalid = 0;
        #20;
        s_axi_wvalid = 1;
        s_axi_wdata = {29'b0, ODD_DISABLE, CLK_115200};
	#20;
        s_axi_wvalid = 0;
        s_axi_wdata = 0;
        #20;
        s_axi_bready = 1;
        #20;
        s_axi_bready = 0;
        
        // uart_rx send data, then axi read data
        
        #20;
        rx_send_data(TEST_DATA1,ODD_DISABLE);
        #20;
        rx_send_data(TEST_DATA2,ODD_DISABLE);
        #20;
        rx_send_data(TEST_DATA3,ODD_DISABLE);  
        #20;
        rx_send_data(TEST_DATA4,ODD_DISABLE);   


        #400000;
        #5;
        s_axi_araddr = UART_BASE;
        s_axi_arvalid = 1;
        s_axi_rready = 1;
	#20; s_axi_araddr = 32'h0;
        s_axi_arvalid = 0;

        #5;
        s_axi_araddr = UART_BASE;
        s_axi_arvalid = 1;
        s_axi_rready = 1;
	#20; s_axi_araddr = 32'h0;
        s_axi_arvalid = 0;

        #5;
        s_axi_araddr = UART_BASE;
        s_axi_arvalid = 1;
        s_axi_rready = 1;
	#20; s_axi_araddr = 32'h0;
        s_axi_arvalid = 0;
 
        #8;
        s_axi_araddr = UART_BASE;
        s_axi_arvalid = 1;
        s_axi_rready = 1;
	#20; s_axi_araddr = 32'h0;
        s_axi_arvalid = 0;
        #8000000;
          
     

        //axi write data, and seng it through uart tx;
        #20;
	s_axi_wvalid = 1;
	s_axi_wstrb = 4'b1111;
	s_axi_wdata = TEST_DATA1;
       
        s_axi_awaddr = UART_BASE;
	s_axi_awvalid = 1;
        #20;
 	s_axi_awaddr = 0;
	s_axi_awvalid = 0;
	s_axi_wvalid = 0;
	s_axi_wstrb = 0;
	s_axi_wdata = 0;
	s_axi_awaddr = 32'h0;
	s_axi_awvalid = 0;
     
      
        #10;
	s_axi_bready = 1;
	#20;
	s_axi_bready = 0;
       
	#20;
	s_axi_wvalid = 1;
	s_axi_wstrb = 4'b1111;
	s_axi_wdata = TEST_DATA2;
       
        s_axi_awaddr = UART_BASE;
	s_axi_awvalid = 1;
        #20;
 	s_axi_awaddr = 0;
	s_axi_awvalid = 0;
	s_axi_wvalid = 0;
	s_axi_wstrb = 0;
	s_axi_wdata = 0;
	s_axi_awaddr = 32'h0;
	s_axi_awvalid = 0;
     
      
        #10;
	s_axi_bready = 1;
	#20;
	s_axi_bready = 0;

       #20;
	s_axi_wvalid = 1;
	s_axi_wstrb = 4'b1111;
	s_axi_wdata = TEST_DATA3;
       
        s_axi_awaddr = UART_BASE;
	s_axi_awvalid = 1;
        #20;
 	s_axi_awaddr = 0;
	s_axi_awvalid = 0;
	s_axi_wvalid = 0;
	s_axi_wstrb = 0;
	s_axi_wdata = 0;
	s_axi_awaddr = 32'h0;
	s_axi_awvalid = 0;
     
      
        #10;
	s_axi_bready = 1;
	#20;
	s_axi_bready = 0;
      
       #20;
	s_axi_wvalid = 1;
	s_axi_wstrb = 4'b1111;
	s_axi_wdata = TEST_DATA4;
       
        s_axi_awaddr = UART_BASE;
	s_axi_awvalid = 1;
        #20;
 	s_axi_awaddr = 0;
	s_axi_awvalid = 0;
	s_axi_wvalid = 0;
	s_axi_wstrb = 0;
	s_axi_wdata = 0;
	s_axi_awaddr = 32'h0;
	s_axi_awvalid = 0;
     
      
        #10;
	s_axi_bready = 1;
	#20;
	s_axi_bready = 0;

       #8000000;
         #100;
        $display("finish vcs simulation");
        $finish;
    end


task rx_send_data;
     input [31:0] data;
     input odd_parity;
     begin
     if(odd_parity) begin
        rx_send_byte({~(^data[6:0]),data[6:0]});
        rx_send_byte({~(^data[13:7]),data[13:7]});
        rx_send_byte({~(^data[20:14]),data[20:14]});
        rx_send_byte({~(^data[27:21]),data[27:21]});
        rx_send_byte({~(^data[31:28]),data[31:28],3'b000});
     end
     else begin
        rx_send_byte(data[7:0]);
        rx_send_byte(data[15:8]);
        rx_send_byte(data[23:16]);
        rx_send_byte(data[31:24]);
     end
     end
endtask

task rx_send_byte;
    input [7:0] data;
    integer i = 0;
    begin
       for(i=0;i<10;i=i+1) begin
            @(posedge uart_clk);
            if(i==0)
               uart_rx = 1'b0;
            else if(i==9)
               uart_rx = 1'b1;
            else uart_rx = data[i-1];
            
       end  
   end   
endtask


endmodule

