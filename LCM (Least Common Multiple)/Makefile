all: result.vcd

result.vcd: LCM.vhdl LCM_tb.vhdl
	ghdl -a LCM.vhdl
	ghdl -a LCM_tb.vhdl
	ghdl -e lcm_tb
	ghdl -r lcm_tb --vcd=result.vcd --stop-time=5us;

clean:
	rm -rf result.vcd
