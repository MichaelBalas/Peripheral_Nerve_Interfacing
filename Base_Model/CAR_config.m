function [common_short common_ref_full] = make_common2(recording,contactconf);


    if contactconf == 56;
        common_ref_full = recording - kron(mean(recording([1:56],:)),ones(56,1));
        common_short = common_ref_full(9:48,:);
    elseif contactconf == 48;
        common_ref_full = recording - kron(mean(recording([1:48],:)),ones(48,1));
        common_short = common_ref_full(9:40,:);
    elseif contactconf == 40;
        common_ref_full = recording - kron(mean(recording([1:40],:)),ones(40,1));
        common_short = common_ref_full(9:32,:);
    elseif contactconf == 32;
        common_ref_full = recording - kron(mean(recording([1:32],:)),ones(32,1));
        common_short = common_ref_full(9:24,:);
    elseif contactconf == 24;
        common_ref_full = recording - kron(mean(recording([1:24],:)),ones(24,1));
        common_short = common_ref_full(9:16,:);    
    end
    
end