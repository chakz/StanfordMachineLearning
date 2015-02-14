data = load('ex2data1.txt');
X= data(:,[1,2]);
X = [ones(length(X),1) X];
y = data(:,3);

m = length(data);
theta = zeros(size(X,2), 1);

cost = sum((-y).*log(sigmoid(X*theta)) - (1-y).*log(sigmoid(X*theta)))/m;

cost = -(sum(y.*log(sigmoid(X*theta)) + (1 - y).*log(1 - sigmoid(X*theta))))/m ;

%disp(cost);


part1 = (-y).*log(sigmoid(X*theta)) - (1-y).*log(sigmoid(X*theta));

part2 =  y.*log(sigmoid(X*theta)) + (1-y).*log(1 - sigmoid(X*theta));

cost1 = sum(part1); 

cost2 = -sum(part2);
diff = part1 + part2;

%disp(diff);

disp(cost1);

disp(cost2);

disp(diff);