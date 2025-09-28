% forwardKinematicsDH.m
% This function computes the forward kinematics of a robot using the
% Denavit-Hartenberg convention. It takes a matrix of DH parameters and the
% number of joints (m) as inputs and returns the homogeneous transformation
% matrix representing the end-effector pose.

function [H] = forwardKinematicsDH(DH, m)
    H = eye(4);
    for i = 1 : m
        H = H * (Rz(DH(i, 1)) * Tz(DH(i, 2)) * Tx(DH(i, 3)) * Rx(DH(i, 4)));
    end
end