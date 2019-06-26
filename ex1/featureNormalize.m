function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2)); % row vector
sigma = zeros(1, size(X, 2)); % row vector

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% ===============

% mu = mean value
% sigma = standard deviation
% X is a matrix where col = feature and row = example.
	% perform the normalization separately for each feature (for each column)

% ALGORITHM:
	% for every column of X
		% find the mean of the column --> this is mu
		% find the st. dev. of the column --> this is sigma
		% X_norm = (X - mu) / sigma

% Find dimensions
[numRows, numCols] = size(X);

% For every column, calculate the mean and st. dev.
for i = 1:numCols
	curCol = X(:,i); % get the current column
	meanOfCol = mean(curCol); % find mean of current column
	mu(i) = meanOfCol; % put mean value in mu row vector
	
	stdOfCol = std(curCol); % get std of current column
	sigma(i) = stdOfCol; % put std in sigma row vector
	
	% Now for every row, calculate the normalized value of X
	for j = 1:numRows
		curElem = X(j, i);
		normalizedElem = (X(j, i) - meanOfCol)/stdOfCol;
		X_norm(j, i) = normalizedElem;
	end
end

% ============================================================

end
