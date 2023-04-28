function [ success ] = plot_prediction(in,out)
%PLOT_RESULTS Plotting of the GPExp simulation results
%   Required inputs:
%   in : the input structure of GPExp
%   out: the output (results) structure of GPExp

% plot of predicted vs. measured variables

miny = min(in.y) - (max(in.y)-min(in.y))/15;
maxy = max(in.y) + (max(in.y)-min(in.y))/15;

axis([miny,maxy,miny,maxy])
hold on
p1 = plot(in.y,out.train.y_pred,'r*');
p2 = plot([miny,maxy], [miny,maxy], 'k', 'LineWidth', 1.3);
X1 = [0 1];
Y1 = [0.05 1.05];
X2 = [0 1];
Y2 = [-0.05 0.95];
p3 = plot(X1,Y1,'k--');
p5 = plot(X2,Y2,'k--');
if isfield(out,'CV')
    p4 = plot(in.y,out.CV.y_pred,'b+');
    %legend('Train (i.e. with all data samples)','45 deg', '5$\%$ errors ligns', '', 'Cross-Validation','Location','NorthWest', 'Interpreter', 'latex')
    legend([p1 p2 p3 p4],{'Train (i.e. with all data samples)','45 deg', '5$\%$ errors ligns','Cross-Validation'}, 'Location','NorthWest', 'Interpreter', 'latex')
else
    legend('Train (i.e. with all data samples)','45 deg', '5% errors ligns','Location','NorthWest', 'Interpreter', 'latex')
end
%title(['Pred. vs meas. values of ' in.considered_output{1}])
xlabel('Predicted values of $\eta_{v}$', 'Interpreter', 'latex');
ylabel('Mesured values of $\eta_{v}$', 'Interpreter', 'latex');

success = true;
end
