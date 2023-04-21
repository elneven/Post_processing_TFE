function x_final = Bissection(a4, a5, P2, OCR, Fluid, s1)

tol = 1.e-10; 
a = 600; %h2_r_is_1 
b = 200; %h2_r_is_2
nmax = 1000; 
% Initialization  
itcount = 0; 
error = 1.0;

% iteration begins here 
while (itcount <= nmax && error >= tol) 
itcount = itcount + 1; 
% Generate and save iteratres 
x = a + (b-a)/2; 
%disp(x)
%z(itcount) = x; 
fa = func(a, a4, a5, P2, OCR, Fluid, s1);  %Delta_s_1
%disp(b)
fb = func(b, a4, a5, P2, OCR, Fluid, s1);  %Delta_s_2
fx = func(x, a4, a5, P2, OCR, Fluid, s1);  
%disp('coucou')
error = abs(fx); 
%disp(fx)
%disp(a)
%  error = abs(x - xold); 
    if (error < tol) 
        x_final = x; 
    else 
        if (fa*fx < 0) 
        % root is between a and x 
            b = x; 
        elseif (fb*fx < 0)
        % root is between x and b 
            a = x;
        else
            
        end 
    end

end

end


function Delta_s = func(h2_r_is, a4, a5, P2, OCR, Fluid, s1) 

s2_is_r = py.CoolProp.CoolProp.PropsSI('S', 'P', P2, 'H', h2_r_is*1000, Fluid)/1000;
T2_is = py.CoolProp.CoolProp.PropsSI('T', 'P', P2, 'H', h2_r_is*1000, Fluid);
s2_oil = (a4*log(T2_is) + a5)/1000 - (a4*log(273.15)+a5)/1000 + 1.05;
s2_is = s2_is_r*(1-OCR) + s2_oil*OCR;

Delta_s = s1 - s2_is; 
end 




