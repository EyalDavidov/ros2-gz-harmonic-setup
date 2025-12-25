#!/usr/bin/env bash
set -e

echo "=== ROS 2 Humble + Gazebo Harmonic setup ==="

sudo apt update
sudo apt install -y \
  curl gnupg lsb-release software-properties-common \
  python3-pip python3-colcon-common-extensions

# ---------- ROS 2 Humble ----------
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key \
  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] \
http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
sudo apt install -y ros-humble-ros-base
sudo apt install -y python3-colcon-common-extensions

# ---------- Gazebo Harmonic ----------
sudo curl https://packages.osrfoundation.org/gazebo.gpg \
  --output /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] \
https://packages.osrfoundation.org/gazebo/ubuntu-stable \
$(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null

sudo apt update
sudo apt install -y gz-harmonic

# ---------- ROS ↔ Gazebo Harmonic ----------
sudo apt install -y ros-humble-ros-gzharmonic

# ---------- ROS control ----------
sudo apt install -y \
  ros-humble-ros2-control \
  ros-humble-ros2-controllers \
  ros-humble-xacro \
  ros-humble-joint-state-publisher-gui \
  ros-humble-robot-localization \
  ros-humble-joy \
  ros-humble-joy-teleop \
  ros-humble-tf-transformations

pip install --user transforms3d



echo "=== Base installation complete ==="
