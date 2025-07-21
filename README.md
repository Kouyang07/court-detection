# Badminton Court Detection
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

Fully automatic algorithm for badminton court line detection. Implementation based on Farin
D. et al. "Robust Camera Calibration for Sports Videos using Court Models", *Storage and
Retrieval Methods and Applications for Multimedia 2004*, 2003.

![AlgorithmResult](badminton-court-detection.png)

# Installation instructions

```
mkdir build && cd build
cmake ..
make
```
Note: A video streaming codec is required to be installed for the executable to read videos. We suggest `libgstreamer` or `ffmpeg`.

# Usage

The detection algorithm is started for the middle frame of the input video file (in avi
format).

```
Usage: ./build/bin/detect video_path [output_path]
       video_path:  path to an input avi file.
       output_path: path to an output file where the xy court point coordinates will be written.
                    This argument is optional. If not present, then a window with the result will be opened.
```

## Output file

The output file contains one point per line in standard CSV format.  The points are in the following order:

```
P1: Intersection of upper baseline and left sideline
P2: Intersection of lower baseline and left sideline
P3: Intersection of lower baseline and right sideline
P4: Intersection of upper baseline and right sideline
P5: Intersection of upper baseline and left singles line
P6: Intersection of lower baseline and left singles line
P7: Intersection of lower baseline and right singles line
P8: Intersection of upper baseline and right singles line
P9: Intersection of left sideline and upper service line
P10: Intersection of right sideline and upper service line
P11: Intersection of left sideline and lower service line
P12: Intersection of right sideline and lower service line
P13: Intersection of upper service line and center service line
P14: Intersection of lower service line and center service line
P15: Intersection of left sideline and net line
P16: Intersection of right sideline and net line
P17: Intersection of left sideline and upper doubles line
P18: Intersection of right sideline and upper doubles line
P19: Intersection of left sideline and lower doubles line
P20: Intersection of right sideline and lower doubles line
P21: Intersection of upper baseline and center service line
P22: Intersection of lower baseline and center service line
NetPole1: Left net pole position
NetPole2: Right net pole position
```

## Acknowledgements

Original implementation based on the code of [Grzegorz Chlebus](https://github.com/gchlebus/tennis-court-detection.git), modified by Paul Liu, Jui-Hsien Wang.