function [ old_tri_ranking, old_com_ranking, old_psd_ranking ] = old_rank_contacts()
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Set Attributes
if noise_type == "inside"
    fileName = strcat('../Base_Model/vars_',strcat(int2str(num_contacts),'contacts_new.mat'));
elseif noise_type == "outside"
    fileName = strcat('../vars_',strcat(int2str(num_contacts),'contacts_noise_outside_new.mat'));
elseif noise_type == "invivo"
    fileName = 'Not Available yet';
else
    disp("Not a valid noise type")
end
x = load(fileName);

%% Rank contacts from best to worst (High CIM = Informative Contact)
old_tri_ranking = zeros(5,num_contacts);
old_com_ranking = zeros(5,num_contacts);
old_psd_ranking = zeros(5,num_contacts);
for k = 1:length(noise_levels)
    [~,old_tri_ranking(k,:)] = sort(x.HJa(:,k)','descend');
    [~,old_com_ranking(k,:)] = sort(x.HJb(:,k)','descend');
    [~,old_psd_ranking(k,:)] = sort(x.HJc(:,k)','descend');
end
disp('~~~ Successfully Ranked Contacts by old CIM value ~~~');
end

