function [theta] = trainLinearReg(X, y, lambda)

initial_theta = zeros(size(X, 2), 1); 

options = optimoptions(@fminunc,'Algorithm','Quasi-Newton','GradObj', 'on', 'MaxIter', 1000);

[theta_rec, ~, ~] = fminunc(@(t)(lrCostFunction(t, X, y, lambda)), initial_theta, options);
theta = theta_rec;
end
