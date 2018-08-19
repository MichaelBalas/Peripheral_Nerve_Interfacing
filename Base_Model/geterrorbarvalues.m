%% get STDerror bars

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_40contacts_new.mat','HJa','HJb','HJc')

stdn_40(:,1) = std(HJa);
stdn_40(:,2) = std(HJb);
stdn_40(:,3) = std(HJc);

stdn_40(isnan(stdn_40)) = 0;
stdn_40(isnan(stdn_40)) = 0;
stdn_40(isnan(stdn_40)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_32contacts_new.mat','HJa','HJb','HJc')

stdn_32(:,1) = std(HJa);
stdn_32(:,2) = std(HJb);
stdn_32(:,3) = std(HJc);

stdn_32(isnan(stdn_32)) = 0;
stdn_32(isnan(stdn_32)) = 0;
stdn_32(isnan(stdn_32)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_24contacts_new.mat','HJa','HJb','HJc')

stdn_24(:,1) = std(HJa);
stdn_24(:,2) = std(HJb);
stdn_24(:,3) = std(HJc);

stdn_24(isnan(stdn_24)) = 0;
stdn_24(isnan(stdn_24)) = 0;
stdn_24(isnan(stdn_24)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_16contacts_new.mat','HJa','HJb','HJc')

stdn_16(:,1) = std(HJa);
stdn_16(:,2) = std(HJb);
stdn_16(:,3) = std(HJc);

stdn_16(isnan(stdn_16)) = 0;
stdn_16(isnan(stdn_16)) = 0;
stdn_16(isnan(stdn_16)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_8contacts_new.mat','HJa','HJb','HJc')

stdn_8(:,1) = std(HJa);
stdn_8(:,2) = std(HJb);
stdn_8(:,3) = std(HJc);

stdn_8(isnan(stdn_8)) = 0;
stdn_8(isnan(stdn_8)) = 0;
stdn_8(isnan(stdn_8)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_40contacts_noise_outside_new.mat','HJa','HJb','HJc')

stdo_40(:,1) = std(HJa);
stdo_40(:,2) = std(HJb);
stdo_40(:,3) = std(HJc);

stdo_40(isnan(stdo_40)) = 0;
stdo_40(isnan(stdo_40)) = 0;
stdo_40(isnan(stdo_40)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_32contacts_noise_outside_new.mat','HJa','HJb','HJc')

stdo_32(:,1) = std(HJa);
stdo_32(:,2) = std(HJb);
stdo_32(:,3) = std(HJc);

stdo_32(isnan(stdo_32)) = 0;
stdo_32(isnan(stdo_32)) = 0;
stdo_32(isnan(stdo_32)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_24contacts_noise_outside_new.mat','HJa','HJb','HJc')

stdo_24(:,1) = std(HJa);
stdo_24(:,2) = std(HJb);
stdo_24(:,3) = std(HJc);

stdo_24(isnan(stdo_24)) = 0;
stdo_24(isnan(stdo_24)) = 0;
stdo_24(isnan(stdo_24)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_16contacts_noise_outside_new.mat','HJa','HJb','HJc')

stdo_16(:,1) = std(HJa);
stdo_16(:,2) = std(HJb);
stdo_16(:,3) = std(HJc);

stdo_16(isnan(stdo_16)) = 0;
stdo_16(isnan(stdo_16)) = 0;
stdo_16(isnan(stdo_16)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_8contacts_noise_outside_new.mat','HJa','HJb','HJc')

stdo_8(:,1) = std(HJa);
stdo_8(:,2) = std(HJb);
stdo_8(:,3) = std(HJc);

stdo_8(isnan(stdo_8)) = 0;
stdo_8(isnan(stdo_8)) = 0;
stdo_8(isnan(stdo_8)) = 0;

clear HJa HJb HJc

save('errorbar_values_in_out_meanall');

%% std best8

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_40contacts_new.mat','HJa','HJb','HJc')

HJa_40best8 = squeeze(get_mean_best(HJa,8));
HJb_40best8 = squeeze(getmeanH_new2(HJb,8));
HJc_40best8 = squeeze(getmeanH_new2(HJc,8));

stdn_40(:,1) = std(HJa_40best8);
stdn_40(:,2) = std(HJb_40best8);
stdn_40(:,3) = std(HJc_40best8);

stdn_40(isnan(stdn_40)) = 0;
stdn_40(isnan(stdn_40)) = 0;
stdn_40(isnan(stdn_40)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_32contacts_new.mat','HJa','HJb','HJc')

HJa_32best8 = squeeze(getmeanH_new2(HJa,8));
HJb_32best8 = squeeze(getmeanH_new2(HJb,8));
HJc_32best8 = squeeze(getmeanH_new2(HJc,8));

stdn_32(:,1) = std(HJa_32best8);
stdn_32(:,2) = std(HJb_32best8);
stdn_32(:,3) = std(HJc_32best8);

stdn_32(isnan(stdn_32)) = 0;
stdn_32(isnan(stdn_32)) = 0;
stdn_32(isnan(stdn_32)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_24contacts_new.mat','HJa','HJb','HJc')

HJa_24best8 = squeeze(getmeanH_new2(HJa,8));
HJb_24best8 = squeeze(getmeanH_new2(HJb,8));
HJc_24best8 = squeeze(getmeanH_new2(HJc,8));

stdn_24(:,1) = std(HJa_24best8);
stdn_24(:,2) = std(HJb_24best8);
stdn_24(:,3) = std(HJc_24best8);

stdn_24(isnan(stdn_24)) = 0;
stdn_24(isnan(stdn_24)) = 0;
stdn_24(isnan(stdn_24)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_16contacts_new.mat','HJa','HJb','HJc')

HJa_16best8 = squeeze(getmeanH_new2(HJa,8));
HJb_16best8 = squeeze(getmeanH_new2(HJb,8));
HJc_16best8 = squeeze(getmeanH_new2(HJc,8));

stdn_16(:,1) = std(HJa_16best8);
stdn_16(:,2) = std(HJb_16best8);
stdn_16(:,3) = std(HJc_16best8);

stdn_16(isnan(stdn_16)) = 0;
stdn_16(isnan(stdn_16)) = 0;
stdn_16(isnan(stdn_16)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_8contacts_new.mat','HJa','HJb','HJc')

HJa_8best8 = squeeze(getmeanH_new2(HJa,8));
HJb_8best8 = squeeze(getmeanH_new2(HJb,8));
HJc_8best8 = squeeze(getmeanH_new2(HJc,8));

stdn_8(:,1) = std(HJa_8best8);
stdn_8(:,2) = std(HJb_8best8);
stdn_8(:,3) = std(HJc_8best8);

stdn_8(isnan(stdn_8)) = 0;
stdn_8(isnan(stdn_8)) = 0;
stdn_8(isnan(stdn_8)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_40contacts_noise_outside_new.mat','HJa','HJb','HJc')

HJa_40best8 = squeeze(getmeanH_new2(HJa,8));
HJb_40best8 = squeeze(getmeanH_new2(HJb,8));
HJc_40best8 = squeeze(getmeanH_new2(HJc,8));

stdo_40(:,1) = std(HJa_40best8);
stdo_40(:,2) = std(HJb_40best8);
stdo_40(:,3) = std(HJc_40best8);

stdo_40(isnan(stdo_40)) = 0;
stdo_40(isnan(stdo_40)) = 0;
stdo_40(isnan(stdo_40)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_32contacts_noise_outside_new.mat','HJa','HJb','HJc')

HJa_32best8 = squeeze(getmeanH_new2(HJa,8));
HJb_32best8 = squeeze(getmeanH_new2(HJb,8));
HJc_32best8 = squeeze(getmeanH_new2(HJc,8));

stdo_32(:,1) = std(HJa_32best8);
stdo_32(:,2) = std(HJb_32best8);
stdo_32(:,3) = std(HJc_32best8);

stdo_32(isnan(stdo_32)) = 0;
stdo_32(isnan(stdo_32)) = 0;
stdo_32(isnan(stdo_32)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_24contacts_noise_outside_new.mat','HJa','HJb','HJc')

HJa_24best8 = squeeze(getmeanH_new2(HJa,8));
HJb_24best8 = squeeze(getmeanH_new2(HJb,8));
HJc_24best8 = squeeze(getmeanH_new2(HJc,8));

stdo_24(:,1) = std(HJa_24best8);
stdo_24(:,2) = std(HJb_24best8);
stdo_24(:,3) = std(HJc_24best8);

stdo_24(isnan(stdo_24)) = 0;
stdo_24(isnan(stdo_24)) = 0;
stdo_24(isnan(stdo_24)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_16contacts_noise_outside_new.mat','HJa','HJb','HJc')

HJa_16best8 = squeeze(getmeanH_new2(HJa,8));
HJb_16best8 = squeeze(getmeanH_new2(HJb,8));
HJc_16best8 = squeeze(getmeanH_new2(HJc,8));

stdo_16(:,1) = std(HJa_16best8);
stdo_16(:,2) = std(HJb_16best8);
stdo_16(:,3) = std(HJc_16best8);

stdo_16(isnan(stdo_16)) = 0;
stdo_16(isnan(stdo_16)) = 0;
stdo_16(isnan(stdo_16)) = 0;

clear HJa HJb HJc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\vars_8contacts_noise_outside_new.mat','HJa','HJb','HJc')

HJa_8best8 = squeeze(getmeanH_new2(HJa,8));
HJb_8best8 = squeeze(getmeanH_new2(HJb,8));
HJc_8best8 = squeeze(getmeanH_new2(HJc,8));

stdo_8(:,1) = std(HJa_8best8);
stdo_8(:,2) = std(HJb_8best8);
stdo_8(:,3) = std(HJc_8best8);

stdo_8(isnan(stdo_8)) = 0;
stdo_8(isnan(stdo_8)) = 0;
stdo_8(isnan(stdo_8)) = 0;

clear HJa HJb HJc

save('errorbar_values_in_out_meanbest8');

%% std best x of 40 contacts

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_inside_cuff_best40_x_newest.mat','HJ_40bestx')

stdn(:,1) = std(squeeze(HJ_40bestx(1,2:end,:)));
stdn(:,2) = std(squeeze(HJ_40bestx(2,2:end,:)));
stdn(:,3) = std(squeeze(HJ_40bestx(3,2:end,:)));

clear HJ_40bestx

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_outside_cuff_best40_x_newest.mat','HJ_40bestx')

stdo(:,1) = std(squeeze(HJ_40bestx(1,2:end,:)));
stdo(:,2) = std(squeeze(HJ_40bestx(2,2:end,:)));
stdo(:,3) = std(squeeze(HJ_40bestx(3,2:end,:)));

clear HJ_40bestx

save('errorbar_values_in_out_meanbestx');

