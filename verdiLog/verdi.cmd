debImport "-f" "vfile.f"
debLoadSimResult /export4/Home/iac02/daisiyao/uart2axi/*.fsdb
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1" 12)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectGroup -win $_nWave2 {G1/G2}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 11 12 13 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 11 12 13 )} 
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSelectSignal -win $_nWave2 {( "G1/G2" 1 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectGroup -win $_nWave2 {G1/G2}
wvSelectGroup -win $_nWave2 {G1/G2}
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvMoveSelected -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSelectGroup -win $_nWave2 {G1/G2}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 11813590332.099142 11901587280.569155
wvZoom -win $_nWave2 11863028030.190044 11863674274.609652
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 11863461100.950985 11863485621.853075
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 11863430502.343056 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1" {/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1" {/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 8 9 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1" {/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 8 9 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1/G2" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 17 )} 
wvSetCursor -win $_nWave2 11863509749.574181 -snap {("G1" 19)}
wvSetCursor -win $_nWave2 11863429914.079004 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 16 )} 
wvSetCursor -win $_nWave2 11863560208.009035 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 11863450119.063055 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 11863470047.923506 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 11863489856.730579 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb/clkgen1"
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb"
wvSetPosition -win $_nWave2 {("G1/G2" 12)}
wvSetPosition -win $_nWave2 {("G1/G2" 12)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1" {/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 10 11 12 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 12)}
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1/G2" 12)}
wvSetPosition -win $_nWave2 {("G1/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2" 10)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 21 22 )} 
wvSelectSignal -win $_nWave2 {( "G1" 20 21 22 )} 
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1/G2" 13)}
wvSetPosition -win $_nWave2 {("G1/G2" 12)}
wvSetPosition -win $_nWave2 {("G1/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1/G2" 14 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 16 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 16)}
wvSetPosition -win $_nWave2 {("G1/G2" 15)}
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2" 17)}
wvSetPosition -win $_nWave2 {("G1/G2" 17)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1/G2" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 17 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 3 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 4 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 21)}
wvSetPosition -win $_nWave2 {("G1/G2" 20)}
wvSetPosition -win $_nWave2 {("G1/G2" 19)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2" 22)}
wvSetPosition -win $_nWave2 {("G1/G2" 22)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSelectGroup -win $_nWave2 {G2}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3805876041.370869 3901206269.767442
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3842339562.023406 3879678207.172615
wvZoom -win $_nWave2 3863019778.583608 3863728161.692314
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3863360530.800529 3863474114.873039
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1/G2" 22 )} 
wvSetCursor -win $_nWave2 3863395217.735495 -snap {("G2" 22)}
wvSetCursor -win $_nWave2 3863400083.638234 -snap {("G2" 20)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 4 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/clkgen1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 6 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 6 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G1/G2/G2/G2}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 )} 
wvSetCursor -win $_nWave2 3863429974.183631 -snap {("G2" 6)}
wvSelectSignal -win $_nWave2 {( "G1/G2" 24 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 23 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 24 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 25 )} 
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2" 23)}
wvSetPosition -win $_nWave2 {("G1/G2" 24)}
wvSetPosition -win $_nWave2 {("G1/G2" 23)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 10)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3863389656.703793 -snap {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 12 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSetCursor -win $_nWave2 3863409954.469505 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863429557.106254 -snap {("G2" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3823369040.601822 3909925386.834381
wvZoom -win $_nWave2 3862939169.509030 3864157526.891740
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoom -win $_nWave2 3863383564.245900 3863418608.797300
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3863389728.140441 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 3863409974.197064 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 3863389899.717193 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 3863430048.676936 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863409631.043562 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863390071.293943 -snap {("G2" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3863430048.676936 -snap {("G2" 12)}
wvSetCursor -win $_nWave2 3863409631.043562 -snap {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 24 )} 
wvSetCursor -win $_nWave2 3863390242.870695 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863409631.043562 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863390071.293943 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863409631.043562 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863390414.447446 -snap {("G2" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/clk} \
{/tb/uut/r_next_state\[1:0\]} \
{/tb/uut/r_state\[1:0\]} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 6 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/clk} \
{/tb/uut/r_next_state\[1:0\]} \
{/tb/uut/r_state\[1:0\]} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 6 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 3863409974.197064 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863389728.140441 -snap {("G2" 4)}
wvSelectGroup -win $_nWave2 {G2}
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3863409631.043562 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863429877.100185 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863450123.156808 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469682.906427 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 )} 
wvSetCursor -win $_nWave2 3863450123.156808 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 3863469339.752925 -snap {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 26 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 27 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 26 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 27 )} 
wvSetCursor -win $_nWave2 3863449780.003306 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469511.329676 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863450637.887062 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469682.906427 -snap {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 )} 
wvSetCursor -win $_nWave2 3863480149.088241 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863470197.636680 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863489585.809548 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469682.906427 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863449608.426555 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469511.329676 -snap {("G2" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 3863450466.310310 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469511.329676 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863450466.310310 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863430563.407189 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863449780.003306 -snap {("G2" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3863469511.329676 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863449951.580057 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863469339.752925 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863390242.870695 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863411003.657571 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863430391.830439 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863449436.849804 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 3863470026.059929 -snap {("G2" 4)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
debReload
debReload
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/clk} \
{/tb/uut/r_next_state\[1:0\]} \
{/tb/uut/r_state\[1:0\]} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
{/tb/clk} \
{/tb/uut/r_next_state\[1:0\]} \
{/tb/uut/r_state\[1:0\]} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/uut/UART1/RFIFO\[0:3\]} \
{/tb/uut/UART1/rx_head\[1:0\]} \
{/tb/uut/UART1/rx_tail\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2/G2" 8)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 10)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 13)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 14)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 15)}
wvSetPosition -win $_nWave2 {("G1/G2" 26)}
wvSetPosition -win $_nWave2 {("G1/G2" 27)}
wvSetPosition -win $_nWave2 {("G1/G2" 28)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 28)}
wvSelectGroup -win $_nWave2 {G2}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 3863509505.869664 -snap {("G2" 4)}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 3863454601.309330 -snap {("G2" 10)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 80664059.810282
wvZoom -win $_nWave2 0.000000 296196.058055
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 3 4 )} 
wvScrollUp -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 4 )} 
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 8)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 3 4 )} 
wvSelectGroup -win $_nWave2 {G1/G2/G2/G2}
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1/G2" 27 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 27)}
wvSetPosition -win $_nWave2 {("G1/G2" 26)}
wvSetPosition -win $_nWave2 {("G1/G2" 24)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 13)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 12)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 11)}
wvSetPosition -win $_nWave2 {("G1/G2/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 8)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 8)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 1)}
wvSetPosition -win $_nWave2 {("G1/G2" 2)}
wvSetPosition -win $_nWave2 {("G1/G2" 3)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 4)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvSelectGroup -win $_nWave2 {G1/G2/G2}
wvSetPosition -win $_nWave2 {("G1/G2/G2" 0)}
wvSetPosition -win $_nWave2 {("G1/G2" 10)}
wvSetPosition -win $_nWave2 {("G1/G2" 9)}
wvSetPosition -win $_nWave2 {("G1/G2" 8)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 3 )} 
wvSelectGroup -win $_nWave2 {G1/G2/G2}
wvSelectSignal -win $_nWave2 {( "G1/G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 5 )} 
wvExpandBus -win $_nWave2 {("G1/G2" 5)}
wvScrollUp -win $_nWave2 11
wvSelectSignal -win $_nWave2 {( "G1/G2" 5 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvCollapseBus -win $_nWave2 {("G1/G2" 5)}
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 6167134027.313341 -snap {("G2" 3)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1/G2" 20 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 20 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 11853050251.988968 -snap {("G2" 20)}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 7 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 2 7 )} 
wvSelectGroup -win $_nWave2 {G1/G2/G2/G2}
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 8 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 7 8 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 6 7 8 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 4 5 6 7 8 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1/G2" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 6 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 6 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 6)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 4
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvGetSignalSetScope -win $_nWave2 "/tb/uut/UART1"
wvGetSignalSetScope -win $_nWave2 "/tb/uut"
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
{/tb/uut/uart_tx} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
{/tb/uut/uart_tx} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 7 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 7)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 12700022879.995924 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 11867716444.680746 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 15329304574.993782 -snap {("G2" 17)}
wvSetCursor -win $_nWave2 11879082744.017651 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 12748054661.064774 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 13620693126.285091 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 14445666465.253880 -snap {("G2" 7)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 11868083099.498066 -snap {("G2" 7)}
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 12718722275.679216 -snap {("G2" 2)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1/G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2/G2" 1 )} 
wvSelectAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 5
wvSelectGroup -win $_nWave2 {G2}
wvScrollUp -win $_nWave2 5
wvSelectGroup -win $_nWave2 {G1/G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
{/tb/uut/uart_tx} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 8 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tb/clk} \
{/tb/rst_n} \
{/tb/s_axi_awaddr\[31:0\]} \
{/tb/s_axi_awready} \
{/tb/s_axi_awvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" \
{/tb/s_axi_wdata\[31:0\]} \
{/tb/s_axi_wready} \
{/tb/s_axi_wstrb\[3:0\]} \
{/tb/s_axi_wvalid} \
{/tb/uut/UART_FIFO_CTRL\[31:0\]} \
{/tb/uut/uart_clk} \
{/tb/uut/uart_tx} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
{/tb/s_axi_rdata\[31:0\]} \
{/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" \
{/tb/s_axi_bready} \
{/tb/s_axi_bresp\[1:0\]} \
{/tb/s_axi_bvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2/G2" \
}
wvAddSignal -win $_nWave2 -group {"G1/G2/G2" {/tb/s_axi_rready} \
{/tb/s_axi_rresp\[1:0\]} \
{/tb/s_axi_rvalid} \
}
wvAddSignal -win $_nWave2 -group {"G1/G2" {/tb/uut/UART1/TFIFO\[0:3\]} \
{/tb/uut/UART1/tx_head\[1:0\]} \
{/tb/uut/UART1/tx_tail\[1:0\]} \
{/tb/uut/w_next_state\[2:0\]} \
{/tb/uut/w_state\[2:0\]} \
{/tb/s_axi_araddr\[31:0\]} \
{/tb/s_axi_arready} \
{/tb/s_axi_arvalid} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1/G2" 8 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave2 {("G1/G2" 14)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 3033325439.216646 3270303989.155447
wvZoom -win $_nWave2 3166897804.267184 3170378517.362981
wvZoom -win $_nWave2 3168944906.644638 3169132362.429479
wvSelectSignal -win $_nWave2 {( "G1/G2" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1/G2" 11 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 3168988156.846500 -snap {("G2" 5)}
debExit
