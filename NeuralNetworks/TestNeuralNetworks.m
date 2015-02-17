% first compute z2, then a2, and finally z3 and a3. i.e H.
load('ex3weights.mat');
load('ex3data1.mat');

m = length(y);

X = [ones(m,1) X];

z2 = X * Theta1';

a2 = sigmoid(z2);

a2 = [ones(size(a2, 1), 1) a2];

z3 = a2 * Theta2';

a3 = sigmoid(z3);

disp(size(a3));

