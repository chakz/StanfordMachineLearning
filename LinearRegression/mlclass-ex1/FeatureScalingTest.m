% Loading the data
data = load('ex1data2.txt');

% Features 
X = data(:,1:size(data,2)-1);
% Output
y = data(:,size(data,2));

% Computing the value of m
m = length(y);

% Adjusting the value of X
X = [ones(m,1) X];

% Initializing theta
theta = zeros(size(X,2),1);

theta = pinv(X'*X)*X'*y;

disp(theta);