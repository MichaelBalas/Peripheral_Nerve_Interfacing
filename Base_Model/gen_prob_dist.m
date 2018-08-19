% Referencing MI 
%% Make templates

load('mn_mx_global.mat');
load('vars_40contacts.mat', 'a','b','c','cn');

numbins = ceil((maxv-minv)/2)
s = linspace(minv,maxv,numbins);

for i = 1:cn;
    for k = 1:5;
        p_a(:,i,k,1) = hist(a(:,i,k,1),s)./size(a,1);
        p_a(:,i,k,2) = hist(a(:,i,k,2),s)./size(a,1);
        p_a(:,i,k,3) = hist(a(:,i,k,3),s)./size(a,1);
        
        p_b(:,i,k,1) = hist(b(:,i,k,1),s)./size(b,1);
        p_b(:,i,k,2) = hist(b(:,i,k,2),s)./size(b,1);
        p_b(:,i,k,3) = hist(b(:,i,k,3),s)./size(b,1);
        
        p_c(:,i,k,1) = hist(c(:,i,k,1),s)./size(c,1);
        p_c(:,i,k,2) = hist(c(:,i,k,2),s)./size(c,1);
        p_c(:,i,k,3) = hist(c(:,i,k,3),s)./size(c,1);
    end
end

save('vars_40contacts_pmf') % Probability Mass Function

clear all

%%

% Referencing MI 
%% Make templates
load('mn_mx_global.mat');
load('vars_32contacts.mat', 'a','b','c','cn');

numbins = ceil((maxv-minv)/2)
s = linspace(minv,maxv,numbins);

for i = 1:cn;
    for k = 1:5;
        p_a(:,i,k,1) = hist(a(:,i,k,1),s)./size(a,1);
        p_a(:,i,k,2) = hist(a(:,i,k,2),s)./size(a,1);
        p_a(:,i,k,3) = hist(a(:,i,k,3),s)./size(a,1);
        
        p_b(:,i,k,1) = hist(b(:,i,k,1),s)./size(b,1);
        p_b(:,i,k,2) = hist(b(:,i,k,2),s)./size(b,1);
        p_b(:,i,k,3) = hist(b(:,i,k,3),s)./size(b,1);
        
        p_c(:,i,k,1) = hist(c(:,i,k,1),s)./size(c,1);
        p_c(:,i,k,2) = hist(c(:,i,k,2),s)./size(c,1);
        p_c(:,i,k,3) = hist(c(:,i,k,3),s)./size(c,1);
    end
end

save('vars_32contacts_pmf')

clear all

%% 

% Referencing MI 
%% Make Templates
load('mn_mx_global.mat');
load('vars_24contacts.mat', 'a','b','c','cn');
numbins = ceil((maxv-minv)/2)
s = linspace(minv,maxv,numbins);

for i = 1:cn;
    for k = 1:5;
        p_a(:,i,k,1) = hist(a(:,i,k,1),s)./size(a,1);
        p_a(:,i,k,2) = hist(a(:,i,k,2),s)./size(a,1);
        p_a(:,i,k,3) = hist(a(:,i,k,3),s)./size(a,1);
        
        p_b(:,i,k,1) = hist(b(:,i,k,1),s)./size(b,1);
        p_b(:,i,k,2) = hist(b(:,i,k,2),s)./size(b,1);
        p_b(:,i,k,3) = hist(b(:,i,k,3),s)./size(b,1);
        
        p_c(:,i,k,1) = hist(c(:,i,k,1),s)./size(c,1);
        p_c(:,i,k,2) = hist(c(:,i,k,2),s)./size(c,1);
        p_c(:,i,k,3) = hist(c(:,i,k,3),s)./size(c,1);
    end
end

save('vars_24contacts_updated')

clear all

%%

% Referencing MI 
%% Make templates
load('mn_mx_global.mat');
load('vars_16contacts.mat', 'a','b','c','cn');

numbins = ceil((maxv-minv)/2)
s = linspace(minv,maxv,numbins);

for i = 1:cn;
    for k = 1:5;
        p_a(:,i,k,1) = hist(a(:,i,k,1),s)./size(a,1);
        p_a(:,i,k,2) = hist(a(:,i,k,2),s)./size(a,1);
        p_a(:,i,k,3) = hist(a(:,i,k,3),s)./size(a,1);
        
        p_b(:,i,k,1) = hist(b(:,i,k,1),s)./size(b,1);
        p_b(:,i,k,2) = hist(b(:,i,k,2),s)./size(b,1);
        p_b(:,i,k,3) = hist(b(:,i,k,3),s)./size(b,1);
        
        p_c(:,i,k,1) = hist(c(:,i,k,1),s)./size(c,1);
        p_c(:,i,k,2) = hist(c(:,i,k,2),s)./size(c,1);
        p_c(:,i,k,3) = hist(c(:,i,k,3),s)./size(c,1);
    end
end

save('vars_16contacts_pmf')

clear all

%%

% Referencing MI 
%% Make templates
load('mn_mx_global.mat');
load('vars_8contacts.mat', 'a','b','c','cn');

numbins = ceil((maxv-minv)/2)
s = linspace(minv,maxv,numbins);

for i = 1:cn;
    for k = 1:5;
        p_a(:,i,k,1) = hist(a(:,i,k,1),s)./size(a,1);
        p_a(:,i,k,2) = hist(a(:,i,k,2),s)./size(a,1);
        p_a(:,i,k,3) = hist(a(:,i,k,3),s)./size(a,1);
        
        p_b(:,i,k,1) = hist(b(:,i,k,1),s)./size(b,1);
        p_b(:,i,k,2) = hist(b(:,i,k,2),s)./size(b,1);
        p_b(:,i,k,3) = hist(b(:,i,k,3),s)./size(b,1);
        
        p_c(:,i,k,1) = hist(c(:,i,k,1),s)./size(c,1);
        p_c(:,i,k,2) = hist(c(:,i,k,2),s)./size(c,1);
        p_c(:,i,k,3) = hist(c(:,i,k,3),s)./size(c,1);
    end
end

save('vars_8contacts_pmf')

clear all

        

        



        


        
