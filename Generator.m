function [x] = Generator(size)


x = zeros(1,size);

for i=1:size
    random = rand();
    if random < 0.5
        x(i) = 0;
    else
        x(i) = 1;
    end
    
end

