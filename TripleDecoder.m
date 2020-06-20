function [Y] = TripleDecoder(X)
    index = 0;%zlicza przejscia pierwszej petli for
    Y = zeros(1,length(X)/3);%do tej tabeli wpisywany bedzie ostatecznie odkodowany ciag znakow
    %petla ktora przeskakuje o 3 pola zatrzymujac sie na pierwszym bicie z
    %kazdej trojki
    for i=1:3:length(X)  
        upCounter = 0; %ile w trojce jest jedynek
        downCounter = 0; %ile w trojce jest zer
        %petla ktora przechodzi po kazdej trojce i zlicza oddzielnie
        %jedynki i zera
        for k=0:2
            if X(i+k) == 1
                upCounter = upCounter +1;
                
            else
                downCounter = downCounter +1;
            end
            
        end
        index = index + 1; 
        %decyzja czy wiecej jest jedynek czy zer oraz wpisanie wybranej
        %liczby do tabeli wyjsciowej
        if upCounter > downCounter
         
          Y(index) = 1;
          
        else
          Y(index) = 0;
        end
        
    end
    
end

