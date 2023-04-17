function [ success ] = plot_prediction(in,out)
%PLOT_RESULTS Plotting of the GPExp simulation results
%   Required inputs:
%   in : the input structure of GPExp
%   out: the output (results) structure of GPExp

% plot of predicted vs. measured variables

miny = min(in.y) - (max(in.y)-min(in.y))/15;
maxy = max(in.y) + (max(in.y)-min(in.y))/15;

axis([0,1,0,1])
hold on
plot(in.y,out.train.y_pred,'r*')
plot([0,1],[0,1],'k')
X1 = [0 1];
Y1 = [0.05 1.05];
X2 = [0 1];
Y2 = [-0.05 0.95];
plot(X1,Y1,'k--')
plot(X2,Y2,'k--')
if isfield(out,'CV')
    plot(in.y,out.CV.y_pred,'b+')
    legend('Train (i.e. with all data samples)','45 deg','Cross-Validation','Location','NorthWest')
else
    legend('Train (i.e. with all data samples)','45 deg','Location','NorthWest')
end
title(['Pred. vs meas. values of ' in.considered_output{1}])

success = true;
end
