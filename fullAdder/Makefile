all: result.vcd

result.vcd: FullAdder.vhdl full_add_tb.vhdl
	ghdl -a FullAdder.vhdl
	ghdl -a full_add_tb.vhdl
	ghdl -e FA_TEST
	ghdl -r FA_TEST --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
