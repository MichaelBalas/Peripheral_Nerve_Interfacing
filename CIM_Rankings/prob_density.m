function [prob_tri, prob_com, prob_psd] = prob_density(spike_tri, spike_com, spike_psd)
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Determining Bin Size and Number

% Create an average spike to determine bin size (averaged across all 
% timepoints, contacts, and referencing types
avg_spike = mean(mean(mean(mean(spike_tri(:,:,:,:,:),1),3),4),5);
% Determine bin size using the method presented by Shimazaki and Shinomoto
% on the average spike
%num_bins = sshist(avg_spike);
load('../mn_mx_global.mat');
num_bins = ceil((maxv-minv)/2);
s = linspace(minv,maxv,num_bins);

%% Probability Histograms

% Pre-allocating size for efficiency
prob_tri = zeros(time_width,num_contacts,length(noise_levels),num_fibers,num_bins);
prob_com = zeros(size(prob_tri));
prob_psd = zeros(size(prob_tri));
for i = 1:time_width
    for j = 1:num_contacts
        for k = 1:length(noise_levels)
            for m = 1:num_fibers
                prob_tri(i,j,k,m,:) = hist(squeeze(spike_tri(j,i,:,k,m)),s)./(num_training);
                prob_com(i,j,k,m,:) = hist(squeeze(spike_com(j,i,:,k,m)),s)./(num_training);
                prob_psd(i,j,k,m,:) = hist(squeeze(spike_psd(j,i,:,k,m)),s)./(num_training);
            end
        end
    end
end
disp(' ~~~ Successfully Constructed Probability Histograms ~~~');

end

