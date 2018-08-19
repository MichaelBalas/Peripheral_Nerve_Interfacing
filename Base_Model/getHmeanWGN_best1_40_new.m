load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_40contacts_new.mat')

count = 1;
for i = 1:40;
    
    HJa_40bestx(:,count) = getmeanH_new(HJa,i);
    HJb_40bestx(:,count) = getmeanH_new(HJb,i);
    HJc_40bestx(:,count) = getmeanH_new(HJc,i);

    HRa_40bestx(:,count) = getmeanH_new(HRa,i);
    HRb_40bestx(:,count) = getmeanH_new(HRb,i);
    HRc_40bestx(:,count) = getmeanH_new(HRc,i);
    count = count+1;
end

clear HJa HJb HJc HRa HRb HRc

for i = 1:40;
    HJ_40bestx(:,:,i) = [HJa_40bestx(:,i) HJb_40bestx(:,i) HJc_40bestx(:,i)]';
    HR_40bestx(:,:,i) = [HRa_40bestx(:,i) HRb_40bestx(:,i) HRc_40bestx(:,i)]';
end

HJ_40bestx = squeeze(HJ_40bestx);
HR_40bestx = squeeze(HR_40bestx);

save('E:\Desktop\UofT stuff\Reference Paper (2016)\H_values_inside_cuff_best40_x_newest')