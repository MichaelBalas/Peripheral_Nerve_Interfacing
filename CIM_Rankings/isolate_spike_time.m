function [spike_tri, spike_com, spike_psd] = isolate_spike_time()
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Set Attributes
if noise_type == "inside"
    fileName = strcat('../vars_',strcat(int2str(num_contacts),'contacts.mat'));
elseif noise_type == "outside"
    fileName = strcat('../vars_',strcat(int2str(num_contacts),'contacts_noise_outside.mat'));
elseif noise_type == "invivo"
    fileName = 'Not Available yet';
else
    disp("Not a valid noise type")
end
x = load(fileName);
disp(fileName)
%% Choose maximum values
% Each of the three values corresponds to a fascicle (i.e. [alpha beta gamma])
max_peak = zeros(1,3);
if (num_contacts == 8)
    max_peak = [58 64 90];
elseif (num_contacts == 16)
    max_peak = [60 66 97];
elseif (num_contacts == 24)
    max_peak = [61 69 104];
elseif (num_contacts == 32)
    max_peak = [63 71 112];
elseif (num_contacts == 40)
    max_peak = [65 74 116];
end

%% Isolate spikes from all 3 cuff referencing types
for i = 1:num_contacts
    for k = 1:length(noise_levels)
        for j = 1:num_training
            for m = 1:num_fibers
                tri_start = ceil(max_peak(m)-(time_width/2)+1);
                com_start = ceil(max_peak(m)-(time_width/2)+1);
                psd_start = ceil(max_peak(m)-(time_width/2)+1);

                tri_end = ceil(max_peak(m)+(time_width/2));
                com_end = ceil(max_peak(m)+(time_width/2));
                psd_end = ceil(max_peak(m)+(time_width/2));

                spike_tri(i,:,j,k,m) = x.meas_tri(i,tri_start:tri_end,j,k,m);
                spike_com(i,:,j,k,m) = x.meas_com(i,com_start:com_end,j,k,m);
                spike_psd(i,:,j,k,m) = x.meas_psd(i,psd_start:psd_end,j,k,m);
            end
        end
    end
end
disp(' ~~~ Successfully Isolated Spikes ~~~');

end