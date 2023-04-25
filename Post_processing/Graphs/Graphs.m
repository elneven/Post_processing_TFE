
%% Graph 1: eta_is vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
eta_is_PP_graph1 = [eta_is_PP(1), eta_is_PP(5), eta_is_PP(3:4).'];

figure(1);
plot(X_PP_graph1 , eta_is_PP_graph1, 'b-o', X_PP(11:15) , eta_is_PP(11:15),'g-o', X_PP(28:34) , eta_is_PP(28:34),'r-o', X_PP(35:40) , eta_is_PP(35:40),'k-o');
grid on;

axis([0.6 1.1 0.35 0.75])
xlabel('X')
ylabel('eis')
legend('RPM = 2300', 'RPM = 2800', 'RPM = 1633', 'RPM = 2903')


%% Graph 2: eta_v vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
eta_v_PP_graph1 = [eta_v_PP(1), eta_v_PP(5), eta_v_PP(3:4).'];

figure(2);
plot(X_PP_graph1 , eta_v_PP_graph1, 'b-o', X_PP(11:15) , eta_v_PP(11:15),'g-o', X_PP(28:34) , eta_v_PP(28:34),'r-o', X_PP(35:40) , eta_v_PP(35:40),'k-o');
grid on;

axis([0.6 1.1 0.35 0.75])
xlabel('X')
ylabel('ev')
legend('RPM = 2300', 'RPM = 2800', 'RPM = 1633', 'RPM = 2903')


%% Graph 3: Wshaft vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
W_exp_PP_graph1 = [Wexp_PP(1), Wexp_PP(5), Wexp_PP(3:4).'];

figure(3);
plot(X_PP_graph1 , W_exp_PP_graph1, 'b-o', X_PP(11:15) , Wexp_PP(11:15),'g-o', X_PP(28:34) , Wexp_PP(28:34),'r-o', X_PP(35:40) , Wexp_PP(35:40),'k-o');
grid on;

axis([0.6 1.1 400 1000])
xlabel('X')
ylabel('W shaft')
legend('RPM = 2300', 'RPM = 2800', 'RPM = 1633', 'RPM = 2903')





