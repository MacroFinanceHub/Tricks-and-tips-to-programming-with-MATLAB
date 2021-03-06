% Write a function called peri_sum that computes the sum of the elements of
%   an input matrix A that are on the “perimeter” of A. In other words, it
%   adds together the elements that are in the first and last rows and 
%   columns. Note that the smallest dimension of A is at least 2, but you
%   do not need to check this. Hint: do not double count any elements!
%
% input: A, matrix
% output: s, sum of elements that are on the perimeter of A (i.e. in the
%           first and last rows and columns)

% My function takes the four sides of the matrix and sums them:
function s = peri_sum(A)
s = sum(A(1,:)) + sum(A(end,:)) + sum(A(2:end-1,1)) + sum(A(2:end-1,end));
end

%% A different solution:

function s = peri_sum2(A)
    B = A(2:end-1,2:end-1);     % define a smaller matrix B, that leaves the perimeter of A out
    s = sum(A(:)) - sum(B(:));  % the sum is then the difference between A and B
end
