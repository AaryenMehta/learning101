# Install script for directory: /home/aaryen/yellow_ws/src/multimaster/fkie_node_manager

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
  include("/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager/catkin_generated/installspace/fkie_node_manager.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager/cmake" TYPE FILE FILES
    "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager/catkin_generated/installspace/fkie_node_managerConfig.cmake"
    "/home/aaryen/yellow_ws/build/multimaster/fkie_node_manager/catkin_generated/installspace/fkie_node_managerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager" TYPE FILE FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fkie_node_manager" TYPE PROGRAM FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/nodes/dynamic_reconfigure"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/nodes/node_manager"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/nodes/script_runner.py"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/scripts/reduced_nm.py"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/scripts/remote_nm.py"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/scripts/respawn"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager" TYPE DIRECTORY FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/images"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/rqt_icons"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager" TYPE FILE FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/README.rst"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/plugin.xml"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/fkie_node_manager" TYPE FILE FILES
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/EchoDialog.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/GUI.qrc"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/LaunchFilesDockWidget.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/LogDockWidget.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/MainWindow.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/MasterTab.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/MessageFrame.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/PasswordInput.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/ProfileWidget.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/SettingsDockWidget.ui"
    "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/TimeInput.ui"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/fkie_node_manager/editor" TYPE FILE FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/src/fkie_node_manager/editor/GraphDockWidget.ui")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager" TYPE DIRECTORY FILES "/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fkie_node_manager" TYPE FILE FILES
    "/home/aaryen/yellow_ws/devel/share/fkie_node_manager/VERSION"
    "/home/aaryen/yellow_ws/devel/share/fkie_node_manager/DATE"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  set(NODE_MANAGER_LAUNCHER "/home/aaryen/yellow_ws/devel/share/fkie_node_manager/node_manager.desktop")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/aaryen/yellow_ws/src/multimaster/fkie_node_manager/cmake/install_launcher.cmake")
endif()

