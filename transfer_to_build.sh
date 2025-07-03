#!/bin/sh

# Absolute directory with no trailing slash
BUILD_DT_OVERLAY_DIR=~/linux4microchip/buildroot-mchp/eds_sama5d3/build/dt-overlay-mchp-linux4microchip-2024.10

#
# echo "[Transfer Script] Remove old files in build directory"
# sudo rm -rf $BUILD_DT_OVERLAY_DIR/*
echo "[Transfer Script] Copy new files to build directory"
sudo rsync -avrP ./* $BUILD_DT_OVERLAY_DIR
echo "[Transfer Script] ....Done...."
export BUILD_DT_OVERLAY_DIR=$BUILD_DT_OVERLAY_DIR
# ls -lh $BUILD_DT_OVERLAY_DIR/sama5d3_eds | grep .dtbo

sudo ln -s ~/linux4microchip/dt-overlay-mchp/* ~/linux4microchip/buildroot-mchp/eds_sama5d3/build/dt-overlay-mchp-linux4microchip-2024.10