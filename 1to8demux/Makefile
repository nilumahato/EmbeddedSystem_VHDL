all: result.vcd

result.vcd: 1to8demux.vhdl 1to8demuxtest.vhdl
	ghdl -a -fsynopsys 1to8demux.vhdl
	ghdl -a -fsynopsys 1to8demuxtest.vhdl
	ghdl -e -fsynopsys demultiplexer_tb
	ghdl -r -fsynopsys demultiplexer_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
