function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
lx = length(x);
ly = length(y);
if lx ~= ly
    error('Array dimensions are not equivalent')
else 
    n = length(x);
end
if x ~= x(1):1:x(n)
    error('The x array is evenly spaced')
end
    
if nargin ~= 2
    error('Exactly 2 arrays must be inputted')
end

xb = x(n);
xa = x(1);
yb = y(n);
ya = y(1);

if (-1)^(n-1) == -1
   I = (xb-xa)*(yb+ya)/2
   warning('Trapezoid rule used because there are an even number of segments')
else
   x1=(xb-xa)/2;
   I = (xb-xa) * (ya + 4*y(x1) + yb)/6
end
