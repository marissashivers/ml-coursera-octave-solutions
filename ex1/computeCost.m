function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 1/2m * sum of (prediction - acutal)^2

% VARIABLES X, y, theta:
	% X = [ones(m, 1), data(:,1)] --> add column of 1s to X
	% y = data(:,2)
	% theta = zeros(2, 1) --> [0; 0]

% Basic algorithm:
	% Calculate prediction values (multiply X * theta)
	% subtract predicted - y
	% square it
	% sum everything
	% multiply by 1/2m
	
predictedMatrix = X * theta;
differenceMatrix = predictedMatrix - y;
squaredMatrix = differenceMatrix .^ 2;
summedMatrix = sum(squaredMatrix);
J = 1/(2*m) * summedMatrix;
	
	
% RETURN VALUE IS J

% =========================================================================

end
