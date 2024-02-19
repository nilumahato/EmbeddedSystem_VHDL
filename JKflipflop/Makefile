all: result.vcd

result.vcd: jk_flip_flop.vhdl jk_tb.vhdl
	ghdl -a jk_flip_flop.vhdl
	ghdl -a jk_tb.vhdl
	ghdl -e tb
	ghdl -r tb --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
