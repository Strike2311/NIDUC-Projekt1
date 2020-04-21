function [Y] = TripleEncoder(X)
    counter = 1;%zmienna sluzaca do poruszania sie po tabeli Y
    Y = zeros(1, 3*length(X));%do tej tabeli wprowadzamy zakodowywana liczbe
    for i=1:length(X)
        %potrajanie bitow i wypelnianie nimi tabeli Y
        Y(counter:counter+2) = X(i);
        counter = counter + 3;
        
    end
end

