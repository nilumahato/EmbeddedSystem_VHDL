all: result.vcd

result.vcd: upCounter.vhdl upCountertest.vhdl
	ghdl -a upCounter.vhdl
	ghdl -a upCountertest.vhdl
	ghdl -e up_counter_tb
	ghdl -r up_counter_tb --vcd=result.vcd --stop-time=2000ns

clean:
	rm -rf result.vcd work-obj93.cf
