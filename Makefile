LLVMCNFG := $(shell llvm-config --cxxflags --ldflags --system-libs --libs core orcjit native)

.PHONY: all
all:
	clang++ -g toy.cpp $(LLVMCNFG) -O0 -o toy

.PHONY: clean
clean:
	rm -f toy