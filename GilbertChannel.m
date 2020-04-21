function [Y] = GilbertChannel(X)
    
    %Prawdopodobieñstwo ¿e przejdzie ze stanu Z³ego na Dobry
    probForGood = 0.6;
    
    %Prawdopodobieñstwo ¿e przejdzie ze stanu Dobrego na Z³y
    probForBad = 0.2;
    
    probForSwitch = 0.6;
    
    %aktualny status Dobry - 0 Z³y - 1
    status = 0;
    Y = zeros(1,length(X));
    for i=1:length(X)
        %Wpisanie kolejnej zawartoœci tablicy do zmiennej input
        input = X(i);
        %Sprawdzenie czy znajduje sie w stanie Dobrym
        if status == 0
            random = rand();
            
            if random < probForBad
               status = 1;
               
            end
            
            %W to miejsce wejdzie program jesli nie by³ w stanie Dobrym, czyli
        %jest w stanie Z³ym
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

