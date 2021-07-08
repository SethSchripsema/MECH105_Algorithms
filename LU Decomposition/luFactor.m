function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivoting
P = [1 0 0; 0 1 0; 0 0 1];

if A(1,1) >= A(2,1) && A(1,1)
    P(1,1) = 1;
elseif A(2,1) >= A(3,1) && A(1,1)
    P(2,1) = 1;
else
    P(3,1) = 1;
end

if A(2,2) >= A(1,2) && A(3,2)
    P(2,2) = 1;
elseif A(3,2) >= A(1,2) && A(2,2)
    P(3,2) = 1;
else
    P(1,2) = 1;
end

if P(1,1) && P(1,2) && P(1,3) == 0
    P(1,3) = 1;
elseif P(2,1) && P(2,2) && P(2,3) == 0
    P(2,3) = 1;
elseif P(3,1) && P(3,2) && P(3,3) == 0
    P(3,3) = 1;

A = P*A;
C1 = A(1,:);
C2 = A(2,:);
C3 = A(3,:);

r_21 = A(2,1)/A(1,1); % Ratio of a_21 to a_11
row2 = r_21*C1-C2;

r_31 = A(3,1)/A(1,1);
row3 = r_31*C1-C3;

r_32 = row3(2)/row2(2); 
U_3 = r_32*row2-row3;

U = [C1; row2; U_3];
L = [1,0,0; r_21 1 0; r_31 r_32 1];


% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

end