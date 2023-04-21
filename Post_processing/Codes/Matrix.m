%% Matrix of the values exported in excel (all the steady-states)

%A = horzcat(Time_steady1.', Time_steady2.', P1_means.', T1_means.'); %, P2_means.', T2_means.', P4_means.', T4_means.', P7_means.', T7_means.', Tev_in_means.', Tev_out_means.', m_dot_ORC_means.', m_dot_w_evap_means.', Npump_means.', Tcd_in_means.', Tcd_out_means.', m_dot_w_cond_means.', TExpander_means.', Nexp_means.', Wexp_means.', dens1_means.', dens2_means.', h1_oil.', s1_oil.', d1_oil.');

% Convertir la matrice en une table
t_steady = table(Time_steady1.', Time_steady2.', P1_means.', T1_means.', P2_means.',T2_means.', P4_means.', T4_means.', P7_means.', T7_means.', Tev_in_means.', Tev_out_means.', m_dot_ORC_means.', m_dot_w_evap_means.', Npump_means.', Tcd_in_means.', Tcd_out_means.', m_dot_w_cond_means.', TExpander_means.', Nexp_means.', Wexp_means.', dens1_means.', dens2_means.', h1_oil.', s1_oil.', d1_oil.', h2_oil.', s2_oil.', d2_oil.', h4_oil.', h7_oil.', d7_oil.', d1_cali.', d1_r_cali.', h1_r_PD.', s1_r_PH.', h1_PD.', s1_PH.', h1_l.', h1_v.', X1_PD.', h1_r_PT.', h1_PT.', s1_r_PT.', s1_PT.', d1_l.', d1_v.', Xv.', d1_r_PQ.', d1_PQ.', h7_r_PT.', h7_PT.', d7_r_PT.', d7_PT.', h4_PT.', Nexp.', W_mec.', m_dot_th.', eta_v.', Vpump.', m_dot_th_bis.', Delta_Tsh1.', Delta_Tsh2.', Delta_Tsc4.', Q_ev_w.', Q_cd_w.', h2_r_is.', s2_r_is.', h2_is.', eta_is.', eta_is_r.');


% Nommer les colonnes de la table
t_steady.Properties.VariableNames = {'t1', 't2', 'P1', 'T1', 'P2', 'T2', 'P4', 'T4', 'P7', 'T7', 'T ev in', 'T ev out', 'm ORC', 'm ev', 'Npump', 'T cd in', 'T cd out', 'm cd', 'T', 'Nexp', 'Wexp', 'dens1', 'dens2' , 'h1_oil', 's1_oil', 'd1_oil', 'h2_oil', 's2_oil', 'd2_oil', 'h4_oil', 'h7_oil', 'd7_oil', 'd1_cali', 'd1_r_cali', 'h1_r_PD', 's1_r_PH', 'h1_PD', 's1_PH', 'h1_l', 'h1_v',  'X1_PD', 'h1_r_PT', 'h1_PT', 's1_r_PT', 's1_PT', 'd1_l', 'd1_v', 'Xv', 'd1_r_PQ', 'd1_PQ', 'h7_r_PT', 'h7_PT', 'd7_r_PT', 'd7_PT', 'h4_PT', 'Nexp_RPM', 'W_mec', 'm_dot_th', 'eta_v', 'Vpump', 'm_dot_th_bis', 'Delta_Tsh1', 'Delta_Tsh2', 'Delta_Tsc4', 'Q_ev_w', 'Q_cd_w', 'h2_r_is', 's2_r_is', 'h2_is', 'eta_is', 'eta_is_r'};

% Afficher la table
%writetable(t, 'Post_processing_firstexp.xlsx', 'Sheet', 1);

%% Matrix of the mean values (one per experimental points)

% Convertir la matrice en une table
t_mean = table(Timestep_point(1,:).', Timestep_point(2,:).', P1_mean_points, P2_mean_points, Nexp_mean_points, W_mec_mean_points, X_mean_points, eta_v_mean_points, eta_is_r_mean_points, rp_mean_points);

%Nommer les colonnes de la table
t_mean.Properties.VariableNames = {'t1', 't2', 'P1','P2', 'Nexp', 'W_mec', 'X', 'eta_v', 'eta_is_r', 'rp'}; 

% Afficher la table
% writetable(t_mean, 'Post_processing_firstexp.xlsx', 'Sheet', 4);

