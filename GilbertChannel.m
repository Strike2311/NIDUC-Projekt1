function [Y] = GilbertChannel(X)
    
    %Prawdopodobienstwo ze przejdzie ze stanu Zlego na Dobry
    probForGood = 0.6;
    
    %Prawdopodobienstwo ze przejdzie ze stanu Dobrego na Zly
    probForBad = 0.2;
    %Prawdopodobienstwo przeklamania bitu w stanie Zlym
    probForSwitch = 0.6;
    
    %aktualny status Dobry - 0 Zly - 1
    status = 0;
    Y = zeros(1,length(X));
    for i=1:length(X)
        %Wpisanie kolejnej zawartosci tablicy do zmiennej input
        input = X(i);
        %Sprawdzenie czy znajduje sie w stanie Dobrym
        if status == 0
            random = rand();
            %zmiana na stan Zly, gdy liczba jest <= probForBad
             if random <= probForBad
               status = 1;
               
            end
            
            %W to miejsce wejdzie program jesli nie by� w stanie Dobrym, czyli
        %jest w stanie Z�ym
        else
            random = rand();
         
            if random <= probForSwitch  
                input = ~input;
                
            end
            random = rand();
            if random < probForGood
                status = 0;
                
            end
            
        end
       Y(i) = input;
    end
            
    
end

