function [All_lambda, error_train, error_CV] = validationCurve(X, y, X_CV, y_CV)
All_lambda = [ 0 1 10 50 100 200 300 400 500 1000 2000 3000 4000 5000 10000 15000 20000 30000 50000 100000]';

error_train = zeros(length(All_lambda), 1);
error_CV = zeros(length(All_lambda), 1);



for i = 1:length(All_lambda)
    lambda = All_lambda(i);
    theta          = trainLinearReg(X, y, lambda);
    error_train(i) = lrCostFunction(theta,X, y, 0);
    error_CV(i)   = lrCostFunction( theta,X_CV, y_CV , 0);
end
% =========================================================================

end