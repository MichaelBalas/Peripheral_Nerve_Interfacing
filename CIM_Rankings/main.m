%% Define Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;
noise_types = ["inside", "outside", "invivo"];
%% Set Global Values

time_width = 60;
noise_levels = [0 -5 -10 -15 -20];
num_training = 1000;
num_fibers = 3;
num_contacts = 40;
noise_type = noise_types(1);

%% Isolate the spike of each referencying type
%[spike_tri, spike_com, spike_psd] = isolate_spike_max();
[spike_tri, spike_com, spike_psd] = isolate_spike_time();

%% Construct Probability Histograms (one for each discrete time-point)
[prob_tri, prob_com, prob_psd] = prob_density(spike_tri, spike_com, spike_psd);

%% Perform Entropy Calculations and Index Appropriately
[Hnorm_tri, Hnorm_com, Hnorm_psd] = entropy_indexing(prob_tri, prob_com, prob_psd);

%% Rank Contacts from Best to Worst Using the New CIM
[tri_ranking, com_ranking, psd_ranking] = rank_contacts(Hnorm_tri, Hnorm_com, Hnorm_psd);
disp('New CIM')
for i=2:5
    allOneString = sprintf('%.0f,' , psd_ranking(i,:));
    allOneString = allOneString(1:end-1);% strip final comma
    disp(i)
    disp(allOneString)
end

%% Rank Contacts from Best to Worst Using the Old CIM
[old_tri_ranking, old_com_ranking, old_psd_ranking] = old_rank_contacts();
disp('Old CIM')
for i=2:5
    allOneString = sprintf('%.0f,' , old_psd_ranking(i,:));
    allOneString = allOneString(1:end-1);% strip final comma
    disp(i)
    disp(allOneString)
end






