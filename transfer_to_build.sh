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
ls -lh $BUILD_DT_OVERLAY_DIR/sama5d3_eds | grep .dtbo

		# fdt_iocon1_mdio_gpio {
		# 	description = "Device Tree blob for mdio-gpio in IOCON1";
		# 	data = /incbin/("./sama5d3_eds/sama5d3_eds_mdio_gpio.dtbo");
		# 	type = "flat_dt";
		# 	arch = "arm";
		# 	compression = "none";
		# 	load = <0x23152000>;
		# 	hash-1 {
		# 		algo = "crc32";
		# 	};
		# 	hash-2 {
		# 		algo = "sha1";
		# 	};
		# };