function [tripole_short tripole_ref_full] = make_tripole2(recording,contactconf);


    if contactconf == 56;
        tripole_ref_full = recording - kron(mean(recording([1:8 49:56],:)),ones(56,1));
        tripole_short = tripole_ref_full(9:48,:);
    elseif contactconf == 48;
        tripole_ref_full = recording - kron(mean(recording([1:8 41:48],:)),ones(48,1));
        tripole_short = tripole_ref_full(9:40,:);
    elseif contactconf == 40;
        tripole_ref_full = recording - kron(mean(recording([1:8 33:40],:)),ones(40,1));
        tripole_short = tripole_ref_full(9:32,:);
    elseif contactconf == 32;
        tripole_ref_full = recording - kron(mean(recording([1:8 25:32],:)),ones(32,1));
        tripole_short = tripole_ref_full(9:24,:);
    elseif contactconf == 24;
        tripole_ref_full = recording - kron(mean(recording([1:8 17:24],:)),ones(24,1));
        tripole_short = tripole_ref_full(9:16,:);    
    end
    
end