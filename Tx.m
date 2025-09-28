function [T] = Tx(a)
    T = [[1 0 0 a];
         [0 1 0 0];
         [0 0 1 0];
         [0 0 0 1]];
end