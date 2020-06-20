function [x] = Generator(size)


x = zeros(1,size); %do tej tablicy beda losowane elementy

%petla losujaca wartosc na podstawie ktorej do tablicy jest dodawane 1
%(jesli wartosc wylosowana >= 0.5) lub 0 (dla wartosci losowej < 0.5)
for i=1:size
    random = rand();
    if random < 0.5 
        x(i) = 0;
    else
        x(i) = 1;
    end
    
end

