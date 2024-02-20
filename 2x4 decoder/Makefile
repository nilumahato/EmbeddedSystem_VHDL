all: result.vcd

result.vcd: DECODER.vhdl DECODER_tb.vhdl
	ghdl -a DECODER.vhdl
	ghdl -a DECODER_tb.vhdl
	ghdl -e DECODER_tb
	ghdl -r DECODER_tb --vcd=result.vcd --stop-time=5us

clean: 
	rm -rf result.vcd
