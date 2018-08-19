function psd_ref = make_psd_tripole2(recording,contactconf);

    if contactconf == 56;
        psd_ref1 = recording - kron(mean(recording([1:8 17:24],:)),ones(56,1));
        psd_ref2 = recording - kron(mean(recording([9:16 25:32],:)),ones(56,1));
        psd_ref3 = recording - kron(mean(recording([17:24 33:40],:)),ones(56,1));
        psd_ref4 = recording - kron(mean(recording([25:32 41:48],:)),ones(56,1));
        psd_ref5 = recording - kron(mean(recording([33:40 49:56],:)),ones(56,1));
        psd_ref = [psd_ref1(9:16,:); psd_ref2(17:24,:); psd_ref3(25:32,:); ...
            psd_ref4(33:40,:); psd_ref5(41:48,:)];
    elseif contactconf == 48;
        psd_ref1 = recording - kron(mean(recording([1:8 17:24],:)),ones(48,1));
        psd_ref2 = recording - kron(mean(recording([9:16 25:32],:)),ones(48,1));
        psd_ref3 = recording - kron(mean(recording([17:24 33:40],:)),ones(48,1));
        psd_ref4 = recording - kron(mean(recording([25:32 41:48],:)),ones(48,1));
        psd_ref = [psd_ref1(9:16,:); psd_ref2(17:24,:); psd_ref3(25:32,:); ...
            psd_ref4(33:40,:)];
    elseif contactconf == 40;
        psd_ref1 = recording - kron(mean(recording([1:8 17:24],:)),ones(40,1));
        psd_ref2 = recording - kron(mean(recording([9:16 25:32],:)),ones(40,1));
        psd_ref3 = recording - kron(mean(recording([17:24 33:40],:)),ones(40,1));
        psd_ref = [psd_ref1(9:16,:); psd_ref2(17:24,:); psd_ref3(25:32,:)];
    elseif contactconf == 32;
        psd_ref1 = recording - kron(mean(recording([1:8 17:24],:)),ones(32,1));
        psd_ref2 = recording - kron(mean(recording([9:16 25:32],:)),ones(32,1));
        psd_ref = [psd_ref1(9:16,:); psd_ref2(17:24,:)];
    elseif contactconf == 24;
        psd_ref1 = recording - kron(mean(recording([1:8 17:24],:)),ones(24,1));
        psd_ref = [psd_ref1(9:16,:)];
    end
end