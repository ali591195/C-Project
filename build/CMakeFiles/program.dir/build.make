# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Hunani Tradings\C Project"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Hunani Tradings\C Project\build"

# Include any dependencies generated for this target.
include CMakeFiles/program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/program.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/program.dir/flags.make

CMakeFiles/program.dir/main.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/main.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/main.c.obj: C:/Users/Hunani\ Tradings/C\ Project/main.c
CMakeFiles/program.dir/main.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/program.dir/main.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/main.c.obj -MF CMakeFiles\program.dir\main.c.obj.d -o CMakeFiles\program.dir\main.c.obj -c "C:\Users\Hunani Tradings\C Project\main.c"

CMakeFiles/program.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/main.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\main.c" > CMakeFiles\program.dir\main.c.i

CMakeFiles/program.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/main.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\main.c" -o CMakeFiles\program.dir\main.c.s

CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj: C:/Users/Hunani\ Tradings/C\ Project/modules/sources/utility/clearScreen.c
CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj -MF CMakeFiles\program.dir\modules\sources\utility\clearScreen.c.obj.d -o CMakeFiles\program.dir\modules\sources\utility\clearScreen.c.obj -c "C:\Users\Hunani Tradings\C Project\modules\sources\utility\clearScreen.c"

CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\modules\sources\utility\clearScreen.c" > CMakeFiles\program.dir\modules\sources\utility\clearScreen.c.i

CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\modules\sources\utility\clearScreen.c" -o CMakeFiles\program.dir\modules\sources\utility\clearScreen.c.s

CMakeFiles/program.dir/modules/sources/startup/start.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/modules/sources/startup/start.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/modules/sources/startup/start.c.obj: C:/Users/Hunani\ Tradings/C\ Project/modules/sources/startup/start.c
CMakeFiles/program.dir/modules/sources/startup/start.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/program.dir/modules/sources/startup/start.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/modules/sources/startup/start.c.obj -MF CMakeFiles\program.dir\modules\sources\startup\start.c.obj.d -o CMakeFiles\program.dir\modules\sources\startup\start.c.obj -c "C:\Users\Hunani Tradings\C Project\modules\sources\startup\start.c"

CMakeFiles/program.dir/modules/sources/startup/start.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/modules/sources/startup/start.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\modules\sources\startup\start.c" > CMakeFiles\program.dir\modules\sources\startup\start.c.i

CMakeFiles/program.dir/modules/sources/startup/start.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/modules/sources/startup/start.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\modules\sources\startup\start.c" -o CMakeFiles\program.dir\modules\sources\startup\start.c.s

CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj: C:/Users/Hunani\ Tradings/C\ Project/modules/sources/startup/introduction.c
CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj -MF CMakeFiles\program.dir\modules\sources\startup\introduction.c.obj.d -o CMakeFiles\program.dir\modules\sources\startup\introduction.c.obj -c "C:\Users\Hunani Tradings\C Project\modules\sources\startup\introduction.c"

CMakeFiles/program.dir/modules/sources/startup/introduction.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/modules/sources/startup/introduction.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\modules\sources\startup\introduction.c" > CMakeFiles\program.dir\modules\sources\startup\introduction.c.i

CMakeFiles/program.dir/modules/sources/startup/introduction.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/modules/sources/startup/introduction.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\modules\sources\startup\introduction.c" -o CMakeFiles\program.dir\modules\sources\startup\introduction.c.s

CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj: C:/Users/Hunani\ Tradings/C\ Project/modules/sources/utility/colorText.c
CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj -MF CMakeFiles\program.dir\modules\sources\utility\colorText.c.obj.d -o CMakeFiles\program.dir\modules\sources\utility\colorText.c.obj -c "C:\Users\Hunani Tradings\C Project\modules\sources\utility\colorText.c"

CMakeFiles/program.dir/modules/sources/utility/colorText.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/modules/sources/utility/colorText.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\modules\sources\utility\colorText.c" > CMakeFiles\program.dir\modules\sources\utility\colorText.c.i

CMakeFiles/program.dir/modules/sources/utility/colorText.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/modules/sources/utility/colorText.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\modules\sources\utility\colorText.c" -o CMakeFiles\program.dir\modules\sources\utility\colorText.c.s

CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj: CMakeFiles/program.dir/flags.make
CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj: CMakeFiles/program.dir/includes_C.rsp
CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj: C:/Users/Hunani\ Tradings/C\ Project/modules/sources/stages/stageOne.c
CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj: CMakeFiles/program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj -MF CMakeFiles\program.dir\modules\sources\stages\stageOne.c.obj.d -o CMakeFiles\program.dir\modules\sources\stages\stageOne.c.obj -c "C:\Users\Hunani Tradings\C Project\modules\sources\stages\stageOne.c"

CMakeFiles/program.dir/modules/sources/stages/stageOne.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/program.dir/modules/sources/stages/stageOne.c.i"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Hunani Tradings\C Project\modules\sources\stages\stageOne.c" > CMakeFiles\program.dir\modules\sources\stages\stageOne.c.i

CMakeFiles/program.dir/modules/sources/stages/stageOne.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/program.dir/modules/sources/stages/stageOne.c.s"
	C:\msys64\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Hunani Tradings\C Project\modules\sources\stages\stageOne.c" -o CMakeFiles\program.dir\modules\sources\stages\stageOne.c.s

# Object files for target program
program_OBJECTS = \
"CMakeFiles/program.dir/main.c.obj" \
"CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj" \
"CMakeFiles/program.dir/modules/sources/startup/start.c.obj" \
"CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj" \
"CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj" \
"CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj"

# External object files for target program
program_EXTERNAL_OBJECTS =

program.exe: CMakeFiles/program.dir/main.c.obj
program.exe: CMakeFiles/program.dir/modules/sources/utility/clearScreen.c.obj
program.exe: CMakeFiles/program.dir/modules/sources/startup/start.c.obj
program.exe: CMakeFiles/program.dir/modules/sources/startup/introduction.c.obj
program.exe: CMakeFiles/program.dir/modules/sources/utility/colorText.c.obj
program.exe: CMakeFiles/program.dir/modules/sources/stages/stageOne.c.obj
program.exe: CMakeFiles/program.dir/build.make
program.exe: CMakeFiles/program.dir/compiler_depend.ts
program.exe: C:/msys64/mingw64/lib/libncursesw.dll.a
program.exe: CMakeFiles/program.dir/linkLibs.rsp
program.exe: CMakeFiles/program.dir/objects1.rsp
program.exe: CMakeFiles/program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\Hunani Tradings\C Project\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable program.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\program.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/program.dir/build: program.exe
.PHONY : CMakeFiles/program.dir/build

CMakeFiles/program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\program.dir\cmake_clean.cmake
.PHONY : CMakeFiles/program.dir/clean

CMakeFiles/program.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Hunani Tradings\C Project" "C:\Users\Hunani Tradings\C Project" "C:\Users\Hunani Tradings\C Project\build" "C:\Users\Hunani Tradings\C Project\build" "C:\Users\Hunani Tradings\C Project\build\CMakeFiles\program.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/program.dir/depend

