# in terminal 1:
roscore

# in terminal 2:
rosrun turtlesim turtlesim_node

# in terminal 3:
read x
v=$((x*2.0))
rostopic pub /turtle1/cmd_vel geometry_msgs/Twist -r 1 -- '[$v, 0.0, 0.0]' '[0.0, 0.0, 2.0]'
