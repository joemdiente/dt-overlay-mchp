// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
/*
 *
 * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
 * Author: Joemel John A. Diente <JoemelJohn.Diente@microchip.com>
 *
 */

These are files to be modified in Linux.

spidev.c - <linux kernel path>/drivers/spi/spidev.c
--due to spi driver checks for spi_device_id, another entry needs 
to be added under spidev_device_ids table for SPIDEV to work.
see changes line 685 and 700.
