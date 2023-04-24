function [Time_steady] = steady_states(P1_rawdatas, P2_rawdatas, Tev_in_rawdatas, Tev_out_rawdatas, Q_ev_rawdatas, m_dot_ORC_rawdatas)


%Calculate the difference between the datas and their previous ones
diff_P1 = abs(diff(P1_rawdatas));
P1_steady_ind = diff_P1<=0.12; %Index of the steady points for P1


diff_P2 = abs(diff(P2_rawdatas));
P2_steady_ind = diff_P2<=0.05;

diff_Tev_in = abs(diff(Tev_in_rawdatas));
Tev_in_steady_ind = diff_Tev_in<=0.2;

diff_Tev_out = abs(diff(Tev_out_rawdatas));
Tev_out_steady_ind = diff_Tev_out<=0.2;

diff_Q_ev = abs(diff(Q_ev_rawdatas));
Q_ev_steady_ind = diff_Q_ev<=1.1;

TimeStep_steady_ind = zeros(length(P1_rawdatas),1); %Index of the steady states points

p=1;
N=20;
Time_steady = zeros(N, 80);
l=1;
epsilon_P1 = 0.16;
epsilon_m_ORC = 0.018; 

for i=1:length(P1_rawdatas)-1
    
    if P1_steady_ind(i)==1 && P2_steady_ind(i)==1 && Tev_in_steady_ind(i)==1 && Tev_out_steady_ind(i)==1 && Q_ev_steady_ind(i)==1
        TimeStep_steady_ind(i)=1;
    end
    
    if TimeStep_steady_ind(i)==1 && p<N
        p = p+1;
    elseif p==N && abs(P1_rawdatas(i-p+1)-P1_rawdatas(i))<epsilon_P1 && P1_rawdatas(i)>5.6 && P2_rawdatas(i)>1.9 && P2_rawdatas(i-p+1)>1.9 && abs(m_dot_ORC_rawdatas(i-p+1)-m_dot_ORC_rawdatas(i))<epsilon_m_ORC
        indices_steady=i-p+1:i;
        Time_steady(:,l) = indices_steady.';
        l=l+1;
        p=1;
    else
        p=1;
    end
    
    
end

%% Find the means of all the interesting datas
% Trouver les colonnes non-nulles
nonZeroCols = any(Time_steady, 1);

% Sélectionner les colonnes non-nulles
Time_steady = Time_steady(:, nonZeroCols);


end
