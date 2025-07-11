# Install script for directory: /home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mowen/newznzc_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mowen/newznzc_ws/build/mpc_local_planner-master/mpc_local_planner_examples/catkin_generated/installspace/mpc_local_planner_examples.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mpc_local_planner_examples/cmake" TYPE FILE FILES
    "/home/mowen/newznzc_ws/build/mpc_local_planner-master/mpc_local_planner_examples/catkin_generated/installspace/mpc_local_planner_examplesConfig.cmake"
    "/home/mowen/newznzc_ws/build/mpc_local_planner-master/mpc_local_planner_examples/catkin_generated/installspace/mpc_local_planner_examplesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mpc_local_planner_examples" TYPE FILE FILES "/home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mpc_local_planner_examples" TYPE DIRECTORY FILES
    "/home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples/launch"
    "/home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples/cfg"
    "/home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples/maps"
    "/home/mowen/newznzc_ws/src/mpc_local_planner-master/mpc_local_planner_examples/stage"
    )
endif()

