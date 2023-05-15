
%% Graph 1: eta_is vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
eta_is_PP_graph1 = [eta_is_PP(1), eta_is_PP(5), eta_is_PP(3:4).'];

figure(1);
plot(X_PP(11:15) , eta_is_PP(11:15), 'g-o', X_PP_graph1 , eta_is_PP_graph1, 'b-o',  X_PP(41:46) , eta_is_PP(41:46),'k-o', X_PP(34:40) , eta_is_PP(34:40),'r-o');
grid on;

axis([0.6 1.05 0.35 0.75])
xlabel('X [-]', 'Interpreter', 'latex');
ylabel('$\eta_{is}$ [-]', 'Interpreter', 'latex');
legend('RPM = 2800, rp=2.72', 'RPM = 2300, rp=2.74', 'RPM = 1990, rp=2.84', 'RPM = 1633, rp=2.804', 'Interpreter', 'latex', 'Location', 'northwest')
set(get(gca,'ylabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');
set(get(gca,'xlabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');


%% Graph 2: eta_v vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
eta_v_PP_graph1 = [eta_v_PP(1), eta_v_PP(5), eta_v_PP(3:4).'];

m_dot_mean_point1 = mean(m_dot_PP(1:5));
m_dot_mean_point2 = mean(m_dot_PP(11:15));
m_dot_mean_point3 = mean(m_dot_PP(41:47));
m_dot_mean_point4 = mean(m_dot_PP(34:40));


figure(2);
plot(X_PP(11:15) , eta_v_PP(11:15),'g-o', X_PP_graph1 , eta_v_PP_graph1, 'b-o', X_PP(41:46) , eta_v_PP(41:46),'k-o', X_PP(34:40) , eta_v_PP(34:40),'r-o');
grid on;

axis([0.6 1.05 0.35 0.75])
xlabel('X [-]', 'Interpreter', 'latex');
ylabel('$\eta_{v}$ [-]', 'Interpreter', 'latex');
legend('RPM = 2800, m = 0.125' , 'RPM = 2300, m = 0.1299', 'RPM = 1990, m = 0.1083', 'RPM = 1633, m = 0.1064', 'Interpreter', 'latex', 'Location', 'northwest')
set(get(gca,'ylabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');
set(get(gca,'xlabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');


%% Graph 3: Wshaft vs X
% Point 1->5 (un point en plus), Point 11->15 (un point en plus)

X_PP_graph1 = [X_PP(1), X_PP(5), X_PP(3:4).'];
W_exp_PP_graph1 = [Wexp_PP(1), Wexp_PP(5), Wexp_PP(3:4).'];

figure(3);
plot(X_PP(11:15) , Wexp_PP(11:15),'g-o', X_PP_graph1 , W_exp_PP_graph1, 'b-o', X_PP(41:46) , Wexp_PP(41:46),'k-o', X_PP(34:40) , Wexp_PP(34:40),'r-o');
grid on;

axis([0.6 1.05 400 1000])
xlabel('X [-]', 'Interpreter', 'latex');
ylabel('$W_{shaft}$ [W]', 'Interpreter', 'latex');
legend('RPM = 2800, rp=2.72', 'RPM = 2300, rp=2.74', 'RPM = 1990, rp=2.84', 'RPM = 1633, rp=2.804', 'Interpreter', 'latex', 'Location', 'northwest')
set(get(gca,'ylabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');
set(get(gca,'xlabel'), 'FontSize', 15, 'FontWeight', 'bold', 'Interpreter','latex');




