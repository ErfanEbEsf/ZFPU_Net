clear all, close all, clc
sndr= @(x,x0) 20*log10(norm(x0)/norm(x-x0)); 
Address = 'E:\CS_NSP_for_GitHub\code and data\Datasets\CRCNS\HC_series\HC1_Spikes_Only\Splitted_Data_for_paper1\SNDR';
load([Address,'\Test.mat'])
Test_GT = Data;
N = 64;
M = 8;
%% Equispaced ZF
R = N/M;
pattern = zeros(1,N);
for i =1:N
  if mod(i-1,R) == 0
    pattern(i) =1;
  end
end
ZF = pattern .* Test_GT;
tic;
for i = 1:size(Test_GT,1)
SNDR(i) = sndr(ZF(i,:),Test_GT(i,:));
end

fprintf('ZF');
time = toc
mean_SNDR = mean(SNDR)
std_SNDR = std(SNDR)
%% Proposed ZF
load(['Mask_',num2str(M),'.mat'])
ZF = pattern .* Test_GT;
tic;
parfor i = 1:size(Test_GT,1)
SNDR(i) = sndr(ZF(i,:),Test_GT(i,:));
end

fprintf('ZF');
time = toc
mean_SNDR = mean(SNDR)
std_SNDR = std(SNDR)
%% Wavelets
filt = 'sym4';
scale = 1; % 1 works better!
tic;
parfor i = 1:size(Test_GT,1)
Sym4(i,:) = Wavelet_Compression(M,Test_GT(i,:),scale,filt);
SNDR(i) = sndr(Sym4(i,:),Test_GT(i,:));
end
fprintf(filt);
time = toc
mean_SNDR = mean(SNDR)
std_SNDR = std(SNDR)

%% DCT
tic;
parfor i = 1:size(Test_GT,1)
DCT(i,:) = DCT_Compression(M,Test_GT(i,:));
SNDR(i) = sndr(DCT(i,:),Test_GT(i,:));
end
fprintf('DCT')
time = toc
mean_SNDR = mean(SNDR)
std_SNDR = std(SNDR)

%% WHT
tic;
parfor i = 1:size(Test_GT,1)
DCT(i,:) = WHT_Compression(M,Test_GT(i,:));
SNDR(i) = sndr(DCT(i,:),Test_GT(i,:));
end
fprintf('WHT')
time = toc
mean_SNDR = mean(SNDR)
std_SNDR = std(SNDR)
%% AE
% Only output results of the NN trained and tested in python

%% ZFU-Net
% Only output results of the DNN trained and tested in python

%% ZFPU-net
% Only output results of the DNN trained and tested in python
