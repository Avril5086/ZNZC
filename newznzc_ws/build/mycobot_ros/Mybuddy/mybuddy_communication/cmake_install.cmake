# Install script for directory: /home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication/msg" TYPE FILE FILES
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddyAngles.msg"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddyCoords.msg"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddySetAngles.msg"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddySetCoords.msg"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddyGripperStatus.msg"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/msg/MybuddyPumpStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication/srv" TYPE FILE FILES
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/GetAngles.srv"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/SetAngles.srv"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/GetCoords.srv"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/SetCoords.srv"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/GripperStatus.srv"
    "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/srv/PumpStatus.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication/cmake" TYPE FILE FILES "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_communication-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mowen/newznzc_ws/devel/include/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mowen/newznzc_ws/devel/share/roseus/ros/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mowen/newznzc_ws/devel/share/common-lisp/ros/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mowen/newznzc_ws/devel/share/gennodejs/ros/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mowen/newznzc_ws/devel/lib/python2.7/dist-packages/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mowen/newznzc_ws/devel/lib/python2.7/dist-packages/mybuddy_communication")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_communication.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication/cmake" TYPE FILE FILES "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_communication-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication/cmake" TYPE FILE FILES
    "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_communicationConfig.cmake"
    "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_communicationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mybuddy_communication" TYPE FILE FILES "/home/mowen/newznzc_ws/src/mycobot_ros/Mybuddy/mybuddy_communication/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mybuddy_communication" TYPE PROGRAM FILES "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_services.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mybuddy_communication" TYPE PROGRAM FILES "/home/mowen/newznzc_ws/build/mycobot_ros/Mybuddy/mybuddy_communication/catkin_generated/installspace/mybuddy_topics.py")
endif()

