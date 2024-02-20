all:	result.vcd
result.vcd:	upcounter.vhdl	upcounter_test.vhdl
	ghdl	-a	-fsynopsys	upcounter.vhdl
	ghdl	-a	-fsynopsys	upcounter_test.vhdl
	ghdl	-e	-fsynopsys testbench
	ghdl	-r	-fsynopsys testbench	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd
