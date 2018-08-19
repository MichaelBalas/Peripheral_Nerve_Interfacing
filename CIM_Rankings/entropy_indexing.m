function [Hnorm_tri, Hnorm_com, Hnorm_psd] = entropy_indexing(prob_tri, prob_com, prob_psd)
%% Load Global Variables
global time_width;
global noise_levels;
global num_training;
global num_fibers;
global num_contacts;
global noise_type;

%% Michael Indexing

Hall_tri = zeros(time_width, num_contacts, length(noise_levels));
Hall_com = zeros(size(Hall_tri));
Hall_psd = zeros(size(Hall_tri));
for i = 1:time_width
    for j = 1:num_contacts
        for k = 1:length(noise_levels)
            Hall_tri(i,j,k) = ent( (prob_tri(i,j,k,1,:) + prob_tri(i,j,k,2,:) + prob_tri(i,j,k,3,:) ) ./3);
            Hall_com(i,j,k) = ent( (prob_com(i,j,k,1,:) + prob_com(i,j,k,2,:) + prob_com(i,j,k,3,:) ) ./3);
            Hall_psd(i,j,k) = ent( (prob_psd(i,j,k,1,:) + prob_psd(i,j,k,2,:) + prob_psd(i,j,k,3,:) ) ./3);
            
            H_tri_f(i,j,k) = mean((ent(prob_tri(i,j,k,1,:)) + ent(prob_tri(i,j,k,2,:)) + ent(prob_tri(i,j,k,3,:)))./3);
            H_com_f(i,j,k) = mean((ent(prob_com(i,j,k,1,:)) + ent(prob_com(i,j,k,2,:)) + ent(prob_com(i,j,k,3,:)))./3);
            H_psd_f(i,j,k) = mean((ent(prob_psd(i,j,k,1,:)) + ent(prob_psd(i,j,k,2,:)) + ent(prob_psd(i,j,k,3,:)))./3);
        end
    end
end
%% Weighted Average
% 20 points around the AP will have 80% weight, while the other 40 will have 20% weight. 
% Currently Hard coded for 60 timepoints - consider changing if time_width becomes dynamic
heavy_weights = (0.8 / 20) * ones(20,1); % 4% weight to each of the 20 points
light_weights = (0.2 / 40) * ones(40,1); % 0.5% weight to each of the 40 points
Hall_tri(20:39,:,:) = Hall_tri(20:39,:,:) .* heavy_weights;        H_tri_f(20:39,:,:) = H_tri_f(20:39,:,:) .* heavy_weights;
Hall_tri(1:19,:,:) = Hall_tri(1:19,:,:) .* light_weights(1:19);    H_tri_f(1:19,:,:) = H_tri_f(1:19,:,:) .* light_weights(1:19);
Hall_tri(40:60,:,:) = Hall_tri(40:60,:,:) .* light_weights(20:40); H_tri_f(40:60,:,:) = H_tri_f(40:60,:,:) .* light_weights(20:40);

Hall_com(20:39,:,:) = Hall_com(20:39,:,:) .* heavy_weights;        H_com_f(20:39,:,:) = H_com_f(20:39,:,:) .* heavy_weights;
Hall_com(1:19,:,:) = Hall_com(1:19,:,:) .* light_weights(1:19);    H_com_f(1:19,:,:) = H_com_f(1:19,:,:) .* light_weights(1:19);
Hall_com(40:60,:,:) = Hall_com(40:60,:,:) .* light_weights(20:40); H_com_f(40:60,:,:) = H_com_f(40:60,:,:) .* light_weights(20:40);

Hall_psd(20:39,:,:) = Hall_psd(20:39,:,:) .* heavy_weights;        H_psd_f(20:39,:,:) = H_psd_f(20:39,:,:) .* heavy_weights;
Hall_psd(1:19,:,:) = Hall_psd(1:19,:,:) .* light_weights(1:19);    H_psd_f(1:19,:,:) = H_psd_f(1:19,:,:) .* light_weights(1:19);
Hall_psd(40:60,:,:) = Hall_psd(40:60,:,:) .* light_weights(20:40); H_psd_f(40:60,:,:) = H_psd_f(40:60,:,:) .* light_weights(20:40);
%% Normalize by the Shannon Entropy calculated from a single neural pathway
% In order to account for the influence of noise level 
Hnorm_tri = squeeze(sum(Hall_tri)) ./ squeeze(sum(H_tri_f));
Hnorm_com = squeeze(sum(Hall_com)) ./ squeeze(sum(H_com_f));
Hnorm_psd = squeeze(sum(Hall_psd)) ./ squeeze(sum(H_psd_f));

%% Spruce up data
Hnorm_tri(isnan(Hnorm_tri)) = 0;
Hnorm_com(isnan(Hnorm_com)) = 0;
Hnorm_psd(isnan(Hnorm_psd)) = 0;

Hnorm_tri(find(Hnorm_tri==-Inf)) = Inf;
Hnorm_com(find(Hnorm_com==-Inf)) = Inf;
Hnorm_psd(find(Hnorm_psd==-Inf)) = Inf;

disp('~~~ Successfully Indexed Entropy Calculations ~~~');

end

