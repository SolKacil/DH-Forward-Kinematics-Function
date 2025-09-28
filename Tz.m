function [T] = Tz(a)
    T = [[1 0 0 0];
         [0 1 0 0];
         [0 0 1 a];
         [0 0 0 1]];
end