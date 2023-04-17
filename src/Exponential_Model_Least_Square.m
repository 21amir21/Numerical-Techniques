% Least Square Exponential Model

Xs = input("Enter the x points in vector form: ");
Ys = input("Enter the y points in vector form: ");
n = length(Xs);
syms x;

% Ln(Y) = log(Y) in MATLAB
Y_Ln = log(Ys);

A_MATRIX = [n sum(Xs); sum(Xs) sum(Xs.^2)];
B_MATRIX = [sum(Y_Ln); sum(Xs.*Y_Ln)];

X_MATRIX = linsolve(A_MATRIX,B_MATRIX);

X_MATRIX(1) = exp(X_MATRIX(1));

a = vpa(X_MATRIX(1));
b = vpa(X_MATRIX(2));

y = vpa(a*exp(x*b),n);

disp(y);