clear all, close all, clc
Adr = cd;
addpath(genpath(Adr))
sR_color =  [1 .3 .3];
fR_color =  [1 .6 .6];
sT_color = [.5 .5 1];
fT_color = [.75 .75 1];
sM_color = 'green';
fM_color = [.5 1 .5];
%% 53
% Regular --> Red
% Triphasic --> Green
% Monophasic (Compound) --> Blue
% slow --> light shade
load('Rat53_Cluster_1_sM')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,1)    
color = sM_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
ylabel('Neuron 1','FontWeight', 'bold','FontSize',14)
title('Rat d53','FontSize',14)

load('Rat53_Cluster_2_sR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,9)    
color = sR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
ylabel('Neuron 2','FontWeight', 'bold','FontSize',14)

load('Rat53_Cluster_3_fR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,17)  
color = fR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
ylabel('Neuron 3','FontWeight', 'bold','FontSize',14)

%% Rat 56
load('Rat56_Cluster_1_sT')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,2)  
color = sT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
title('Rat d56','FontSize',14)

load('Rat56_Cluster_2_sR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,10)  
color = sR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 71
% load('Rat71_Cluster_1_sR')
% Spikes = L;
% Data = Spikes;
% spike_len = size(Spikes,2);
% subplot(3,8,2)  
% color = sR_color;
% plot(1:spike_len,Spikes,'Color',color);
% hold on
% Mean = mean(Spikes,1);
% plot(1:spike_len,Mean,'Color','black','LineWidth',3);
% set(gca,'XTick',[], 'YTick', [])
% title('Rat d71','FontSize',14)
% 
% load('Rat71_Cluster_2_sT')
% Spikes = L;
% Data = Spikes;
% spike_len = size(Spikes,2);
% subplot(3,8,10)  
% color = sT_color;
% plot(1:spike_len,Spikes,'Color',color);
% hold on
% Mean = mean(Spikes,1);
% plot(1:spike_len,Mean,'Color','black','LineWidth',3);
% set(gca,'XTick',[], 'YTick', [])
% 
% load('Rat71_Cluster_3_sR')
% Spikes = L;
% Data = Spikes;
% spike_len = size(Spikes,2);
% subplot(3,8,18)  
% color = sR_color;
% plot(1:spike_len,Spikes,'Color',color);
% hold on
% Mean = mean(Spikes,1);
% plot(1:spike_len,Mean,'Color','black','LineWidth',3);
% set(gca,'XTick',[], 'YTick', [])


%% 72
load('Rat72_Cluster_1_fM')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,3)  
color = fM_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
title('Rat d72','FontSize',14)

load('Rat72_Cluster_2_sR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,11)  
color = sR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 81
load('Rat81_Cluster_1_fR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,4)  
color = fR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
title('Rat d81','FontSize',14)

load('Rat81_Cluster_2_fT')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,12)  
color = fT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 135
load('Rat135_Cluster_1_fTn')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,5)  
color = fT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', []) 
title('Rat d135','FontSize',14)

load('Rat135_Cluster_2_fTp')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,13)  
color = fT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 137

load('Rat137_Cluster_1_fR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,6)  
color = fR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', []) 
title('Rat d137','FontSize',14)

load('Rat137_Cluster_2_fT')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,14)  
color = fT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 139

load('Rat139_Cluster_1_sR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,7)  
color = sR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', []) 
title('Rat d139','FontSize',14)

load('Rat139_Cluster_2_sT')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,15)  
color = sT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

load('Rat139_Cluster_3_fR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,23)  
color = fR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])

%% 187
load('Rat187_Cluster_1_fR')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,8)  
color = fR_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])
title('Rat d187','FontSize',14)

load('Rat187_Cluster_2_fT')
Spikes = L;
Data = Spikes;
spike_len = size(Spikes,2);
subplot(3,8,16)  
color = fT_color;
plot(1:spike_len,Spikes,'Color',color);
hold on
Mean = mean(Spikes,1);
plot(1:spike_len,Mean,'Color','black','LineWidth',3);
set(gca,'XTick',[], 'YTick', [])


