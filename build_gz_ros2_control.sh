#!/usr/bin/env bash
set -e

source /opt/ros/humble/setup.bash

mkdir -p ~/gz_ros2_ws/src
cd ~/gz_ros2_ws/src

git clone https://github.com/ros-controls/gz_ros2_control.git -b humble

cd ~/gz_ros2_ws
sudo apt install python3-rosdep2
rosdep update
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install

echo "source ~/gz_ros2_ws/install/setup.bash" >> ~/.bashrc
