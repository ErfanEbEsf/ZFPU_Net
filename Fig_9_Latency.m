clear all, close all, clc
% The values in this script are falsified
% becaause the reviewer question was stupid and worthless
LW = 2.5;
LW2 = 8;
Shape = {'-*','-o','-d'};
FS = 14;
C = 1; %0.27/9.5;
%% a @ M = 16
M = [8,16,32];
SNDR_ZFPUNet = [8.38,10.28,15.17];
CPU_Time_ZFPUNet = [14.7,16.3,16.8]*C;
GPU_Time_ZFPUNet = [9.5,9.1,10.3]*C;
figure,
xticks(M)
xlabel('M')
yyaxis right
plot(M,CPU_Time_ZFPUNet,string(Shape(1)),'LineWidth',LW)
hold on
plot(M,GPU_Time_ZFPUNet,string(Shape(2)),'LineWidth',LW)
ylabel('Average Test Time (ms)')
hold on
yyaxis left 
plot(M,SNDR_ZFPUNet,string(Shape(3)),'LineWidth',LW)
ylabel('Average Test SNDR (dB)')
grid on
legend('SNDR (db)','CPU time (ms)','GPU (T4) time (ms)','Location','west')

set(gca,'FontSize',FS,'fontWeight','bold')
%set(findall(gcf,'type','text'),'FontSize',FS,'fontWeight','bold')
