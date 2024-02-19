all: result.vcd

result.vcd: LowCD.vhdl lcm_tb.vhdl
	ghdl -a LowCD.vhdl
	ghdl -a lcm_tb.vhdl
	ghdl -e lcm_tb
	ghdl -r lcm_tb --vcd=result.vcd --stop-time=5us;

clean:
	rm -rf result.vcd
