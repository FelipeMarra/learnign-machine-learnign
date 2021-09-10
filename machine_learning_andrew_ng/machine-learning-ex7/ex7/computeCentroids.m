function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.

%vactor that will receive the sum in collums 1 and 2, 
%and the amount of ex in the third one
c_m = zeros(K, n+1);

X_1 = [X, ones(m,1)];

for i=1:m
  %sum the ex that corresponds to its centroid(in idx)
  c_m(idx(i),:) = c_m(idx(i),:) + X_1(i,:);
endfor

for i=1:K
  centroids(i,:) = c_m(i,1:n)/c_m(i,n+1);
endfor

% =============================================================


end

