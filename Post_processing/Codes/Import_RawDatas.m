%% Read data from a table
filename_Rawdatas1 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Rawdatas/RawDatas_1.xlsx';
filename_Rawdatas2 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Rawdatas/RawDatas_2.xlsx';
filename_Rawdatas3 = 'C:\Users\elise\OneDrive\Documents\MATLAB\Thesis\Post_processing_TFE\Post_processing\Rawdatas/Sensors_69.xlsx';

RawData1 = readtable(filename_Rawdatas1, 'Sheet', 'RawData', 'Range', 'A511:BW2512');
RawData2 = readtable(filename_Rawdatas2, 'Sheet', 'RawData', 'Range', 'A131:BW992');
RawData3 = readtable(filename_Rawdatas3, 'Sheet', 'RawData', 'Range', 'A39:BW1978');

RawData = vertcat(RawData2);

%% Read raw datas
%Time = RawData.Var1;
P1_rawdatas = RawData.Var2;   %P1EvaporatorOutlet [bar]
T1_rawdatas = RawData.Var3;   %T1EvaporatorOutlet [C];
P2_rawdatas = RawData.Var4;   %P2ExpanderOutlet  [bar];
T2_rawdatas = RawData.Var5;   %T2ExpanderOutlet  [C];
%P3_rawdatas = RawData.Var6;   %P1PumpOutletprevP3  [bar];
%T3_rawdatas = RawData.Var7;   %T3SuperheaterOutlet   [C];
P4_rawdatas = RawData.Var8;   %P4CondenserOutlet     [bar];
T4_rawdatas = RawData.Var9;   %T4CondenserOutlet [C];
%P5_rawdatas = RawData.Var10;  %P5ReceiverOutlet  [bar]
%T5_rawdatas = RawData.Var11;  %T5ReceiverOutlet  [C]
%P6_rawdatas = RawData.Var12;  %P6SubcoolerOutlet [bar]
%T6_rawdatas = RawData.Var13;  %T6SubcoolerOutlet [C]
P7_rawdatas = RawData.Var6;  %P7PumpOutlet  [bar]
T7_rawdatas = RawData.Var15;  %T7PumpOutlet  [C]
%P8_rawdatas = RawData.Var16;  %P8OilSeparatorOutlet  [bar]
%T8_rawdatas = RawData.Var17;  %T8OilSeparatorOutlet  [C]
%T9_rawdatas = RawData.Var18;  %T9OilPumpOutlet   [C]
m_dot_ORC_rawdatas = RawData.Var19;   %vertcat(RawData1.Var19, 1*RawData2.Var19); %morckgpers [kg/s]
m_dot_w_evap_rawdatas = RawData.Var20; %mw_evaplpers [l/s]
Tev_in_rawdatas = RawData.Var21; %[C]
Tev_out_rawdatas = RawData.Var23; %[C]

Tcd_in_rawdatas = RawData.Var36; %[C]
Tcd_out_rawdatas = RawData.Var38; %[C]
m_dot_w_cond_rawdatas = RawData.Var40; %[l/s]

TExpander_rawdatas = RawData.Var49;
Nexp_rawdatas = RawData.Var53;  %vertcat(RawData1.Var53, 1.7*RawData2.Var53);
Wexp_rawdatas = RawData.Var55;
Npump_rawdatas = RawData.Var58;

dens1_rawdatas = RawData.Var61;
dens2_rawdatas = RawData.Var67;

Q_ev_rawdatas = 4.2.*(Tev_in_rawdatas-Tev_out_rawdatas).*m_dot_w_evap_rawdatas;

%EvaporatorWaterTinSp = Var22

%EvaporatorDTSp = Var24
%EvaporatorFlow = Var25
%EvaporatorFlowSp = Var26
%EvaporatorSuperheating = Var27
%mw_shlpers = Var28
%SuperheaterWaterTin = Var29
%SuperheaterWaterTinSp = Var30
%SuperheaterWaterTout = Var31
%SuperheaterWaterDTSp = Var32
%SuperheaterFlow = Var33
%SuperheaterFlowSp = Var34
%SuperheaterSuperheating = Var35

%CondenserWaterTinSp = Var37

%CondenserWaterDTSp = Var39
%CondenserFlowSp = Var41
%SubcoolerWaterTin = Var42
%SubcoolerWaterTinSp = Var43
%SubcoolerWaterTout = Var44
%SubcoolerWaterDTSp = Var45
%SubcoolerFlow = Var46
%SubcoolerFlowSp = Var47
%SubcoolerSubcooling = Var48

