# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/cmake/dsPIC33a_test/default

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default

# Include any dependencies generated for this target.
include CMakeFiles/dsPIC33a_test_default_default.elf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dsPIC33a_test_default_default.elf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dsPIC33a_test_default_default.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dsPIC33a_test_default_default.elf.dir/flags.make

# Object files for target dsPIC33a_test_default_default.elf
dsPIC33a_test_default_default_elf_OBJECTS =

# External object files for target dsPIC33a_test_default_default.elf
dsPIC33a_test_default_default_elf_EXTERNAL_OBJECTS = \
"C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default/CMakeFiles/dsPIC33a_test_default_default_XC_DSC_compile.dir/C_/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/main.c.o"

dsPIC33a_test_default_default.elf: CMakeFiles/dsPIC33a_test_default_default_XC_DSC_compile.dir/C_/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/main.c.o
dsPIC33a_test_default_default.elf: CMakeFiles/dsPIC33a_test_default_default.elf.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking C executable dsPIC33a_test_default_default.elf"
	"c:/Program Files/Microchip/xc-dsc/v3.20/bin/xc-dsc-gcc.exe" -g -mcpu=33AK128MC106 -Wl,--script=p33AK128MC106.gld,--local-stack,--defsym=__MPLAB_BUILD=1,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,--report-mem,--memorysummary,memoryfile.xml -mdfp=C:/Users/Carvalhaes/.mchp_packs/Microchip/dsPIC33AK-MC_DFP/1.0.33/xc16 $(dsPIC33a_test_default_default_elf_OBJECTS) $(dsPIC33a_test_default_default_elf_EXTERNAL_OBJECTS) -o dsPIC33a_test_default_default.elf
	"C:/Program Files/CMake/bin/cmake.exe" -E make_directory C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/cmake/dsPIC33a_test/default/../../../out/dsPIC33a_test
	"C:/Program Files/CMake/bin/cmake.exe" -E copy dsPIC33a_test_default_default.elf C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/cmake/dsPIC33a_test/default/../../../out/dsPIC33a_test/default.elf

# Rule to build all files generated by this target.
CMakeFiles/dsPIC33a_test_default_default.elf.dir/build: dsPIC33a_test_default_default.elf
.PHONY : CMakeFiles/dsPIC33a_test_default_default.elf.dir/build

CMakeFiles/dsPIC33a_test_default_default.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dsPIC33a_test_default_default.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dsPIC33a_test_default_default.elf.dir/clean

CMakeFiles/dsPIC33a_test_default_default.elf.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/cmake/dsPIC33a_test/default C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/cmake/dsPIC33a_test/default C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default C:/Users/Carvalhaes/Desktop/dsPICtest/dsPIC33a_test/_build/dsPIC33a_test/default/CMakeFiles/dsPIC33a_test_default_default.elf.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/dsPIC33a_test_default_default.elf.dir/depend

