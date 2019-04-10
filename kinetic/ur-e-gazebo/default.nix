
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, joint-state-controller, ur-e-description, catkin, joint-trajectory-controller, rostopic, robot-state-publisher, effort-controllers, roslaunch, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-ur-e-gazebo";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_e_gazebo/1.2.5-0.tar.gz;
    sha256 = "4064c437b1fb19dcde89e23e48fbcc63d48300c9493dfa201e00d66f5fac7898";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller ur-e-description joint-trajectory-controller rostopic robot-state-publisher effort-controllers gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    #license = lib.licenses.BSD;
  };
}