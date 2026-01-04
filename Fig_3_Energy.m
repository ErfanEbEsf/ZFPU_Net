clear all, close all, clc
load Val.mat
%% sample-by-sample energy
FS = 14;
mean_sample_by_sample_Energy = mean(abs(Data),1);
% 
% for i = 1:size(Data,2)
%   mean_sample_by_sample_Energy(i) = norm(Data(:,i)); 
% end

figure, plot(1:64,mean_sample_by_sample_Energy,'linewidth',2)
hold on
%Ind = [16,34,48,64];
%plot(Ind,mean_sample_by_sample_Energy(Ind),'*','linewidth',2)
xlabel('Sample number','FontSize',FS)
ylabel(['Mean per-sample energy on validation set'],'FontSize',FS)
xticks([0:20:60]) 
area(1:15,mean_sample_by_sample_Energy(1:15),'FaceColor','magenta')
area(15:30,mean_sample_by_sample_Energy(15:30),'FaceColor','yellow')
area(30:48,mean_sample_by_sample_Energy(30:48),'FaceColor','black')
area(48:64,mean_sample_by_sample_Energy(48:64),'FaceColor','cyan')
Total_Energy = sum(mean_sample_by_sample_Energy)
I1_Energy = sum(mean_sample_by_sample_Energy(1:15))
I2_Energy = sum(mean_sample_by_sample_Energy(16:30))
I3_Energy = sum(mean_sample_by_sample_Energy(31:48))
I4_Energy = sum(mean_sample_by_sample_Energy(49:64))

w1 = I1_Energy/Total_Energy
w2 = I2_Energy/Total_Energy
w3 = I3_Energy/Total_Energy
w4 = I4_Energy/Total_Energy
