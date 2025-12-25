# ROS 2 Humble + Gazebo Harmonic Setup

## Requirements
- Ubuntu 22.04 (Jammy)
- Clean system (no ROS / Gazebo installed)

## Install
```bash
git clone https://github.com/yourname/ros2-gz-harmonic-setup
cd ros2-gz-harmonic-setup
chmod +x *.sh
./install.sh
./build_gz_ros2_control.sh
Verify
bash
Copy code
./sanity_check.sh
Expected:

ROS_DISTRO=humble

Gazebo Harmonic

No IGN / Fortress
---
