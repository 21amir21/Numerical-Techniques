% Linear Least Square

Xs = input("Enter x points in vector form: ");
Ys = input("Enter y points in vector form: ");
n = length(Xs);
syms x;

% AX = B, where B is a column vector.
% X = linsolve(A,B) solves the matrix equation AX = B, where B is a column vector.

A_MATRIX = [n sum(Xs); sum(Xs) sum(Xs.^2)];
B_MATRIX = [sum(Ys); sum(Xs.*Ys)];

X_MATRIX = linsolve(A_MATRIX,B_MATRIX);

a0 = vpa(X_MATRIX(1));
a1 = vpa(X_MATRIX(2));

y = vpa(a0+a1*(x));

disp(y);
