all: result.vcd

result.vcd: onetoeight.vhdl onetoeight_tb.vhdl
	ghdl -a onetoeight.vhdl
	ghdl -a onetoeight_tb.vhdl
	ghdl -e onetoeight_tb
	ghdl -r onetoeight_tb --vcd=result.vcd --stop-time=10us

clean:
	rm -rf result.vcd
