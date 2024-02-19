all: result.vcd

result.vcd: two-fourdecoder.vhdl 2to4_decoder_tb.vhdl
	ghdl -a two-fourdecoder.vhdl
	ghdl -a 2to4_decoder_tb.vhdl
	ghdl -e decoder_tb
	ghdl -r decoder_tb --vcd=result.vcd --stop-time=5us

clean: 
	rm -rf result.vcd
