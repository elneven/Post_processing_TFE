%% 1. Import Rawdatas (run Rawdatas)

%% 2. Steady states (run steady states)
% Function that finds all of the steady states
[Time_steady] = steady_states(P1_rawdatas, P2_rawdatas, Tev_in_rawdatas, Tev_out_rawdatas, Q_ev_rawdatas, m_dot_ORC_rawdatas);

% Calculates the means of the steady states of each rawdatas
Time_steady1 = min(Time_steady);
Time_steady2 = max(Time_steady);

P1_steady = P1_rawdatas(Time_steady);
P1_means = mean(P1_steady,1);

T1_steady = T1_rawdatas(Time_steady);
T1_means = mean(T1_steady,1);

P2_steady = P2_rawdatas(Time_steady);
P2_means = mean(P2_steady,1);

T2_steady = T2_rawdatas(Time_steady);
T2_means = mean(T2_steady,1);

P4_steady = P4_rawdatas(Time_steady);
P4_means = mean(P4_steady,1);

T4_steady = T4_rawdatas(Time_steady);
T4_means = mean(T4_steady,1);

P7_steady = P7_rawdatas(Time_steady);
P7_means = mean(P7_steady,1);

T7_steady = T7_rawdatas(Time_steady);
T7_means = mean(T7_steady,1);

Tev_in_steady = Tev_in_rawdatas(Time_steady);
Tev_in_means = mean(Tev_in_steady,1);

Tev_out_steady = Tev_out_rawdatas(Time_steady);
Tev_out_means = mean(Tev_out_steady,1);

Qev_steady = Q_ev_rawdatas(Time_steady);
Qev_means = mean(Qev_steady,1);

m_dot_ORC_steady = m_dot_ORC_rawdatas(Time_steady);
m_dot_ORC_means = mean(m_dot_ORC_steady,1);

m_dot_w_evap_steady = m_dot_w_evap_rawdatas(Time_steady);
m_dot_w_evap_means = mean(m_dot_w_evap_steady,1);

Npump_steady = Npump_rawdatas(Time_steady);
Npump_means = max(Npump_steady);

Tcd_in_steady = Tcd_in_rawdatas(Time_steady);
Tcd_in_means = mean(Tcd_in_steady,1);

Tcd_out_steady = Tcd_out_rawdatas(Time_steady);
Tcd_out_means = mean(Tcd_out_steady,1);

m_dot_w_cond_steady = m_dot_w_cond_rawdatas(Time_steady);
m_dot_w_cond_means = mean(m_dot_w_cond_steady,1);

TExpander_steady = TExpander_rawdatas(Time_steady);
TExpander_means = mean(TExpander_steady,1);

Nexp_steady = Nexp_rawdatas(Time_steady);
Nexp_means = mean(Nexp_steady,1);

Wexp_steady = Wexp_rawdatas(Time_steady);
Wexp_means = mean(Wexp_steady,1);

dens1_steady = dens1_rawdatas(Time_steady);
dens1_means = mean(dens1_steady,1);

dens2_steady = dens2_rawdatas(Time_steady);
dens2_means = mean(dens2_steady,1);

%% 3. Thermodynamic properties

%Oil properties
h1_oil = zeros(1, length(Time_steady1));
s1_oil = zeros(1, length(Time_steady1));
d1_oil = zeros(1, length(Time_steady1));
h2_oil = zeros(1, length(Time_steady1));
s2_oil = zeros(1, length(Time_steady1));
d2_oil = zeros(1, length(Time_steady1));
h4_oil = zeros(1, length(Time_steady1));
h7_oil = zeros(1, length(Time_steady1));
d7_oil = zeros(1, length(Time_steady1));
%Delta_s_oil_12 = zeros(1, length(Time_steady));

d1_cali = zeros(1, length(Time_steady1));
d1_r_cali = zeros(1, length(Time_steady1));

h1_r_PD = zeros(1, length(Time_steady1));
s1_r_PH = zeros(1, length(Time_steady1));
h1_PD = zeros(1, length(Time_steady1));
s1_PH = zeros(1, length(Time_steady1));
h1_l = zeros(1, length(Time_steady1));
h1_v = zeros(1, length(Time_steady1));
X1_PD = zeros(1, length(Time_steady1));

h1_r_PT = zeros(1, length(Time_steady1));
h1_PT = zeros(1, length(Time_steady1));
s1_r_PT = zeros(1, length(Time_steady1));
s1_PT = zeros(1, length(Time_steady1));
d1_l = zeros(1, length(Time_steady1));
d1_v = zeros(1, length(Time_steady1));
Xv = zeros(1, length(Time_steady1));
d1_r_PQ = zeros(1, length(Time_steady1));
d1_PQ = zeros(1, length(Time_steady1));

h7_r_PT = zeros(1, length(Time_steady1));
h7_PT = zeros(1, length(Time_steady1));
d7_r_PT = zeros(1, length(Time_steady1));
d7_PT = zeros(1, length(Time_steady1));
h4_PT = zeros(1, length(Time_steady1));
h4_l = zeros(1, length(Time_steady1));
h4_v = zeros(1, length(Time_steady1));

Nexp = zeros(1, length(Time_steady1));
W_mec = zeros(1, length(Time_steady1));
m_dot_th = zeros(1, length(Time_steady1));
eta_v = zeros(1, length(Time_steady1));
Vpump = zeros(1, length(Time_steady1));
m_dot_th_bis = zeros(1, length(Time_steady1));
Delta_Tsh1 = zeros(1, length(Time_steady1));
Delta_Tsh2 = zeros(1, length(Time_steady1));
Delta_Tsc4 = zeros(1, length(Time_steady1));

Q_ev_w = zeros(1, length(Time_steady1));
Q_cd_w = zeros(1, length(Time_steady1));
h1_balance = zeros(1, length(Time_steady1));
h1_r_balance = zeros(1, length(Time_steady1));
h4_balance = zeros(1, length(Time_steady1));
X4 = zeros(1, length(Time_steady1));
h2_r_is = zeros(1, length(Time_steady1));
s2_r_is = zeros(1, length(Time_steady1));
T2_is = zeros(1, length(Time_steady1));
s2_oil_is = zeros(1, length(Time_steady1));
h2_oil_is = zeros(1, length(Time_steady1));
h2_is = zeros(1, length(Time_steady1));
eta_is_mix = zeros(1, length(Time_steady1));
eta_is_r = zeros(1, length(Time_steady1));

for i=1:length(Time_steady1)
    
    [h1_oil(i), s1_oil(i), d1_oil(i), h2_oil(i), s2_oil(i), d2_oil(i), h4_oil(i), h7_oil(i), d7_oil(i), d1_cali(i), d1_r_cali(i), h1_r_PD(i), s1_r_PH(i), h1_PD(i), s1_PH(i), h1_l(i), h1_v(i), X1_PD(i), h1_r_PT(i), h1_PT(i), s1_r_PT(i), s1_PT(i), d1_l(i), d1_v(i), Xv(i), d1_r_PQ(i), d1_PQ(i), h7_r_PT(i), h7_PT(i), d7_r_PT(i), d7_PT(i), h4_PT(i), Nexp(i), W_mec(i), m_dot_th(i), eta_v(i), Vpump(i), m_dot_th_bis(i), Delta_Tsh1(i), Delta_Tsh2(i), Delta_Tsc4(i), Q_ev_w(i), Q_cd_w(i), h2_r_is(i), s2_r_is(i), T2_is(i), s2_oil_is(i), h2_oil_is(i), h2_is(i), eta_is_mix(i), eta_is_r(i)] = Thermostates(m_dot_ORC_means(i), P1_means(i), T1_means(i), P2_means(i), T2_means(i), P4_means(i), T4_means(i), P7_means(i), T7_means(i), TExpander_means(i), Nexp_means(i), Npump_means(i), Wexp_means(i), m_dot_w_evap_means(i), Tev_in_means(i),Tev_out_means(i), m_dot_w_cond_means(i), Tcd_in_means(i), Tcd_out_means(i), dens1_means(i), dens1_means(i));

    
end

%% 4.  Separates the datas







