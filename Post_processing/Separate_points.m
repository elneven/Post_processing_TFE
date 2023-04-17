Min_time_steps = min(Time_steady);

%% Point 1: 500->545, P1=5.8, P2=2.1, Nexp=2300 and Npump=253

index_point1 = find(Min_time_steps>=525 & Min_time_steps<=545);
Nexp_point1 = Nexp_means(index_point1);
P1_point1 = P1_means(index_point1);
P2_point1 = P2_means(index_point1);

W_mec_point1 = W_mec(index_point1);
X_point1 = X1_PD(index_point1);
eta_v_point1 = eta_v(index_point1);
eta_is_point1 = eta_is(index_point1);
eta_is_r_point1 = eta_is_r(index_point1);

X_mean_point1 = mean(X_point1);
eta_v_mean_point1 = mean(eta_v_point1);
eta_is_mean_point1 = mean(eta_is_point1);
eta_is_r_mean_point1 = mean(eta_is_r_point1);
W_mec_mean_point1 = mean(W_mec_point1);

%% Point 2: 690->780, P1=5.8, P2=2.1, Nexp=2300 and Npump=477

index_point2 = find(Min_time_steps>=690 & Min_time_steps<=780);
Nexp_point2 = Nexp_means(index_point2);
P1_point2 = P1_means(index_point2);
P2_point2 = P2_means(index_point2);

W_mec_point2 = W_mec(index_point2);
X_point2 = X1_PD(index_point2);
eta_v_point2 = eta_v(index_point2);
eta_is_point2 = eta_is(index_point2);
eta_is_r_point2 = eta_is_r(index_point2);

X_mean_point2 = mean(X_point2);
eta_v_mean_point2 = mean(eta_v_point2);
eta_is_mean_point2 = mean(eta_is_point2);
eta_is_r_mean_point2 = mean(eta_is_r_point2);
W_mec_mean_point2 = mean(W_mec_point2);

%% Point 3: 820->850, P1=5.8, P2=2.1, Nexp=2300 and Npump=567

index_point3 = find(Min_time_steps>=820 & Min_time_steps<=850);
Nexp_point3 = Nexp_means(index_point3);
P1_point3 = P1_means(index_point3);
P2_point3 = P2_means(index_point3);

W_mec_point3 = W_mec(index_point3);
X_point3 = X1_PD(index_point3);
eta_v_point3 = eta_v(index_point3);
eta_is_point3 = eta_is(index_point3);
eta_is_r_point3 = eta_is_r(index_point3);

X_mean_point3 = mean(X_point3);
eta_v_mean_point3 = mean(eta_v_point3);
eta_is_mean_point3 = mean(eta_is_point3);
eta_is_r_mean_point3 = mean(eta_is_r_point3);
W_mec_mean_point3 = mean(W_mec_point3);

%% Point 4: 1050->1190, P1=5.8, P2=2.1, Nexp=2300 and Npump=388 

index_point4 = find(Min_time_steps>=1050 & Min_time_steps<=1190);
Nexp_point4 = Nexp_means(index_point4);
P1_point4 = P1_means(index_point4);
P2_point4 = P2_means(index_point4);

W_mec_point4 = W_mec(index_point4);
X_point4 = X1_PD(index_point4);
eta_v_point4 = eta_v(index_point4);
eta_is_point4 = eta_is(index_point4);
eta_is_r_point4 = eta_is_r(index_point4);

X_mean_point4 = mean(X_point4);
eta_v_mean_point4 = mean(eta_v_point4);
eta_is_mean_point4 = mean(eta_is_point4);
eta_is_r_mean_point4 = mean(eta_is_r_point4);
W_mec_mean_point4 = mean(W_mec_point4);


%% Point 5: 1650->1695, P1=5.8, P2=2.1, Nexp=2800 and Npump=299

index_point5 = find(Min_time_steps>=1650 & Min_time_steps<=1695);
Nexp_point5 = Nexp_means(index_point5);
P1_point5 = P1_means(index_point5);
P2_point5 = P2_means(index_point5);

W_mec_point5 = W_mec(index_point5);
X_point5 = X1_PD(index_point5);
eta_v_point5 = eta_v(index_point5);
eta_is_point5 = eta_is(index_point5);
eta_is_r_point5 = eta_is_r(index_point5);

X_mean_point5 = mean(X_point5);
eta_v_mean_point5 = mean(eta_v_point5);
eta_is_mean_point5 = mean(eta_is_point5);
eta_is_r_mean_point5 = mean(eta_is_r_point5);
W_mec_mean_point5 = mean(W_mec_point5);

%% Point 6: 1770->1815, P1=5.8, P2=2.1, Nexp=2800 and Npump=417

index_point6 = find(Min_time_steps>=1770 & Min_time_steps<=1815);
Nexp_point6 = Nexp_means(index_point6);
P1_point6 = P1_means(index_point6);
P2_point6 = P2_means(index_point6);

W_mec_point6 = W_mec(index_point6);
X_point6 = X1_PD(index_point6);
eta_v_point6 = eta_v(index_point6);
eta_is_point6 = eta_is(index_point6);
eta_is_r_point6 = eta_is_r(index_point6);

X_mean_point6 = mean(X_point6);
eta_v_mean_point6 = mean(eta_v_point6);
eta_is_mean_point6 = mean(eta_is_point6);
eta_is_r_mean_point6 = mean(eta_is_r_point6);
W_mec_mean_point6 = mean(W_mec_point6);

%% Point 7: 1850->1875, P1=5.8, P2=2.1, Nexp=2800 and Npump=478

index_point7 = find(Min_time_steps>=1850 & Min_time_steps<=1875);
Nexp_point7 = Nexp_means(index_point7);
P1_point7 = P1_means(index_point7);
P2_point7 = P2_means(index_point7);

W_mec_point7 = W_mec(index_point7);
X_point7 = X1_PD(index_point7);
eta_v_point7 = eta_v(index_point7);
eta_is_point7 = eta_is(index_point7);
eta_is_r_point7 = eta_is_r(index_point7);

X_mean_point7 = mean(X_point7);
eta_v_mean_point7 = mean(eta_v_point7);
eta_is_mean_point7 = mean(eta_is_point7);
eta_is_r_mean_point7 = mean(eta_is_r_point7);
W_mec_mean_point7 = mean(W_mec_point7);

%% Point 8: 1915->2060, P1=5.8, P2=2.1, Nexp=2800 and Npump=523

index_point8 = find(Min_time_steps>=1915 & Min_time_steps<=2060);
Nexp_point8 = Nexp_means(index_point8);
P1_point8 = P1_means(index_point8);
P2_point8 = P2_means(index_point8);

W_mec_point8 = W_mec(index_point8);
X_point8 = X1_PD(index_point8);
eta_v_point8 = eta_v(index_point8);
eta_is_point8 = eta_is(index_point8);
eta_is_r_point8 = eta_is_r(index_point8);

X_mean_point8 = mean(X_point8);
eta_v_mean_point8 = mean(eta_v_point8);
eta_is_mean_point8 = mean(eta_is_point8);
eta_is_r_mean_point8 = mean(eta_is_r_point8);
W_mec_mean_point8 = mean(W_mec_point8);

%% Point 20: 3080->3340, P1=5.8, P2=2.1, Nexp=2300 and Npump=225

index_point20 = find(Min_time_steps>=3080 & Min_time_steps<=3340);
Nexp_point20 = Nexp_means(index_point20);
P1_point20 = P1_means(index_point20);
P2_point20 = P2_means(index_point20);

W_mec_point20 = W_mec(index_point20);
X_point20 = X1_PD(index_point20);
eta_v_point20 = eta_v(index_point20);
eta_is_point20 = eta_is(index_point20);
eta_is_r_point20 = eta_is_r(index_point20);

X_mean_point20 = mean(X_point20);
eta_v_mean_point20 = mean(eta_v_point20);
eta_is_mean_point20 = mean(eta_is_point20);
eta_is_r_mean_point20 = mean(eta_is_r_point20);
W_mec_mean_point20 = mean(W_mec_point20);

%% Point 21: 3380->3460, P1=5.8, P2=2.1, Nexp=2300 and Npump=315

index_point21 = find(Min_time_steps>=3380 & Min_time_steps<=3460);
Nexp_point21 = Nexp_means(index_point21);
P1_point21 = P1_means(index_point21);
P2_point21 = P2_means(index_point21);

W_mec_point21 = W_mec(index_point21);
X_point21 = X1_PD(index_point21);
eta_v_point21 = eta_v(index_point21);
eta_is_point21 = eta_is(index_point21);
eta_is_r_point21 = eta_is_r(index_point21);

X_mean_point21 = mean(X_point21);
eta_v_mean_point21 = mean(eta_v_point21);
eta_is_mean_point21 = mean(eta_is_point21);
eta_is_r_mean_point21 = mean(eta_is_r_point21);
W_mec_mean_point21 = mean(W_mec_point21);

%% Point 22: 3540->3680, P1=5.8, P2=2.1, Nexp=2300 and Npump=420

index_point22 = find(Min_time_steps>=3540 & Min_time_steps<=3680);
Nexp_point22 = Nexp_means(index_point22);
P1_point22 = P1_means(index_point22);
P2_point22 = P2_means(index_point22);

W_mec_point22 = W_mec(index_point22);
X_point22 = X1_PD(index_point22);
eta_v_point22 = eta_v(index_point22);
eta_is_point22 = eta_is(index_point22);
eta_is_r_point22 = eta_is_r(index_point22);

X_mean_point22 = mean(X_point22);
eta_v_mean_point22 = mean(eta_v_point22);
eta_is_mean_point22 = mean(eta_is_point22);
eta_is_r_mean_point22 = mean(eta_is_r_point22);
W_mec_mean_point22 = mean(W_mec_point22);

%% Point 23: 3720->3860, P1=5.8, P2=2.1, Nexp=2300 and Npump=525

index_point23 = find(Min_time_steps>=3720 & Min_time_steps<=3860);
Nexp_point23 = Nexp_means(index_point23);
P1_point23 = P1_means(index_point23);
P2_point23 = P2_means(index_point23);

W_mec_point23 = W_mec(index_point23);
X_point23 = X1_PD(index_point23);
eta_v_point23 = eta_v(index_point23);
eta_is_point23 = eta_is(index_point23);
eta_is_r_point23 = eta_is_r(index_point23);

X_mean_point23 = mean(X_point23);
eta_v_mean_point23 = mean(eta_v_point23);
eta_is_mean_point23 = mean(eta_is_point23);
eta_is_r_mean_point23 = mean(eta_is_r_point23);
W_mec_mean_point23 = mean(W_mec_point23);

%% graphique 1

X_graph_point1 = [X_point1,  X_point4, X_point2, X_point3];
eta_v_graph_point1 = [eta_v_point1, eta_v_point4, eta_v_point2, eta_v_point3];
eta_is_graph_point1 = [eta_is_point1, eta_is_point4, eta_is_point2, eta_is_point3];
eta_is_r_graph_point1 = [eta_is_r_point1, eta_is_r_point4, eta_is_r_point2, eta_is_r_point3];
W_mec_graph_point1 = [W_mec_point1, W_mec_point4, W_mec_point2, W_mec_point3];

X_graph_mean1 = [X_mean_point1,X_mean_point4, X_mean_point2, X_mean_point3];
eta_v_graph_mean1 = [eta_v_mean_point1, eta_v_mean_point4, eta_v_mean_point2, eta_v_mean_point3];
eta_is_graph_mean1 = [eta_is_mean_point1, eta_is_mean_point4, eta_is_mean_point2, eta_is_mean_point3];
eta_is_r_graph_mean1 = [eta_is_r_mean_point1, eta_is_r_mean_point4, eta_is_r_mean_point2, eta_is_r_mean_point3];
W_mec_graph_mean1 = [W_mec_mean_point1, W_mec_mean_point4, W_mec_mean_point2, W_mec_mean_point3];

X_graph_point2 = [X_point5, X_point6, X_point7, X_point8];
eta_v_graph_point2 = [eta_v_point5, eta_v_point6, eta_v_point7, eta_v_point8];
eta_is_graph_point2 = [eta_is_point5, eta_is_point6, eta_is_point7, eta_is_point8];
eta_is_r_graph_point2 = [eta_is_r_point5, eta_is_r_point6, eta_is_r_point7, eta_is_r_point8];
W_mec_graph_point2 = [W_mec_point5, W_mec_point6, W_mec_point7, W_mec_point8];

X_graph_mean2 = [X_mean_point5, X_mean_point6, X_mean_point7, X_mean_point8];
eta_v_graph_mean2 = [eta_v_mean_point5, eta_v_mean_point6, eta_v_mean_point7, eta_v_mean_point8];
eta_is_graph_mean2 = [eta_is_mean_point5, eta_is_mean_point6, eta_is_mean_point7, eta_is_mean_point8];
eta_is_r_graph_mean2 = [eta_is_r_mean_point5, eta_is_r_mean_point6, eta_is_r_mean_point7, eta_is_r_mean_point8];
W_mec_graph_mean2 = [W_mec_mean_point5, W_mec_mean_point6, W_mec_mean_point7, W_mec_mean_point8];

X_graph_meanadd = [X_mean_point20, X_mean_point21, X_mean_point22, X_mean_point23];
eta_v_graph_meanadd = [eta_v_mean_point20, eta_v_mean_point21, eta_v_mean_point22, eta_v_mean_point23];
eta_is_graph_meanadd = [eta_is_mean_point20, eta_is_mean_point21, eta_is_mean_point22, eta_is_mean_point23];
eta_is_r_graph_meanadd = [eta_is_r_mean_point20, eta_is_r_mean_point21, eta_is_r_mean_point22, eta_is_r_mean_point23];
Wexp_graph_meanadd = [W_mec_mean_point20, W_mec_mean_point21, W_mec_mean_point22, W_mec_mean_point23];


% figure(11);
% scatter(X_graph_point1 , eta_is_r_graph_point1, 'r.');
% grid on;
% hold on;
% 
% figure(12);
% scatter(X_graph_point2 , eta_is_r_graph_point2, 'r.');
% grid on;
% hold on;

% 
%% Graph 1 eta_is vs X
figure(1);
plot(X_graph_mean1 , eta_is_r_graph_mean1, 'b-o', X_graph_mean2 , eta_is_r_graph_mean2, 'g-o' , X_graph_meanadd , eta_is_graph_meanadd, 'ro');
grid on;

%% Graph 2 eta_v vs X
figure(2);
plot(X_graph_mean1 , eta_v_graph_mean1, 'b-o', X_graph_mean2 , eta_v_graph_mean2, 'g-o', X_graph_meanadd , eta_v_graph_meanadd, 'ro');
grid on;
% % % Légende et étiquettes d'axe
% % xlabel('X');
% % ylabel('eta_v');
% % %legend('Pression 1', 'Pression 2');
% 
% 
%% Graphic 3 W_mec vs X
figure(3);
plot(X_graph_mean1 , W_mec_graph_mean1, 'b-o', X_graph_mean2 , W_mec_graph_mean2, 'g-o'); %, X_graph_meanadd , Wexp_graph_meanadd, 'ro');
grid on;

%% Point 9: 2090->2100, P1=5.8, P2=2.1, Nexp=2100 and Npump=448

index_point9 = find(Min_time_steps>=2090 & Min_time_steps<=2100);
Nexp_point9 = Nexp_means(index_point9);
P1_point9 = P1_means(index_point9);
P2_point9 = P2_means(index_point9);

X_point9 = X1_PD(index_point9);
eta_v_point9 = eta_v(index_point9);
eta_is_point9 = eta_is(index_point9);
eta_is_r_point9 = eta_is_r(index_point9);

X_mean_point9 = mean(X_point9);
Nexp_mean_point9 = mean(Nexp_point9);
eta_v_mean_point9 = mean(eta_v_point9);
eta_is_mean_point9 = mean(eta_is_point9);
eta_is_r_mean_point9 = mean(eta_is_r_point9);

%% Point 10: 2135->2160, P1=5.8, P2=2.1, Nexp=1950.8 and Npump=448

index_point10 = find(Min_time_steps>=2135 & Min_time_steps<=2160);
Nexp_point10 = Nexp_means(index_point10);
P1_point10 = P1_means(index_point10);
P2_point10 = P2_means(index_point10);

X_point10 = X1_PD(index_point10);
eta_v_point10 = eta_v(index_point10);
eta_is_point10 = eta_is(index_point10);
eta_is_r_point10 = eta_is_r(index_point10);

X_mean_point10 = mean(X_point10);
Nexp_mean_point10 = mean(Nexp_point10);
eta_v_mean_point10 = mean(eta_v_point10);
eta_is_mean_point10 = mean(eta_is_point10);
eta_is_r_mean_point10 = mean(eta_is_r_point10);

%% Point 11: 2190->2200, P1=5.8, P2=2.1, Nexp=1800.5 and Npump=448

index_point11 = find(Min_time_steps>=2190 & Min_time_steps<=2200);
Nexp_point11 = Nexp_means(index_point11);
P1_point11 = P1_means(index_point11);
P2_point11 = P2_means(index_point11);

X_point11 = X1_PD(index_point11);
eta_v_point11 = eta_v(index_point11);
eta_is_point11 = eta_is(index_point11);
eta_is_r_point11 = eta_is_r(index_point11);

X_mean_point11 = mean(X_point11);
Nexp_mean_point11 = mean(Nexp_point11);
eta_v_mean_point11 = mean(eta_v_point11);
eta_is_mean_point11 = mean(eta_is_point11);
eta_is_r_mean_point11 = mean(eta_is_r_point11);

%% Point 12: 2250->2260, P1=5.8, P2=2.1, Nexp=1650.5 and Npump=448

index_point12 = find(Min_time_steps>=2250 & Min_time_steps<=2260);
Nexp_point12 = Nexp_means(index_point12);
P1_point12 = P1_means(index_point12);
P2_point12 = P2_means(index_point12);

X_point12 = X1_PD(index_point12);
eta_v_point12 = eta_v(index_point12);
eta_is_point12 = eta_is(index_point12);
eta_is_r_point12 = eta_is_r(index_point12);

X_mean_point12 = mean(X_point12);
Nexp_mean_point12 = mean(Nexp_point12);
eta_v_mean_point12 = mean(eta_v_point12);
eta_is_mean_point12 = mean(eta_is_point12);
eta_is_r_mean_point12 = mean(eta_is_r_point12);

%% Point 13: 2370->2380, P1=5.8, P2=2.1, Nexp=1500.8 and Npump=448

index_point13 = find(Min_time_steps>=2370 & Min_time_steps<=2380);
Nexp_point13 = Nexp_means(index_point13);
P1_point13 = P1_means(index_point13);
P2_point13 = P2_means(index_point13);

X_point13 = X1_PD(index_point13);
eta_v_point13 = eta_v(index_point13);
eta_is_point13 = eta_is(index_point13);
eta_is_r_point13 = eta_is_r(index_point13);

X_mean_point13 = mean(X_point13);
Nexp_mean_point13 = mean(Nexp_point13);
eta_v_mean_point13 = mean(eta_v_point13);
eta_is_mean_point13 = mean(eta_is_point13);
eta_is_r_mean_point13 = mean(eta_is_r_point13);

%% Point 14: 2450->2480, P1=5.8, P2=2.1, Nexp=900 and Npump=448

index_point14 = find(Min_time_steps>=2450 & Min_time_steps<=2480);
Nexp_point14 = Nexp_means(index_point14);
P1_point14 = P1_means(index_point14);
P2_point14 = P2_means(index_point14);

X_point14 = X1_PD(index_point14);
eta_v_point14 = eta_v(index_point14);
eta_is_point14 = eta_is(index_point14);
eta_is_r_point14 = eta_is_r(index_point14);

X_mean_point14 = mean(X_point14);
Nexp_mean_point14 = mean(Nexp_point14);
eta_v_mean_point14 = mean(eta_v_point14);
eta_is_mean_point14 = mean(eta_is_point14);
eta_is_r_mean_point14 = mean(eta_is_r_point14);

%% Graph 10 Nexp vs X, eta_is_r, eta_v

Nexp_graph_point10 = [Nexp_point9, Nexp_point10, Nexp_point11, Nexp_point12, Nexp_point13, Nexp_point14];
X_graph_point10 = [X_point9, X_point10, X_point11, X_point12, X_point13, X_point14];
eta_is_graph_point10 = [eta_is_point9, eta_is_point10, eta_is_point11, eta_is_point12, eta_is_point13, eta_is_point14];
eta_is_r_graph_point10 = [eta_is_r_point9, eta_is_r_point10, eta_is_r_point11, eta_is_r_point12, eta_is_r_point13, eta_is_r_point14];
eta_v_graph_point10 = [eta_v_point9, eta_v_point10, eta_v_point11, eta_v_point12, eta_v_point13,eta_v_point14];

Nexp_graph_mean10 = [Nexp_mean_point9, Nexp_mean_point10, Nexp_mean_point11, Nexp_mean_point12, Nexp_mean_point13, Nexp_mean_point14];
X_graph_mean10 = [X_mean_point9, X_mean_point10, X_mean_point11, X_mean_point12, X_mean_point13, X_mean_point14];
eta_is_graph_mean10 = [eta_is_mean_point9, eta_is_mean_point10, eta_is_mean_point11, eta_is_mean_point12, eta_is_mean_point13, eta_is_mean_point14];
eta_is_r_graph_mean10 = [eta_is_r_mean_point9, eta_is_r_mean_point10, eta_is_r_mean_point11, eta_is_r_mean_point12, eta_is_r_mean_point13, eta_is_r_mean_point14];
eta_v_graph_mean10 = [eta_v_mean_point9, eta_v_mean_point10, eta_v_mean_point11, eta_v_mean_point12, eta_v_mean_point13, eta_v_mean_point14];


figure(10);
plot(Nexp_graph_mean10 , X_graph_mean10, 'b-o', Nexp_graph_mean10 , eta_is_r_graph_mean10, 'g-o', Nexp_graph_mean10 , eta_v_graph_mean10, 'r-o');
grid on;
hold on;

%% Point 15: 1260->1385, P1=5.8, P2=1.91, Nexp=2300 and Npump=366

index_point15 = find(Min_time_steps>=1260 & Min_time_steps<=1385);
Nexp_point15 = Nexp_means(index_point15);
P1_point15 = P1_means(index_point15);
P2_point15 = P2_means(index_point15);
rp_point15 = P1_point15./P2_point15;

X_point15 = X1_PD(index_point15);
eta_v_point15 = eta_v(index_point15);
eta_is_point15 = eta_is(index_point15);
eta_is_r_point15 = eta_is_r(index_point15);

X_mean_point15 = mean(X_point15);
eta_v_mean_point15 = mean(eta_v_point15);
eta_is_mean_point15 = mean(eta_is_point15);
eta_is_r_mean_point15 = mean(eta_is_r_point15);
rp_mean_point15 = mean(rp_point15);

%% Point 16: 1420->1440, P1=5.8, P2=2.01, Nexp=2300 and Npump=366

index_point16 = find(Min_time_steps>=1420 & Min_time_steps<=1440);
Nexp_point16 = Nexp_means(index_point16);
P1_point16 = P1_means(index_point16);
P2_point16 = P2_means(index_point16);
rp_point16 = P1_point16./P2_point16;

X_point16 = X1_PD(index_point16);
eta_v_point16 = eta_v(index_point16);
eta_is_point16 = eta_is(index_point16);
eta_is_r_point16 = eta_is_r(index_point16);

X_mean_point16 = mean(X_point16);
eta_v_mean_point16 = mean(eta_v_point16);
eta_is_mean_point16 = mean(eta_is_point16);
eta_is_r_mean_point16 = mean(eta_is_r_point16);
rp_mean_point16 = mean(rp_point16);

%% Point 17: 1460->1470, P1=5.8, P2=2.07, Nexp=2300 and Npump=366

index_point17 = find(Min_time_steps>=1460 & Min_time_steps<=1470);
Nexp_point17 = Nexp_means(index_point17);
P1_point17 = P1_means(index_point17);
P2_point17 = P2_means(index_point17);
rp_point17 = P1_point17./P2_point17;

X_point17 = X1_PD(index_point17);
eta_v_point17 = eta_v(index_point17);
eta_is_point17 = eta_is(index_point17);
eta_is_r_point17 = eta_is_r(index_point17);

X_mean_point17 = mean(X_point17);
eta_v_mean_point17 = mean(eta_v_point17);
eta_is_mean_point17 = mean(eta_is_point17);
eta_is_r_mean_point17 = mean(eta_is_r_point17);
rp_mean_point17 = mean(rp_point17);

%% Point 18: 1510->1530, P1=5.8, P2=2.23, Nexp=2300 and Npump=366

index_point18 = find(Min_time_steps>=1510 & Min_time_steps<=1530);
Nexp_point18 = Nexp_means(index_point18);
P1_point18 = P1_means(index_point18);
P2_point18 = P2_means(index_point18);
rp_point18 = P1_point18./P2_point18;

X_point18 = X1_PD(index_point18);
eta_v_point18 = eta_v(index_point18);
eta_is_point18 = eta_is(index_point18);
eta_is_r_point18 = eta_is_r(index_point18);

X_mean_point18 = mean(X_point18);
eta_v_mean_point18 = mean(eta_v_point18);
eta_is_mean_point18 = mean(eta_is_point18);
eta_is_r_mean_point18 = mean(eta_is_r_point18);
rp_mean_point18 = mean(rp_point18);

%% Point 19: 1575->1595, P1=5.8, P2=2.49, Nexp=2300 and Npump=366

index_point19 = find(Min_time_steps>=1575 & Min_time_steps<=1595);
Nexp_point19 = Nexp_means(index_point19);
P1_point19 = P1_means(index_point19);
P2_point19 = P2_means(index_point19);
rp_point19 = P1_point19./P2_point19;

X_point19 = X1_PD(index_point19);
eta_v_point19 = eta_v(index_point19);
eta_is_point19 = eta_is(index_point19);
eta_is_r_point19 = eta_is_r(index_point19);

X_mean_point19 = mean(X_point19);
eta_v_mean_point19 = mean(eta_v_point19);
eta_is_mean_point19 = mean(eta_is_point19);
eta_is_r_mean_point19 = mean(eta_is_r_point19);
rp_mean_point19 = mean(rp_point19);

%%
rp_graph_point3 = [rp_point15, rp_point16, rp_point17, rp_point18, rp_point19];
eta_is_graph_point3 = [eta_is_point15, eta_is_point16, eta_is_point17, eta_is_point18, eta_is_point19];
eta_is_r_graph_point3 = [eta_is_r_point15, eta_is_r_point16, eta_is_r_point17, eta_is_r_point18, eta_is_r_point19];
eta_v_graph_point3 = [eta_v_point15, eta_v_point16, eta_v_point17, eta_v_point18, eta_v_point19];

rp_graph_mean3 = [rp_mean_point15, rp_mean_point16, rp_mean_point17, rp_mean_point18, rp_mean_point19];
eta_is_graph_mean3 = [eta_is_mean_point15, eta_is_mean_point16, eta_is_mean_point17, eta_is_mean_point18, eta_is_mean_point19];
eta_is_r_graph_mean3 = [eta_is_r_mean_point15, eta_is_r_mean_point16, eta_is_r_mean_point17, eta_is_r_mean_point18, eta_is_r_mean_point19];
eta_v_graph_mean3 = [eta_v_mean_point15, eta_v_mean_point16, eta_v_mean_point17, eta_v_mean_point18, eta_v_mean_point19];


% %% Graph 7 rp vs eta_is
% 
% figure(7);
% plot(rp_graph_mean3 , eta_is_graph_mean3, 'b-o');

%% Graph 8 rp vs eta_v

figure(8);
plot(rp_graph_mean3 , eta_v_graph_mean3, 'b-o', rp_graph_mean3 , eta_is_r_graph_mean3, 'g-o');
grid on;
