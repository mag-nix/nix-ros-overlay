
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, cv-bridge, ffmpeg, freeglut, freenect, glfw3, libGL, libGLU, libjpeg, libpcap, libusb1, mrpt-libapps, mrpt-libgui, mrpt-libnav, mrpt-libslam, octomap, opencv, openni2, pkg-config, python3Packages, pythonPackages, ros-environment, rosbag-storage, roscpp, tf2-geometry-msgs, tinyxml-2, udev, wxGTK32, xorg, zlib }:
buildRosPackage {
  pname = "ros-noetic-python-mrpt";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/python_mrpt_ros-release/archive/release/noetic/python_mrpt/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "74b898eb28b1b1eedf2949f317f631f076c08c2fe81891daff2593c15c56499f";
  };

  buildType = "cmake";
  buildInputs = [ assimp cmake cv-bridge ffmpeg freeglut freenect glfw3 libGL libGLU libjpeg libpcap libusb1 octomap opencv opencv.cxxdev openni2 pkg-config python3Packages.pip pythonPackages.pybind11 ros-environment rosbag-storage roscpp tf2-geometry-msgs tinyxml-2 udev wxGTK32 xorg.libXrandr xorg.libXxf86vm zlib ];
  propagatedBuildInputs = [ mrpt-libapps mrpt-libgui mrpt-libnav mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Python wrapper for Mobile Robot Programming Toolkit (MRPT) libraries";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
