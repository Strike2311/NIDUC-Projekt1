function [result] = BER(X,Y)

size = 0;
for i=1:length(X)
    if X(i) == ~Y (i)
        size = size +1;
    end
end

result = size / length(X);

end

