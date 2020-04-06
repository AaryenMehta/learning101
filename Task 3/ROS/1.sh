# firstly run this if not already included in .bashrc
source /opt/ros/kinetic/setup.bash

# in terminal 1
roscore

# in terminal 2
rosrun turtlesim turtlesim_node

# in terminal 3
rosrun turtlesim turtle_teleop_key

# in terminal 4
rosrun rqt_graph rqt_graph
