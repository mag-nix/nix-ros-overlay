
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, geometry-msgs, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libmaps, nav-msgs, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, rclcpp, ros-environment, rosbag2-storage, sensor-msgs, std-msgs, stereo-msgs, tf2, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-libros-bridge";
  version = "2.13.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros-release/archive/release/humble/mrpt_libros_bridge/2.13.8-1.tar.gz";
    name = "2.13.8-1.tar.gz";
    sha256 = "62c3c9359a561e73acb31fd824f993691fa31f1091197f87759ed3f5a4468b7e";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake assimp cmake ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag2-storage tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libmaps nav-msgs rclcpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Mobile Robot Programming Toolkit (MRPT) libraries (ros2bridge C++ library).
  This package contains: mrpt-ros2bridge";
    license = with lib.licenses; [ bsdOriginal ];
  };
}