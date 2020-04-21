function [x] = Generator(count)


x = zeros(1,count);

for i=1:count
    random = rand();
    if random < 0.5
        x(i) = 0;
    else
        x(i) = 1;
    end
    
end

