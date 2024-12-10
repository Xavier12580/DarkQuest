# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work

# Include any dependencies generated for this target.
include CMakeFiles/sim_ana.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sim_ana.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sim_ana.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim_ana.dir/flags.make

sim_ana_Dict.cc: /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.h
sim_ana_Dict.cc: /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.h
sim_ana_Dict.cc: /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/LinkDef.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating sim_ana_Dict.cc"
	rootcint -f sim_ana_Dict.cc -noIncludePaths -inlineInputHeader -c -p -I/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src -I/include /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.h /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.h /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/LinkDef.h

CMakeFiles/sim_ana.dir/DoEmbedding.cc.o: CMakeFiles/sim_ana.dir/flags.make
CMakeFiles/sim_ana.dir/DoEmbedding.cc.o: /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.cc
CMakeFiles/sim_ana.dir/DoEmbedding.cc.o: CMakeFiles/sim_ana.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sim_ana.dir/DoEmbedding.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim_ana.dir/DoEmbedding.cc.o -MF CMakeFiles/sim_ana.dir/DoEmbedding.cc.o.d -o CMakeFiles/sim_ana.dir/DoEmbedding.cc.o -c /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.cc

CMakeFiles/sim_ana.dir/DoEmbedding.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim_ana.dir/DoEmbedding.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.cc > CMakeFiles/sim_ana.dir/DoEmbedding.cc.i

CMakeFiles/sim_ana.dir/DoEmbedding.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim_ana.dir/DoEmbedding.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/DoEmbedding.cc -o CMakeFiles/sim_ana.dir/DoEmbedding.cc.s

CMakeFiles/sim_ana.dir/SimAna.cc.o: CMakeFiles/sim_ana.dir/flags.make
CMakeFiles/sim_ana.dir/SimAna.cc.o: /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.cc
CMakeFiles/sim_ana.dir/SimAna.cc.o: CMakeFiles/sim_ana.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sim_ana.dir/SimAna.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim_ana.dir/SimAna.cc.o -MF CMakeFiles/sim_ana.dir/SimAna.cc.o.d -o CMakeFiles/sim_ana.dir/SimAna.cc.o -c /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.cc

CMakeFiles/sim_ana.dir/SimAna.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim_ana.dir/SimAna.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.cc > CMakeFiles/sim_ana.dir/SimAna.cc.i

CMakeFiles/sim_ana.dir/SimAna.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim_ana.dir/SimAna.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src/SimAna.cc -o CMakeFiles/sim_ana.dir/SimAna.cc.s

CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o: CMakeFiles/sim_ana.dir/flags.make
CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o: sim_ana_Dict.cc
CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o: CMakeFiles/sim_ana.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o -MF CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o.d -o CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o -c /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/sim_ana_Dict.cc

CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/sim_ana_Dict.cc > CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.i

CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/sim_ana_Dict.cc -o CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.s

# Object files for target sim_ana
sim_ana_OBJECTS = \
"CMakeFiles/sim_ana.dir/DoEmbedding.cc.o" \
"CMakeFiles/sim_ana.dir/SimAna.cc.o" \
"CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o"

# External object files for target sim_ana
sim_ana_EXTERNAL_OBJECTS =

libsim_ana.so: CMakeFiles/sim_ana.dir/DoEmbedding.cc.o
libsim_ana.so: CMakeFiles/sim_ana.dir/SimAna.cc.o
libsim_ana.so: CMakeFiles/sim_ana.dir/sim_ana_Dict.cc.o
libsim_ana.so: CMakeFiles/sim_ana.dir/build.make
libsim_ana.so: CMakeFiles/sim_ana.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libsim_ana.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim_ana.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim_ana.dir/build: libsim_ana.so
.PHONY : CMakeFiles/sim_ana.dir/build

CMakeFiles/sim_ana.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim_ana.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim_ana.dir/clean

CMakeFiles/sim_ana.dir/depend: sim_ana_Dict.cc
	cd /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles/sim_ana.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim_ana.dir/depend

