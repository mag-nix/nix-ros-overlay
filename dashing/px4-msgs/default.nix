
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ros-environment, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-px4-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/PX4/px4_msgs2-release/archive/release/dashing/px4_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "d746f5e01e04c2a7662b957907ec41b99876d920341221536b2b202a7b6588d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ros-environment builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Package with the ROS-equivalent of PX4 uORB msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}