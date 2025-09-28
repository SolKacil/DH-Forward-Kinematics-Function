# DH-Forward-Kinematics-Function

![MATLAB](https://img.shields.io/badge/MATLAB-F2A900?style=for-the-badge&logo=matlab&logoColor=white)

This project provides MATLAB functions and scripts to compute the forward kinematics of robotic manipulators using the Denavit-Hartenberg (DH) convention.

## Description

- `forwardKinematicsDH.m`: Function that calculates the homogeneous transformation matrix for a serial robot based on its DH table.
- `FKsym.m`: Example script using symbolic variables to compute the forward kinematics for different robot configurations.
- Includes auxiliary functions for rotations and translations (`Rx.m`, `Ry.m`, `Rz.m`, `Tx.m`, `Ty.m`, `Tz.m`).

## Usage

1. Define the DH table for your robot.
2. Call the `forwardKinematicsDH` function, passing the DH table and the number of links.
3. The result is the final homogeneous transformation matrix of the end-effector.

---
