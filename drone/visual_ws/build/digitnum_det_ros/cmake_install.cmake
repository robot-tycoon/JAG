# Install script for directory: /home/wujiaxuan/data/drone/vision_ws/src/digitnum_det_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wujiaxuan/data/drone/vision_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros/cmake" TYPE FILE FILES "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/digitnum_det_ros-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wujiaxuan/data/drone/vision_ws/devel/share/roseus/ros/digitnum_det_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wujiaxuan/data/drone/vision_ws/devel/lib/python2.7/dist-packages/digitnum_det_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wujiaxuan/data/drone/vision_ws/devel/lib/python2.7/dist-packages/digitnum_det_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/digitnum_det_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros/cmake" TYPE FILE FILES "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/digitnum_det_ros-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros/cmake" TYPE FILE FILES
    "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/digitnum_det_rosConfig.cmake"
    "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/digitnum_det_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros" TYPE FILE FILES "/home/wujiaxuan/data/drone/vision_ws/src/digitnum_det_ros/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros/py" TYPE PROGRAM FILES "/home/wujiaxuan/data/drone/vision_ws/build/digitnum_det_ros/catkin_generated/installspace/pytorch_mnist_camera.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/digitnum_det_ros/py" TYPE FILE FILES
    "/home/wujiaxuan/data/drone/vision_ws/src/digitnum_det_ros/py/README"
    "/home/wujiaxuan/data/drone/vision_ws/src/digitnum_det_ros/py/num_det.launch"
    )
endif()

