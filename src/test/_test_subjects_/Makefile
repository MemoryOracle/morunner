#### PROJECT SETTINGS ####
# Compiler used
CXX ?= g++
# Extension of source files used in the project
SRC_EXT = cpp
# Path to the source directory, relative to the makefile
SRC_PATH = src/main
# General compiler flags
COMPILE_FLAGS = -std=gnu++14 -Wall -Wextra -ggdb3
# Additional debug-specific flags
define DCOMPILE_FLAGS 
-D DEBUG \
-O0 \
-dA \
-dH \
-dP \
-dp \
-fchkp-check-incomplete-type \
-fchkp-check-read \
-fchkp-check-write \
-fchkp-first-field-has-own-bounds \
-fchkp-instrument-calls \
-fchkp-narrow-bounds \
-fchkp-narrow-to-innermost-array \
-fchkp-store-bounds \
-fchkp-treat-zero-dynamic-size-as-infinite \
-fchkp-use-static-bounds \
-fchkp-use-static-const-bounds \
-fchkp-use-wrappers \
-fdump-tree-all-all \
-fdump-tree-gimple \
-femit-class-debug-always \
-fno-chkp-use-fast-string-functions \
-fno-chkp-use-nochk-string-functions \
-fno-eliminate-unused-debug-symbols \
-fno-eliminate-unused-debug-types \
-fno-inline-functions \
-fno-sanitize-recover \
-freport-bug \
-gdwarf-4 \
-ggdb3 \
-ggnu-pubnames \
-gno-split-dwarf \
-gno-strict-dwarf \
-grecord-gcc-switches \
-fsanitize=alignment \
-fsanitize=bool \
-fsanitize=bounds \
-fsanitize=enum \
-fsanitize=float-cast-overflow \
-fsanitize=float-divide-by-zero \
-fsanitize=integer-divide-by-zero \
-fsanitize=nonnull-attribute \
-fsanitize=null \
-fsanitize=object-size \
-fsanitize=return \
-fsanitize=returns-nonnull-attribute \
-fsanitize=shift \
-fsanitize=signed-integer-overflow \
-fsanitize=undefined \
-fsanitize=unreachable \
-fsanitize=vla-bound \
-fsanitize=vptr \
-fprofile-arcs \

endef

# Add additional include paths
INCLUDES = -I $(SRC_PATH)/
# Additional debug-specific linker settings
DLINK_FLAGS = $(DCOMPILE_FLAGS) 
#### END PROJECT SETTINGS ####

# Generally should not need to edit below this line

# Function used to check variables. Use on the command line:
# make print-VARNAME
# Useful for debugging and adding features
print-%: ; @echo $*=$($*)

# Shell used in this makefile
# bash is used for 'echo -en'
SHELL = /bin/bash
# Clear built-in rules
.SUFFIXES:

# Verbose option, to output compile and link commands
export V := true
export CMD_PREFIX := @
ifeq ($(V),true)
	CMD_PREFIX := 
endif

# Combine compiler and linker flags
export CXXFLAGS := $(CXXFLAGS) $(COMPILE_FLAGS) $(DCOMPILE_FLAGS)
export LDFLAGS := $(LDFLAGS) $(LINK_FLAGS) $(DLINK_FLAGS)

# Build and output paths
export BUILD_PATH := build
export BIN_PATH := bin

# Find all source files in the source directory, sorted by most
# recently modified
SOURCES = $(shell find $(SRC_PATH)/ -name '*.$(SRC_EXT)' -printf '%T@\t%p\n' \
					| sort -k 1nr | cut -f2-)
# fallback in case the above fails
rwildcard = $(foreach d, $(wildcard $1*), $(call rwildcard,$d/,$2) \
						$(filter $(subst *,%,$2), $d))
ifeq ($(SOURCES),)
	SOURCES := $(call rwildcard, $(SRC_PATH)/, *.$(SRC_EXT))
endif

# Set the object file names, with the source directory stripped
# from the path, and the build path prepended in its place
OBJECTS = $(SOURCES:$(SRC_PATH)/%.$(SRC_EXT)=$(BUILD_PATH)/%.o)
DRIVERS = $(OBJECTS:$(BUILD_PATH)/%.o=$(BIN_PATH)/%.test)
# Set the dependency files that will be used to add header dependencies
DEPS = $(OBJECTS:.o=.d)

# Main rule, checks the executable and symlinks to the output

all: $(DRIVERS)
	@echo "Building all"

# Source file rules
# Objfile rules
$(BIN_PATH)/%.test: $(BUILD_PATH)/%.o
	@echo "Linking: $< -> $@.test"
	$(CMD_PREFIX)$(CXX) $(CXXFLAGS) $(INCLUDES) -MP -MMD $< -o $@

$(BUILD_PATH)/%.o: $(SRC_PATH)/%.$(SRC_EXT)
	@echo "Compiling: $< -> $@"
	$(CMD_PREFIX)$(CXX) $(CXXFLAGS) $(INCLUDES) -MP -MMD -c $< -o $@

clean:
	@$(RM) -r $(BIN_PATH)
	@$(RM) -r $(BUILD_PATH)
	@mkdir $(BIN_PATH)
	@mkdir $(BUILD_PATH)
