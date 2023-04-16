function [h1_oil, s1_oil, d1_oil, h2_oil, s2_oil, d2_oil, h4_oil, h7_oil, d7_oil, d1_cali, d1_r_cali, h1_r_PD, s1_r_PH, h1_PD, s1_PH, h1_l, h1_v, X1_PD, h1_r_PT, h1_PT, s1_r_PT, s1_PT, d1_l, d1_v, Xv, d1_r_PQ, d1_PQ, h7_r_PT, h7_PT, d7_r_PT, d7_PT, h4_PT, Nexp, W_mec, m_dot_th, eta_v, Vpump, m_dot_th_bis, Delta_Tsh1, Delta_Tsh2, Delta_Tsc4, Q_ev_w, Q_cd_w, h2_r_is, s2_r_is, h2_is, eta_is, eta_is_r] = Thermostates(m_dot_ORC, P1_bar, T1_C, P2_bar, T2_C, P4_bar, T4_C, P7_bar, T7_C, T, Ngen, Npump, W_exp, m_dot_w_ev, Tev_in_C, Tev_out_C, m_dot_w_cd, Tcd_in_C, Tcd_out_C, dens1, dens2)

%% Import
%import CoolProp.PropsSI
import py.CoolProp.CoolProp.PropsSI

%% Datas
Fluid = 'R1233zdE';
P1 = P1_bar*100000;
T1 = T1_C+273.15;
P2 = P2_bar*100000;
T2 = T2_C+273.15;
P4 = P4_bar*100000;
T4 = T4_C + 273.15;
P7 = P7_bar*100000;
T7 = T7_C+273.15;
Tev_in = Tev_in_C+273.15;
Tev_out = Tev_out_C + 273.15;
Tcd_in = Tcd_in_C+273.15;
Tcd_out = Tcd_out_C + 273.15;

%% Constant datas
Mass_oil = 1.15;
Mass_ref = 15.5;
rf = Mass_oil/Mass_ref;
OCR = rf/(1+rf);

CF_ev = 1;
CF_cd = 1;

Eff_belt = 0.9;
T_Boost = 0.5;
Slope = 0.486;
Intercept1 = 9.43;
V_dis = 0.0000863; %[m^3/rev]
rv = 2.3;
iNexp = 1.7;
Fric_slope = 0.074;
Intercept2 = -10.00;

a0 = 996;
a1 = -0.7547;
a2 = 1158.2;
a3 = 2.3639;
a4 = 1498.1976;
a5 = 54.5739;

Cp_eau = 4200; %[J/kg*K]


%% 1. Oil properties
% Oil properties at the expander inlet/evaporator outlet
h1_oil = ((a2*T1 + (a3*T1^2)/2)/1000) - 401.55+217;
s1_oil = (a4*log(T1) + a5)/1000 - (a4*log(273.15)+a5)/1000 + 1.05;
d1_oil = a0 + a1*T1_C;

% Oil properties at the expander outlet/condenser inlet
h2_oil = ((a2*T2 + (a3*T2^2)/2)/1000) - 401.55+217;
s2_oil = (a4*log(T2) + a5)/1000 - (a4*log(273.15)+a5)/1000 + 1.05;
d2_oil = a0 + a1*T2_C;

% Oil enthalpy at the Condenser outlet/receiver inlet
h4_oil = ((a2*T4 + (a3*T4^2)/2)/1000) - 401.55+217;
 
% Oil properties at the evap inlet/pump outlet
h7_oil = (a2*T7 + (a3*T7^2)/2)/1000; %% PAS BIEN COMPRIISSSS
d7_oil = a0 + a1*T7_C;
 
%delta s,oil
Delta_s_oil_12 = ((((T1+T2)/2)*a3 + a2)/1000)*log(T2/T1);
 
%% 2. Calibrated properties
% Expander inlet density mix
d1_cali = Slope*dens1+Intercept1;
 
% Expander inlet refrigerant
v1_r_cali = ((1/d1_cali)-OCR*(1/d1_oil))/(1-OCR);
d1_r_cali = 1/v1_r_cali;

%% 3. Properties based on (P,T) or (P,D) or (P,H)
% At the inlet of the expander
h1_r_PD = PropsSI('H', 'P', P1, 'D', d1_r_cali, Fluid)/1000; %[kJ/kg]
s1_r_PH = PropsSI('S', 'P', P1, 'H', h1_r_PD*1000, Fluid)/1000; %[kJ/kgT]

h1_PD = (1-OCR)*h1_r_PD + OCR*h1_oil;
s1_PH = (1-OCR)*s1_r_PH + OCR*s1_oil;

h1_l = PropsSI('H', 'P', P1, 'Q', 0, Fluid)/1000;
h1_v = PropsSI('H', 'P', P1, 'Q', 1, Fluid)/1000;
X1_PD = min(1, (h1_r_PD-h1_l)/(h1_v-h1_l));

if X1_PD==1
    h1_r_PT = PropsSI('H', 'P', P1, 'T', T1, Fluid)/1000; %[kJ/kg]
    h1_PT = (1-OCR)*h1_r_PT + OCR*h1_oil;
    
    s1_r_PT = PropsSI('S', 'P', P1, 'T', T1, Fluid)/1000;
    s1_PT = (1-OCR)*s1_r_PT + OCR*s1_oil;
    
else
    h1_r_PT = 0;
    h1_PT = 0;
    s1_r_PT = 0;
    s1_PT = 0;  
end

d1_l = PropsSI('D', 'P', P1, 'Q', 0, Fluid);
d1_v = PropsSI('D', 'P', P1, 'Q', 1, Fluid);
Xv = (1/d1_r_cali-1/d1_l)/(1/d1_v-1/d1_l);
d1_r_PQ = PropsSI('D', 'P', P1, 'Q', X1_PD, Fluid);
v1_PQ = (1/d1_r_PQ)*(1-OCR) + OCR*(1/d1_oil);
d1_PQ = 1/v1_PQ;

% Expander outlet



% Refrigerant evap inlet
h7_r_PT = PropsSI('H', 'P', P7, 'T', T7, Fluid)/1000; %[kJ/kg]
h7_PT = (1-OCR)*h7_r_PT + OCR*h7_oil;
d7_r_PT = PropsSI('D', 'P', P7, 'T', T7, Fluid);
d7_PT = (1-OCR)*d7_r_PT + OCR*d7_oil;

% At the expander outlet 
s2_r_calc = s1_r_PH-(OCR*Delta_s_oil_12)/(1-OCR);

% Condenser outlet
h4_PT = PropsSI('H', 'P', P4, 'T', T4, Fluid)/1000;

h4_l = PropsSI('H', 'P', P4, 'Q', 0, Fluid)/1000;
h4_v = PropsSI('H', 'P', P4, 'Q', 1, Fluid)/1000;
s4_l = PropsSI('S', 'P', P4, 'Q', 0, Fluid)/1000; %POURQUOI???
s4_v = PropsSI('S', 'P', P4, 'Q', 1, Fluid)/1000; %POURQUOI???
 
%% 4. Performances
Nexp = iNexp*Ngen;
W_mec = -((Ngen*pi)/30)*((T-T_Boost)/Eff_belt) + (Fric_slope*Nexp - 10); % C'est quoi le 1000000000?
m_dot_th = (V_dis/rv) * (Nexp/60) * d1_cali;
eta_v = m_dot_th/m_dot_ORC;
Vpump = 0.0214*Npump - 0.6244;
m_dot_th_bis = (Vpump/60000)*d7_PT;
 
% Superheating and subcoolings
Delta_Tsh1 = T1 - PropsSI('T', 'P', P1, 'Q', 1, Fluid);
Delta_Tsh2 = T2 - PropsSI('T', 'P', P2, 'Q', 1, Fluid);
Delta_Tsc4 = PropsSI('T', 'P', P4, 'Q', 1, Fluid) - T4;
 
%% 5.Heat balances
% Balance côté eau
Q_ev_w = 4200*(Tev_in-Tev_out)*m_dot_w_ev/1000; %[kW]
Q_cd_w = 4200*(Tcd_out-Tcd_in)*m_dot_w_cd/1000; %[kW]
 
%Refrigerant side
if X1_PD==1
    Q_ev_r = m_dot_ORC*(h1_PT-h7_PT);
    %difference between the two heat balances
    dq_ev = ((Q_ev_r-Q_ev_w)/CF_ev)/(Q_ev_w/CF_ev);
else
    Q_ev_r = m_dot_ORC*(h1_PD-h7_PT);
    dq_ev = ((Q_ev_r-Q_ev_w)/CF_ev)/(Q_ev_w/CF_ev);
end

 
%Properties (from balance)
h1_balance = Q_ev_w/m_dot_ORC + h7_PT;
h1_r_balance = (h1_balance - OCR*h1_oil)/(1-OCR); 
h4_balance = h4_PT + (Q_cd_w/m_dot_ORC);
X4 = (h4_balance-h4_l)/(h4_v-h4_l);

%% Iteration/ h2_r_is

if X1_PD==1
    
%     h2_r_is = PropsSI('H', 'P', P2, 'S', s1_r_PT*1000, Fluid)/1000;
%     s2_r_is = s1_r_PT;
%     
%     h2_is = (1-OCR)*h2_r_is+OCR*h2_oil;
%     
%     eta_is = W_mec/(m_dot_ORC*(h1_PT-h2_is)*1000);
    h2_r_is = Bissection(a4, a5, P2, OCR, Fluid, s1_PH);
    
    s2_r_is = PropsSI('S', 'P', P2, 'H', h2_r_is*1000, Fluid)/1000;
    T2_is = PropsSI('T', 'P', P2, 'H', h2_r_is*1000, Fluid);
    s2_oil_is = (a4*log(T2_is) + a5)/1000 - (a4*log(273.15)+a5)/1000 + 1.05;
    h2_oil_is = ((a2*T2_is + (a3*T2_is^2)/2)/1000) - 401.55+217;

    h2_is = (1-OCR)*h2_r_is + OCR*h2_oil_is;
    
    eta_is = W_mec/(m_dot_ORC*(h1_PD-h2_is)*1000);
else
    
    h2_r_is = Bissection(a4, a5, P2, OCR, Fluid, s1_PH);
    
    s2_r_is = PropsSI('S', 'P', P2, 'H', h2_r_is*1000, Fluid)/1000;
    T2_is = PropsSI('T', 'P', P2, 'H', h2_r_is*1000, Fluid);
    s2_oil_is = (a4*log(T2_is) + a5)/1000 - (a4*log(273.15)+a5)/1000 + 1.05;
    h2_oil_is = ((a2*T2_is + (a3*T2_is^2)/2)/1000) - 401.55+217;

    h2_is = (1-OCR)*h2_r_is + OCR*h2_oil_is;
    
    eta_is = W_mec/(m_dot_ORC*(h1_PD-h2_is)*1000);
end


eta_is_r = (W_mec/1000)/(m_dot_ORC*(1-OCR)*(h1_r_PD-h2_r_is) + OCR*(m_dot_ORC/d1_oil)*(P1_bar-P2_bar)*100);




end