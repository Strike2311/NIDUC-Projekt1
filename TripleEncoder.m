function [Y] = TripleEncoder(X)
    counter = 1;
    Y = zeros(3*count(X));
    for i=1:count(X)
        
        Y(counter:counter+2) = X(i);
        counter = counter + 3;
        endfor
    end
end

