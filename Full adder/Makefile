all: result.vcd

result.vcd: FULLADDER.vhdl FULLADDER_tb.vhdl
	ghdl -a FULLADDER.vhdl
	ghdl -a FULLADDER_tb.vhdl
	ghdl -e fa_test
	ghdl -r fa_test --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
