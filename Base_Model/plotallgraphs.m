load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_inside_cuff_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanall')

modHJmean8 = HJmean8;
modHJmean16 = HJmean16;
modHJmean24 = HJmean24;
modHJmean32 = HJmean32;
modHJmean40 = HJmean40;

modHJmean8(:,1) = 1.35;
modHJmean16(:,1) = 1.35;
modHJmean24(:,1) = 1.35;
modHJmean32(:,1) = 1.35;
modHJmean40(:,1) = 1.35;

SNR = [0 -5 -10 -15 -20];

figure;
plotgraph(SNR,modHJmean8,stdn_8,'Selectivity of all contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'o',1,'b');
plotgraph(SNR,modHJmean16,stdn_16,'Selectivity of all contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'s',2,'b');
plotgraph(SNR,modHJmean24,stdn_24,'Selectivity of all contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'x',2,'b');
plotgraph(SNR,modHJmean32,stdn_32,'Selectivity of all contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'d',2,'b');
plotgraph(SNR,modHJmean40,stdn_40,'Selectivity of all contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'^',2,'b');

clearvars -except SNR

%%

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_outside_cuff_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanall')

modHJmean8 = HJmean8;
modHJmean16 = HJmean16;
modHJmean24 = HJmean24;
modHJmean32 = HJmean32;
modHJmean40 = HJmean40;

modHJmean8(:,1) = 22;
modHJmean16(:,1) = 22;
modHJmean24(:,1) = 22;
modHJmean32(:,1) = 22;
modHJmean40(:,1) = 22;

SNR = [0 -5 -10 -15 -20];

figure;
plotgraph(SNR,modHJmean8,stdo_8,'Selectivity of all contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'o',1,'b');
plotgraph(SNR,modHJmean16,stdo_16,'Selectivity of all contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'s',2,'b');
plotgraph(SNR,modHJmean24,stdo_24,'Selectivity of all contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'x',2,'b');
plotgraph(SNR,modHJmean32,stdo_32,'Selectivity of all contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'d',2,'b');
plotgraph(SNR,modHJmean40,stdo_40,'Selectivity of all contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'^',2,'b');

% errorbar(SNR,modHJmean40(1,:),[stdo_40(1,1) modHJmean40(1,2)-0 stdo_40(3,1) stdo_40(4,1) stdo_40(5,1)], ...
%     [stdo_40(1,1) 21-modHJmean40(1,2) stdo_40(3,1) stdo_40(4,1) stdo_40(5,1)],'b');
% 
% errorbar(SNR,modHJmean8(2,:),[stdo_8(1,2) modHJmean8(2,2)-0 stdo_8(3,2) stdo_8(4,2) stdo_8(5,2)], ...
%     [stdo_8(1,2) 21-modHJmean8(2,2) stdo_8(3,2) stdo_8(4,2) stdo_8(5,2)],'r');

%%

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_inside_cuff_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanbest8')

modHJ8best8 = HJ8best8;
modHJ16best8 = HJ16best8;
modHJ24best8 = HJ24best8;
modHJ32best8 = HJ32best8;
modHJ40best8 = HJ40best8;

modHJ8best8(:,1) = 1.35;
modHJ16best8(:,1) = 1.35;
modHJ24best8(:,1) = 1.35;
modHJ32best8(:,1) = 1.35;
modHJ40best8(:,1) = 1.35;

SNR = [0 -5 -10 -15 -20];

figure;
plotgraph(SNR,modHJ8best8,stdn_8,'Selectivity of best 8 contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'o',1,'b');
plotgraph(SNR,modHJ16best8,stdn_16,'Selectivity of best 8 contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'s',2,'b');
plotgraph(SNR,modHJ24best8,stdn_24,'Selectivity of best 8 contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'x',2,'b');
plotgraph(SNR,modHJ32best8,stdn_32,'Selectivity of best 8 contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'d',2,'b');
plotgraph(SNR,modHJ40best8,stdn_40,'Selectivity of best 8 contacts for noise inside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'^',2,'b');

clear all;

%%

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_outside_cuff_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanbest8')

modHJ8best8 = HJ8best8;
modHJ16best8 = HJ16best8;
modHJ24best8 = HJ24best8;
modHJ32best8 = HJ32best8;
modHJ40best8 = HJ40best8;

modHJ8best8(:,1) = 40;
modHJ16best8(:,1) = 40;
modHJ24best8(:,1) = 40;
modHJ32best8(:,1) = 40;
modHJ40best8(:,1) = 40;

SNR = [0 -5 -10 -15 -20];

figure;
plotgraph(SNR,modHJ8best8,stdo_8,'Selectivity of best 8 contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'o',1,'b');
plotgraph(SNR,modHJ16best8,stdo_16,'Selectivity of best 8 contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'s',2,'b');
plotgraph(SNR,modHJ24best8,stdo_24,'Selectivity of best 8 contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'x',2,'b');
plotgraph(SNR,modHJ32best8,stdo_32,'Selectivity of best 8 contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'d',2,'b');
plotgraph(SNR,modHJ40best8,stdo_40,'Selectivity of best 8 contacts for noise outside the cuff electrode','Signal-to-Noise Ratio (dB)','Contact Information Metric (CIM)',35,25,'^',2,'b');

% errorbar(SNR,modHJ40best8(1,:),[stdo_40(1,1) modHJ40best8(1,2)-0 stdo_40(3,1) stdo_40(4,1) stdo_40(5,1)], ...
%     [stdo_40(1,1) 39-modHJ40best8(1,2) stdo_40(3,1) stdo_40(4,1) stdo_40(5,1)],'b');
% 
% errorbar(SNR,modHJ8best8(2,:),[stdo_8(1,2) modHJ8best8(2,2)-0 stdo_8(3,2) stdo_8(4,2) stdo_8(5,2)], ...
%     [stdo_8(1,2) 39-modHJ8best8(2,2) stdo_8(3,2) stdo_8(4,2) stdo_8(5,2)],'r');

clear all;

%%

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_inside_cuff_best40_x_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanbestx')

modHJbesta = squeeze(HJ_40bestx(1,:,:));
modHJbestb = squeeze(HJ_40bestx(2,:,:));
modHJbestc = squeeze(HJ_40bestx(3,:,:));

mnmodHJbesta = modHJbesta(3,:);
mnmodHJbestb = modHJbestb(3,:);
mnmodHJbestc = modHJbestc(3,:);

x = 1:40;

figure;
plotgraph(x,mnmodHJbesta,stdn(:,1),'Selectivity of best x of 40 contacts for noise inside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'o',3,'b-');
plotgraph(x,mnmodHJbestb,stdn(:,2),'Selectivity of best x of 40 contacts for noise inside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'s',4,'r--');
plotgraph(x,mnmodHJbestc,stdn(:,3),'Selectivity of best x of 40 contacts for noise inside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'x',4,'g:');

clear all;

load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\H_values_outside_cuff_best40_x_newest');
load('E:\Desktop\UofT stuff\Reference Paper (2016)\0.25uV\errorbar_values_in_out_meanbestx')

modHJbesta = squeeze(HJ_40bestx(1,:,:));
modHJbestb = squeeze(HJ_40bestx(2,:,:));
modHJbestc = squeeze(HJ_40bestx(3,:,:));

mnmodHJbesta = modHJbesta(3,:);
mnmodHJbestb = modHJbestb(3,:);
mnmodHJbestc = modHJbestc(3,:);

x = 1:40;

figure;
plotgraph(x,mnmodHJbesta,stdo(:,1),'Selectivity of best x of 40 contacts for noise outside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'o',3,'b-');
plotgraph(x,mnmodHJbestb,stdo(:,1),'Selectivity of best x of 40 contacts for noise outside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'s',4,'r--');
plotgraph(x,mnmodHJbestc,stdo(:,1),'Selectivity of best x of 40 contacts for noise outside the cuff electrode','Best x contacts','Contact Information Metric (CIM)',35,25,'x',4,'g:');







