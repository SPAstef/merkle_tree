# Enables debug mode
DEBUG := 1
# Override default compiler and flags
OVERRIDE_DEFAULT_CXX := 1
# Enables Intel Compiler
INTEL_COMPILER := 0
# Enables CUDA modules
CUDA_ENABLE := 0
# Measure performance in tests
MEASURE_PERFORMANCE := 0

LIBNAME := libabr

TARGETS_ONLYTEST := sha256
TARGETS_TEST :=
TARGETS_NOTEST := 
CUDA_TARGETS := 


ifeq ($(ONEAPI_ROOT), )
    INTEL_COMPILER := 0
endif

ifeq ($(CUDA_PATH), )
    ifeq ($(shell which nvcc), )
        CUDA_ENABLE := 0
    endif
endif

ifeq ($(CXX), )
    CXX := c++
    CXXFLAGS := -O3 -march=native -std=c++11
endif

ifeq ($(OVERRIDE_DEFAULT_CXX), 1)
    CXX := c++
    CXXFLAGS := -O3 -march=native -std=c++11
endif

ifeq ($(IXX), )
    ifeq ($(OS), Windows_NT)
        IXX := icx
        IXXFLAGS := -O3 -QxHOST -Qopenmp -nologo -W4 -Qstd=c++20
    else
        IXX := icpx
        IXXFLAGS := -O3 -xHOST -fopenmp -Wall -std=c++20
    endif
endif

ifeq ($(INTEL_COMPILER), 1)
    CXX := $(IXX)
    CXXFLAGS := $(IXXFLAGS)
endif

ifeq ($(NVCC), )
    NVCC := nvcc
    NVCCFLAGS := -O3 -arch=compute_37 -code=compute_37 -std=c++17
endif

ifeq ($(DEBUG), 1)
    ifeq ($(OS), Windows_NT)
        CXXFLAGS += -debug:inline-debug-info
    else
        ifeq ($(INTEL_COMPILER), 1)
            CXXFLAGS += -debug inline-debug-info -O1
        else
            CXXFLAGS += -g -O1
        endif
    endif
    CXXFLAGS += -Wall
    NVCCFLAGS := -g -std=c++17 -arch=compute_61 -code=compute_61 -ccbin=/usr/local/cuda/bin/ -forward-unknown-opts -march=native
endif

TESTPATH := test
SRCPATH := src
SRC := $(wildcard $(SRCPATH)/*.cpp $(SRCPATH)/**/*.cpp)
NVSRC := $(wildcard $(SRCPATH)/*.cu $(SRCPATH)/**/*.cu)

INCPATH := include
INC := $(wildcard $(INCPATH)/*.h $(INCPATH)/**/*.h $(INCPATH)/*.hpp $(INCPATH)/**/*.hpp)
NVINC := $(wildcard $(INCPATH)/*.cuh $(INCPATH)/**/*.cuh)

BUILDPATH := build
BINPATH := bin
LIBPATH := lib

ifeq ($(OS), Windows_NT)
    AR := lib
    ARFLAGS := -nologo
    CXXFLAGS += -Qopenmp -QMMD -Fo:$(BUILDPATH)/
    NVCCFLAGS += -MD
    OEXT := obj
    LIBEXT := lib
    LIBOUTFLAGS := /out:
    ifeq ($(CUDA_ENABLE), 1)
        LDFLAGS := -link cudart.lib
    endif
    PDB := $(SRC:.c=.pdb)
    TARGETS_TEST_COMMAND := FOR %%%%i IN (*.exe) DO %%%%i
    MKDIR = if not exist $(1) mkdir $(1)
    RM = if exist $(1) del /F /Q $(1)
    MV = mv $(1) $(2)
else
    AR := ar
    ARFLAGS := r
    CXXFLAGS += -fopenmp
    ifeq ($(CUDA_ENABLE), 1)
        LDFLAGS := -lcudart
        ifneq ($(CUDALIB), )
            LDFLAGS += -L$(CUDALIB)
        endif
    endif
    OEXT := o
    LIBEXT := a
    PDB :=
    TARGETS_TEST_COMMAND := $(TARGETS_TEST:%=$$SCRIPTPATH/%;\n)$(TARGETS_ONLYTEST:%=$$SCRIPTPATH/%;\n)
    MKDIR = mkdir -p $(1)
    RM = rm -rf $(1)/*
    MV = mv $(1) $(2)/
    CP = cp $(1) $(2)/
endif

ifeq ($(CUDA_ENABLE), 1)
    CXXFLAGS += -DCUDA_ENABLE
endif

ifeq ($(MEASURE_PERFORMANCE), 1)
    CXXFLAGS += -DMEASURE_PERFORMANCE
endif

CXXFLAGS += -I$(INCPATH)
NVCCFLAGS += -I$(INCPATH)

SRCNAMES := $(notdir $(SRC))
OBJ := $(SRCNAMES:%.cpp=$(BUILDPATH)/%.$(OEXT))

NVSRCNAMES := $(notdir $(NVSRC))
NVOBJ := $(NVSRCNAMES:%.cu=$(BUILDPATH)/%.$(OEXT))

TARGETS := $(TARGETS_ONLYTEST) $(TARGETS_TEST) $(TARGETS_NOTEST)

LIBSNAMES := $(TARGETS_TEST) $(TARGETS_NOTEST)

ifeq ($(CUDA_ENABLE), 1)
    LIBSNAMES += $(CUDA_TARGETS)
endif


LIBS := $(LIBSNAMES:%=$(BUILDPATH)/%.$(OEXT))

DEP := $(OBJ:%.$(OEXT)=%.d) 
ifeq ($(CUDA_ENABLE), 1)
    DEP += $(NVOBJ:%.$(OEXT)=%.d)
endif

all: dirs testsuite $(TARGETS) library
    

clean:
	$(call RM,$(BUILDPATH))
	$(call RM,$(BINPATH))
	$(call RM,$(LIBPATH))


dirs:
	$(call MKDIR,$(BUILDPATH))
	$(call MKDIR,$(BINPATH))
	$(call MKDIR,$(LIBPATH))

ifeq ($(OS), Windows_NT)
testsuite:
	@echo @echo off > $(BINPATH)/test.bat
	@echo $(TARGETS_TEST_COMMAND) >> $(BINPATH)/test.bat
else
testsuite:
	@echo -e '#!/bin/sh\nSCRIPTPATH=$$(dirname "$$(readlink -f "$$0")")\n$(TARGETS_TEST_COMMAND)' > $(BINPATH)/test.sh
endif

library: $(TARGETS)
	$(AR) $(ARFLAGS) $(LIBOUTFLAGS)$(LIBPATH)/$(LIBNAME).$(LIBEXT) $(LIBS)


###################### BEGIN RULES ######################

sha256:  %: $(BUILDPATH)/test_%.$(OEXT)
	$(CXX) $(CXXFLAGS) $^ -o $(BINPATH)/$@ $(LDFLAGS)

sha512:  %: $(BUILDPATH)/test_%.$(OEXT)
	$(CXX) $(CXXFLAGS) $^ -o $(BINPATH)/$@ $(LDFLAGS)


ifeq ($(CUDA_ENABLE), 1)

endif

###################### END RULES ######################

-include $(DEP)

$(BUILDPATH)/test_%.$(OEXT): $(TESTPATH)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILDPATH)/%.$(OEXT): $(SRCPATH)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILDPATH)/%.$(OEXT): $(SRCPATH)/**/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

ifeq ($(CUDA_ENABLE), 1)
$(BUILDPATH)/%.$(OEXT): $(SRCPATH)/%.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@

$(BUILDPATH)/%.$(OEXT): $(SRCPATH)/**/%.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@
endif
