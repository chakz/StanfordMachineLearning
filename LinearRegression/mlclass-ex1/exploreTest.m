%% This is for Theta 1
hypothesis = X * theta;
diff = hypothesis - y;
meanDiff = sum(diff)/m;

theta(1) = theta(1) - alpha * meanDiff;

%% This is for Theta 2

elementDiffMultiply  = diff .* X(:,2);
MeanEDM = sum(elementDiffMultiply)/m;
theta(2) = theta(2) - alpha * MeanEDM;


disp(theta)
