
%Calculate the difference between the datas and their previous ones
diff_P1 = abs(diff(P1_means));
diff_P2 = abs(diff(P2_means));
diff_Nexp = abs(diff(Nexp_means));
diff_Npump = abs(diff(Npump_means));

N=27;
Timestep_point = zeros(2, N);
index_point = zeros(2, N);
k=1;
Timestep_point(1,1) = Time_steady1(1);
index_point(1,1) = 1;
l=1;
first = 1;


for i=1:length(P1_means)
    
    if i==length(P1_means)
            Timestep_point(2,k) = Time_steady1(i);
            index_point(2,k) = i;
            break;
     end
    
    if diff_P1(i)<=1 && diff_P2(i)<=0.1 && diff_Nexp(i)<=5 && diff_Npump(i)<=5 && abs(P2_means(first)-P2_means(i))<0.2
        continue;
        
    else
        Timestep_point(2,k) = Time_steady1(i);
        index_point(2,k) = i;
        Timestep_point(1,k+1) = Time_steady1(i+1);
        index_point(1,k+1) = i+1;
        k=k+1;
        first = i;
    end
    
end

P1_mean_points = zeros(N, 1);
P2_mean_points = zeros(N, 1);
T1_mean_points = zeros(N, 1);
T2_mean_points = zeros(N, 1);
d1_mean_points = zeros(N, 1);
d1_r_mean_points = zeros(N, 1);

T_ev_in_mean_points = zeros(N, 1);
T_ev_out_mean_points = zeros(N, 1);
m_dot_ev_mean_points = zeros(N, 1);
T_cd_in_mean_points = zeros(N, 1);
T_cd_out_mean_points = zeros(N, 1);
m_dot_cd_mean_points = zeros(N, 1);

Nexp_mean_points = zeros(N, 1);
Npump_mean_points = zeros(N, 1);
W_mec_mean_points = zeros(N, 1);
T_mean_points = zeros(N, 1);
m_dot_mean_points = zeros(N,1);
X_mean_points = zeros(N, 1);
eta_v_mean_points = zeros(N, 1);
eta_is_r_mean_points = zeros(N, 1);
rp_mean_points = zeros(N, 1);

for i = 1:N
    % Extraction des bornes de l'intervalle
    
    starting = index_point(1, i);
    ending = index_point(2, i);
    
    % Extraction des valeurs de pression correspondantes
    P1_point = P1_means(starting:ending);
    P2_point = P2_means(starting:ending);
    T1_point = T1_means(starting:ending);
    T2_point = T2_means(starting:ending);
    d1_point = d1_cali(starting:ending);
    d1_r_point = d1_r_cali(starting:ending);
    
    T_ev_in_point = Tev_in_means(starting:ending);
    T_ev_out_point = Tev_out_means(starting:ending);
    m_dot_ev_point = m_dot_w_evap_means(starting:ending);
    T_cd_in_point = Tcd_in_means(starting:ending);
    T_cd_out_point = Tcd_out_means(starting:ending);
    m_dot_cd_point = m_dot_w_cond_means(starting:ending);
    
    Nexp_point = Nexp_means(starting:ending);
    Npump_point = Npump_means(starting:ending);
    W_mec_point = W_mec(starting:ending);
    m_dot_point = m_dot_ORC_means(starting:ending);
    T_point = TExpander_means(starting:ending);
    X_point = X1_PD(starting:ending);
    eta_v_point = eta_v(starting:ending);
    eta_is_r_point = eta_is_r(starting:ending);
    rp_point = P1_point/P2_point;

    % Calcul de la moyenne
    P1_mean_point = mean(P1_point);
    P2_mean_point = mean(P2_point);
    T1_mean_point = mean(T1_point);
    T2_mean_point = mean(T2_point);
    d1_mean_point = mean(d1_point);
    d1_r_mean_point = mean(d1_r_point);
    
    T_ev_in_mean_point = mean(T_ev_in_point);
    T_ev_out_mean_point = mean(T_ev_out_point);
    m_dot_ev_mean_point = mean(m_dot_ev_point);
    T_cd_in_mean_point = mean(T_cd_in_point);
    T_cd_out_mean_point = mean(T_cd_out_point);
    m_dot_cd_mean_point = mean(m_dot_cd_point);
    
    
    Nexp_mean_point = mean(Nexp_point);
    Npump_mean_point = mean(Npump_point);
    W_mec_mean_point = mean(W_mec_point);
    m_dot_mean_point = mean(m_dot_point);
    T_mean_point = mean(T_point);
    X_mean_point = mean(X_point);
    eta_v_mean_point = mean(eta_v_point);
    eta_is_r_mean_point = mean(eta_is_r_point);
    rp_mean_point = mean(rp_point);
    
    % Stockage de la moyenne dans le vecteur
    P1_mean_points(i) = P1_mean_point;
    P2_mean_points(i) = P2_mean_point;
    T1_mean_points(i) = T1_mean_point;
    T2_mean_points(i) = T2_mean_point;
    d1_mean_points(i) = d1_mean_point;
    d1_r_mean_points(i) = d1_r_mean_point;
    
    T_ev_in_mean_points(i) = T_ev_in_mean_point;
    T_ev_out_mean_points(i) = T_ev_out_mean_point;
    m_dot_ev_mean_points(i) = m_dot_ev_mean_point;
    T_cd_in_mean_points(i) = T_cd_in_mean_point;
    T_cd_out_mean_points(i) = T_cd_out_mean_point;
    m_dot_cd_mean_points(i) = m_dot_cd_mean_point;
    
    
    Nexp_mean_points(i) = Nexp_mean_point;
    Npump_mean_points(i) = Npump_mean_point;
    W_mec_mean_points(i) = W_mec_mean_point;
    m_dot_mean_points(i) = m_dot_mean_point;
    T_mean_points(i) = T_mean_point;
    X_mean_points(i) = X_mean_point;
    eta_v_mean_points(i) = eta_v_mean_point;
    eta_is_r_mean_points(i) = eta_is_r_mean_point;
    rp_mean_points(i) = rp_mean_point;
end

