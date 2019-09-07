
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, rcpputils, opensplice_6_9, ament-cmake, ament-lint-common, rosidl-generator-c, opensplice-cmake-module, rosidl-typesupport-opensplice-c, rosidl-typesupport-opensplice-cpp, rosidl-cmake, ament-lint-auto, rcutils, rmw, rosidl-generator-dds-idl }:
buildRosPackage {
  pname = "ros-dashing-rmw-opensplice-cpp";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/dashing/rmw_opensplice_cpp/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "bd5fd530206695f560d332404697c240cf448cdc8eb0da7f96b502c862b18a9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp rcpputils opensplice_6_9 rosidl-generator-c rosidl-typesupport-opensplice-cpp rosidl-typesupport-opensplice-c rcutils rmw rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp opensplice_6_9 ament-cmake opensplice-cmake-module rosidl-typesupport-opensplice-cpp rosidl-cmake rosidl-typesupport-opensplice-c rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake opensplice-cmake-module ament-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using PrismTech OpenSplice static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}