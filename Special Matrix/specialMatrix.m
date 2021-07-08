function [A] = specialMatrix(n,m)
% This function create a special matrix of size nxm
%   The first row and column are filled with the others index, and the interior entries are the sum of the top and left entries

% Check the number of arguments are valid
if nargin ~= 2
    error('Function requires exactly 2 arguments. See Documentation');
end

% Size the matrix to begin with. Not required but good practice
A = zeros(n,m);

% Loop over the interior and fill entries accordingly
for r=1:n
    for c=1:m
        if r==1 % First row
            A(r,c) = c;
        elseif c==1 % First column
            A(r,c) = r;
        else
            A(r,c)= A(r,c-1) + A(r-1,c);
        end
    end
end
end
