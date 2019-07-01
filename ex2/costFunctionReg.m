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

% FORMULA:
	% J = (1/m) * [sum from 1 to m of (-y log(hypothesis) - (1-y) log (1-hypothesis) ] + lambda / (2m) * sum from 1 to n of theta^2
	% gradient descent = (1/m) * sum((hypothess-y) * X) + (lambda/m) * theta

hypothesis = sigmoid(X * theta);

% Remove first value of theta (regularize)
theta_1_to_n = [0; theta(2:length(theta))];
J = (1/m) * sum(-y .* log(hypothesis) - (1-y) .* log(1-hypothesis)) + (lambda/(2*m)) * sum(theta_1_to_n .^ 2);

grad = (1/m) * sum((hypothesis-y) .* X) + (lambda/m) * theta_1_to_n';

% =============================================================

end
