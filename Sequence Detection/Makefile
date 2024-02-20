all:	result.vcd
result.vcd:	detector.vhdl	detector_tb.vhdl
	ghdl	-a	-fsynopsys	detector.vhdl
	ghdl	-a	-fsynopsys	detector_tb.vhdl
	ghdl	-e	-fsynopsys  sd_tb
	ghdl	-r	-fsynopsys	sd_tb 	--vcd=result.vcd	--stop-time=20us
clean:
	rm	-rf	result.vcd
