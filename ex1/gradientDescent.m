function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	
% VARIABLES: X, y, theta, alpha, num_iters
	% X = [ones(m, 1), data(:,1)] --> add column of 1s to X
	% y = data(:,2)
	% theta = [0; 0]
	% alpha = 0.01
	% num_iters = 1500
	
% FORMULA: theta = theta - alpha * (1/m) * sum of (predicted - actual)
	
% BASIC ALGORITHM:
	% calculate sum of predicted - actual
	% for theta(0) and theta(1) multiply by column of X
	% calculate new value of theta
	
predictedMatrix = X * theta;
differenceMatrix = predictedMatrix - y;

first = differenceMatrix .* X(:,1);
second = differenceMatrix .* X(:,2);

firstSum = sum(first);
secondSum = sum(second);

theta1 = theta(1) - alpha * (1/m) * firstSum;
theta2 = theta(2) - alpha * (1/m) * secondSum;

theta(1) = theta1;
theta(2) = theta2;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
