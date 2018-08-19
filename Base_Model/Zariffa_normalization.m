% Jose Indexing

function [Hnorma Hnormb Hnormc] = getJoseindex(p_a,p_b,p_c,cn);

    for i = 1:cn;
        for k = 1:5;
            Hall_a(i,k) = ent((p_a(:,i,k,1)+p_a(:,i,k,2)+p_a(:,i,k,3))./3);
            Hall_b(i,k) = ent((p_b(:,i,k,1)+p_b(:,i,k,2)+p_b(:,i,k,3))./3);
            Hall_c(i,k) = ent((p_c(:,i,k,1)+p_c(:,i,k,2)+p_c(:,i,k,3))./3);

            H_af(i,k) = mean((ent(p_a(:,i,k,1))+ent(p_a(:,i,k,2))+ent(p_a(:,i,k,3)))./3);
            H_bf(i,k) = mean((ent(p_b(:,i,k,1))+ent(p_b(:,i,k,2))+ent(p_b(:,i,k,3)))./3);
            H_cf(i,k) = mean((ent(p_c(:,i,k,1))+ent(p_c(:,i,k,2))+ent(p_c(:,i,k,3)))./3);
        end
    end
    
    Hnorma = Hall_a./H_af;
    Hnormb = Hall_b./H_bf;
    Hnormc = Hall_c./H_cf;
    
    Hnorma(isnan(Hnorma)) = 0;
    Hnormb(isnan(Hnormb)) = 0;
    Hnormc(isnan(Hnormc)) = 0;
    
    Hnorma(find(Hnorma==-Inf)) = Inf;
    Hnormb(find(Hnormb==-Inf)) = Inf;
    Hnormc(find(Hnormc==-Inf)) = Inf;
       
end
    
    
    
    
    