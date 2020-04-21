function [Y] = TripleDecoder(X)
    index = 0;
    Y = zeros(1,length(X)/3);
    for i=1:3:length(X)  
        upCounter = 0;
        downCounter = 0;
        for k=0:2
            if X(i+k) == 1
                upCounter = upCounter +1;
                
            else
                downCounter = downCounter +1;
            end
            
        end
        index = index + 1; 
        if upCounter > downCounter
         
          Y(index) = 1;
          
        else
          Y(index) = 0;
        end
        
    end
    
end

