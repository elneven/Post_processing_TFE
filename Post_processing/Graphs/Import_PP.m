%% Import post-processing

filename_PP1 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Post_processing_Rawadatas1.xlsx';
filename_PP2 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Post Processing Results/Post_processing_sensor69.xlsx';

PP1 = readtable(filename_PP1, 'Sheet', 1, 'Range', 'A2:K28');
PP2 = readtable(filename_PP2, 'Sheet', 1, 'Range', 'A2:K15');

PP = vertcat(PP1, PP2);

P1_PP = PP.Var3;
P2_PP = PP.Var4;
Nexp_PP = PP.Var5;
Npump_PP = PP.Var6;
Wexp_PP = PP.Var7;
X_PP = PP.Var8;
eta_v_PP = PP.Var9;
eta_is_PP = PP.Var10;
rp_PP = PP.Var11;




