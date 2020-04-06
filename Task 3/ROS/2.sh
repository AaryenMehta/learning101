# in terminal 1
roscore

# in terminal 2
rosrun turtlesim turtlesim_node

# in terminal 3
read key

while [ 1 ]
do
	if [[ key == "f" ]]
	then
		rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	elif [[ key == "b" ]]
	then
		rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-2.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
	fi
done
