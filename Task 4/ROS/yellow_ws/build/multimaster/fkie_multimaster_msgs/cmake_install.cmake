# Install script for directory: /home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aaryen/yellow_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs/msg" TYPE FILE FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/Capability.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/LinkState.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/LinkStatesStamped.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/MasterState.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/ROSMaster.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/SyncMasterInfo.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/SyncServiceInfo.msg"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/msg/SyncTopicInfo.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs/srv" TYPE FILE FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/DiscoverMasters.srv"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/GetSyncInfo.srv"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/ListDescription.srv"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/ListNodes.srv"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/LoadLaunch.srv"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/srv/Task.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs/cmake" TYPE FILE FILES "/home/aaryen/yellow_ws/build/multimaster/fkie_multimaster_msgs/catkin_generated/installspace/fkie_multimaster_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/include/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/share/roseus/ros/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/share/common-lisp/ros/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/share/gennodejs/ros/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/aaryen/yellow_ws/devel/lib/python2.7/dist-packages/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/lib/python2.7/dist-packages/fkie_multimaster_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aaryen/yellow_ws/build/multimaster/fkie_multimaster_msgs/catkin_generated/installspace/fkie_multimaster_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs/cmake" TYPE FILE FILES
    "/home/aaryen/yellow_ws/build/multimaster/fkie_multimaster_msgs/catkin_generated/installspace/fkie_multimaster_msgs-msg-extras.cmake"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/cmake/version.cmake.in"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs/cmake" TYPE FILE FILES
    "/home/aaryen/yellow_ws/build/multimaster/fkie_multimaster_msgs/catkin_generated/installspace/fkie_multimaster_msgsConfig.cmake"
    "/home/aaryen/yellow_ws/build/multimaster/fkie_multimaster_msgs/catkin_generated/installspace/fkie_multimaster_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs" TYPE FILE FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/devel/lib/python2.7/dist-packages/fkie_multimaster_msgs/grpc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_multimaster_msgs" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_multimaster_msgs/protos")
endif()

