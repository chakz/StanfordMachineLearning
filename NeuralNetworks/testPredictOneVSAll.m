load ex3data1.mat;
m = size(X,1);
n = size(X,2);
num_labels = length(unique(y));

all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix

X = [ones(m,1) X];


initial_theta = zeros(n+1, 1);

for c = 1:num_labels,
options = optimset('GradObj', 'on', 'MaxIter', 50);

% Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
[theta] = ...
 fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
 initial_theta, options);
 disp(size(theta));
                 
                 
all_theta(c,:) = theta';

end


p = sigmoid(X * all_theta');

disp(size(p));
%for i = 1:m,
%if(p(i) >= 0.5)
%p(i) = 1;
%else
%p(i) = 0;
%endif
%end
