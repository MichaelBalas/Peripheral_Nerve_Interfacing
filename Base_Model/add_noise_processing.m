% Referencing MI 
%% Make templates

contactconf = 56;

%% DFDF
% load('E:\Desktop\UofT stuff\Reference Paper (2016)\Recordings_sm');

%% DFSF - Adelta
load('Tibial1');
load('Peroneal1');
load('Sural1');


load('lf56z_rat6');

meas_nonT = lf56z_rat6*Tibial_sm1;
meas_nonP = lf56z_rat6*Peroneal_sm1;
meas_nonS = lf56z_rat6*Sural_sm1;

mx = max([max(max(meas_nonT')) max(max(meas_nonP')) max(max(meas_nonS'))]);

meas_nonT = meas_nonT./mx*17.5;
meas_nonP = meas_nonP./mx*17.5;
meas_nonS = meas_nonS./mx*17.5;

meas_non(:,:,1) = meas_nonT(:,1:200);
meas_non(:,:,2) = meas_nonP(:,1:200);
meas_non(:,:,3) = meas_nonS(:,1:200);

clearvars -except meas_non contactconf numbins

%% noise in cuff
noiselevels = [0 -5 -10 -15 -20];
for i = 1:3;
    for k = 1:length(noiselevels);
        for j = 1:1000;
            if k == 1;
                meas_tri(:,:,j,k,i) = make_tripole2(meas_non(1:contactconf,:,i),contactconf);
                meas_com(:,:,j,k,i) = make_common2(meas_non(1:contactconf,:,i),contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(meas_non(1:contactconf,:,i),contactconf);
            else
                %temp = addwhitenoise(meas_non(1:contactconf,:,i),noiselevels(k),'measured');
                %temp = addwhitenoise([meas_non(1:contactconf,:,1) meas_non(1:contactconf,:,2) meas_non(1:contactconf,:,3)],noiselevels(k),'measured');
                noise = addwhitenoise(zeros(contactconf,200),noiselevels(k));
                signal = meas_non(1:contactconf,:,i) + noise;
                meas_tri(:,:,j,k,i) = make_tripole2(signal,contactconf);
                meas_com(:,:,j,k,i) = make_common2(signal,contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(signal,contactconf);
            end
        end
    end
end

cn = contactconf - 16;

for i = 1:cn;
    for k = 1:5
        a(:,i,k,1) = squeeze(max(meas_tri(i,:,:,k,1)));
        a(:,i,k,2) = squeeze(max(meas_tri(i,:,:,k,2)));
        a(:,i,k,3) = squeeze(max(meas_tri(i,:,:,k,3)));

        b(:,i,k,1) = squeeze(max(meas_com(i,:,:,k,1)));
        b(:,i,k,2) = squeeze(max(meas_com(i,:,:,k,2)));
        b(:,i,k,3) = squeeze(max(meas_com(i,:,:,k,3)));

        c(:,i,k,1) = squeeze(max(meas_psd(i,:,:,k,1)));
        c(:,i,k,2) = squeeze(max(meas_psd(i,:,:,k,2)));
        c(:,i,k,3) = squeeze(max(meas_psd(i,:,:,k,3)));
    end
end

save('vars_40contacts')

clearvars -except lf56z_rat6

%%

% Referencing MI 
%% Make templates

contactconf = 48;

%% DFDF
% load('E:\Desktop\UofT stuff\Reference Paper (2016)\Recordings_sm');

%% DFSF - Adelta
load('Tibial1');
load('Peroneal1');
load('Sural1');


load('lf56z_rat6');

meas_nonT = lf56z_rat6*Tibial_sm1;
meas_nonP = lf56z_rat6*Peroneal_sm1;
meas_nonS = lf56z_rat6*Sural_sm1;

mx = max([max(max(meas_nonT')) max(max(meas_nonP')) max(max(meas_nonS'))]);

meas_nonT = meas_nonT./mx*17.5;
meas_nonP = meas_nonP./mx*17.5;
meas_nonS = meas_nonS./mx*17.5;

meas_non(:,:,1) = meas_nonT(:,1:200);
meas_non(:,:,2) = meas_nonP(:,1:200);
meas_non(:,:,3) = meas_nonS(:,1:200);

clearvars -except meas_non contactconf numbins

%% noise in cuff
noiselevels = [0 -5 -10 -15 -20];
for i = 1:3;
    for k = 1:length(noiselevels);
        for j = 1:1000;
            if k == 1;
                meas_tri(:,:,j,k,i) = make_tripole2(meas_non(1:contactconf,:,i),contactconf);
                meas_com(:,:,j,k,i) = make_common2(meas_non(1:contactconf,:,i),contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(meas_non(1:contactconf,:,i),contactconf);
            else
                %temp = addwhitenoise(meas_non(1:contactconf,:,i),noiselevels(k),'measured');
                %temp = addwhitenoise([meas_non(1:contactconf,:,1) meas_non(1:contactconf,:,2) meas_non(1:contactconf,:,3)],noiselevels(k),'measured');
                noise = addwhitenoise(zeros(contactconf,200),noiselevels(k));
                signal = meas_non(1:contactconf,:,i) + noise;
                meas_tri(:,:,j,k,i) = make_tripole2(signal,contactconf);
                meas_com(:,:,j,k,i) = make_common2(signal,contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(signal,contactconf);
            end
        end
    end
end

cn = contactconf - 16;

for i = 1:cn;
    for k = 1:5
        a(:,i,k,1) = squeeze(max(meas_tri(i,:,:,k,1)));
        a(:,i,k,2) = squeeze(max(meas_tri(i,:,:,k,2)));
        a(:,i,k,3) = squeeze(max(meas_tri(i,:,:,k,3)));

        b(:,i,k,1) = squeeze(max(meas_com(i,:,:,k,1)));
        b(:,i,k,2) = squeeze(max(meas_com(i,:,:,k,2)));
        b(:,i,k,3) = squeeze(max(meas_com(i,:,:,k,3)));

        c(:,i,k,1) = squeeze(max(meas_psd(i,:,:,k,1)));
        c(:,i,k,2) = squeeze(max(meas_psd(i,:,:,k,2)));
        c(:,i,k,3) = squeeze(max(meas_psd(i,:,:,k,3)));
    end
end

save('vars_32contacts')

clearvars -except lf56z_rat6

%% 

% Referencing MI 
%% Make templates

contactconf = 40;

%% DFDF
% load('E:\Desktop\UofT stuff\Reference Paper (2016)\Recordings_sm');

%% DFSF - Adelta
load('Tibial1');
load('Peroneal1');
load('Sural1');


load('lf56z_rat6');

meas_nonT = lf56z_rat6*Tibial_sm1;
meas_nonP = lf56z_rat6*Peroneal_sm1;
meas_nonS = lf56z_rat6*Sural_sm1;

mx = max([max(max(meas_nonT')) max(max(meas_nonP')) max(max(meas_nonS'))]);

meas_nonT = meas_nonT./mx*17.5;
meas_nonP = meas_nonP./mx*17.5;
meas_nonS = meas_nonS./mx*17.5;

meas_non(:,:,1) = meas_nonT(:,1:200);
meas_non(:,:,2) = meas_nonP(:,1:200);
meas_non(:,:,3) = meas_nonS(:,1:200);

clearvars -except meas_non contactconf numbins

%% noise in cuff
noiselevels = [0 -5 -10 -15 -20];
for i = 1:3;
    for k = 1:length(noiselevels);
        for j = 1:1000;
            if k == 1;
                meas_tri(:,:,j,k,i) = make_tripole2(meas_non(1:contactconf,:,i),contactconf);
                meas_com(:,:,j,k,i) = make_common2(meas_non(1:contactconf,:,i),contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(meas_non(1:contactconf,:,i),contactconf);
            else
                %temp = addwhitenoise(meas_non(1:contactconf,:,i),noiselevels(k),'measured');
                %temp = addwhitenoise([meas_non(1:contactconf,:,1) meas_non(1:contactconf,:,2) meas_non(1:contactconf,:,3)],noiselevels(k),'measured');
                noise = addwhitenoise(zeros(contactconf,200),noiselevels(k));
                signal = meas_non(1:contactconf,:,i) + noise;
                meas_tri(:,:,j,k,i) = make_tripole2(signal,contactconf);
                meas_com(:,:,j,k,i) = make_common2(signal,contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(signal,contactconf);
            end
        end
    end
end

cn = contactconf - 16;

for i = 1:cn;
    for k = 1:5
        a(:,i,k,1) = squeeze(max(meas_tri(i,:,:,k,1)));
        a(:,i,k,2) = squeeze(max(meas_tri(i,:,:,k,2)));
        a(:,i,k,3) = squeeze(max(meas_tri(i,:,:,k,3)));

        b(:,i,k,1) = squeeze(max(meas_com(i,:,:,k,1)));
        b(:,i,k,2) = squeeze(max(meas_com(i,:,:,k,2)));
        b(:,i,k,3) = squeeze(max(meas_com(i,:,:,k,3)));

        c(:,i,k,1) = squeeze(max(meas_psd(i,:,:,k,1)));
        c(:,i,k,2) = squeeze(max(meas_psd(i,:,:,k,2)));
        c(:,i,k,3) = squeeze(max(meas_psd(i,:,:,k,3)));
    end
end

save('vars_24contacts')

clearvars -except lf56z_rat6

%%

% Referencing MI 
%% Make templates

contactconf = 32;

%% DFDF
% load('E:\Desktop\UofT stuff\Reference Paper (2016)\Recordings_sm');

%% DFSF - Adelta
load('Tibial1');
load('Peroneal1');
load('Sural1');


load('lf56z_rat6');

meas_nonT = lf56z_rat6*Tibial_sm1;
meas_nonP = lf56z_rat6*Peroneal_sm1;
meas_nonS = lf56z_rat6*Sural_sm1;

mx = max([max(max(meas_nonT')) max(max(meas_nonP')) max(max(meas_nonS'))]);

meas_nonT = meas_nonT./mx*17.5;
meas_nonP = meas_nonP./mx*17.5;
meas_nonS = meas_nonS./mx*17.5;

meas_non(:,:,1) = meas_nonT(:,1:200);
meas_non(:,:,2) = meas_nonP(:,1:200);
meas_non(:,:,3) = meas_nonS(:,1:200);

clearvars -except meas_non contactconf numbins

%% noise in cuff
noiselevels = [0 -5 -10 -15 -20];
for i = 1:3;
    for k = 1:length(noiselevels);
        for j = 1:1000;
            if k == 1;
                meas_tri(:,:,j,k,i) = make_tripole2(meas_non(1:contactconf,:,i),contactconf);
                meas_com(:,:,j,k,i) = make_common2(meas_non(1:contactconf,:,i),contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(meas_non(1:contactconf,:,i),contactconf);
            else
                %temp = addwhitenoise(meas_non(1:contactconf,:,i),noiselevels(k),'measured');
                %temp = addwhitenoise([meas_non(1:contactconf,:,1) meas_non(1:contactconf,:,2) meas_non(1:contactconf,:,3)],noiselevels(k),'measured');
                noise = addwhitenoise(zeros(contactconf,200),noiselevels(k));
                signal = meas_non(1:contactconf,:,i) + noise;
                meas_tri(:,:,j,k,i) = make_tripole2(signal,contactconf);
                meas_com(:,:,j,k,i) = make_common2(signal,contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(signal,contactconf);
            end
        end
    end
end

cn = contactconf - 16;

for i = 1:cn;
    for k = 1:5
        a(:,i,k,1) = squeeze(max(meas_tri(i,:,:,k,1)));
        a(:,i,k,2) = squeeze(max(meas_tri(i,:,:,k,2)));
        a(:,i,k,3) = squeeze(max(meas_tri(i,:,:,k,3)));

        b(:,i,k,1) = squeeze(max(meas_com(i,:,:,k,1)));
        b(:,i,k,2) = squeeze(max(meas_com(i,:,:,k,2)));
        b(:,i,k,3) = squeeze(max(meas_com(i,:,:,k,3)));

        c(:,i,k,1) = squeeze(max(meas_psd(i,:,:,k,1)));
        c(:,i,k,2) = squeeze(max(meas_psd(i,:,:,k,2)));
        c(:,i,k,3) = squeeze(max(meas_psd(i,:,:,k,3)));
    end
end

save('vars_16contacts')

clearvars -except lf56z_rat6

%%








% Referencing MI 
%% Make templates

contactconf = 24;

%% DFDF
% load('E:\Desktop\UofT stuff\Reference Paper (2016)\Recordings_sm');

%% DFSF - Adelta
load('Tibial1');
load('Peroneal1');
load('Sural1');


load('lf56z_rat6');

meas_nonT = lf56z_rat6*Tibial_sm1;
meas_nonP = lf56z_rat6*Peroneal_sm1;
meas_nonS = lf56z_rat6*Sural_sm1;

mx = max([max(max(meas_nonT')) max(max(meas_nonP')) max(max(meas_nonS'))]);

meas_nonT = meas_nonT./mx*17.5;
meas_nonP = meas_nonP./mx*17.5;
meas_nonS = meas_nonS./mx*17.5;

meas_non(:,:,1) = meas_nonT(:,1:200);
meas_non(:,:,2) = meas_nonP(:,1:200);
meas_non(:,:,3) = meas_nonS(:,1:200);

%clearvars -except meas_non contactconf numbins

%% noise in cuff
noiselevels = [0 -5 -10 -15 -20];
for i = 1:3;
    for k = 1:length(noiselevels);
        for j = 1:1000;
            if k == 1;
                meas_tri(:,:,j,k,i) = make_tripole2(meas_non(1:contactconf,:,i),contactconf);
                meas_com(:,:,j,k,i) = make_common2(meas_non(1:contactconf,:,i),contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(meas_non(1:contactconf,:,i),contactconf);
            else
                %temp = addwhitenoise(meas_non(1:contactconf,:,i),noiselevels(k),'measured');
                %temp = addwhitenoise([meas_non(1:contactconf,:,1) meas_non(1:contactconf,:,2) meas_non(1:contactconf,:,3)],noiselevels(k),'measured');
                noise = addwhitenoise(zeros(contactconf,200),noiselevels(k));
                signal = meas_non(1:contactconf,:,i) + noise;
                meas_tri(:,:,j,k,i) = make_tripole2(signal,contactconf);
                meas_com(:,:,j,k,i) = make_common2(signal,contactconf);
                meas_psd(:,:,j,k,i) = make_psd_tripole2(signal,contactconf);
            end
        end
    end
end

cn = contactconf - 16;

for i = 1:cn;
    for k = 1:5
        a(:,i,k,1) = squeeze(max(meas_tri(i,:,:,k,1)));
        a(:,i,k,2) = squeeze(max(meas_tri(i,:,:,k,2)));
        a(:,i,k,3) = squeeze(max(meas_tri(i,:,:,k,3)));

        b(:,i,k,1) = squeeze(max(meas_com(i,:,:,k,1)));
        b(:,i,k,2) = squeeze(max(meas_com(i,:,:,k,2)));
        b(:,i,k,3) = squeeze(max(meas_com(i,:,:,k,3)));

        c(:,i,k,1) = squeeze(max(meas_psd(i,:,:,k,1)));
        c(:,i,k,2) = squeeze(max(meas_psd(i,:,:,k,2)));
        c(:,i,k,3) = squeeze(max(meas_psd(i,:,:,k,3)));
    end
end

save('vars_8contacts')

clear all