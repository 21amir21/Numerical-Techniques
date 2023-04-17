% Least Square Power Model

Xs = input("Enter the x points in vector form: ");
Ys = input("Enter the y points in vector form: ");
n = length(Xs);
syms x;

% Ln(Y) = log(Y) in MATLAB
X_Ln = log(Xs);
Y_Ln = log(Ys);

A_MATRIX = [n sum(X_Ln); sum(X_Ln) sum(X_Ln.^2)];
B_MATRIX = [sum(Y_Ln); sum(X_Ln.*Y_Ln)];

X_MATRIX = linsolve(A_MATRIX,B_MATRIX);

X_MATRIX(1) = exp(X_MATRIX(1));

a = vpa(X_MATRIX(1));
b = vpa(X_MATRIX(2));

y = vpa(a*(x^b),n);

disp(y);