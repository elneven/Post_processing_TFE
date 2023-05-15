%% Import post-processing

filename_PP = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/PP_exp1.xlsx';
%filename_PP2 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Post_processing_sensor69.xlsx';

PP = readtable(filename_PP, 'Sheet', 1, 'Range', 'A2:W48');
%PP2 = readtable(filename_PP2, 'Sheet', 1, 'Range', 'A2:K15');

%PP = vertcat(PP1, PP2);

P1_PP = PP.Var3;
P2_PP = PP.Var4;
Nexp_PP = PP.Var15;
Npump_PP = PP.Var16;
Wexp_PP = PP.Var17;
m_dot_PP = PP.Var19;
X_PP = PP.Var20;
eta_v_PP = PP.Var21;
eta_is_PP = PP.Var22;
rp_PP = PP.Var23;




