%This program calculates the forward kinematics of a robot using
%the Denavit-Hartenberg convention. It uses symbolic variables to
%represent joint angles and link lengths, allowing for general solutions.
%You can modify the symbolic variables to number values to evaluate the
%kinematics for a specific configuration.

clear all
close all
clc

%Define symbolic variables for joint angles and link lengths
syms d1 d2 d3 a0 a1 a2 a3 q1 q2 q3

%you can define the variables as numbers to evaluate the kinematics for a specific configuration
a_1=1; a_2=1; q_1=pi/4; q_2=pi/4; 

%the order of the DH parameters is: q d a alpha
DH_s = [q1 0 a1 0,
       q2 0 a2 0];

DH_n = [q_1 0 a_1 0
       q_2  0 a_2 0];

FK_s = simplify(forwardKinematicsDH(DH_s, 2))
FK_n = forwardKinematicsDH(DH_n, 2)
xyz_s = FK_s(:,4)
xyz_n = FK_n(:,4)