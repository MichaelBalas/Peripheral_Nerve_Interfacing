%get Hmean script

%% H_mean all

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_8contacts_new.mat')

HJa_mean8 = getmeanH_new(HJa);
HJb_mean8 = getmeanH_new(HJb);
HJc_mean8 = getmeanH_new(HJc);

HRa_mean8 = getmeanH_new(HRa);
HRb_mean8 = getmeanH_new(HRb);
HRc_mean8 = getmeanH_new(HRc);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_16contacts_new.mat')

HJa_mean16 = getmeanH_new(HJa);
HJb_mean16 = getmeanH_new(HJb);
HJc_mean16 = getmeanH_new(HJc);

HRa_mean16 = getmeanH_new(HRa);
HRb_mean16 = getmeanH_new(HRb);
HRc_mean16 = getmeanH_new(HRc);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_24contacts_new.mat')

HJa_mean24 = getmeanH_new(HJa);
HJb_mean24 = getmeanH_new(HJb);
HJc_mean24 = getmeanH_new(HJc);

HRa_mean24 = getmeanH_new(HRa);
HRb_mean24 = getmeanH_new(HRb);
HRc_mean24 = getmeanH_new(HRc);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_32contacts_new.mat')

HJa_mean32 = getmeanH_new(HJa);
HJb_mean32 = getmeanH_new(HJb);
HJc_mean32 = getmeanH_new(HJc);

HRa_mean32 = getmeanH_new(HRa);
HRb_mean32 = getmeanH_new(HRb);
HRc_mean32 = getmeanH_new(HRc);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_40contacts_new.mat')

HJa_mean40 = getmeanH_new(HJa);
HJb_mean40 = getmeanH_new(HJb);
HJc_mean40 = getmeanH_new(HJc);

HRa_mean40 = getmeanH_new(HRa);
HRb_mean40 = getmeanH_new(HRb);
HRc_mean40 = getmeanH_new(HRc);

clear HJa HJb HJc HRa HRb HRc

%% Hmean_best_8

HJa_8best8 = HJa_mean8;
HJb_8best8 = HJb_mean8;
HJc_8best8 = HJc_mean8;

HRa_8best8 = HRa_mean8;
HRb_8best8 = HRb_mean8;
HRc_8best8 = HRc_mean8;

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_16contacts_new.mat')

HJa_16best8 = getmeanH_new(HJa,8);
HJb_16best8 = getmeanH_new(HJb,8);
HJc_16best8 = getmeanH_new(HJc,8);

HRa_16best8 = getmeanH_new(HRa,8);
HRb_16best8 = getmeanH_new(HRb,8);
HRc_16best8 = getmeanH_new(HRc,8);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_24contacts_new.mat')

HJa_24best8 = getmeanH_new(HJa,8);
HJb_24best8 = getmeanH_new(HJb,8);
HJc_24best8 = getmeanH_new(HJc,8);

HRa_24best8 = getmeanH_new(HRa,8);
HRb_24best8 = getmeanH_new(HRb,8);
HRc_24best8 = getmeanH_new(HRc,8);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_32contacts_new.mat')

HJa_32best8 = getmeanH_new(HJa,8);
HJb_32best8 = getmeanH_new(HJb,8);
HJc_32best8 = getmeanH_new(HJc,8);

HRa_32best8 = getmeanH_new(HRa,8);
HRb_32best8 = getmeanH_new(HRb,8);
HRc_32best8 = getmeanH_new(HRc,8);

clear HJa HJb HJc HRa HRb HRc

load('E:\Desktop\UofT stuff\Reference Paper (2016)\vars_40contacts_new.mat')

HJa_40best8 = getmeanH_new(HJa,8);
HJb_40best8 = getmeanH_new(HJb,8);
HJc_40best8 = getmeanH_new(HJc,8);

HRa_40best8 = getmeanH_new(HRa,8);
HRb_40best8 = getmeanH_new(HRb,8);
HRc_40best8 = getmeanH_new(HRc,8);

clear HJa HJb HJc HRa HRb HRc

HJmean8 = [HJa_mean8; HJb_mean8; HJc_mean8];
HJmean16 = [HJa_mean16; HJb_mean16; HJc_mean16];
HJmean24 = [HJa_mean24; HJb_mean24; HJc_mean24];
HJmean32 = [HJa_mean32; HJb_mean32; HJc_mean32];
HJmean40 = [HJa_mean40; HJb_mean40; HJc_mean40];

HJ8best8 = [HJa_8best8; HJb_8best8; HJc_8best8];
HJ16best8 = [HJa_16best8; HJb_16best8; HJc_16best8];
HJ24best8 = [HJa_24best8; HJb_24best8; HJc_24best8];
HJ32best8 = [HJa_32best8; HJb_32best8; HJc_32best8];
HJ40best8 = [HJa_40best8; HJb_40best8; HJc_40best8];

HRmean8 = [HRa_mean8; HRb_mean8; HRc_mean8];
HRmean16 = [HRa_mean16; HRb_mean16; HRc_mean16];
HRmean24 = [HRa_mean24; HRb_mean24; HRc_mean24];
HRmean32 = [HRa_mean32; HRb_mean32; HRc_mean32];
HRmean40 = [HRa_mean40; HRb_mean40; HRc_mean40];

HR8best8 = [HRa_8best8; HRb_8best8; HRc_8best8];
HR16best8 = [HRa_16best8; HRb_16best8; HRc_16best8];
HR24best8 = [HRa_24best8; HRb_24best8; HRc_24best8];
HR32best8 = [HRa_32best8; HRb_32best8; HRc_32best8];
HR40best8 = [HRa_40best8; HRb_40best8; HRc_40best8];

save('E:\Desktop\UofT stuff\Reference Paper (2016)\H_values_inside_cuff_newest.mat')

