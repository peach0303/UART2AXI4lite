.PHONY:sim verdi clean

OUTPUT = tb

FILE_LIST_PATH := vfile.f

OPTION_VCS = -f $(FILE_LIST_PATH) -timescale=1ns/1ps +define+DUMP		\
			 -fsdb -R -full64 +vc +v2k -sverilog -debug_acc+all	\
			 -debug_region+cell+encrypt				\
			 -o ${OUTPUT} -l compile.log | tee  vcs.log &

OPTION_Verdi := -f $(FILE_LIST_PATH) -ssf *.fsdb &

sim:
	rm -rf ./csrc *.daidir *.log simv* *.key
	vcs $(OPTION_VCS)
# cd ./vcs && ./$(OUTPUT) -l run.log

verdi	:
	verdi $(OPTION_Verdi)

clean:
	rm -rf ./csrc *.daidir *.log simv* *.key
