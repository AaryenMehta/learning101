# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "era_task4: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iera_task4:/home/aaryen/yellow_ws/src/era_task4/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(era_task4_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_era_task4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_task4" "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_custom_target(_era_task4_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "era_task4" "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_task4
)

### Generating Services
_generate_srv_cpp(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_task4
)

### Generating Module File
_generate_module_cpp(era_task4
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_task4
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(era_task4_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(era_task4_generate_messages era_task4_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(era_task4_generate_messages_cpp _era_task4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_dependencies(era_task4_generate_messages_cpp _era_task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_task4_gencpp)
add_dependencies(era_task4_gencpp era_task4_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_task4_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_task4
)

### Generating Services
_generate_srv_eus(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_task4
)

### Generating Module File
_generate_module_eus(era_task4
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_task4
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(era_task4_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(era_task4_generate_messages era_task4_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(era_task4_generate_messages_eus _era_task4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_dependencies(era_task4_generate_messages_eus _era_task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_task4_geneus)
add_dependencies(era_task4_geneus era_task4_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_task4_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_task4
)

### Generating Services
_generate_srv_lisp(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_task4
)

### Generating Module File
_generate_module_lisp(era_task4
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_task4
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(era_task4_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(era_task4_generate_messages era_task4_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(era_task4_generate_messages_lisp _era_task4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_dependencies(era_task4_generate_messages_lisp _era_task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_task4_genlisp)
add_dependencies(era_task4_genlisp era_task4_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_task4_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_task4
)

### Generating Services
_generate_srv_nodejs(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_task4
)

### Generating Module File
_generate_module_nodejs(era_task4
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_task4
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(era_task4_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(era_task4_generate_messages era_task4_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(era_task4_generate_messages_nodejs _era_task4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_dependencies(era_task4_generate_messages_nodejs _era_task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_task4_gennodejs)
add_dependencies(era_task4_gennodejs era_task4_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_task4_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4
)

### Generating Services
_generate_srv_py(era_task4
  "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4
)

### Generating Module File
_generate_module_py(era_task4
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(era_task4_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(era_task4_generate_messages era_task4_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(era_task4_generate_messages_py _era_task4_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aaryen/yellow_ws/src/era_task4/msg/Num.msg" NAME_WE)
add_dependencies(era_task4_generate_messages_py _era_task4_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(era_task4_genpy)
add_dependencies(era_task4_genpy era_task4_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS era_task4_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/era_task4
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(era_task4_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/era_task4
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(era_task4_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/era_task4
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(era_task4_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_task4)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/era_task4
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(era_task4_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/era_task4
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(era_task4_generate_messages_py std_msgs_generate_messages_py)
endif()
