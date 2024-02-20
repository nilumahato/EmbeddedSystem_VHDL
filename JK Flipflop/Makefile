all: result.vcd

result.vcd: JK.vhdl JK_tb.vhdl
	ghdl -a JK.vhdl
	ghdl -a JK_tb.vhdl
	ghdl -e jk_tb
	ghdl -r jk_tb --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
