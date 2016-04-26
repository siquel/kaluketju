UNAME := $(shell uname)
ifeq ($(UNAME), $(filter $(UNAME), Linux))
	OS=linux
else
	OS=windows
endif

GENIE=tools/bin/$(OS)/genie

all:
	$(GENIE) vs2013
	$(GENIE) vs2015
	$(GENIE) --gcc=linux-gcc gmake
	$(GENIE) --gcc=linux-clang gmake

.build/projects/vs2013:
	$(GENIE) vs2013
.build/projects/vs2015:
	$(GENIE) vs2015
.build/projects/gmake-linux:
	$(GENIE) --gcc=linux-gcc gmake
.build/projects/gmake-linux-clang:
	$(GENIE) --gcc=linux-clang gmake

.PHONY: clean
clean:
	@echo Cleaning..
	-@rm -rf .build