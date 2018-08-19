load('vars_8contacts_pmf.mat','p_a','p_b','p_c','cn');

[HJa HJb HJc] = Zariffa_normalization(p_a,p_b,p_c,cn); 
[HRa HRb HRc] = Koh_normalization(p_a,p_b,p_c,cn);

save('vars_8contacts_ranks.mat')

clear all;

load('vars_16contacts_pmf.mat','p_a','p_b','p_c','cn');

[HJa HJb HJc] = Zariffa_normalization(p_a,p_b,p_c,cn); 
[HRa HRb HRc] = Koh_normalization(p_a,p_b,p_c,cn);

save('vars_16contacts_ranks.mat')

clear all;

load('vars_24contacts_pmf.mat','p_a','p_b','p_c','cn');

[HJa HJb HJc] = Zariffa_normalization(p_a,p_b,p_c,cn); 
[HRa HRb HRc] = Koh_normalization(p_a,p_b,p_c,cn);

save('vars_24contacts_ranks.mat')

clear all;

load('vars_32contacts_pmf.mat','p_a','p_b','p_c','cn');

[HJa HJb HJc] = Zariffa_normalization(p_a,p_b,p_c,cn); 
[HRa HRb HRc] = Koh_normalization(p_a,p_b,p_c,cn);

save('vars_32contacts_ranks.mat')

clear all;

load('vars_40contacts_pmf.mat','p_a','p_b','p_c','cn');

[HJa HJb HJc] = Zariffa_normalization(p_a,p_b,p_c,cn); 
[HRa HRb HRc] = Koh_normalization(p_a,p_b,p_c,cn);

save('vars_40contacts_ranks.mat')

clear all;
        
