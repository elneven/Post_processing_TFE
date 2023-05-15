%% Matrix of the values exported in excel (all the steady-states)

%A = horzcat(Time_steady1.', Time_steady2.', P1_means.', T1_means.'); %, P2_means.', T2_means.', P4_means.', T4_means.', P7_means.', T7_means.', Tev_in_means.', Tev_out_means.', m_dot_ORC_means.', m_dot_w_evap_means.', Npump_means.', Tcd_in_means.', Tcd_out_means.', m_dot_w_cond_means.', TExpander_means.', Nexp_means.', Wexp_means.', dens1_means.', dens2_means.', h1_oil.', s1_oil.', d1_oil.');

% Convertir la matrice en une table
%t_steady_sensor69 = table(Time_steady1.', Time_steady2.', P1_means.', T1_means.', P2_means.',T2_means.', P4_means.', T4_means.', P7_means.', T7_means.', Tev_in_means.', Tev_out_means.', m_dot_ORC_means.', m_dot_w_evap_means.', Npump_means.', Tcd_in_means.', Tcd_out_means.', m_dot_w_cond_means.', TExpander_means.', Nexp_means.', Wexp_means.', dens1_means.', dens2_means.', h1_oil.', s1_oil.', d1_oil.', h2_oil.', s2_oil.', d2_oil.', h4_oil.', h7_oil.', d7_oil.', d1_cali.', d1_r_cali.', h1_r_PD.', s1_r_PH.', h1_PD.', s1_PH.', h1_l.', h1_v.', X1_PD.', h1_r_PT.', h1_PT.', s1_r_PT.', s1_PT.', d1_l.', d1_v.', Xv.', d1_r_PQ.', d1_PQ.', h7_r_PT.', h7_PT.', d7_r_PT.', d7_PT.', h4_PT.', Nexp.', W_mec.', m_dot_th.', eta_v.', Vpump.', m_dot_th_bis.', Delta_Tsh1.', Delta_Tsh2.', Delta_Tsc4.', Q_ev_w.', Q_cd_w.', h2_r_is.', s2_r_is.', h2_is.', eta_is.', eta_is_r.');
%t_steady_Rawdatas2 = table(Time_steady1.', Time_steady2.', P1_means.', P2_means.', Nexp_means.', Npump_means.', W_mec.', X1_PD.', eta_v.', eta_is_r.', (P1_means./P2_means)');


% Nommer les colonnes de la table
%t_steady_sensor69.Properties.VariableNames = {'t1', 't2', 'P1', 'T1', 'P2', 'T2', 'P4', 'T4', 'P7', 'T7', 'T ev in', 'T ev out', 'm ORC', 'm ev', 'Npump', 'T cd in', 'T cd out', 'm cd', 'T', 'Nexp', 'Wexp', 'dens1', 'dens2' , 'h1_oil', 's1_oil', 'd1_oil', 'h2_oil', 's2_oil', 'd2_oil', 'h4_oil', 'h7_oil', 'd7_oil', 'd1_cali', 'd1_r_cali', 'h1_r_PD', 's1_r_PH', 'h1_PD', 's1_PH', 'h1_l', 'h1_v',  'X1_PD', 'h1_r_PT', 'h1_PT', 's1_r_PT', 's1_PT', 'd1_l', 'd1_v', 'Xv', 'd1_r_PQ', 'd1_PQ', 'h7_r_PT', 'h7_PT', 'd7_r_PT', 'd7_PT', 'h4_PT', 'Nexp_RPM', 'W_mec', 'm_dot_th', 'eta_v', 'Vpump', 'm_dot_th_bis', 'Delta_Tsh1', 'Delta_Tsh2', 'Delta_Tsc4', 'Q_ev_w', 'Q_cd_w', 'h2_r_is', 's2_r_is', 'h2_is', 'eta_is', 'eta_is_r'};
%t_steady_Rawdatas2.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'Nexp', 'Npump', 'W_mec', 'X', 'eta_v', 'eta_is_r', 'rp'}; 

% Afficher la table
%writetable(t_steady_sensor69, 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Post_processing_steady_sensor69.xlsx', 'Sheet', 1);

%% Matrix for GPExp (one per experimental points)
% 
% % Convertir la matrice en une table
%GPExp_Rawdatas1 = table(Timestep_point(1,:).', Timestep_point(2,:).', P1_mean_points, P2_mean_points, Nexp_mean_points, Npump_mean_points, W_mec_mean_points, X_mean_points, eta_v_mean_points, eta_is_r_mean_points, rp_mean_points);
GPExp_Rawdatas2 = table(Timestep_point(1,:).', Timestep_point(2,:).', P1_mean_points, P2_mean_points, Nexp_mean_points, Npump_mean_points, W_mec_mean_points, X_mean_points, eta_v_mean_points, eta_is_r_mean_points, rp_mean_points);

% %Nommer les colonnes de la table
%GPExp_Rawdatas1.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'Nexp', 'Npump', 'W_mec', 'X', 'eta_v', 'eta_is_r', 'rp'};
GPExp_Rawdatas2.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'Nexp', 'Npump', 'W_mec', 'X', 'eta_v', 'eta_is_r', 'rp'}; 

 
% % Afficher la table
writetable(GPExp_Rawdatas2, 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/GPExp_Rawdatas2.xlsx', 'Sheet', 1);

%% Matrix for properties (additional datas)
% Convertir la matrice en une table
%Mean_Prop_Rawdatas1 = table(Timestep_point(1,:).', Timestep_point(2,:).', P1_mean_points, P2_mean_points, T1_mean_points, T2_mean_points, d1_mean_points, d1_r_mean_points, T_ev_in_mean_points, T_ev_out_mean_points, m_dot_ev_mean_points, T_cd_in_mean_points, T_cd_out_mean_points, m_dot_cd_mean_points, Nexp_mean_points, Npump_mean_points, W_mec_mean_points, T_mean_points, m_dot_mean_points, X_mean_points, eta_v_mean_points, eta_is_r_mean_points, rp_mean_points);
Mean_Prop_Rawdatas2 = table(Timestep_point(1,:).', Timestep_point(2,:).', P1_mean_points, P2_mean_points, T1_mean_points, T2_mean_points, d1_mean_points, d1_r_mean_points, T_ev_in_mean_points, T_ev_out_mean_points, m_dot_ev_mean_points, T_cd_in_mean_points, T_cd_out_mean_points, m_dot_cd_mean_points, Nexp_mean_points, Npump_mean_points, W_mec_mean_points, T_mean_points, m_dot_mean_points, X_mean_points, eta_v_mean_points, eta_is_r_mean_points, rp_mean_points);% %Nommer les colonnes de la table


%Mean_Prop_Rawdatas1.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'T1', 'T2', 'd1', 'd1_r', 'T_ev_in', 'T_ev_out', 'm_dot_ev', 'T_cd_in', 'T_cd_out', 'm_dot_cd', 'Nexp', 'Npump', 'W_mec', 'T_exp', 'm_dot_ORC', 'X', 'eta_v', 'eta_is_r', 'rp'};
Mean_Prop_Rawdatas2.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'T1', 'T2', 'd1', 'd1_r', 'T_ev_in', 'T_ev_out', 'm_dot_ev', 'T_cd_in', 'T_cd_out', 'm_dot_cd', 'Nexp', 'Npump', 'W_mec', 'T_exp', 'm_dot_ORC', 'X', 'eta_v', 'eta_is_r', 'rp'};

 
% % Afficher la table
%writetable(Mean_Prop_Rawdatas1, 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Mean_Prop_Rawdatas1.xlsx', 'Sheet', 1);
writetable(Mean_Prop_Rawdatas2, 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Mean_Prop_Rawdatas2.xlsx', 'Sheet', 1);



