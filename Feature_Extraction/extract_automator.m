function [ output_args ] = extract_automator( ref_type, loader, num_contacts, noise )
%% Attributes
% Each noise level from 1-5 corresponds to an SNR = [inf, -5, -10, -15, -20] dB
num_Features = 7; % The number of features that will be extracted

%% Loading Data
string = strcat('../Base_Model/',loader,'.mat');
raw_signals = load(string);
if ref_type == 'Tri'
    raw_signals_ref = raw_signals.meas_tri;
elseif ref_type == 'Com'
    raw_signals_ref = raw_signals.meas_com;
elseif ref_type == 'Psd'
    raw_signals_ref = raw_signals.meas_psd;
else
    disp('Fatal Error')
end

% Response Variable Y. Each entry in Y represents the 
% respone to the corresponding row of X (matrix of predictors) 
Y = char(kron(['a';'b';'c'], ones(1000,1)));
% Preallocate size of X
num_Predictors = num_Features * raw_signals.cn;
X = zeros(size(Y,1),num_Predictors);

% Calculate the optimal number of bins for the cumulative/average signal
% (over all fiber types, contact electrodes and training examples)
nbins = sshist(mean(mean(mean(raw_signals_ref(:,:,:,noise,:),1),3),5));



%% Extracting Features (for each contact electrode)
count = 0;
for i = 1:3 % for each fiber type
    for j = 1:1000 % for each training example
        for k = 1:raw_signals.cn % for each contact
            [max_amp, time_max] = max(raw_signals_ref(k,:,j,noise,i));
            min_amp = min(raw_signals_ref(k,:,j,noise,i));
            rms_level = rms(raw_signals_ref(k,:,j,noise,i));
            kurt = kurtosis(raw_signals_ref(k,:,j,noise,i));
            skew = skewness(raw_signals_ref(k,:,j,noise,i));
            p = hist(raw_signals_ref(k,:,j,noise,i), nbins);
            p = p / sum(p); % Normalize to sum of 1
            entropy = sum(-(p(p>0).*(log2(p(p>0)))));
            row = ((i-1)*1000) + j;
            X(row, k) = max_amp; % Max amplitude in a 200-timepoint signal
            X(row, k+(raw_signals.cn)) = time_max; % Time at which max amplitude occurs (i.e. index of max amplitude)
            X(row, k+(2*raw_signals.cn)) = min_amp;
            X(row, k+(3*raw_signals.cn)) = rms_level;
            X(row, k+(4*raw_signals.cn)) = kurt;
            X(row, k+(5*raw_signals.cn)) = skew;
            X(row, k+(6*raw_signals.cn)) = entropy;
        end
    end    
    count = count + 1000;
    disp(count)
end
string = strcat(ref_type, '_FeatureTables/', int2str(noise), '_Noise/', int2str(num_contacts), '_contacts.csv');
%string = strcat('Feature_Tables/tri_',int2str(num_contacts),'_features.csv');
csvwrite(string,X);
disp(strcat('Wrote to ', string));
string = strcat(ref_type, '_FeatureTables/Response.csv');
%string = 'Feature_Tables/Response.csv';
csvwrite(string,Y);
output_args = 'Success';
clear;

end

