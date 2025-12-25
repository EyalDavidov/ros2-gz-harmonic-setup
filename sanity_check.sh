#!/usr/bin/env bash

echo "ROS distro:"
echo $ROS_DISTRO

echo "Gazebo version:"
gz sim --version

echo "Environment leaks:"
env | grep -E 'IGN|FORTRESS|GAZEBO11' || echo "OK"

