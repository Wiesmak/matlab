function [F] = waerden(x,y,s)

    Vx = zeros(size(x));
    Vy = zeros(size(y));
    
    for n = 0:s
        scaled_x = (4^n) * x;
        Vx = Vx + abs(scaled_x - round(scaled_x)) / (10^n);
        
        scaled_y = (4^n) * y;
        Vy = Vy + abs(scaled_y - round(scaled_y)) / (10^n);
    end
    
    F = (1 + Vy)' * (1 + Vx); 

end