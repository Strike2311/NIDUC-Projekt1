function [Y] = HammingEncoder(X)
    m = 4;          %D³ugoœæ symbolu w wiadomoœci
    n = 2^m -1;     %D³ugoœæ s³owa kodowanego
    k = n - m;      %D³ugoœæ wiadomoœci
    Y = encode(X, n, k,'hamming/binary');
end

