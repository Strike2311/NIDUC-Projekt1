function [Y] = HammingDecoder(X)
    m = 4;          %D�ugo�� symbolu w wiadomo�ci
    n = 2^m -1;     %D�ugo�� s�owa kodowanego
    k = n - m;      %D�ugo�� wiadomo�ci
    Y = decode(X, n, k,'hamming/binary');
end