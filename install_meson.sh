#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 INSTALL_PREFIX"
  exit 1
fi

INSTALL_PREFIX="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"

rm -rf build
meson setup build --prefix="${INSTALL_PREFIX}" --buildtype=release
ninja -C build install

echo ""
echo "*****************************************************************************"
echo "  DONE: LDASoft built and installed to: "
echo "      ${INSTALL_PREFIX}"
