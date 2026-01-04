clear all, close all, clc
%% Load Validation data
%Add = 'C:\Users\Erfan\Desktop\THe\CS_NSP\code and data\Datasets\CRCNS\HC_series\HC1_Spikes_Only\Splitted_Data_for_paper1\SNDR';
load Val.mat 
N = size(Data,2);
rng('default')
sndr = @(x0,x) 20*log10(norm(x0)/norm(x-x0));
LW = 2;
FS = 14;
%% 
m = 1;
for M = [N/8,N/4,N/2]
    mc = 1;
for Monte_Carlo_Iterations = [1e+1,1e+2 ,1e+3 ,1e+4,1e+5]
    for i = 1:Monte_Carlo_Iterations
    mask = zeros(1,N);
    mask(1, randsample(1:N/4,1*M/8)) = 1;
    mask(1, randsample(N/4+1:N/2,M/2)) = 1;
    mask(1, randsample(N/2+1:3*N/4,2*M/8)) = 1;
    mask(1, randsample(3*N/4+1:N,M/8)) = 1;
    %Mask(i,:) = mask;
    
    ZF = mask .* Data; % Looping not required
    
    for k = 1:size(Data,1)
        SNDR(k) = sndr(Data(k,:),ZF(k,:));
    end
    Mean_SNDR(i) = mean(SNDR);
    fprintf('%d %d\n',m,i)
    end
   [MaxSNDR,I] = max(Mean_SNDR); 
   SNDR_at_MC(m,mc) = MaxSNDR;
   mc = mc + 1;
end
m= m+1;
end

%% plot
 
M = [N/8,N/4,N/2];
Monte_Carlo_Iterations = [1e+1,1e+2 ,1e+3 ,1e+4,1e+5];
Shape = {':','--','-'};
figure,
for m=1:length(M)
   plot(Monte_Carlo_Iterations,SNDR_at_MC(m,:),string(Shape(m)),'LineWidth',LW)
   hold on
end    
xlabel('N_{MC}')
ylabel('Mean ZF Validation SNDR')
set(gca,'FontSize',FS,'fontWeight','bold')
legend('M=8','M=16','M=32')