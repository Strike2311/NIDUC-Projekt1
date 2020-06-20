function [result, corr] = BER(X,Y)

size = 0; %zmienna liczaca ilosc bledow
corr = 0; %zmienna liczaca ilosc poprawnych bitow
%petla porownujaca bity na poszczegolnych pozycjach w pierwotnie
%wygenerowanej tablicy oraz po przekodowaniu
for i=1:length(X)
    if X(i) == ~Y (i)
        size = size + 1;
    else
        corr = corr + 1;
    end
end
result = size / length(X); %obliczenie BER

end

