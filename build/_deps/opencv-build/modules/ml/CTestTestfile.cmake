# CMake generated Testfile for 
# Source directory: /Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/modules/ml
# Build directory: /Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-build/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_ml "/Users/kouyang/CLionProjects/court-detection/build/bin/opencv_test_ml" "--gtest_output=xml:opencv_test_ml.xml")
set_tests_properties(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "/Users/kouyang/CLionProjects/court-detection/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/cmake/OpenCVUtils.cmake;1649;add_test;/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/cmake/OpenCVModule.cmake;1287;ocv_add_test_from_target;/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/cmake/OpenCVModule.cmake;1069;ocv_add_accuracy_tests;/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/modules/ml/CMakeLists.txt;2;ocv_define_module;/Users/kouyang/CLionProjects/court-detection/build/_deps/opencv-src/modules/ml/CMakeLists.txt;0;")
