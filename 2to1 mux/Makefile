all: result.vcd

result.vcd: 2to1mux.vhdl 2to1muxtest.vhdl
	ghdl -a -fsynopsys 2to1mux.vhdl
	ghdl -a -fsynopsys 2to1muxtest.vhdl
	ghdl -e -fsynopsys multiplexer_tb
	ghdl -r -fsynopsys multiplexer_tb --vcd=result.vcd --stop-time=20us

clean:
	rm -rf result.vcd
