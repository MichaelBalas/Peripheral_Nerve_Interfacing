function [tri_rankings, com_rankings, psd_rankings ] = rank_contacts(Hnorm_tri, Hnorm_com, Hnorm_psd)
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Rank contacts from best to worst (High CIM = Informative Contact)
tri_rankings = zeros(5,num_contacts);
com_rankings = zeros(5,num_contacts);
psd_rankings = zeros(5,num_contacts);
for k = 1:length(noise_levels)
    [~,tri_rankings(k,:)] = sort(Hnorm_tri(:,k)','descend');
    [~,com_rankings(k,:)] = sort(Hnorm_com(:,k)','descend');
    [~,psd_rankings(k,:)] = sort(Hnorm_psd(:,k)','descend');
end
disp('~~~ Successfully Ranked Contacts by CIM ~~~');
end

