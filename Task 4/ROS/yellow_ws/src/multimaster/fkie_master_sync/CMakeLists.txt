cmake_minimum_required(VERSION 2.8.3)
project(fkie_master_sync)
find_package(catkin REQUIRED COMPONENTS fkie_master_discovery fkie_multimaster_msgs)

catkin_package(CATKIN_DEPENDS fkie_master_discovery fkie_multimaster_msgs)
catkin_python_setup()

install(
    PROGRAMS
        nodes/master_sync
        nodes/param_sync.py
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
    DIRECTORY
    launch
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)