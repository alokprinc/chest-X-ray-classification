function [F1_arr] = cmx(tv,pv)
 % confusion matrix
        trueVal = tv;
        predVal = pv';
        [cm_,~] = confusionmat(trueVal,predVal);
        TP = cm_(2,2);
        FP = cm_(1,2);
        FN = cm_(2,1);
        TN = cm_(1,1);
        accuracy = (TP+FN)/(TP+FP+TN+FN);
        % precision
        % out of all people having neumonia
        precision = TP/(TP+FP);
        % recall
        % how muc we predicted correctly
        recall = TP/(TP+FN);

        % F1 score
        F1_arr = 2*(precision*recall/(precision+recall));
end