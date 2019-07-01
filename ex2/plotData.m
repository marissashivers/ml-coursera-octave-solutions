function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Data file:
	% examScore1, examScore2, decision (0 or 1)
% VARIABLES:
	% x = 2 columns with examScore1 and examScore2
	% y = one column with the decision

% Find indices of positive and negative examples
pos = find(y==1); %returns indices of column vector where y=1
neg = find(y==0); %returns indices of column vector where y=0

% Plot examples
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 4, 'MarkerSize', 20); %plot admitted students
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 20); %plot non-admitted students
set(gca, "linewidth", 4, "fontsize", 30) % increase line width and font size



% =========================================================================



hold off;

end
