# Install script for directory: /Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv" TYPE FILE FILES
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cv.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cv.hpp"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cvaux.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cvaux.hpp"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cvwimage.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cxcore.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cxcore.hpp"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cxeigen.hpp"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/cxmisc.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/highgui.h"
    "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv/ml.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE FILES "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/include/opencv2/opencv.hpp")
endif()

