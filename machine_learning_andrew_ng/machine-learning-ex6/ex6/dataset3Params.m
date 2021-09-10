function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
params_opt = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
##C_opt = 1;
##sigma_opt = 1;
##best_opt = zeros(1,2);
##last_err = 100000;

##for i=1:size(params_opt,2)
##  for j=1:size(params_opt,2)
##    C = params_opt(C_opt);
##    sigma = params_opt(sigma_opt);
##    
##    model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));  
##    predictions = svmPredict(model, Xval);
##    
##    err = mean(double(predictions ~= yval));
##    if(err < last_err)
##      best_opt = [C, sigma]
##      last_err = err
##    endif
##    
##    sigma_opt = sigma_opt +1;
##  endfor
##  
##C_opt = C_opt +1;
##sigma_opt = 1;
##endfor
##
##C = best_opt(1);
##sigma = best_opt(2);

C = params_opt(5);
sigma = params_opt(3);
% =========================================================================

end
