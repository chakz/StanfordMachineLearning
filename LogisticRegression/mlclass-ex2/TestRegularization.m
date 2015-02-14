X = data(:,[1,2]);
y = data(:,3);
X = mapFeature(X(:,1), X(:,2));
theta = zeros(size(X,2),1);
m = length(y);
lambda = 1;
grad = zeros(size(theta));
cost = sum((-y).*log(sigmoid(X*theta)) - (1-y).*log(1 - sigmoid(X*theta)))/m + lambda*(sum(theta(2:length(theta)).^2))/(2*m);

grad(1) = sum((sigmoid(X * theta) - y).*X(:,1))/m;

for j = 2:length(theta),
grad(j) = (sum((sigmoid(X * theta) - y).*X(:,j))/m) + (lambda./m).*theta(j);
end

disp(grad);
%for i = 2:length(grad),
%grad(i) = sum((sigmoid(X * theta) - y).*X(:,i))/m; + (lambda/m)*theta(i);
%end





