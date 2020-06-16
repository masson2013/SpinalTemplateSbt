
executables := temp

all: code test

code:
	sbt "runMain mylib.MyTopLevelVerilog"

test:
	sbt "runMain mylib.MyTopLevelSim"

clean:
	rm -f *.o *.cpp *.h $(executables) *.v *.vcd *.json *.fir .DS_Store verbose.log
	rm -rf project/project project/target simWorkspace target tmp
