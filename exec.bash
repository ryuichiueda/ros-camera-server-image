#!/bin/bash

source /opt/ros/melodic/setup.bash

roscore &
sleep 5

rosrun cv_camera cv_camera_node 2> /dev/null &
rosrun web_video_server web_video_server
