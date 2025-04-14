#!/usr/bin/env sh

# Exit on error
set -e

# Be verbose
set -x

# Set environment variables for finding the JPEG library
export LDFLAGS="-L/opt/homebrew/opt/jpeg/lib"
export CPPFLAGS="-I/opt/homebrew/opt/jpeg/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/jpeg/lib/pkgconfig"

# Clean previous build completely
echo "Cleaning previous build..."
rm -rf build
mkdir -p build
cd build

# Configure with more specific options
echo "Configuring CMake..."
cmake .. \
  -DCMAKE_BUILD_TYPE=Release \
  -DWITH_JPEG=ON \
  -DBUILD_JPEG=OFF \
  -DWITH_TIFF=ON \
  -DBUILD_TIFF=OFF \
  -DWITH_WEBP=ON \
  -DBUILD_WEBP=OFF \
  -DWITH_PNG=ON \
  -DBUILD_PNG=OFF \
  -DBUILD_ZLIB=OFF \
  -DWITH_FFMPEG=OFF \
  -DBUILD_opencv_world=OFF \
  -DJPEG_LIBRARY=/opt/homebrew/opt/jpeg/lib/libjpeg.dylib \
  -DJPEG_INCLUDE_DIR=/opt/homebrew/opt/jpeg/include \
  -DCMAKE_OSX_ARCHITECTURES=arm64

# Build with parallel threads
echo "Building OpenCV..."
cmake --build . -j$(sysctl -n hw.ncpu)

echo "Build completed!"