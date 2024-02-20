all: result.vcd

result.vcd: BCD.vhdl BCD_tb.vhdl
	ghdl -a BCD.vhdl
	ghdl -a BCD_tb.vhdl
	ghdl -e BCD_tb
	ghdl -r BCD_tb --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
