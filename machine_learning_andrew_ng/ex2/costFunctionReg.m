function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

sumJ = 0;

%X mx3 ; theta 3X1 => m*1
h = sigmoid(X*theta);

for i=1:m
  sumJ = sumJ + (-y(i)*log(h(i)) - ((1-y(i))*log(1-h(i))));
end

theta2 = theta;
theta2([1],:) = [];
J = 1/m * sumJ + lambda/(2*m) * sum(theta2.^2);

%grad
sumGrad = (h-y)'*X;
standardGrad = 1/m * sumGrad;

regGrad = standardGrad;

regGrad = regGrad + (lambda/m) * theta';

regGrad(1) = standardGrad(1);
grad = regGrad;

% =============================================================

end
