function [result] = BER(X,Y)

size = 0; %zmienna liczaca ilosc bledow

%petla porownujaca bity na poszczegolnych pozycjach w pierwotnie
%wygenerowanej tablicy oraz po przekodowaniu
for i=1:length(X)
    if X(i) == ~Y (i)
        size = size +1;
    end
end

result = size / length(X); %obliczenie BER

end

