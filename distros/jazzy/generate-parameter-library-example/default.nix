
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, generate-parameter-library, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-generate-parameter-library-example";
  version = "0.3.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/generate_parameter_library-release/archive/release/jazzy/generate_parameter_library_example/0.3.8-4.tar.gz";
    name = "0.3.8-4.tar.gz";
    sha256 = "956485b1613968da4e36efb546f84d1e3820659112596e06a9512f630d1875f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core generate-parameter-library rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core ];

  meta = {
    description = "Example usage of generate_parameter_library.";
    license = with lib.licenses; [ bsd3 ];
  };
}
