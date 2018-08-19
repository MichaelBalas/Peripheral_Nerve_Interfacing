% Ryan Indexing

function [Hall_a Hall_b Hall_c] = getRyanindex(p_a,p_b,p_c,cn);

    for i = 1:cn;
        for k = 1:5;
            Hall_a(i,k) = ent([max(p_a(:,i,k,1)) max(p_a(:,i,k,2)) max(p_a(:,i,k,3))]./3);
            Hall_b(i,k) = ent([max(p_b(:,i,k,1)) max(p_b(:,i,k,2)) max(p_b(:,i,k,3))]./3);
            Hall_c(i,k) = ent([max(p_c(:,i,k,1)) max(p_c(:,i,k,2)) max(p_c(:,i,k,3))]./3);
        end
    end
    
end
    