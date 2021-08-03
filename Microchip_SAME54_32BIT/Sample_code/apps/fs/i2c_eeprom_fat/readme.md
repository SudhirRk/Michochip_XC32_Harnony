---
parent: Harmony 3 driver and system service application examples for SAM D5X/E5X family
title: FAT filesystem using AT24 EEPROM media 
has_children: false
has_toc: false
---

[![MCHP](https://www.microchip.com/ResourcePackages/Microchip/assets/dist/images/logo.png)](https://www.microchip.com)

# FAT filesystem using AT24 EEPROM media

This application shows an example of using the MPLAB Harmony File System to access I2C EEPROM based media.

## Description

### File System Operations on the On-Board SQI Flash Memory:

- Performs a SYS-FS_FormatDisk
- Opens a **newfile.txt** on the i2c eeprom media (AT24 EEPROM)
- Write and reads back 4KB of data on **newfile.txt**
- Verifies the Data Read back

### File system layer uses:

- Memory driver to communicate with external AT24 EEPROM device using I2C

## Downloading and building the application

To clone or download this application from Github, go to the [main page of this repository](https://github.com/Microchip-MPLAB-Harmony/core_apps_sam_d5x_e5x) and then click Clone button to clone this repository or download as zip file.
This content can also be downloaded using content manager by following these [instructions](https://github.com/Microchip-MPLAB-Harmony/contentmanager/wiki).

Path of the application within the repository is **apps/fs/i2c_eeprom_fat/firmware** .

To build the application, refer to the following table and open the project using its IDE.

| Project Name      | Description                                    |
| ----------------- | ---------------------------------------------- |
| sam_e54_xpro.X | MPLABX project for [SAM E54 Xplained Pro Evaluation Kit](https://www.microchip.com/developmenttools/ProductDetails/atsame54-xpro) |
|||

## Setting up the hardware

The following table shows the target hardware for the application projects.

| Project Name| Board|
|:---------|:---------:|
| sam_e54_xpro.X | [SAM E54 Xplained Pro Evaluation Kit](https://www.microchip.com/developmenttools/ProductDetails/atsame54-xpro) |
|||

### Setting up [SAM E54 Xplained Pro Evaluation Kit](https://www.microchip.com/developmenttools/ProductDetails/atsame54-xpro)

- To run the demo, the following additional hardware are required:
  - [EEPROM 3 CLICK](https://www.mikroe.com/eeprom-3-click) board
  - [mikroBUS Xplained Pro board](https://www.microchip.com/developmenttools/ProductDetails/ATMBUSADAPTER-XPRO)

- Install an [EEPROM 3 CLICK](https://www.mikroe.com/eeprom-3-click) on to the [mikroBUS Xplained Pro board](https://www.microchip.com/developmenttools/ProductDetails/ATMBUSADAPTER-XPRO)
- Connect the [mikroBUS Xplained Pro board](https://www.microchip.com/developmenttools/ProductDetails/ATMBUSADAPTER-XPRO) to the EXT2 header
- Connect the Debug USB port on the board to the computer using a micro USB cable

## Running the Application

1. Build and program the application using its IDE
2. Press switch to start the operation
3. The LED is turned ON if writing and reading is successful on EEPROM media

    Refer to the following table for Switch and LED name:

    | Board | Switch Name | LED Name |
    | ----- | -------- | -------- |
    |  [SAM E54 Xplained Pro Evaluation Kit](https://www.microchip.com/developmenttools/ProductDetails/atsame54-xpro) | SW0 | LED0 |
    |||
