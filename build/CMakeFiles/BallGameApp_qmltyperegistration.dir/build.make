# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /media/hlajungo/D/linux/repo/hello_qt/ball_game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/hlajungo/D/linux/repo/hello_qt/ball_game/build

# Utility rule file for BallGameApp_qmltyperegistration.

# Include any custom commands dependencies for this target.
include CMakeFiles/BallGameApp_qmltyperegistration.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BallGameApp_qmltyperegistration.dir/progress.make

CMakeFiles/BallGameApp_qmltyperegistration: ballgameapp_qmltyperegistrations.cpp
CMakeFiles/BallGameApp_qmltyperegistration: BallGame/BallGameApp.qmltypes

ballgameapp_qmltyperegistrations.cpp: qmltypes/BallGameApp_foreign_types.txt
ballgameapp_qmltyperegistrations.cpp: meta_types/qt6ballgameapp_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/qt6/libexec/qmltyperegistrar
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6core_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6qml_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6network_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6quick_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6gui_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6qmlmodels_none_metatypes.json
ballgameapp_qmltyperegistrations.cpp: /usr/lib/x86_64-linux-gnu/metatypes/qt6opengl_none_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/media/hlajungo/D/linux/repo/hello_qt/ball_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic QML type registration for target BallGameApp"
	/usr/lib/qt6/libexec/qmltyperegistrar --generate-qmltypes=/media/hlajungo/D/linux/repo/hello_qt/ball_game/build/BallGame/BallGameApp.qmltypes --import-name=BallGame --major-version=1 --minor-version=0 @/media/hlajungo/D/linux/repo/hello_qt/ball_game/build/qmltypes/BallGameApp_foreign_types.txt -o /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/ballgameapp_qmltyperegistrations.cpp /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/meta_types/qt6ballgameapp_metatypes.json
	/usr/bin/cmake -E make_directory /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/.generated
	/usr/bin/cmake -E touch /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/.generated/BallGameApp.qmltypes

BallGame/BallGameApp.qmltypes: ballgameapp_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate BallGame/BallGameApp.qmltypes

meta_types/qt6ballgameapp_metatypes.json.gen: /usr/lib/qt6/libexec/moc
meta_types/qt6ballgameapp_metatypes.json.gen: meta_types/BallGameApp_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/media/hlajungo/D/linux/repo/hello_qt/ball_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Running moc --collect-json for target BallGameApp"
	/usr/lib/qt6/libexec/moc -o /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/meta_types/qt6ballgameapp_metatypes.json.gen --collect-json @/media/hlajungo/D/linux/repo/hello_qt/ball_game/build/meta_types/BallGameApp_json_file_list.txt
	/usr/bin/cmake -E copy_if_different /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/meta_types/qt6ballgameapp_metatypes.json.gen /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/meta_types/qt6ballgameapp_metatypes.json

meta_types/qt6ballgameapp_metatypes.json: meta_types/qt6ballgameapp_metatypes.json.gen
	@$(CMAKE_COMMAND) -E touch_nocreate meta_types/qt6ballgameapp_metatypes.json

BallGameApp_qmltyperegistration: BallGame/BallGameApp.qmltypes
BallGameApp_qmltyperegistration: CMakeFiles/BallGameApp_qmltyperegistration
BallGameApp_qmltyperegistration: ballgameapp_qmltyperegistrations.cpp
BallGameApp_qmltyperegistration: meta_types/qt6ballgameapp_metatypes.json
BallGameApp_qmltyperegistration: meta_types/qt6ballgameapp_metatypes.json.gen
BallGameApp_qmltyperegistration: CMakeFiles/BallGameApp_qmltyperegistration.dir/build.make
.PHONY : BallGameApp_qmltyperegistration

# Rule to build all files generated by this target.
CMakeFiles/BallGameApp_qmltyperegistration.dir/build: BallGameApp_qmltyperegistration
.PHONY : CMakeFiles/BallGameApp_qmltyperegistration.dir/build

CMakeFiles/BallGameApp_qmltyperegistration.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BallGameApp_qmltyperegistration.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BallGameApp_qmltyperegistration.dir/clean

CMakeFiles/BallGameApp_qmltyperegistration.dir/depend:
	cd /media/hlajungo/D/linux/repo/hello_qt/ball_game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/hlajungo/D/linux/repo/hello_qt/ball_game /media/hlajungo/D/linux/repo/hello_qt/ball_game /media/hlajungo/D/linux/repo/hello_qt/ball_game/build /media/hlajungo/D/linux/repo/hello_qt/ball_game/build /media/hlajungo/D/linux/repo/hello_qt/ball_game/build/CMakeFiles/BallGameApp_qmltyperegistration.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/BallGameApp_qmltyperegistration.dir/depend

