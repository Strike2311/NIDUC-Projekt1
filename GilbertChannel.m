function [Y] = GilbertChannel(X)
    
    %Prawdopodobie�stwo �e przejdzie ze stanu Z�ego na Dobry
    probForGood = 0.6;
    
    %Prawdopodobie�stwo �e przejdzie ze stanu Dobrego na Z�y
    probForBad = 0.2;
    
    probForSwitch = 0.6;
    
    %aktualny status Dobry - 0 Z�y - 1
    status = 0;
    Y = zeros(1,length(X));
    for i=1:length(X)
        %Wpisanie kolejnej zawarto�ci tablicy do zmiennej input
        input = X(i);
        %Sprawdzenie czy znajduje sie w stanie Dobrym
        if status == 0
            random = rand();
            
            if random < probForBad
               status = 1;
               
            end
            
            %W to miejsce wejdzie program jesli nie by� w stanie Dobrym, czyli
        %jest w stanie Z�ym
        else
            random = rand();
            if random < probForSwitch
                input = ~input;
                
            end
            random = rand();
            if random < probForGood
                status = 0;
                
            end
            
        end
       Y(i) = input;
            
    
end

