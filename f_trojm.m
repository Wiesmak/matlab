function [x1,x2] = f_trojm(a,b,c)
    if (a == 0) 
%         throw(MException('f_trojm:invalidInput', 'Function is not quadratic, \n ensure a != 0'));
        disp("Dwumian liniowy")
        x1 = c/b;
        x2 = c/b;
        return;
    end

    dlta = @(a,b,c) b.^2 - 4.*(a.*c);
    x1 = (-b-sqrt(dlta(a,b,c)))/2.*a;
    x2 = (-b+sqrt(dlta(a,b,c)))/2.*a;
    fi = @(varargin)varargin{end-varargin{1}};
    if (eq(x1,x2))
        disp("Podwójny pierwiastek " + fi(isreal(x1), "rzeczywisty", "zespolony"));
    else
        disp("Dwa pierwiastki " + fi(isreal(x1), "rzeczywiste", "zespolone"));
    end
end

