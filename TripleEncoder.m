function [Y] = TripleEncoder(X)
    counter = 1;
    Y = zeros(1, 3*length(X));
    for i=1:length(X)
        
        Y(counter:counter+2) = X(i);
        counter = counter + 3;
        
    end
end

