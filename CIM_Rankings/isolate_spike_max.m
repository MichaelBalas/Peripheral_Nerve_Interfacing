function [spike_tri, spike_com, spike_psd] = isolate_spike_max()
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Set Attributes
fileName = strcat('../vars_',strcat(int2str(num_contacts),'contacts.mat'));
x = load(fileName);

%% Isolate spikes from all 3 cuff referencing types
for i = 1:num_contacts
    for k = 1:length(noise_levels)
        for j = 1:num_training
            for m = 1:num_fibers
                [~, tri_I] = max(x.meas_tri(i,(time_width/2):(200-time_width/2-1),j,k,m));
                [~, com_I] = max(x.meas_com(i,(time_width/2):(200-time_width/2-1),j,k,m));
                [~, psd_I] = max(x.meas_psd(i,(time_width/2):(200-time_width/2-1),j,k,m));

                tri_I = tri_I + (time_width/2-1);
                com_I = com_I + (time_width/2-1);
                psd_I = psd_I + (time_width/2-1);

                tri_start = ceil(tri_I-(time_width/2)+1);
                com_start = ceil(com_I-(time_width/2)+1);
                psd_start = ceil(psd_I-(time_width/2)+1);

                tri_end = ceil(tri_I+(time_width/2));
                com_end = ceil(com_I+(time_width/2));
                psd_end = ceil(psd_I+(time_width/2));

                spike_tri(i,:,j,k,m) = x.meas_tri(i,tri_start:tri_end,j,k,m);
                spike_com(i,:,j,k,m) = x.meas_com(i,com_start:com_end,j,k,m);
                spike_psd(i,:,j,k,m) = x.meas_psd(i,psd_start:psd_end,j,k,m);
            end
        end
    end
end
disp(' ~~~ Successfully Isolated Spikes ~~~');

end

