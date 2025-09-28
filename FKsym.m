%Este programa calcula la cinematica de un robot
clear all
close all
clc

syms d1 d2 d3 d4 a0 a1 a2 a3 q1 q2 q3
a = transpose([q1 q2 q3]);
       %q d a alpha
DHs = [q1 0 a1 0,
       q2 0 a2 0];

DHs2 = [0 0 0 0,
       q1 0 a1 0
       q2  0 a2 0];


FKs = simplify(forwardKinematicsDH(DHs, 2))
FKs2 = simplify(forwardKinematicsDH(DHs2, 3))
xyz = FKs(:,4)



