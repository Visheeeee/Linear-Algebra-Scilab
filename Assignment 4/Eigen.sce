clc; close(); clear;
X = [0 0 0; 0 0 0; 0 0 0]
for i=1:3
    for j=1:3
        X(i,j) = input('Enter the individual cell values for the 3X3 matrix:')
    end
end


[c,d]=spec(X);

disp(spec(X),"The Eigen-values of matrix X are:");
disp(c,"The Eigen-vectors of matrix X is:");
