function [lambda_arr,F1_arr_train,F1_arr_CV] = F1_VS_Lambda(X,y,X_CV,y_CV)
    
lambda_arr = [ 0 1 10 50 100 200 300 400 500 600 700 800 900 1000 1500 2000 2500 ]';

F1_arr_train = zeros(length(lambda_arr),1);
F1_arr_CV = zeros(length(lambda_arr),1);
s1_ = length(y);
s2_ = length(y_CV);
m1_ = zeros(s1_,1);
m2_ = zeros(s2_,1);
for i = 1:length(lambda_arr)
    lambda = lambda_arr(i);
    theta = trainLinearReg(X, y, lambda);
     for j=1:1:s1_
     m1_(j)=predict(theta,X(j,:));
     end
     for j=1:1:s2_
     m2_(j)=predict(theta,X_CV(j,:));
     end
     
    F1_arr_train(i,1) = cmx(y,m1_);
    F1_arr_CV(i,1) = cmx(y_CV,m2_);
        
end
% =========================================================================

end