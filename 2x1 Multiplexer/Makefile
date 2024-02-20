all: result.vcd
result.vcd:	twotoone_mux.vhdl	twotoone_mux_tb.vhdl
	ghdl	-a	-fsynopsys	twotoone_mux.vhdl
	ghdl	-a	-fsynopsys	twotoone_mux_tb.vhdl
	ghdl	-e	-fsynopsys	testbench
	ghdl	-r	-fsynopsys	testbench	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd
