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

# Utility rule file for install_pcm.

# Include any custom commands dependencies for this target.
include CMakeFiles/install_pcm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/install_pcm.dir/progress.make

CMakeFiles/install_pcm:
	mkdir -p /usr/local/lib
	cp -up *_rdict.pcm /usr/local/lib

install_pcm: CMakeFiles/install_pcm
install_pcm: CMakeFiles/install_pcm.dir/build.make
.PHONY : install_pcm

# Rule to build all files generated by this target.
CMakeFiles/install_pcm.dir/build: install_pcm
.PHONY : CMakeFiles/install_pcm.dir/build

CMakeFiles/install_pcm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/install_pcm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/install_pcm.dir/clean

CMakeFiles/install_pcm.dir/depend:
	cd /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/src /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work /seaquest/users/xinlongl/projects/z_vtx_sensitivity/DarkQuest/e1039-analysis/SimHits_muongun_std/work/CMakeFiles/install_pcm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/install_pcm.dir/depend

