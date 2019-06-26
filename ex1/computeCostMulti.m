function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% VARIABLES:
	% X = (1...n) columns for each feature
	% y = actual value
	% theta = [0 0 0]
% FORMUALA:
	% cost function: J(theta) = 1/2m * sum from 1 to m of (predicted-actual)^2
	
predictedMatrix = X * theta;
subtractedMatrix = predictedMatrix - y;
squaredMatrix = subtractedMatrix .^ 2;
sumSquared = sum(squaredMatrix);
J = 1/(2*m) * sumSquared;

% =========================================================================

end
