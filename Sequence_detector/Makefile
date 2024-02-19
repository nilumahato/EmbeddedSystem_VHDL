all: result.vcd

result.vcd: Sequence_detector.vhdl sequence_det_tb.vhdl
	ghdl -a Sequence_detector.vhdl
	ghdl -a sequence_det_tb.vhdl
	ghdl -e SEQ_DET_TB
	ghdl -r SEQ_DET_TB --vcd=result.vcd --stop-time=5us

clean:
	rm -rf result.vcd
