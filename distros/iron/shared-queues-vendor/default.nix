
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-shared-queues-vendor";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/shared_queues_vendor/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "0ccf27e874f338f1871bd118981eab1e162da3eb438a7daccb2b4548aa98b98f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor package for concurrent queues from moodycamel'';
    license = with lib.licenses; [ asl20 ];
  };
}