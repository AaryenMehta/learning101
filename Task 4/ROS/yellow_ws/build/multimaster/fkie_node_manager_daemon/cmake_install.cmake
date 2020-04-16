# Install script for directory: /home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon

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
  include("/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager_daemon/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager_daemon/catkin_generated/installspace/fkie_node_manager_daemon.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon/cmake" TYPE FILE FILES
    "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager_daemon/catkin_generated/installspace/fkie_node_manager_daemonConfig.cmake"
    "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager_daemon/catkin_generated/installspace/fkie_node_manager_daemonConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon" TYPE FILE FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fkie_node_manager_daemon" TYPE PROGRAM FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/nodes/node_manager_daemon")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon/tests" TYPE DIRECTORY FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/tests/resources"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/tests/resources_alt"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon/tests" TYPE PROGRAM FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager_daemon/tests/test_grpc_server.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager_daemon" TYPE FILE FILES
    "/home/aaryen/yellow_ws/devel/share/fkie_node_manager_daemon/VERSION"
    "/home/aaryen/yellow_ws/devel/share/fkie_node_manager_daemon/DATE"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager_daemon/tests/cmake_install.cmake")

endif()

